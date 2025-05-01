import { InstanceDto } from '@api/dto/instance.dto';
import { WAMonitoringService } from '@api/services/monitor.service';
import {
  Controller,
  Get,
  Body,  
  Query,
  Post,
} from '@nestjs/common';


@Controller('whatsapp')
export class BaileysController {
  constructor(private readonly waMonitor: WAMonitoringService) {}

  public async onWhatsapp({ instanceName }: InstanceDto, body: any) {
    const instance = this.waMonitor.waInstances[instanceName];

    return instance.baileysOnWhatsapp(body?.jid);
  }

  public async profilePictureUrl({ instanceName }: InstanceDto, body: any) {
    const instance = this.waMonitor.waInstances[instanceName];

    return instance.baileysProfilePictureUrl(body?.jid, body?.type, body?.timeoutMs);
  }

  public async assertSessions({ instanceName }: InstanceDto, body: any) {
    const instance = this.waMonitor.waInstances[instanceName];

    return instance.baileysAssertSessions(body?.jids, body?.force);
  }

  public async createParticipantNodes({ instanceName }: InstanceDto, body: any) {
    const instance = this.waMonitor.waInstances[instanceName];

    return instance.baileysCreateParticipantNodes(body?.jids, body?.message, body?.extraAttrs);
  }

  public async getUSyncDevices({ instanceName }: InstanceDto, body: any) {
    const instance = this.waMonitor.waInstances[instanceName];

    return instance.baileysGetUSyncDevices(body?.jids, body?.useCache, body?.ignoreZeroDevices);
  }

  public async generateMessageTag({ instanceName }: InstanceDto) {
    const instance = this.waMonitor.waInstances[instanceName];

    return instance.baileysGenerateMessageTag();
  }

  public async sendNode({ instanceName }: InstanceDto, body: any) {
    const instance = this.waMonitor.waInstances[instanceName];

    return instance.baileysSendNode(body?.stanza);
  }

  public async signalRepositoryDecryptMessage({ instanceName }: InstanceDto, body: any) {
    const instance = this.waMonitor.waInstances[instanceName];

    return instance.baileysSignalRepositoryDecryptMessage(body?.jid, body?.type, body?.ciphertext);
  }

  public async getAuthState({ instanceName }: InstanceDto) {
    const instance = this.waMonitor.waInstances[instanceName];

    return instance.baileysGetAuthState();
  }

  @Post('group-jid')
  public async getGroupJid(instance: InstanceDto) {
    const waInstance = this.waMonitor.waInstances[instance.instanceName];
    if (!waInstance) {
      throw new Error(`Instance "${instance.instanceName}" not found`);
    }
    const groupJid = await waInstance.getGroupJidByName(instance.subject);
    return { groupJid };
  }
}
