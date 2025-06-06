const { PrismaClient } = require('@prisma/client');

async function cleanupInstances() {
  const prisma = new PrismaClient();
  
  try {
    console.log('Connecting to database...');
    
    // Delete all instances
    const deletedInstances = await prisma.instance.deleteMany({});
    console.log(`Deleted ${deletedInstances.count} instances from database`);
    
    // Also clean up related data
    await prisma.chat.deleteMany({});
    console.log('Deleted all chats');
    
    await prisma.contact.deleteMany({});
    console.log('Deleted all contacts');
    
    await prisma.message.deleteMany({});
    console.log('Deleted all messages');
    
    console.log('Database cleanup completed successfully!');
    
  } catch (error) {
    console.error('Error cleaning up database:', error);
  } finally {
    await prisma.$disconnect();
  }
}

cleanupInstances(); 