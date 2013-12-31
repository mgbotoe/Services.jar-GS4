.class Lcom/android/server/power/PowerManagerService$5;
.super Landroid/content/BroadcastReceiver;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$5;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10

    const/4 v1, 0x1

    const/4 v3, 0x0

    const-string v4, "com.samsung.android.permission.AUTHORISED_FOR_NETWORK_WAKELOCK_MONITORING"

    invoke-virtual {p1, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_12

    const-string v3, "PowerManagerService"

    const-string v4, "Permission Denial: can\'t give access to monitor Wakelocks & Netstats"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_11
    return-void

    :cond_12
    const-string v4, "value"

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    const-string v4, "PowerManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "++++++m extra value="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "value"

    invoke-virtual {p2, v6, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v4

    if-eq v4, v1, :cond_65

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService$5;->this$0:Lcom/android/server/power/PowerManagerService;

    #calls: Lcom/android/server/power/PowerManagerService;->getDebugLevel()I
    invoke-static {v4}, Lcom/android/server/power/PowerManagerService;->access$2200(Lcom/android/server/power/PowerManagerService;)I

    move-result v4

    if-ltz v4, :cond_65

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService$5;->this$0:Lcom/android/server/power/PowerManagerService;

    #calls: Lcom/android/server/power/PowerManagerService;->checkWakelockMonitorControlFile()Z
    invoke-static {v4}, Lcom/android/server/power/PowerManagerService;->access$2500(Lcom/android/server/power/PowerManagerService;)Z

    move-result v4

    if-eqz v4, :cond_65

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService$5;->this$0:Lcom/android/server/power/PowerManagerService;

    #setter for: Lcom/android/server/power/PowerManagerService;->mMonitorEnabled:Z
    invoke-static {v4, v2}, Lcom/android/server/power/PowerManagerService;->access$2602(Lcom/android/server/power/PowerManagerService;Z)Z

    :goto_51
    :try_start_51
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService$5;->this$0:Lcom/android/server/power/PowerManagerService;

    #getter for: Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/power/PowerManagerService;->access$2400(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-ne v2, v1, :cond_6b

    :goto_5d
    const-string v3, "com.android.server.Monitor.Wakelocks"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_62} :catch_63

    goto :goto_11

    :catch_63
    move-exception v3

    goto :goto_11

    :cond_65
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService$5;->this$0:Lcom/android/server/power/PowerManagerService;

    #setter for: Lcom/android/server/power/PowerManagerService;->mMonitorEnabled:Z
    invoke-static {v4, v3}, Lcom/android/server/power/PowerManagerService;->access$2602(Lcom/android/server/power/PowerManagerService;Z)Z

    goto :goto_51

    :cond_6b
    move v1, v3

    goto :goto_5d
.end method
