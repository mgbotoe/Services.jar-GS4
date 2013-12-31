.class Lcom/android/server/ConnectivityService$LongLifeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LongLifeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method constructor <init>(Lcom/android/server/ConnectivityService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/ConnectivityService$LongLifeReceiver;->this$0:Lcom/android/server/ConnectivityService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11

    const-wide/32 v6, 0x927c0

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/ConnectivityService$LongLifeReceiver;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mLLM:Lcom/jpn/android/LongLifeManager;
    invoke-static {v2}, Lcom/android/server/ConnectivityService;->access$5700(Lcom/android/server/ConnectivityService;)Lcom/jpn/android/LongLifeManager;

    move-result-object v2

    if-eqz v2, :cond_25

    iget-object v2, p0, Lcom/android/server/ConnectivityService$LongLifeReceiver;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mLLMHandler:Lcom/android/server/ConnectivityService$LongLifeHandler;
    invoke-static {v2}, Lcom/android/server/ConnectivityService;->access$5800(Lcom/android/server/ConnectivityService;)Lcom/android/server/ConnectivityService$LongLifeHandler;

    move-result-object v2

    if-eqz v2, :cond_25

    iget-object v2, p0, Lcom/android/server/ConnectivityService$LongLifeReceiver;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mLLM:Lcom/jpn/android/LongLifeManager;
    invoke-static {v2}, Lcom/android/server/ConnectivityService;->access$5700(Lcom/android/server/ConnectivityService;)Lcom/jpn/android/LongLifeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jpn/android/LongLifeManager;->isLongLifeMode()Z

    move-result v2

    if-nez v2, :cond_26

    :cond_25
    :goto_25
    return-void

    :cond_26
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4c

    iget-object v2, p0, Lcom/android/server/ConnectivityService$LongLifeReceiver;->this$0:Lcom/android/server/ConnectivityService;

    #calls: Lcom/android/server/ConnectivityService;->routeTableFlush(Z)V
    invoke-static {v2, v4}, Lcom/android/server/ConnectivityService;->access$5900(Lcom/android/server/ConnectivityService;Z)V

    :cond_33
    :goto_33
    const-string v2, "ConnectivityService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive: action="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/jpn/android/LongLifeManager$Elog;->logV(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_25

    :cond_4c
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_62

    iget-object v2, p0, Lcom/android/server/ConnectivityService$LongLifeReceiver;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->emergencyDataOpened:Z
    invoke-static {v2}, Lcom/android/server/ConnectivityService;->access$6000(Lcom/android/server/ConnectivityService;)Z

    move-result v2

    if-nez v2, :cond_33

    iget-object v2, p0, Lcom/android/server/ConnectivityService$LongLifeReceiver;->this$0:Lcom/android/server/ConnectivityService;

    #calls: Lcom/android/server/ConnectivityService;->routeTableFlush(Z)V
    invoke-static {v2, v5}, Lcom/android/server/ConnectivityService;->access$5900(Lcom/android/server/ConnectivityService;Z)V

    goto :goto_33

    :cond_62
    const-string v2, "android.intent.action.LONGLIFE_EMERGENCY_DATA_OPEN_REQ"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_93

    iget-object v2, p0, Lcom/android/server/ConnectivityService$LongLifeReceiver;->this$0:Lcom/android/server/ConnectivityService;

    const-string v3, "EMERGENCY_DATA_OPEN_REQ"

    #calls: Lcom/android/server/ConnectivityService;->removeAllMessage(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/server/ConnectivityService;->access$6100(Lcom/android/server/ConnectivityService;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/ConnectivityService$LongLifeReceiver;->this$0:Lcom/android/server/ConnectivityService;

    const-string v3, "EMERGENCY_DATA_OPEN_REQ"

    #calls: Lcom/android/server/ConnectivityService;->emergencyOpenDataPath(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/server/ConnectivityService;->access$6200(Lcom/android/server/ConnectivityService;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/ConnectivityService$LongLifeReceiver;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mLLMHandler:Lcom/android/server/ConnectivityService$LongLifeHandler;
    invoke-static {v2}, Lcom/android/server/ConnectivityService;->access$5800(Lcom/android/server/ConnectivityService;)Lcom/android/server/ConnectivityService$LongLifeHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ConnectivityService$LongLifeReceiver;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mLLMHandler:Lcom/android/server/ConnectivityService$LongLifeHandler;
    invoke-static {v3}, Lcom/android/server/ConnectivityService;->access$5800(Lcom/android/server/ConnectivityService;)Lcom/android/server/ConnectivityService$LongLifeHandler;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/android/server/ConnectivityService$LongLifeHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3, v6, v7}, Lcom/android/server/ConnectivityService$LongLifeHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    const-string v2, "ConnectivityService"

    const-string v3, "Send Message MAX TIMEOUT(600000)"

    invoke-static {v2, v3}, Lcom/jpn/android/LongLifeManager$Elog;->logV(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_33

    :cond_93
    const-string v2, "jp.co.nttdocomo.lcsapp.ACTION_STATUS_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    const-string v2, "status"

    const/4 v3, 0x2

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_ca

    iget-object v2, p0, Lcom/android/server/ConnectivityService$LongLifeReceiver;->this$0:Lcom/android/server/ConnectivityService;

    const-string v3, "LCSAPP_TERMINATED"

    #calls: Lcom/android/server/ConnectivityService;->removeAllMessage(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/server/ConnectivityService;->access$6100(Lcom/android/server/ConnectivityService;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/ConnectivityService$LongLifeReceiver;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mLLMHandler:Lcom/android/server/ConnectivityService$LongLifeHandler;
    invoke-static {v2}, Lcom/android/server/ConnectivityService;->access$5800(Lcom/android/server/ConnectivityService;)Lcom/android/server/ConnectivityService$LongLifeHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ConnectivityService$LongLifeReceiver;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mLLMHandler:Lcom/android/server/ConnectivityService$LongLifeHandler;
    invoke-static {v3}, Lcom/android/server/ConnectivityService;->access$5800(Lcom/android/server/ConnectivityService;)Lcom/android/server/ConnectivityService$LongLifeHandler;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/android/server/ConnectivityService$LongLifeHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/32 v4, 0xea60

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/ConnectivityService$LongLifeHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    const-string v2, "ConnectivityService"

    const-string v3, "Send Message TERMINATE TIMEOUT(60000)"

    invoke-static {v2, v3}, Lcom/jpn/android/LongLifeManager$Elog;->logV(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_33

    :cond_ca
    if-ne v1, v5, :cond_f6

    iget-object v2, p0, Lcom/android/server/ConnectivityService$LongLifeReceiver;->this$0:Lcom/android/server/ConnectivityService;

    const-string v3, "LCSAPP_START"

    #calls: Lcom/android/server/ConnectivityService;->removeAllMessage(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/server/ConnectivityService;->access$6100(Lcom/android/server/ConnectivityService;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/ConnectivityService$LongLifeReceiver;->this$0:Lcom/android/server/ConnectivityService;

    const-string v3, "LCSAPP_START"

    #calls: Lcom/android/server/ConnectivityService;->emergencyOpenDataPath(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/server/ConnectivityService;->access$6200(Lcom/android/server/ConnectivityService;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/ConnectivityService$LongLifeReceiver;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mLLMHandler:Lcom/android/server/ConnectivityService$LongLifeHandler;
    invoke-static {v2}, Lcom/android/server/ConnectivityService;->access$5800(Lcom/android/server/ConnectivityService;)Lcom/android/server/ConnectivityService$LongLifeHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ConnectivityService$LongLifeReceiver;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mLLMHandler:Lcom/android/server/ConnectivityService$LongLifeHandler;
    invoke-static {v3}, Lcom/android/server/ConnectivityService;->access$5800(Lcom/android/server/ConnectivityService;)Lcom/android/server/ConnectivityService$LongLifeHandler;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/android/server/ConnectivityService$LongLifeHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3, v6, v7}, Lcom/android/server/ConnectivityService$LongLifeHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    const-string v2, "ConnectivityService"

    const-string v3, "Send Message MAX TIMEOUT(600000)"

    invoke-static {v2, v3}, Lcom/jpn/android/LongLifeManager$Elog;->logV(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_33

    :cond_f6
    const-string v2, "ConnectivityService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lscapp sent wrong data. status : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/jpn/android/LongLifeManager$Elog;->logV(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_33
.end method
