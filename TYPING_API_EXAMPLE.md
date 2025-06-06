# Typing Action API

This document explains how to use the new typing action API to simulate a "bot is typing..." indicator.

## Endpoint

`POST /message/sendTyping/{instance}`

## Description

This API allows you to send typing indicators to WhatsApp contacts, simulating when a bot or user is typing. This creates a more natural chat experience by showing the typing dots in the recipient's chat.

## Request Body

```json
{
  "number": "recipient_phone_number",
  "action": "start" | "stop"
}
```

### Parameters

- `number` (string, required): The recipient's phone number in international format (without +)
- `action` (string, required): Either "start" to begin typing indicator or "stop" to end it
- `delay` (number, optional): Delay in milliseconds
- `quoted` (object, optional): Message to quote/reply to
- `everyOne` (boolean, optional): Mention everyone in group
- `mentioned` (array, optional): Array of phone numbers to mention

## Examples

### 1. Basic Typing Start

```bash
curl -X POST "https://your-evolution-api.com/message/sendTyping/your-instance" \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer YOUR_API_KEY" \
  -d '{
    "number": "5511999999999",
    "action": "start"
  }'
```

### 2. Stop Typing

```bash
curl -X POST "https://your-evolution-api.com/message/sendTyping/your-instance" \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer YOUR_API_KEY" \
  -d '{
    "number": "5511999999999",
    "action": "stop"
  }'
```

### 3. Bot Conversation Flow with Typing

Here's a complete example of how to implement a bot conversation with typing indicators:

```javascript
const axios = require('axios');

const EVOLUTION_URL = 'https://your-evolution-api.com';
const INSTANCE = 'your-instance';
const API_KEY = 'your-api-key';

async function sendTypingIndicator(number, action) {
  return axios.post(`${EVOLUTION_URL}/message/sendTyping/${INSTANCE}`, {
    number,
    action
  }, {
    headers: { Authorization: `Bearer ${API_KEY}` }
  });
}

async function sendTextMessage(number, text) {
  return axios.post(`${EVOLUTION_URL}/message/sendText/${INSTANCE}`, {
    number,
    text
  }, {
    headers: { Authorization: `Bearer ${API_KEY}` }
  });
}

async function sendBotReply(number, message) {
  try {
    // 1. Start typing indicator
    await sendTypingIndicator(number, 'start');
    
    // 2. Wait a moment to simulate thinking/processing
    await new Promise(resolve => setTimeout(resolve, 2000));
    
    // 3. Send the actual message
    await sendTextMessage(number, message);
    
    // 4. Stop typing indicator (optional - usually auto-cleared)
    await sendTypingIndicator(number, 'stop');
    
    console.log('Message sent with typing indicator');
  } catch (error) {
    console.error('Error sending message:', error.response?.data || error.message);
  }
}

// Usage
sendBotReply('5511999999999', 'Hello! Thanks for your message. How can I help you today?');
```

### 4. Advanced Bot with Streaming-like Experience

```javascript
async function sendStreamingBotReply(number, fullMessage) {
  try {
    // Start typing
    await sendTypingIndicator(number, 'start');
    
    // Simulate processing time based on message length
    const processingTime = Math.min(fullMessage.length * 50, 5000); // Max 5 seconds
    await new Promise(resolve => setTimeout(resolve, processingTime));
    
    // Send the message
    await sendTextMessage(number, fullMessage);
    
    // Stop typing
    await sendTypingIndicator(number, 'stop');
  } catch (error) {
    console.error('Error:', error.response?.data || error.message);
  }
}

// Usage with different message lengths
sendStreamingBotReply('5511999999999', 'Sure!'); // Short message, quick typing
sendStreamingBotReply('5511999999999', 'I understand your question. Let me provide you with a detailed explanation about how this works and what you can expect from our service...'); // Longer message, longer typing
```

### 5. Webhook Integration Example

```javascript
// Express.js webhook handler
app.post('/webhook', async (req, res) => {
  const { data } = req.body;
  
  if (data.messageType === 'text') {
    const userNumber = data.key.remoteJid.replace('@s.whatsapp.net', '');
    const userMessage = data.message.conversation;
    
    // Process user message (call AI, database, etc.)
    const botResponse = await processUserMessage(userMessage);
    
    // Send response with typing indicator
    await sendBotReply(userNumber, botResponse);
  }
  
  res.sendStatus(200);
});

async function processUserMessage(message) {
  // Simulate AI processing or database lookup
  return "I received your message: " + message + ". Thank you for contacting us!";
}
```

## Response

```json
{
  "number": "5511999999999@s.whatsapp.net",
  "action": "start",
  "status": "success"
}
```

## Best Practices

1. **Don't over-delay**: Users don't like waiting more than 2-3 seconds for a response
2. **Match typing time to message length**: Longer messages should have slightly longer typing indicators
3. **Always stop typing**: While the system usually auto-clears when a message is sent, it's good practice to explicitly stop
4. **Handle errors gracefully**: If typing action fails, still send the message
5. **Consider rate limits**: Don't send too many typing actions in rapid succession

## Error Handling

The API will return standard HTTP status codes:

- `200`: Success
- `400`: Bad Request (invalid parameters)
- `404`: Instance not found
- `401`: Unauthorized

Example error response:
```json
{
  "error": "Number not found on WhatsApp",
  "statusCode": 400
}
```

## Integration with AI Chatbots

This API works perfectly with AI chatbots like OpenAI GPT, Claude, or any other conversational AI:

```javascript
async function handleAIChat(userNumber, userMessage) {
  // Start typing immediately
  await sendTypingIndicator(userNumber, 'start');
  
  try {
    // Call your AI service
    const aiResponse = await openai.chat.completions.create({
      model: "gpt-3.5-turbo",
      messages: [{ role: "user", content: userMessage }]
    });
    
    const botMessage = aiResponse.choices[0].message.content;
    
    // Send the AI response
    await sendTextMessage(userNumber, botMessage);
    
  } catch (error) {
    console.error('AI Error:', error);
    await sendTextMessage(userNumber, 'Sorry, I encountered an error. Please try again.');
  } finally {
    // Always stop typing
    await sendTypingIndicator(userNumber, 'stop');
  }
}
```

This creates a natural conversation flow where users see the typing indicator while the AI is processing their request. 