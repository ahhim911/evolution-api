import { WAMonitoringService } from '@api/services/monitor.service'; // Use the correct import path

export class GroupController {
  constructor(private readonly waMonitor: WAMonitoringService) {}
  
  public async findGroupByName(
    instance: string,
    name: string,
    getParticipants: string = 'false'
  ) {
    const waInstance = this.waMonitor.waInstances[instance];
    if (!waInstance) {
      throw new Error(`Instance "${instance}" not found`);
    }
    
    const result = await waInstance.findGroupByName(name, { getParticipants });
    return result;
  }
}
