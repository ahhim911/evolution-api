sudo apt update
sudo rm -f /etc/resolv.conf
sudo bash -c 'echo -e "nameserver 8.8.8.8\nnameserver 1.1.1.1" > /etc/resolv.conf'
sudo chattr +i /etc/resolv.conf
sudo nano /etc/systemd/system/fix-resolv.service
sudo systemctl daemon-reload
sudo systemctl enable fix-resolv.service
ping google.com
sudo apt update
git clone https://github.com/EvolutionAPI/evolution-api.git
sudo apt install git
git clone https://github.com/EvolutionAPI/evolution-api.git
cd evolution-api/
sudo nano /etc/ssh/sshd_config 
sudo systemctl restart ssh
ip a
. "\root\.cursor-server\cli\servers\Stable-02270c8441bdc4b2fdbc30e6f470a589ec78d600\server\out\vs\workbench\contrib\terminal\common\scripts\shellIntegration-bash.sh"
cd evolution-api && ls -la | grep env
cd evolution-api && head -50 .env.example
head -50 .env.example
cat .env.example
node --version && npm --version
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
apt update && apt install -y curl wget
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
export NVM_DIR="$HOME/.nvm" && [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" && [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
export NVM_DIR="$HOME/.nvm" && [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" && nvm install v20.10.0
export NVM_DIR="$HOME/.nvm" && [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" && nvm use v20.10.0 && node --version && npm --version
export NVM_DIR="$HOME/.nvm" && [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" && nvm use v20.10.0 && rm -rf node_modules && npm install
. "\root\.cursor-server\cli\servers\Stable-02270c8441bdc4b2fdbc30e6f470a589ec78d600\server\out\vs\workbench\contrib\terminal\common\scripts\shellIntegration-bash.sh"
cd evolution-api && ls -la node_modules | head -10
cd evolution-api && export NVM_DIR="$HOME/.nvm" && [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" && nvm use v20.10.0 && npm run db:generate
. "\root\.cursor-server\cli\servers\Stable-02270c8441bdc4b2fdbc30e6f470a589ec78d600\server\out\vs\workbench\contrib\terminal\common\scripts\shellIntegration-bash.sh"
ps aux | grep -i "node.*evolution"
ps aux | grep node
kill -9 11936
cd evolution-api && ls -la instances
rm -rf evolution-api/instances/*
cd evolution-api && export NVM_DIR="$HOME/.nvm" && [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" && nvm use v20.10.0 && npm run db:generate
pwd && ls
export NVM_DIR="$HOME/.nvm" && [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" && nvm use v20.10.0 && npm run db:generate
export NVM_DIR="$HOME/.nvm" && [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" && nvm use v20.10.0 && npm run db:deploy
curl -X GET "http://localhost:8080/instance/Him/qrcode" -H "accept: application/json" -H "apikey: 429683C4C977415CAAFCCE10F7D57E11"
. "\root\.cursor-server\cli\servers\Stable-02270c8441bdc4b2fdbc30e6f470a589ec78d600\server\out\vs\workbench\contrib\terminal\common\scripts\shellIntegration-bash.sh"
cd evolution-api && export NVM_DIR="$HOME/.nvm" && [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" && nvm use v20.10.0 && npm install -g ts-node-dev
cd evolution-api && export NVM_DIR="$HOME/.nvm" && [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" && nvm use v20.10.0 && npm run db:generate
pwd && ls -l
export NVM_DIR="$HOME/.nvm" && [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" && nvm use v20.10.0 && npm run db:generate
export NVM_DIR="$HOME/.nvm" && [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" && nvm use v20.10.0 && npm run db:deploy
export NVM_DIR="$HOME/.nvm" && [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" && nvm use v20.10.0 && npm run build
export NVM_DIR="$HOME/.nvm" && [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" && nvm use v20.10.0 && npm run start:prod
curl -X GET "http://localhost:8080/instance/test/qr" -H "accept: application/json" -H "apikey: 429683C4C977415CAAFCCE10F7D57E11"
curl -X GET "http://localhost:8080/api/evolution/test/qr" -H "accept: application/json" -H "apikey: 429683C4C977415CAAFCCE10F7D57E11"
curl -X GET "http://localhost:8080/" -H "accept: application/json"
ps aux | grep node
export NVM_DIR="$HOME/.nvm" && [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" && nvm use v20.10.0 && npm run start:prod > evolution-api.log 2>&1 &
sleep 5 && curl -X GET "http://localhost:8080/manager" -I
curl -X GET "http://localhost:8080/instance/test/qrcode" -H "accept: application/json" -H "apikey: 429683C4C977415CAAFCCE10F7D57E11"
curl -X GET "http://localhost:8080/api/v1/instance/test" -H "accept: application/json" -H "apikey: 429683C4C977415CAAFCCE10F7D57E11"
curl -X GET "http://localhost:8080/api" -H "accept: application/json"
curl -X GET "http://localhost:8080/api/baileys/test/qr" -H "accept: application/json" -H "apikey: 429683C4C977415CAAFCCE10F7D57E11"
curl -X GET "http://localhost:8080/version" -H "accept: application/json"
curl -X POST "http://localhost:8080/instance/create" -H "Content-Type: application/json" -H "apikey: 429683C4C977415CAAFCCE10F7D57E11" -d '{"instanceName":"mywhatsapp"}'
curl -X POST "http://localhost:8080/instance/create" -H "Content-Type: application/json" -H "apikey: 429683C4C977415CAAFCCE10F7D57E11" -d '{"instanceName":"mywhatsapp", "integration":"whatsapp"}'
curl -X POST "http://localhost:8080/instance/create" -H "Content-Type: application/json" -H "apikey: 429683C4C977415CAAFCCE10F7D57E11" -d '{"instanceName":"newinstance", "webhook": {"url": "", "enabled": false}, "settings": {"reject_call": true, "msg_call": "", "groups_ignore": false}}'
curl -X POST "http://localhost:8080/instance/create" -H "Content-Type: application/json" -H "apikey: 429683C4C977415CAAFCCE10F7D57E11" -d '{"instanceName":"newinstance", "integration": "evolution", "webhook": {"url": "", "enabled": false}, "settings": {"reject_call": true, "msg_call": "", "groups_ignore": false}}'
curl -X GET "http://localhost:8080/manager/api/integrations" -H "accept: application/json"
curl -X POST "http://localhost:8080/instance/create" -H "Content-Type: application/json" -H "apikey: 429683C4C977415CAAFCCE10F7D57E11" -d '{"instanceName":"newinstance", "integration": "baileys", "webhook": {"url": "", "enabled": false}, "settings": {"reject_call": true, "msg_call": "", "groups_ignore": false}}'
docker ps | grep evolution
ps aux | grep node | grep evolution
ps aux | grep node | grep evolution-api
cd e
cd evolution-api/
npm start run
ping 192.168.1.100
npm start run
ping https://n8n.tail4afd27.ts.net
ping n8n.tail4afd27.ts.net
npm start run
. "\root\.cursor-server\cli\servers\Stable-02270c8441bdc4b2fdbc30e6f470a589ec78d600\server\out\vs\workbench\contrib\terminal\common\scripts\shellIntegration-bash.sh"
./local_install.sh
pwd && ls -la
cd evolution-api && ./local_install.sh
npm start tun
npm start run
. "\root\.cursor-server\cli\servers\Stable-02270c8441bdc4b2fdbc30e6f470a589ec78d600\server\out\vs\workbench\contrib\terminal\common\scripts\shellIntegration-bash.sh"
cd evolution-api && chmod +x local_install.sh && ./local_install.sh
cd evolution-api && ./local_install.sh
. "\root\.cursor-server\cli\servers\Stable-02270c8441bdc4b2fdbc30e6f470a589ec78d600\server\out\vs\workbench\contrib\terminal\common\scripts\shellIntegration-bash.sh"
cd evolution-api && export NVM_DIR="$HOME/.nvm" && [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" && nvm use v20.10.0 && npm install
. "\root\.cursor-server\cli\servers\Stable-02270c8441bdc4b2fdbc30e6f470a589ec78d600\server\out\vs\workbench\contrib\terminal\common\scripts\shellIntegration-bash.sh"
ps aux | grep evolution
cd evolution-api && ls -la
cd evolution-api && tail -n 100 evolution-api.log | grep -i error
cd ~/evolution-api && cat docker-compose.yaml
docker ps -a
systemctl status | grep -i evolution
cd ~/evolution-api && ls -la | grep log
cd ~/evolution-api && tail -n 200 evolution-api.log
cd ~/evolution-api && ps -ef | grep node
systemctl list-unit-files | grep evolution
cd ~/evolution-api && cat .env
cd ~/evolution-api && npm run -s
cd ~/evolution-api && cat package.json
cd ~/evolution-api && find . -name "*.service" | xargs cat
which pm2 && pm2 list
cd ~/evolution-api && find . -name "*.sh" -type f | xargs ls -la
cd ~/evolution-api && cat local_install.sh
cd ~/evolution-api && grep -r "start" --include="*.sh" .
. "\root\.cursor-server\cli\servers\Stable-02270c8441bdc4b2fdbc30e6f470a589ec78d600\server\out\vs\workbench\contrib\terminal\common\scripts\shellIntegration-bash.sh"
cd ~/evolution-api && pkill -f "node.*evolution"
nc -zv 192.168.1.102 5432
nc -zv localhost 6379
apt-get update && apt-get install -y redis-server && systemctl start redis-server && systemctl status redis-server
. "\root\.cursor-server\cli\servers\Stable-02270c8441bdc4b2fdbc30e6f470a589ec78d600\server\out\vs\workbench\contrib\terminal\common\scripts\shellIntegration-bash.sh"
journalctl -u evolution-api -n 50
cd evolution-api/
npm start run
sudo systemctl enable evolution-api.service
sh local_install.sh 
. "\root\.cursor-server\cli\servers\Stable-02270c8441bdc4b2fdbc30e6f470a589ec78d600\server\out\vs\workbench\contrib\terminal\common\scripts\shellIntegration-bash.sh"
cd /root && pwd
cd evolution-api && git remote -v
cd /root && rm -rf evolution-api
git clone https://github.com/EvolutionAPI/evolution-api.git
ls -la evolution-api
rm -rf evolution-api && git clone https://github.com/EvolutionAPI/evolution-api.git
cd evolution-api && ls -la
git branch && git log --oneline -5
cd /root/evolution-api
# Stop any running processes
pkill -f evolution-api
pkill -f node
# Start fresh
npm start
npm install -g pm2
cd /root/evolution-api
pm2 start npm --name "evolution-api" -- start
pm2 restart evolution-api  # Use this instead of web restart
cd /root/evolution-api
# Stop any running processes
pkill -f evolution-api
pkill -f node
# Start fresh
npm start
. "\root\.cursor-server\cli\servers\Stable-02270c8441bdc4b2fdbc30e6f470a589ec78d600\server\out\vs\workbench\contrib\terminal\common\scripts\shellIntegration-bash.sh"
cd /root/evolution-api && npm start
npm start
. "\root\.cursor-server\cli\servers\Stable-02270c8441bdc4b2fdbc30e6f470a589ec78d600\server\out\vs\workbench\contrib\terminal\common\scripts\shellIntegration-bash.sh"
lsof -i :8080
kill 41396
sleep 5 && lsof -i :8080
cd /root/evolution-api && npm run db:deploy
npm run db:generate
pkill -f evolution-api && pkill -f node
cd evolution-api/
npm start
systemcel stop evolution-api
systemctl stop evolution-api
npm start
journalctl -f
systemctl start evolution-api
systemctl status evolution-api
systemctl stop evolution-api
npm start
cd /root/evolution-api
cp .env.example .env
cd /root/evolution-api
npm run db:deploy
npm start
cd evolution-api/
npm build
npm run build
npm start run
np install
npm install
npm start
cd /root/evolution-api
npm run db:generate
cd /root/evolution-api
rm -rf instances/*/store
npm start
systemctl restart evolution-api
systemctl stop evolution-api
. "\root\.cursor-server\cli\servers\Stable-02270c8441bdc4b2fdbc30e6f470a589ec78d600\server\out\vs\workbench\contrib\terminal\common\scripts\shellIntegration-bash.sh"
chmod +x /root/evolution-api/diagnostic.sh && /root/evolution-api/diagnostic.sh
apt-get update && apt-get install -y redis-server && systemctl enable redis-server && systemctl start redis-server
cd ~/evolution-api && npm run build && systemctl daemon-reload && systemctl enable evolution-api && systemctl start evolution-api
systemctl status evolution-api
systemctl start evolution-api
systemctl status evolution-api
journalctl -f
. "\root\.cursor-server\cli\servers\Stable-02270c8441bdc4b2fdbc30e6f470a589ec78d600\server\out\vs\workbench\contrib\terminal\common\scripts\shellIntegration-bash.sh"
cd /root/evolution-api && npm run db:studio
cd /root/evolution-api
rm -rf instances/*
# Restart the service
pkill -f evolution-api
npm start
ping google.com
npm start
. "\root\.cursor-server\cli\servers\Stable-02270c8441bdc4b2fdbc30e6f470a589ec78d600\server\out\vs\workbench\contrib\terminal\common\scripts\shellIntegration-bash.sh"
cd /root/evolution-api && grep -E "(WEBHOOK|API_KEY|INSTANCE)" .env | head -10
cd /root/evolution-api && ls -la instances/
cd /root/evolution-api && find instances/ -name "*.log" -o -name "*.json" | head -5
cd /root/evolution-api && psql -h 192.168.1.102 -U postgres -d evolution -c "SELECT name, status, created_at FROM \"Instance\";"
apt update && apt install -y postgresql-client
ping -c 3 8.8.8.8
ping -c 3 web.whatsapp.com
curl -I https://web.whatsapp.com --connect-timeout 10
cd /root/evolution-api && rm -rf instances/test* instances/384a19ba-235c-4be3-9e24-d9c8134da90f instances/de6211ef-6d04-4e97-ba7a-2a99f51ad35f instances/e1a3edc4-1447-4a15-863b-aa426b37ef17
pkill -f evolution-api && pkill -f node
cd evolution-api/
npm start
. "\root\.cursor-server\cli\servers\Stable-02270c8441bdc4b2fdbc30e6f470a589ec78d600\server\out\vs\workbench\contrib\terminal\common\scripts\shellIntegration-bash.sh"
cd /root/evolution-api && npm run build
. "\root\.cursor-server\cli\servers\Stable-02270c8441bdc4b2fdbc30e6f470a589ec78d600\server\out\vs\workbench\contrib\terminal\common\scripts\shellIntegration-bash.sh"
cd /root/evolution-api && npm run start:prod
. "\root\.cursor-server\cli\servers\Stable-02270c8441bdc4b2fdbc30e6f470a589ec78d600\server\out\vs\workbench\contrib\terminal\common\scripts\shellIntegration-bash.sh"
sleep 5 && lsof -i :8080
pkill -f evolution-api && pkill -f node
. "\root\.cursor-server\cli\servers\Stable-02270c8441bdc4b2fdbc30e6f470a589ec78d600\server\out\vs\workbench\contrib\terminal\common\scripts\shellIntegration-bash.sh"
cd /root/evolution-api && rm -rf instances/* && echo "Instance directories cleared"
cd /root/evolution-api && node cleanup_instances.js
. "\root\.cursor-server\cli\servers\Stable-02270c8441bdc4b2fdbc30e6f470a589ec78d600\server\out\vs\workbench\contrib\terminal\common\scripts\shellIntegration-bash.sh"
cd /root/evolution-api && npm run db:studio
. "\root\.cursor-server\cli\servers\Stable-02270c8441bdc4b2fdbc30e6f470a589ec78d600\server\out\vs\workbench\contrib\terminal\common\scripts\shellIntegration-bash.sh"
cd /root/evolution-api && npm run start:prod
. "\root\.cursor-server\cli\servers\Stable-02270c8441bdc4b2fdbc30e6f470a589ec78d600\server\out\vs\workbench\contrib\terminal\common\scripts\shellIntegration-bash.sh"
sleep 3 && lsof -i :8080
. "\root\.cursor-server\cli\servers\Stable-02270c8441bdc4b2fdbc30e6f470a589ec78d600\server\out\vs\workbench\contrib\terminal\common\scripts\shellIntegration-bash.sh"
cd /root/evolution-api && grep DATABASE_CONNECTION_URI .env
apt install -y postgresql-client
. "\root\.cursor-server\cli\servers\Stable-02270c8441bdc4b2fdbc30e6f470a589ec78d600\server\out\vs\workbench\contrib\terminal\common\scripts\shellIntegration-bash.sh"
cd /root/evolution-api && npm run start:prod
npm start
. "\root\.cursor-server\cli\servers\Stable-02270c8441bdc4b2fdbc30e6f470a589ec78d600\server\out\vs\workbench\contrib\terminal\common\scripts\shellIntegration-bash.sh"
lsof -i :8080
ps aux | grep -E "(evolution|node)" | grep -v grep
kill 262
lsof -i :8080
sleep 5 && lsof -i :8080
cd /root/evolution-api && find . -name "*test1*" -type f
ls -la instances/
cd /root/evolution-api && node -e "const { PrismaClient } = require('@prisma/client'); const prisma = new PrismaClient(); prisma.instance.findMany().then(instances => { console.log('Instances:', instances.map(i => i.name)); prisma.\$disconnect(); });"
cd /root/evolution-api && node cleanup_instances.js
rm -rf instances/* && redis-cli FLUSHALL
pkill -f evolution && pkill -f node
cd evolution-api/
npm start
apt install -y postgresql-client
. "\root\.cursor-server\cli\servers\Stable-02270c8441bdc4b2fdbc30e6f470a589ec78d600\server\out\vs\workbench\contrib\terminal\common\scripts\shellIntegration-bash.sh"
lsof -i :8080
ps aux | grep evolution | grep -v grep
sleep 3 && lsof -i :8080
cd /root/evolution-api && node fix_instances.js
curl -X POST http://192.168.1.111:8080/instance/create -H "Content-Type: application/json" -d '{"instanceName": "my-whatsapp", "integration": "WHATSAPP-BAILEYS"}'
cd /root/evolution-api && grep -E "(API_KEY|AUTHENTICATION)" .env
curl -X POST http://192.168.1.111:8080/instance/create -H "Content-Type: application/json" -H "apikey: 429683C4C977415CAAFCCE10F7D57E11" -d '{"instanceName": "my-whatsapp", "integration": "WHATSAPP-BAILEYS"}'
curl -X GET "http://192.168.1.111:8080/instance/connect/my-whatsapp" -H "apikey: 429683C4C977415CAAFCCE10F7D57E11"
cd /root/evolution-api && node fix_instances.js
ps aux | grep -E "evolution|7018" | grep -v grep
kill 7018
sleep 5 && lsof -i :8080
curl -X POST http://192.168.1.111:8080/instance/create -H "Content-Type: application/json" -H "apikey: 429683C4C977415CAAFCCE10F7D57E11" -d '{"instanceName": "test-qr", "integration": "WHATSAPP-BAILEYS", "rejectCall": false, "msgRetryCounterCache": false}'
curl -X GET "http://192.168.1.111:8080/instance/connect/test-qr" -H "apikey: 429683C4C977415CAAFCCE10F7D57E11"
curl -X GET "http://192.168.1.111:8080/instance/fetchInstances?instanceName=test-qr" -H "apikey: 429683C4C977415CAAFCCE10F7D57E11"
sleep 3 && curl -X GET "http://192.168.1.111:8080/instance/connect/test-qr" -H "apikey: 429683C4C977415CAAFCCE10F7D57E11"
curl -X GET "http://192.168.1.111:8080/instance/connectionState/test-qr" -H "apikey: 429683C4C977415CAAFCCE10F7D57E11"
ps aux | grep node | grep -v grep
cd /root/evolution-api && ls -la instances/
npm start
cd evolution-api/
npm start
. "\root\.cursor-server\cli\servers\Stable-02270c8441bdc4b2fdbc30e6f470a589ec78d600\server\out\vs\workbench\contrib\terminal\common\scripts\shellIntegration-bash.sh"
cd /root/evolution-api && npm run start:prod
. "\root\.cursor-server\cli\servers\Stable-02270c8441bdc4b2fdbc30e6f470a589ec78d600\server\out\vs\workbench\contrib\terminal\common\scripts\shellIntegration-bash.sh"
cd /root/evolution-api && rm -rf instances/* && npm run start:prod
. "\root\.cursor-server\cli\servers\Stable-02270c8441bdc4b2fdbc30e6f470a589ec78d600\server\out\vs\workbench\contrib\terminal\common\scripts\shellIntegration-bash.sh"
cd /root/evolution-api && node fix_instances.js
cd /root/evolution-api && ls -la .env*
cd /root/evolution-api && head -50 .env
cd /root/evolution-api && grep -E "(WEBHOOK|QR|BAILEYS|WA)" .env
kill 8821
sleep 5 && lsof -i :8080
cd /root/evolution-api && npm install axios
cd /root/evolution-api && node test_instance.js
ps aux | grep 10436
curl -X POST "http://192.168.1.111:8080/instance/restart/simple-test" -H "apikey: 429683C4C977415CAAFCCE10F7D57E11"
sleep 5 && curl -X GET "http://192.168.1.111:8080/instance/connect/simple-test" -H "apikey: 429683C4C977415CAAFCCE10F7D57E11"
curl -X GET "http://192.168.1.111:8080/instance/qrcode/simple-test" -H "apikey: 429683C4C977415CAAFCCE10F7D57E11"
. "\root\.cursor-server\cli\servers\Stable-02270c8441bdc4b2fdbc30e6f470a589ec78d600\server\out\vs\workbench\contrib\terminal\common\scripts\shellIntegration-bash.sh"
cd /root/evolution-api && rm -rf instances/* && NODE_ENV=production SERVER_URL=http://192.168.1.111:8080 npm run start:prod
cd evolution-api/
npm start
journalctl -f
git init
git remote add origin https://github.com/ahhim911/evolution-api.git
git add .
git commit -m "add typing action API"
git push
git push -u origin master
git remote set-url origin https://github.com/ahhim911/evolution-api.git
git push -u origin master
systemctl status evolution-api
systemctl restart evolution-api
systemctl status evolution-api
. "\root\.cursor-server\cli\servers\Stable-02270c8441bdc4b2fdbc30e6f470a589ec78d600\server\out\vs\workbench\contrib\terminal\common\scripts\shellIntegration-bash.sh"
cd evolution-api && npm run build
. "\root\.cursor-server\cli\servers\Stable-53b99ce608cba35127ae3a050c1738a959750860\server\out\vs\workbench\contrib\terminal\common\scripts\shellIntegration-bash.sh"
git --version && git config --list
. "\root\.cursor-server\cli\servers\Stable-53b99ce608cba35127ae3a050c1738a959750860\server\out\vs\workbench\contrib\terminal\common\scripts\shellIntegration-bash.sh"
ps aux | grep -i evolution
netstat -tlnp | grep :8080
curl -I http://192.168.1.111:8080/health 2>&1
curl -I http://192.168.1.111:8080/ 2>&1
curl http://192.168.1.111:8080/group/findByName/Edmond 2>&1
curl "http://192.168.1.111:8080/group/findByName/YOUR_INSTANCE_NAME?name=Edmond&getParticipants=true" -H "apikey: YOUR_API_KEY" 2>&1
curl "http://192.168.1.111:8080/instance/fetchInstances" 2>&1
curl -v "http://192.168.1.111:8080/instance/fetchInstances" 2>&1
ip addr show | grep -E "inet.*192\.168\.1\."
. "\root\.cursor-server\cli\servers\Stable-53b99ce608cba35127ae3a050c1738a959750860\server\out\vs\workbench\contrib\terminal\common\scripts\shellIntegration-bash.sh"
curl -H "apikey: YOUR_API_KEY" "http://192.168.1.111:8080/group/findByName/YOUR_INSTANCE_NAME?name=Edmond&getParticipants=true" 2>&1
find /root/evolution-api -name "*.env*" -type f 2>/dev/null
head -20 /root/evolution-api/.env
grep -i "api.*key\|authentication" /root/evolution-api/.env
curl -H "apikey: 429683C4C977415CAAFCCE10F7D57E11" "http://192.168.1.111:8080/instance/fetchInstances" 2>&1
curl -H "apikey: 429683C4C977415CAAFCCE10F7D57E11" "http://192.168.1.111:8080/group/findByName/Edmond?name=Perface%20Test%20group&getParticipants=true" 2>&1
curl -H "apikey: 429683C4C977415CAAFCCE10F7D57E11" "http://192.168.1.111:8080/group/fetchAllGroups/Edmond?getParticipants=true" 2>&1
curl -H "apikey: 429683C4C977415CAAFCCE10F7D57E11" "http://192.168.1.111:8080/group/findByName/Edmond?name=Perface%20Test%20group&getParticipants=false" 2>&1
. "\root\.cursor-server\cli\servers\Stable-53b99ce608cba35127ae3a050c1738a959750860\server\out\vs\workbench\contrib\terminal\common\scripts\shellIntegration-bash.sh"
cd /root/evolution-api && npm start
. "\root\.cursor-server\cli\servers\Stable-53b99ce608cba35127ae3a050c1738a959750860\server\out\vs\workbench\contrib\terminal\common\scripts\shellIntegration-bash.sh"
ps aux | grep -i evolution | grep -v grep
kill 220449
sleep 5 && curl -H "apikey: 429683C4C977415CAAFCCE10F7D57E11" "http://192.168.1.111:8080/group/findByName/Edmond?name=Testgroup&getParticipants=false" 2>&1
curl -H "apikey: 429683C4C977415CAAFCCE10F7D57E11" "http://192.168.1.111:8080/group/findByName/Edmond?name=Testgroup&getParticipants=true" 2>&1
curl -I http://192.168.1.111:8080/ 2>&1
curl -H "apikey: 429683C4C977415CAAFCCE10F7D57E11" "http://192.168.1.111:8080/instance/fetchInstances" 2>&1
curl -H "apikey: 429683C4C977415CAAFCCE10F7D57E11" "http://192.168.1.111:8080/instance/connectionState/Edmond" 2>&1
curl -X POST -H "apikey: 429683C4C977415CAAFCCE10F7D57E11" -H "Content-Type: application/json" -d '{"number":"85261478244147","text":"Test message"}' "http://192.168.1.111:8080/message/sendText/Edmond" 2>&1
curl -X POST -H "apikey: 429683C4C977415CAAFCCE10F7D57E11" "http://192.168.1.111:8080/instance/restart/Edmond" 2>&1
sleep 10 && curl -H "apikey: 429683C4C977415CAAFCCE10F7D57E11" "http://192.168.1.111:8080/instance/connect/Edmond" 2>&1
curl -X POST -H "apikey: 429683C4C977415CAAFCCE10F7D57E11" -H "Content-Type: application/json" -d '{"number":"120363401340275086@g.us","text":"Test group message"}' "http://192.168.1.111:8080/message/sendText/Edmond" 2>&1
ps aux | grep -i evolution | grep -v grep
curl -H "apikey: 429683C4C977415CAAFCCE10F7D57E11" "http://192.168.1.111:8080/instance/connect/Edmond" 2>&1
curl -H "apikey: 429683C4C977415CAAFCCE10F7D57E11" "http://192.168.1.111:8080/instance/delete/Edmond" 2>&1
curl -X DELETE -H "apikey: 429683C4C977415CAAFCCE10F7D57E11" "http://192.168.1.111:8080/instance/delete/Edmond" 2>&1
curl -X POST -H "apikey: 429683C4C977415CAAFCCE10F7D57E11" -H "Content-Type: application/json" -d '{"instanceName":"Edmond","qrcode":true}' "http://192.168.1.111:8080/instance/create" 2>&1
curl -H "apikey: 429683C4C977415CAAFCCE10F7D57E11" "http://192.168.1.111:8080/instance/fetchInstances" 2>&1
curl -X POST -H "apikey: 429683C4C977415CAAFCCE10F7D57E11" -H "Content-Type: application/json" -d '{"instanceName":"Edmond","qrcode":true}' "http://192.168.1.111:8080/instance/create" 2>&1
curl -H "apikey: jbaf9Vf6METJW2EQSzOi5NV3lhabp7sb" "http://192.168.1.111:8080/group/findByName/Steven%20Sing%20Ho?name=Testgroup&getParticipants=false" 2>&1
. "\root\.cursor-server\cli\servers\Stable-53b99ce608cba35127ae3a050c1738a959750860\server\out\vs\workbench\contrib\terminal\common\scripts\shellIntegration-bash.sh"
curl -H "apikey: cBopjEYOHuqSZHsOwDs2k15gAXdwDAyp" "http://192.168.1.111:8080/group/fetchAllGroups/Edmond?getParticipants=false" 2>&1
. "\root\.cursor-server\cli\servers\Stable-53b99ce608cba35127ae3a050c1738a959750860\server\out\vs\workbench\contrib\terminal\common\scripts\shellIntegration-bash.sh"
curl -H "apikey: 429683C4C977415CAAFCCE10F7D57E11" "http://192.168.1.111:8080/instance/fetchInstances" 2>&1
curl -H "apikey: cBopjEYOHuqSZHsOwDs2k15gAXdwDAyp" "http://192.168.1.111:8080/group/fetchAllGroups/Edmond?getParticipants=false" 2>&1
. "\root\.cursor-server\cli\servers\Stable-53b99ce608cba35127ae3a050c1738a959750860\server\out\vs\workbench\contrib\terminal\common\scripts\shellIntegration-bash.sh"
ps aux | grep -i "npm\|tsc\|tsup" | grep -v grep
ps aux | grep -i evolution | grep -v grep
curl -H "apikey: 429683C4C977415CAAFCCE10F7D57E11" "http://192.168.1.111:8080/group/findByName/Edmond?name=Perface%20Test%20group&getParticipants=false" 2>&1
grep -n "findByName" /root/evolution-api/dist/api/routes/group.router.js
curl -H "apikey: 429683C4C977415CAAFCCE10F7D57E11" "http://192.168.1.111:8080/group/findByName/Edmond?name=Perface%20Test%20group&getParticipants=false" 2>&1
systemctl start evolution-api
systemctl status evolution-api
curl -H "apikey: 429683C4C977415CAAFCCE10F7D57E11" "http://192.168.1.111:8080/group/findByName/Edmond?name=Perface%20Test%20group&getParticipants=false" 2>&1
journalctl -f
. "\root\.cursor-server\cli\servers\Stable-53b99ce608cba35127ae3a050c1738a959750860\server\out\vs\workbench\contrib\terminal\common\scripts\shellIntegration-bash.sh"
ps aux | grep -i "npm\|tsc\|tsup" | grep -v grep
cd /root/evolution-api && npm run build 2>&1 | head -50
cd /root/evolution-api && npm run build
. "\root\.cursor-server\cli\servers\Stable-53b99ce608cba35127ae3a050c1738a959750860\server\out\vs\workbench\contrib\terminal\common\scripts\shellIntegration-bash.sh"
cd /root/evolution-api && pm2 restart all
ps aux | grep -i evolution
curl -H "apikey: 429683C4C977415CAAFCCE10F7D57E11" "http://192.168.1.111:8080/group/findByName/Edmond?name=Perface%20Test%20group&getParticipants=false" 2>&1
cd /root/evolution-api && npm run build
grep -n "findByName" /root/evolution-api/dist/api/routes/group.router.js
grep -n "routerPath" /root/evolution-api/dist/api/routes/group.router.js | head -10
cd /root/evolution-api && npm run build
. "\root\.cursor-server\cli\servers\Stable-53b99ce608cba35127ae3a050c1738a959750860\server\out\vs\workbench\contrib\terminal\common\scripts\shellIntegration-bash.sh"
curl -I "http://192.168.1.111:8080/" 2>&1
curl -X POST -H "apikey: cBopjEYOHuqSZHsOwDs2k15gAXdwDAyp" -H "Content-Type: application/json" -d '{"number":"120363401340275086@g.us","text":"Test message"}' "http://192.168.1.111:8080/message/sendText/Edmond" 2>&1
curl -H "apikey: cBopjEYOHuqSZHsOwDs2k15gAXdwDAyp" "http://192.168.1.111:8080/group/findByName/Edmond?name=Testgroup&getParticipants=false" 2>&1
curl -X POST -H "apikey: jbaf9Vf6METJW2EQSzOi5NV3lhabp7sb" -H "Content-Type: application/json" -d '{"number":"120363401340275086@g.us","text":"Test message from Steven"}' "http://192.168.1.111:8080/message/sendText/Steven%20Sing%20Ho" 2>&1
curl -X POST -H "apikey: cBopjEYOHuqSZHsOwDs2k15gAXdwDAyp" "http://192.168.1.111:8080/instance/restart/Edmond" 2>&1
sleep 15 && curl -X POST -H "apikey: cBopjEYOHuqSZHsOwDs2k15gAXdwDAyp" -H "Content-Type: application/json" -d '{"number":"120363401340275086@g.us","text":"Test message after restart"}' "http://192.168.1.111:8080/message/sendText/Edmond" 2>&1
. "\root\.cursor-server\cli\servers\Stable-53b99ce608cba35127ae3a050c1738a959750860\server\out\vs\workbench\contrib\terminal\common\scripts\shellIntegration-bash.sh"
curl -X POST -H "apikey: cBopjEYOHuqSZHsOwDs2k15gAXdwDAyp" -H "Content-Type: application/json" -d '{"number":"120363401340275086@g.us","text":"Test message after restart"}' "http://192.168.1.111:8080/message/sendText/Edmond" 2>&1
curl -H "apikey: cBopjEYOHuqSZHsOwDs2k15gAXdwDAyp" "http://192.168.1.111:8080/instance/connectionState/Edmond" 2>&1
curl -H "apikey: cBopjEYOHuqSZHsOwDs2k15gAXdwDAyp" "http://192.168.1.111:8080/group/fetchAllGroups/Edmond?getParticipants=false" 2>&1 | head -20
curl -H "apikey: cBopjEYOHuqSZHsOwDs2k15gAXdwDAyp" "http://192.168.1.111:8080/instance/fetchInstances" 2>&1 | grep -A5 -B5 "Edmond"
curl -X POST -H "apikey: cBopjEYOHuqSZHsOwDs2k15gAXdwDAyp" -H "Content-Type: application/json" -d '{"number":"85261478244147","text":"Self test message"}' "http://192.168.1.111:8080/message/sendText/Edmond" 2>&1
curl -H "apikey: cBopjEYOHuqSZHsOwDs2k15gAXdwDAyp" "http://192.168.1.111:8080/instance/connect/Edmond" 2>&1
sleep 5 && curl -X POST -H "apikey: cBopjEYOHuqSZHsOwDs2k15gAXdwDAyp" -H "Content-Type: application/json" -d '{"where":{}}' "http://192.168.1.111:8080/chat/findContacts/Edmond" 2>&1
. "\root\.cursor-server\cli\servers\Stable-53b99ce608cba35127ae3a050c1738a959750860\server\out\vs\workbench\contrib\terminal\common\scripts\shellIntegration-bash.sh"
curl -X POST -H "apikey: cBopjEYOHuqSZHsOwDs2k15gAXdwDAyp" -H "Content-Type: application/json" -d '{"number":"120363401340275086@g.us","text":"Test group message from API"}' "http://192.168.1.111:8080/message/sendText/Edmond" 2>&1
curl -H "apikey: cBopjEYOHuqSZHsOwDs2k15gAXdwDAyp" "http://192.168.1.111:8080/group/fetchAllGroups/Edmond?getParticipants=false" 2>&1 | jq '.[0:3]' 2>/dev/null || curl -H "apikey: cBopjEYOHuqSZHsOwDs2k15gAXdwDAyp" "http://192.168.1.111:8080/group/fetchAllGroups/Edmond?getParticipants=false" 2>&1 | head -20
. "\root\.cursor-server\cli\servers\Stable-53b99ce608cba35127ae3a050c1738a959750860\server\out\vs\workbench\contrib\terminal\common\scripts\shellIntegration-bash.sh"
curl -X GET "http://192.168.1.111:8080/instance/fetchInstances" -H "apikey: 429683C4C977415CAAFCCE10F7D57E11" | jq '.'
curl -X GET "http://192.168.1.111:8080/instance/fetchInstances" -H "apikey: 429683C4C977415CAAFCCE10F7D57E11"
curl -X GET "http://192.168.1.111:8080/instance/connectionState/test-bot" -H "apikey: 429683C4C977415CAAFCCE10F7D57E11"
curl -X PUT "http://192.168.1.111:8080/instance/restart/test-bot" -H "apikey: 429683C4C977415CAAFCCE10F7D57E11"
curl -X GET "http://192.168.1.111:8080/instance/connect/test-bot" -H "apikey: 429683C4C977415CAAFCCE10F7D57E11"
journalctl -u evolution-api --no-pager -n 20
journalctl -u evolution-api --no-pager -n 50 | grep -i "test-bot"
curl -X DELETE "http://192.168.1.111:8080/instance/delete/test-bot" -H "apikey: 429683C4C977415CAAFCCE10F7D57E11"
curl -X POST "http://192.168.1.111:8080/instance/create" -H "Content-Type: application/json" -H "apikey: 429683C4C977415CAAFCCE10F7D57E11" -d '{"instanceName": "test-bot", "integration": "WHATSAPP-BAILEYS"}'
curl -X GET "http://192.168.1.111:8080/instance/connect/test-bot" -H "apikey: 429683C4C977415CAAFCCE10F7D57E11"
. "\root\.cursor-server\cli\servers\Stable-53b99ce608cba35127ae3a050c1738a959750860\server\out\vs\workbench\contrib\terminal\common\scripts\shellIntegration-bash.sh"
curl -X GET "http://192.168.1.111:8080/instance/fetchInstances" -H "apikey: 429683C4C977415CAAFCCE10F7D57E11" | grep -A 5 -B 5 "test-bot"
curl -X POST "http://192.168.1.111:8080/message/sendText/test-bot" -H "Content-Type: application/json" -H "apikey: 429683C4C977415CAAFCCE10F7D57E11" -d '{"number": "85269080613", "text": "Test message - connection working!"}'
curl -X GET "http://192.168.1.111:8080/instance/connectionState/test-bot" -H "apikey: 429683C4C977415CAAFCCE10F7D57E11" | head -20
curl -X GET "http://192.168.1.111:8080/instance/connectionState/test-bot" -H "apikey: 429683C4C977415CAAFCCE10F7D57E11"
find /root/evolution-api -name "*test-bot*" -type f 2>/dev/null
ls -la /root/evolution-api/instances/
ls -la /root/evolution-api/instances/5c5fb270-91a8-448e-9436-878fb35e2f5d/
journalctl -u evolution-api --no-pager -n 100 | grep -E "(test-bot|session|Session|connect|5c5fb270)" | tail -20
curl -X DELETE "http://192.168.1.111:8080/instance/logout/test-bot" -H "apikey: 429683C4C977415CAAFCCE10F7D57E11"
curl -X GET "http://192.168.1.111:8080/instance/connect/test-bot" -H "apikey: 429683C4C977415CAAFCCE10F7D57E11"
find /root/evolution-api -name "*.env*" -type f 2>/dev/null
cat /root/evolution-api/.env | grep -E "(CACHE|REDIS)" | head -10
cd /root/evolution-api && sed -i 's/CACHE_REDIS_PREFIX_KEY=evolution/CACHE_REDIS_PREFIX_KEY=evolution_v2/' .env
grep "CACHE_REDIS_PREFIX_KEY" /root/evolution-api/.env
systemctl restart evolution-api
sleep 5 && systemctl status evolution-api --no-pager
curl -X GET "http://192.168.1.111:8080/instance/fetchInstances" -H "apikey: 429683C4C977415CAAFCCE10F7D57E11" | grep -E "name|connectionStatus" | grep -A1 "name"
curl -X GET "http://192.168.1.111:8080/instance/connect/test-bot" -H "apikey: 429683C4C977415CAAFCCE10F7D57E11" | grep -o '"base64":"[^"]*"' | head -1
curl -X POST "http://192.168.1.111:8080/message/sendText/Edmond" -H "Content-Type: application/json" -H "apikey: 429683C4C977415CAAFCCE10F7D57E11" -d '{"number": "61478244147", "text": "Test after Redis cache prefix change - SessionError fix"}'
curl -X POST "http://192.168.1.111:8080/message/sendText/Edmond" -H "Content-Type: application/json" -H "apikey: 429683C4C977415CAAFCCE10F7D57E11" -d '{"number": "120363418478986376@g.us", "text": "Group test after Redis cache prefix change - SessionError should be fixed!"}'
journalctl -u evolution-api --no-pager -n 20 | grep -E "(SessionError|session|Session)"
cd /root/evolution-api && npm list baileys
cd /root/evolution-api && npm uninstall baileys
cd /root/evolution-api && npm install @whiskeysockets/baileys@nightly
cd /root/evolution-api && npm install baileys@6.7.19-alpha.0
cd /root/evolution-api && npm install https://github.com/WhiskeySockets/Baileys/releases/download/nightly/package.tgz
cd /root/evolution-api && npm install github:WhiskeySockets/Baileys#nightly
cd /root/evolution-api && npm list baileys
cd /root/evolution-api && npm run build
systemctl restart evolution-api
systemctl restart evolution-api && sleep 3 && systemctl status evolution-api --no-pager
systemctl restart evolution-api
. "\root\.cursor-server\cli\servers\Stable-53b99ce608cba35127ae3a050c1738a959750860\server\out\vs\workbench\contrib\terminal\common\scripts\shellIntegration-bash.sh"
sleep 5 && systemctl status evolution-api --no-pager
curl -X POST "http://192.168.1.111:8080/message/sendText/Edmond" -H "Content-Type: application/json" -H "apikey: 429683C4C977415CAAFCCE10F7D57E11" -d '{"number": "120363418478986376@g.us", "text": "🎉 GROUP MESSAGE TEST - SessionError fix with updated Baileys v6.7.18! This should work now without any session errors."}'
journalctl -u evolution-api --no-pager -n 10 | grep -E "(SessionError|session|Session|Baileys|baileys)"
cd /root/evolution-api && npm list baileys
redis-cli -p 6379 -n 6 FLUSHDB
systemctl restart evolution-api && sleep 5
systemctl status evolution-api --no-pager | head -10
curl -X POST "http://192.168.1.111:8080/message/sendText/Edmond" -H "Content-Type: application/json" -H "apikey: 429683C4C977415CAAFCCE10F7D57E11" -d '{"number": "61478244147", "text": "Individual message test after cache clear and Baileys update"}'
curl -X POST "http://192.168.1.111:8080/message/sendText/Edmond" -H "Content-Type: application/json" -H "apikey: 429683C4C977415CAAFCCE10F7D57E11" -d '{"number": "120363418478986376@g.us", "text": "GROUP TEST - Baileys 6.7.18 with fresh cache - SessionError should be fixed!"}'
. "\root\.cursor-server\cli\servers\Stable-53b99ce608cba35127ae3a050c1738a959750860\server\out\vs\workbench\contrib\terminal\common\scripts\shellIntegration-bash.sh"
curl -H "apikey: cBopjEYOHuqSZHsOwDs2k15gAXdwDAyp" "http://192.168.1.111:8080/group/fetchAllGroups/Edmond?getParticipants=true" 2>&1 | head -50
curl -X POST -H "apikey: cBopjEYOHuqSZHsOwDs2k15gAXdwDAyp" -H "Content-Type: application/json" -d '{"where":{}}' "http://192.168.1.111:8080/chat/findChats/Edmond" 2>&1 | grep -o '"remoteJid":"[^"]*@g.us"' | head -5
curl -X POST -H "apikey: cBopjEYOHuqSZHsOwDs2k15gAXdwDAyp" -H "Content-Type: application/json" -d '{"number":"120363418331703847@g.us","text":"Test message to different group"}' "http://192.168.1.111:8080/message/sendText/Edmond" 2>&1
curl -X POST -H "apikey: cBopjEYOHuqSZHsOwDs2k15gAXdwDAyp" -H "Content-Type: application/json" -d '{"number":"120363401340275086","text":"Test without @g.us suffix"}' "http://192.168.1.111:8080/message/sendText/Edmond" 2>&1
curl -H "apikey: cBopjEYOHuqSZHsOwDs2k15gAXdwDAyp" "http://192.168.1.111:8080/group/findGroupInfos/Edmond?groupJid=120363401340275086@g.us" 2>&1
curl -H "apikey: cBopjEYOHuqSZHsOwDs2k15gAXdwDAyp" "http://192.168.1.111:8080/instance/fetchInstances" 2>&1 | grep -A2 -B2 "ownerJid"
curl -H "apikey: cBopjEYOHuqSZHsOwDs2k15gAXdwDAyp" "http://192.168.1.111:8080/group/findGroupInfos/Edmond?groupJid=85290938408-1456471165@g.us" 2>&1
curl -X POST -H "apikey: cBopjEYOHuqSZHsOwDs2k15gAXdwDAyp" -H "Content-Type: application/json" -d '{"number":"85290938408-1456471165@g.us","text":"Test message to team group"}' "http://192.168.1.111:8080/message/sendText/Edmond" 2>&1
curl -H "apikey: cBopjEYOHuqSZHsOwDs2k15gAXdwDAyp" "http://192.168.1.111:8080/group/findGroupInfos/Edmond?groupJid=85251950954-1589860754@g.us" 2>&1
curl -X POST -H "apikey: cBopjEYOHuqSZHsOwDs2k15gAXdwDAyp" -H "Content-Type: application/json" -d '{"number":"85251950954-1589860754@g.us","text":"Test message to 31/5 週會準備 group"}' "http://192.168.1.111:8080/message/sendText/Edmond" 2>&1
curl -X POST -H "apikey: cBopjEYOHuqSZHsOwDs2k15gAXdwDAyp" -H "Content-Type: application/json" -d '{"number":"61478244147","text":"Self test message"}' "http://192.168.1.111:8080/message/sendText/Edmond" 2>&1
curl -X POST -H "apikey: 253F9230935C-4AAC-870E-CF259A5A3E93" -H "Content-Type: application/json" -d '{"number": "120363401581050740@g.us","text":"Test message to team group"}' "http://192.168.1.111:8080/message/sendText/test-bot" 2>&1
curl -X POST -H "apikey: 253F9230935C-4AAC-870E-CF259A5A3E93" -H "Content-Type: application/json" -d '{"number": "120363401581050740","text":"Test message to team group"}' "http://192.168.1.111:8080/message/sendText/test-bot" 2>&1
curl -X POST -H "apikey: 253F9230935C-4AAC-870E-CF259A5A3E93" -H "Content-Type: application/json" -d '{"number": "120363401581050740@g.us","text":"Test message to team group"}' "http://192.168.1.111:8080/message/sendText/test-bot" 2>&1
curl -X POST -H "apikey: cBopjEYOHuqSZHsOwDs2k15gAXdwDAyp" -H "Content-Type: application/json" -d '{"number":"120363401340275086@g.us","text":"Test group message from API"}' "http://192.168.1.111:8080/message/sendText/Edmond" 2>&1
systemctl restart evolution-api
systemctl restart evolultion-api
systemctl restart evolution-api
. "\root\.cursor-server\cli\servers\Stable-53b99ce608cba35127ae3a050c1738a959750860\server\out\vs\workbench\contrib\terminal\common\scripts\shellIntegration-bash.sh"
cd evolution-api && git rm --cached .cursor/mcp.json
cd evolution-api && git status
git status
git log --oneline -5
