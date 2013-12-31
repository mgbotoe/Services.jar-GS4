.class Lcom/android/server/WifiOffloadService$9;
.super Landroid/content/BroadcastReceiver;
.source "WifiOffloadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WifiOffloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/WifiOffloadService;


# direct methods
.method constructor <init>(Lcom/android/server/WifiOffloadService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/WifiOffloadService$9;->this$0:Lcom/android/server/WifiOffloadService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9

    const/4 v4, -0x1

    const/4 v5, 0x1

    iget-object v2, p0, Lcom/android/server/WifiOffloadService$9;->this$0:Lcom/android/server/WifiOffloadService;

    const-string v3, "onReceive -- wifiStateReceiver"

    invoke-virtual {v2, v3}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8e

    const-string v2, "wifi_state"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "previous_wifi_state"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/WifiOffloadService$9;->this$0:Lcom/android/server/WifiOffloadService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cuurent Wifi state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/WifiOffloadService$9;->this$0:Lcom/android/server/WifiOffloadService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Wifi previous state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    const/4 v2, 0x2

    if-ne v1, v2, :cond_8f

    const/4 v2, 0x3

    if-ne v0, v2, :cond_8f

    iget-object v2, p0, Lcom/android/server/WifiOffloadService$9;->this$0:Lcom/android/server/WifiOffloadService;

    const-string v3, "can reset timer"

    invoke-virtual {v2, v3}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/WifiOffloadService$9;->this$0:Lcom/android/server/WifiOffloadService;

    invoke-virtual {v2}, Lcom/android/server/WifiOffloadService;->getIntelligentWifiEnabled()Z

    move-result v2

    if-eqz v2, :cond_72

    iget-object v2, p0, Lcom/android/server/WifiOffloadService$9;->this$0:Lcom/android/server/WifiOffloadService;

    const-string v3, "resetWifiOffloadTimer "

    invoke-virtual {v2, v3}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/WifiOffloadService$9;->this$0:Lcom/android/server/WifiOffloadService;

    invoke-virtual {v2}, Lcom/android/server/WifiOffloadService;->resetNeverTurnOnWifi()V

    :cond_72
    iget-object v2, p0, Lcom/android/server/WifiOffloadService$9;->this$0:Lcom/android/server/WifiOffloadService;

    #getter for: Lcom/android/server/WifiOffloadService;->messageHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/server/WifiOffloadService;->access$900(Lcom/android/server/WifiOffloadService;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_8e

    iget-object v2, p0, Lcom/android/server/WifiOffloadService$9;->this$0:Lcom/android/server/WifiOffloadService;

    const-string v3, "Reset 5 min timer when wifi turning ON"

    invoke-virtual {v2, v3}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/WifiOffloadService$9;->this$0:Lcom/android/server/WifiOffloadService;

    #getter for: Lcom/android/server/WifiOffloadService;->messageHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/server/WifiOffloadService;->access$900(Lcom/android/server/WifiOffloadService;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    :cond_8e
    :goto_8e
    return-void

    :cond_8f
    if-nez v1, :cond_8e

    if-ne v0, v5, :cond_8e

    iget-object v2, p0, Lcom/android/server/WifiOffloadService$9;->this$0:Lcom/android/server/WifiOffloadService;

    const-string v3, "Reset tryingAutoConnect when wifi is turned OFF"

    invoke-virtual {v2, v3}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/WifiOffloadService$9;->this$0:Lcom/android/server/WifiOffloadService;

    const/4 v3, 0x0

    #setter for: Lcom/android/server/WifiOffloadService;->mSeamlessConnectWhileConnecting:Z
    invoke-static {v2, v3}, Lcom/android/server/WifiOffloadService;->access$202(Lcom/android/server/WifiOffloadService;Z)Z

    goto :goto_8e
.end method
