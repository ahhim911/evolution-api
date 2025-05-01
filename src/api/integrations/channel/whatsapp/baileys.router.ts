import { RouterBroker } from '@api/abstract/abstract.router';
import { InstanceDto } from '@api/dto/instance.dto';
import { HttpStatus } from '@api/routes/index.router';
import { baileysController } from '@api/server.module';
import { instanceSchema } from '@validate/instance.schema';
import { RequestHandler, Router } from 'express';
import { WAMonitoringService } from '@services/wa-monitoring.service';

export class BaileysRouter extends RouterBroker {
  constructor(private readonly waMonitor: WAMonitoringService, ...guards: RequestHandler[]) {
    super();
    this.router
      .post(this.routerPath('onWhatsapp'), ...guards, async (req, res) => {
        const response = await this.dataValidate<InstanceDto>({
          request: req,
          schema: instanceSchema,
          ClassRef: InstanceDto,
          execute: (instance) => baileysController.onWhatsapp(instance, req.body),
        });

        res.status(HttpStatus.OK).json(response);
      })
      .post(this.routerPath('profilePictureUrl'), ...guards, async (req, res) => {
        const response = await this.dataValidate<InstanceDto>({
          request: req,
          schema: instanceSchema,
          ClassRef: InstanceDto,
          execute: (instance) => baileysController.profilePictureUrl(instance, req.body),
        });

        res.status(HttpStatus.OK).json(response);
      })
      .post(
        this.routerPath('group-jid'),
        ...guards,
        async (req, res) => {
          const response = await this.dataValidate<InstanceDto>({
            request: req,
            schema: instanceSchema,
            ClassRef: InstanceDto,
            execute: (instance) => baileysController.getGroupJid(
              instance.instanceName,
              req.body.subject
            ),
          });

          res.status(HttpStatus.OK).json(response);
        },
      )
      .post(this.routerPath('assertSessions'), ...guards, async (req, res) => {
        const response = await this.dataValidate<InstanceDto>({
          request: req,
          schema: instanceSchema,
          ClassRef: InstanceDto,
          execute: (instance) => baileysController.assertSessions(instance, req.body),
        });

        res.status(HttpStatus.OK).json(response);
      })
      .post(this.routerPath('createParticipantNodes'), ...guards, async (req, res) => {
        const response = await this.dataValidate<InstanceDto>({
          request: req,
          schema: instanceSchema,
          ClassRef: InstanceDto,
          execute: (instance) => baileysController.createParticipantNodes(instance, req.body),
        });

        res.status(HttpStatus.OK).json(response);
      })
      .post(this.routerPath('getUSyncDevices'), ...guards, async (req, res) => {
        const response = await this.dataValidate<InstanceDto>({
          request: req,
          schema: instanceSchema,
          ClassRef: InstanceDto,
          execute: (instance) => baileysController.getUSyncDevices(instance, req.body),
        });

        res.status(HttpStatus.OK).json(response);
      })
      .post(this.routerPath('generateMessageTag'), ...guards, async (req, res) => {
        const response = await this.dataValidate<InstanceDto>({
          request: req,
          schema: instanceSchema,
          ClassRef: InstanceDto,
          execute: (instance) => baileysController.generateMessageTag(instance),
        });

        res.status(HttpStatus.OK).json(response);
      })
      .post(this.routerPath('sendNode'), ...guards, async (req, res) => {
        const response = await this.dataValidate<InstanceDto>({
          request: req,
          schema: instanceSchema,
          ClassRef: InstanceDto,
          execute: (instance) => baileysController.sendNode(instance, req.body),
        });

        res.status(HttpStatus.OK).json(response);
      })
      .post(this.routerPath('signalRepositoryDecryptMessage'), ...guards, async (req, res) => {
        const response = await this.dataValidate<InstanceDto>({
          request: req,
          schema: instanceSchema,
          ClassRef: InstanceDto,
          execute: (instance) => baileysController.signalRepositoryDecryptMessage(instance, req.body),
        });

        res.status(HttpStatus.OK).json(response);
      })
      .post(this.routerPath('getAuthState'), ...guards, async (req, res) => {
        const response = await this.dataValidate<InstanceDto>({
          request: req,
          schema: instanceSchema,
          ClassRef: InstanceDto,
          execute: (instance) => baileysController.getAuthState(instance),
        });

        res.status(HttpStatus.OK).json(response);
      })
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
          
          const result = await waInstance.findGroupByName(name, { getParticipants });
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
