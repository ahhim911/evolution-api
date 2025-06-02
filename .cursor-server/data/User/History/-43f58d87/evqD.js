const axios = require('axios');

const API_URL = 'http://192.168.1.111:8080';
const API_KEY = '429683C4C977415CAAFCCE10F7D57E11';

async function testInstanceCreation() {
  try {
    console.log('🔄 Creating instance...');
    
    const createResponse = await axios.post(`${API_URL}/instance/create`, {
      instanceName: 'simple-test',
      integration: 'WHATSAPP-BAILEYS'
    }, {
      headers: {
        'apikey': API_KEY,
        'Content-Type': 'application/json'
      }
    });
    
    console.log('✅ Instance created:', createResponse.data.instance.instanceName);
    console.log('📋 Instance ID:', createResponse.data.instance.instanceId);
    
    // Wait a bit for initialization
    console.log('⏳ Waiting 10 seconds for initialization...');
    await new Promise(resolve => setTimeout(resolve, 10000));
    
    // Try to get QR code
    console.log('🔄 Requesting QR code...');
    const qrResponse = await axios.get(`${API_URL}/instance/connect/simple-test`, {
      headers: {
        'apikey': API_KEY
      }
    });
    
    console.log('📱 QR Response:', qrResponse.data);
    
    // Check instance status
    const statusResponse = await axios.get(`${API_URL}/instance/fetchInstances?instanceName=simple-test`, {
      headers: {
        'apikey': API_KEY
      }
    });
    
    console.log('📊 Instance Status:', statusResponse.data[0].connectionStatus);
    
  } catch (error) {
    console.error('❌ Error:', error.response?.data || error.message);
  }
}

testInstanceCreation(); 