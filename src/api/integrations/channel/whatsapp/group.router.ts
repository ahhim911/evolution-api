import { RouterBroker } from '@api/abstract/abstract.router';
import { HttpStatus } from '@api/routes/index.router';
import { WAMonitoringService } from '@api/services/monitor.service'; // Use the correct import path
import { RequestHandler, Router } from 'express';

export class GroupRouter extends RouterBroker {
  constructor(private readonly waMonitor: WAMonitoringService, ...guards: RequestHandler[]) {
    super();
    this.router
      .get(this.routerPath('findByName/:instance'), ...guards, async (req, res) => {
        try {
          const { instance } = req.params;
          const { name, getParticipants = 'false' } = req.query;
          
          const waInstance = this.waMonitor.waInstances[instance];
          if (!waInstance) {
            return res.status(HttpStatus.NOT_FOUND).json({
              error: `Instance "${instance}" not found`
            });
          }
          
          const result = await waInstance.findGroupByName(name as string, { getParticipants: getParticipants as string });
          return res.status(HttpStatus.OK).json(result);
        } catch (error) {
          return res.status(HttpStatus.INTERNAL_SERVER_ERROR).json({
            error: error.message
          });
        }
      });
  }

  public readonly router: Router = Router();
}
