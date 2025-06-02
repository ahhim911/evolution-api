const { PrismaClient } = require('@prisma/client');

async function monitorAndCleanInstances() {
  const prisma = new PrismaClient();
  
  try {
    console.log('Monitoring instances...');
    
    // Get all instances
    const instances = await prisma.instance.findMany();
    console.log(`Found ${instances.length} instances in database`);
    
    if (instances.length > 0) {
      instances.forEach(instance => {
        console.log(`- Instance: ${instance.name} (ID: ${instance.id})`);
      });
      
      // Clean up all instances to stop restart loops
      const deleted = await prisma.instance.deleteMany();
      console.log(`Cleaned up ${deleted.count} instances`);
      
      // Also clean related data
      await prisma.chat.deleteMany();
      await prisma.contact.deleteMany(); 
      await prisma.message.deleteMany();
      
      console.log('Database completely cleaned');
    } else {
      console.log('Database is clean - no instances found');
    }
    
  } catch (error) {
    console.error('Error:', error);
  } finally {
    await prisma.$disconnect();
  }
}

monitorAndCleanInstances(); 