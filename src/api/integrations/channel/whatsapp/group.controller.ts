import { Controller, Get, Param, Query } from '@nestjs/common';
import { WAMonitoringService } from '@api/services/monitor.service'; // Use the correct import path

@Controller('group')
export class GroupController {
  constructor(private readonly waMonitor: WAMonitoringService) {}
  
  @Get('findByName/:instance')
  public async findGroupByName(
    @Param('instance') instance: string,
    @Query('name') name: string,
    @Query('getParticipants') getParticipants: string = 'false'
  ) {
    const waInstance = this.waMonitor.waInstances[instance];
    if (!waInstance) {
      throw new Error(`Instance "${instance}" not found`);
    }
    
    const result = await waInstance.findGroupByName(name, { getParticipants });
    return result;
  }
}
