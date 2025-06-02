#!/bin/bash

# Define colors for better readability
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Function for logging
log() {
    echo -e "${GREEN}[INFO]${NC} $1"
}
log_error() {
    echo -e "${RED}[ERROR]${NC} $1"
}
log_warning() {
    echo -e "${YELLOW}[WARNING]${NC} $1"
}

log "Starting Evolution API diagnostics..."

# Check system resources
log "Checking system resources..."
echo "CPU Usage:"
top -bn1 | grep "Cpu(s)" | sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | awk '{print 100 - $1"%"}'
echo "Memory Usage:"
free -m | grep Mem | awk '{printf("Used: %s MB, Free: %s MB, Total: %s MB\n", $3, $4, $2)}'
echo "Disk Usage:"
df -h | grep -v "tmpfs" | grep -v "udev"

# Check required services
log "Checking required services..."

# Check if Redis is running
if nc -z localhost 6379 2>/dev/null; then
    log "Redis is running"
else
    log_error "Redis is NOT running"
    log "Attempting to start Redis..."
    systemctl start redis-server || service redis-server start || redis-server --daemonize yes
    if nc -z localhost 6379 2>/dev/null; then
        log "Redis started successfully"
    else
        log_error "Failed to start Redis"
    fi
fi

# Check PostgreSQL connection
# Extract database credentials from .env file
if [ -f "/root/evolution-api/.env" ]; then
    DB_URI=$(grep "DATABASE_CONNECTION_URI" /root/evolution-api/.env | cut -d "=" -f2 | tr -d "'")
    DB_HOST=$(echo "$DB_URI" | grep -oP '(?<=@)[^:]+(?=:)')
    DB_PORT=$(echo "$DB_URI" | grep -oP '(?<=:)[0-9]+(?=/)')
    
    if [ -z "$DB_HOST" ] || [ -z "$DB_PORT" ]; then
        DB_HOST="192.168.1.102"
        DB_PORT="5432"
    fi
    
    if nc -z "$DB_HOST" "$DB_PORT" 2>/dev/null; then
        log "PostgreSQL is accessible at $DB_HOST:$DB_PORT"
    else
        log_error "PostgreSQL is NOT accessible at $DB_HOST:$DB_PORT"
    fi
else
    log_error "Could not find .env file to extract database details"
fi

# Check network connectivity
log "Checking network connectivity..."
ping -c 3 8.8.8.8 2>/dev/null && log "Internet connection is working" || log_error "Internet connection is NOT working"
ping -c 3 1.1.1.1 2>/dev/null && log "Alternative Internet connection is working" || log_error "Alternative Internet connection is NOT working"

# Check DNS resolution
log "Checking DNS resolution..."
nslookup google.com 2>/dev/null && log "DNS resolution is working" || log_error "DNS resolution is NOT working"

# Check for active Evolution API processes
log "Checking for Evolution API processes..."
evolution_processes=$(ps aux | grep -v grep | grep -E "node.*evolution" | wc -l)
if [ "$evolution_processes" -gt 0 ]; then
    log "Found $evolution_processes Evolution API processes running:"
    ps aux | grep -v grep | grep -E "node.*evolution"
else
    log_error "No Evolution API processes found running"
fi

# Check if the systemd service is enabled and running
log "Checking systemd service status..."
if systemctl is-enabled evolution-api 2>/dev/null; then
    log "Evolution API service is enabled"
else
    log_warning "Evolution API service is NOT enabled"
fi

if systemctl is-active evolution-api 2>/dev/null; then
    log "Evolution API service is active"
else
    log_warning "Evolution API service is NOT active"
fi

# Check if the dist folder exists and contains the main.js file
log "Checking application files..."
if [ -d "/root/evolution-api/dist" ]; then
    if [ -f "/root/evolution-api/dist/main.js" ]; then
        log "Application main.js file exists"
    else
        log_error "Application main.js file does NOT exist"
    fi
else
    log_error "Application dist directory does NOT exist"
fi

# Check Node.js and npm versions
log "Checking Node.js and npm versions..."
if command -v node >/dev/null 2>&1; then
    node_version=$(node -v)
    log "Node.js version: $node_version"
else
    log_error "Node.js is not installed or not in PATH"
fi

if command -v npm >/dev/null 2>&1; then
    npm_version=$(npm -v)
    log "npm version: $npm_version"
else
    log_error "npm is not installed or not in PATH"
fi

log "Diagnostics complete"
echo ""
log "If you're experiencing endless restarts, try the following steps:"
echo "1. Stop any running Evolution API processes: pkill -f 'node.*evolution'"
echo "2. Build the application: cd /root/evolution-api && npm run build"
echo "3. Enable and start the systemd service: systemctl enable evolution-api && systemctl start evolution-api"
echo "4. Check the logs: journalctl -u evolution-api -f" 