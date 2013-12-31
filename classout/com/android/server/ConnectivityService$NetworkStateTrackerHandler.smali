.class Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;
.super Landroid/os/Handler;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkStateTrackerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method public constructor <init>(Lcom/android/server/ConnectivityService;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 11

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget v5, p1, Landroid/os/Message;->what:I

    sparse-switch v5, :sswitch_data_1b6

    :goto_7
    return-void

    :sswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v3, v5, :cond_1c

    sget-object v5, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v5, :cond_4e

    :cond_1c
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ConnectivityChange for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/android/server/ConnectivityService;->access$400(Ljava/lang/String;)V

    :cond_4e
    iget-object v5, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-boolean v5, v5, Lcom/android/server/ConnectivityService;->mFirstProvisioningCheckStarted:Z

    if-nez v5, :cond_99

    iget-object v5, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/ConnectivityService;->access$1200(Lcom/android/server/ConnectivityService;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "device_provisioned"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_99

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v5, :cond_99

    iget-object v5, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    #calls: Lcom/android/server/ConnectivityService;->isCaptivePortalAllowedNetwork(Landroid/net/NetworkInfo;)Z
    invoke-static {v5, v0}, Lcom/android/server/ConnectivityService;->access$1300(Lcom/android/server/ConnectivityService;Landroid/net/NetworkInfo;)Z

    move-result v5

    if-eqz v5, :cond_d1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "check provisioning after booting: CaptivePortal is allowed in network type = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/android/server/ConnectivityService;->access$400(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    iput-boolean v8, v5, Lcom/android/server/ConnectivityService;->mFirstProvisioningCheckStarted:Z

    iget-object v5, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    const v6, 0xea60

    const/4 v7, 0x0

    invoke-virtual {v5, v8, v6, v7}, Lcom/android/server/ConnectivityService;->checkMobileProvisioning(ZILandroid/os/ResultReceiver;)I

    :cond_99
    :goto_99
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v6

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v7

    invoke-static {v5, v6, v7}, Lcom/android/server/EventLogTags;->writeConnectivityStateChanged(III)V

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v5

    sget-object v6, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v5, v6, :cond_ec

    iget-object v5, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    #calls: Lcom/android/server/ConnectivityService;->handleConnectionFailure(Landroid/net/NetworkInfo;)V
    invoke-static {v5, v0}, Lcom/android/server/ConnectivityService;->access$1400(Lcom/android/server/ConnectivityService;Landroid/net/NetworkInfo;)V

    :cond_b9
    :goto_b9
    iget-object v5, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;
    invoke-static {v5}, Lcom/android/server/ConnectivityService;->access$1800(Lcom/android/server/ConnectivityService;)Lcom/android/server/net/LockdownVpnTracker;

    move-result-object v5

    if-eqz v5, :cond_ca

    iget-object v5, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;
    invoke-static {v5}, Lcom/android/server/ConnectivityService;->access$1800(Lcom/android/server/ConnectivityService;)Lcom/android/server/net/LockdownVpnTracker;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/android/server/net/LockdownVpnTracker;->onNetworkInfoChanged(Landroid/net/NetworkInfo;)V

    :cond_ca
    iget-object v5, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    #calls: Lcom/android/server/ConnectivityService;->updateLightsLocked()V
    invoke-static {v5}, Lcom/android/server/ConnectivityService;->access$1900(Lcom/android/server/ConnectivityService;)V

    goto/16 :goto_7

    :cond_d1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "check provisioning after booting: CaptivePortal is not allowed in network type = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/android/server/ConnectivityService;->access$400(Ljava/lang/String;)V

    goto :goto_99

    :cond_ec
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v5

    sget-object v6, Landroid/net/NetworkInfo$DetailedState;->CAPTIVE_PORTAL_CHECK:Landroid/net/NetworkInfo$DetailedState;

    if-ne v5, v6, :cond_fa

    iget-object v5, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    #calls: Lcom/android/server/ConnectivityService;->handleCaptivePortalTrackerCheck(Landroid/net/NetworkInfo;)V
    invoke-static {v5, v0}, Lcom/android/server/ConnectivityService;->access$1500(Lcom/android/server/ConnectivityService;Landroid/net/NetworkInfo;)V

    goto :goto_b9

    :cond_fa
    sget-object v5, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v5, :cond_104

    iget-object v5, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    #calls: Lcom/android/server/ConnectivityService;->handleDisconnect(Landroid/net/NetworkInfo;)V
    invoke-static {v5, v0}, Lcom/android/server/ConnectivityService;->access$1600(Lcom/android/server/ConnectivityService;Landroid/net/NetworkInfo;)V

    goto :goto_b9

    :cond_104
    sget-object v5, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    if-ne v3, v5, :cond_10e

    iget-object v5, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    #calls: Lcom/android/server/ConnectivityService;->handleDisconnect(Landroid/net/NetworkInfo;)V
    invoke-static {v5, v0}, Lcom/android/server/ConnectivityService;->access$1600(Lcom/android/server/ConnectivityService;Landroid/net/NetworkInfo;)V

    goto :goto_b9

    :cond_10e
    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v5, :cond_b9

    iget-object v5, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    #calls: Lcom/android/server/ConnectivityService;->handleConnect(Landroid/net/NetworkInfo;)V
    invoke-static {v5, v0}, Lcom/android/server/ConnectivityService;->access$1700(Lcom/android/server/ConnectivityService;Landroid/net/NetworkInfo;)V

    goto :goto_b9

    :sswitch_118
    iget-object v6, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/net/NetworkInfo;

    #calls: Lcom/android/server/ConnectivityService;->handleConnect(Landroid/net/NetworkInfo;)V
    invoke-static {v6, v5}, Lcom/android/server/ConnectivityService;->access$1700(Lcom/android/server/ConnectivityService;Landroid/net/NetworkInfo;)V

    goto/16 :goto_7

    :sswitch_123
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/NetworkInfo;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ConnectivityChange EVENT_CONFIGURATION_CHANGED  for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/android/server/ConnectivityService;->access$400(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    #calls: Lcom/android/server/ConnectivityService;->blendKeepLongLife()Z
    invoke-static {v5}, Lcom/android/server/ConnectivityService;->access$2000(Lcom/android/server/ConnectivityService;)Z

    move-result v5

    if-eqz v5, :cond_17c

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    if-nez v5, :cond_17c

    iget-object v5, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v6, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I
    invoke-static {v6}, Lcom/android/server/ConnectivityService;->access$1100(Lcom/android/server/ConnectivityService;)I

    move-result v6

    #calls: Lcom/android/server/ConnectivityService;->checkCondition(I)Z
    invoke-static {v5, v6}, Lcom/android/server/ConnectivityService;->access$2100(Lcom/android/server/ConnectivityService;I)Z

    move-result v5

    if-eqz v5, :cond_17c

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const-string v5, "ConnectivityChange EVENT_CONFIGURATION_CHANGED  skip"

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/android/server/ConnectivityService;->access$400(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static {v5}, Lcom/android/server/ConnectivityService;->access$900(Lcom/android/server/ConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v5

    aget-object v5, v5, v1

    invoke-interface {v5}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v2

    iget-object v5, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mCurrentLinkProperties:[Landroid/net/LinkProperties;
    invoke-static {v5}, Lcom/android/server/ConnectivityService;->access$2200(Lcom/android/server/ConnectivityService;)[Landroid/net/LinkProperties;

    move-result-object v5

    aput-object v2, v5, v1

    goto/16 :goto_7

    :cond_17c
    iget-object v5, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    #calls: Lcom/android/server/ConnectivityService;->handleConnectivityChange(IZ)V
    invoke-static {v5, v6, v7}, Lcom/android/server/ConnectivityService;->access$2300(Lcom/android/server/ConnectivityService;IZ)V

    goto/16 :goto_7

    :sswitch_187
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/NetworkInfo;

    iget-object v5, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v6, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static {v6}, Lcom/android/server/ConnectivityService;->access$900(Lcom/android/server/ConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v6

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    aget-object v6, v6, v7

    #calls: Lcom/android/server/ConnectivityService;->updateNetworkSettings(Landroid/net/NetworkStateTracker;)V
    invoke-static {v5, v6}, Lcom/android/server/ConnectivityService;->access$2400(Lcom/android/server/ConnectivityService;Landroid/net/NetworkStateTracker;)V

    goto/16 :goto_7

    :sswitch_19e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    iget-object v5, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v6, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static {v6}, Lcom/android/server/ConnectivityService;->access$900(Lcom/android/server/ConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v6

    aget-object v6, v6, v4

    #calls: Lcom/android/server/ConnectivityService;->updateNetworkSettings(Landroid/net/NetworkStateTracker;)V
    invoke-static {v5, v6}, Lcom/android/server/ConnectivityService;->access$2400(Lcom/android/server/ConnectivityService;Landroid/net/NetworkStateTracker;)V

    goto/16 :goto_7

    nop

    :sswitch_data_1b6
    .sparse-switch
        0x3e8 -> :sswitch_118
        0x70000 -> :sswitch_8
        0x70001 -> :sswitch_123
        0x70003 -> :sswitch_19e
        0x70006 -> :sswitch_187
    .end sparse-switch
.end method
