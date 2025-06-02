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
