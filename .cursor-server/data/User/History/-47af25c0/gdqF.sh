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

# Check if running as root
# if [ "$(id -u)" = "0" ]; then
#     log_error "This script should not be run as root"
#     exit 1
# fi

# Check operating system
OS="$(uname -s)"
case "${OS}" in
    Linux*)     
        if [ ! -x "$(command -v curl)" ]; then
            log_warning "Curl is not installed. Trying to install..."
            if [ -x "$(command -v apt-get)" ]; then
                sudo apt-get update && sudo apt-get install -y curl
            elif [ -x "$(command -v yum)" ]; then
                sudo yum install -y curl
            else
                log_error "Could not install curl automatically. Please install manually."
                exit 1
            fi
        fi
        ;;
    Darwin*)    
        if [ ! -x "$(command -v curl)" ]; then
            log_error "Curl is not installed. Please install Xcode Command Line Tools."
            exit 1
        fi
        ;;
    *)          
        log_error "Unsupported operating system: ${OS}"
        exit 1
        ;;
esac

# Check internet connection before proceeding
if ! ping -c 1 8.8.8.8 &> /dev/null; then
    log_error "No internet connection. Please check your connection."
    exit 1
fi

# Add disk space check
REQUIRED_SPACE=1000000 # 1GB in KB
AVAILABLE_SPACE=$(df -k . | awk 'NR==2 {print $4}')
if [ $AVAILABLE_SPACE -lt $REQUIRED_SPACE ]; then
    log_error "Insufficient disk space. At least 1GB of free space is required."
    exit 1
fi

# Add error handling for npm commands
npm_install_with_retry() {
    local max_attempts=3
    local attempt=1
    
    while [ $attempt -le $max_attempts ]; do
        log "Attempt $attempt of $max_attempts for npm install"
        if npm install; then
            return 0
        fi
        attempt=$((attempt + 1))
        [ $attempt -le $max_attempts ] && log_warning "Installation failed. Trying again in 5 seconds..." && sleep 5
    done
    
    log_error "Failed to execute npm install after $max_attempts attempts"
    return 1
}

# Add timeout for commands
execute_with_timeout() {
    timeout 300 $@ || log_error "Command exceeded 5 minute time limit: $@"
}

# Check if NVM is already installed
if [ -d "$HOME/.nvm" ]; then
    log "NVM is already installed."
else
    log "Installing NVM..."
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
fi

# Load NVM in current environment
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# Check if Node.js version is already installed
if command -v node >/dev/null 2>&1 && [ "$(node -v)" = "v20.10.0" ]; then
    log "Node.js v20.10.0 is already installed."
else
    log "Installing Node.js v20.10.0..."
    nvm install v20.10.0
fi

nvm use v20.10.0

# Check installed versions
log "Verifying installed versions:"
log "Node.js: $(node -v)"
log "npm: $(npm -v)"

# Install project dependencies
log "Installing project dependencies..."
rm -rf node_modules
npm install

# Deploy database
log "Deploying database..."
npm run db:generate
npm run db:deploy

# Start the project
log "Starting the project..."
if [ "$1" = "-dev" ]; then
    npm run dev:server
else
    npm run build
    npm run start:prod
fi

log "Installation completed successfully!"

# Create log file
LOGFILE="./installation_log_$(date +%Y%m%d_%H%M%S).log"
exec 1> >(tee -a "$LOGFILE")
exec 2>&1

# Add trap for cleanup in case of interruption
cleanup() {
    log "Cleaning up temporary resources..."
    # Add cleanup commands here
}
trap cleanup EXIT
