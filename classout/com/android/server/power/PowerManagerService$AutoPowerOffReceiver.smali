.class final Lcom/android/server/power/PowerManagerService$AutoPowerOffReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AutoPowerOffReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$AutoPowerOffReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService$AutoPowerOffReceiver;-><init>(Lcom/android/server/power/PowerManagerService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    const/4 v4, 0x1

    const-string v1, "PowerManagerService"

    const-string v2, "[auto power off] AutoPowerOffReceiver"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$AutoPowerOffReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    #getter for: Lcom/android/server/power/PowerManagerService;->mAutoPowerOffLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$3200(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_f
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$AutoPowerOffReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    #getter for: Lcom/android/server/power/PowerManagerService;->mShutdownByAutoPowerOff:Z
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$3300(Lcom/android/server/power/PowerManagerService;)Z

    move-result v0

    monitor-exit v2
    :try_end_16
    .catchall {:try_start_f .. :try_end_16} :catchall_25

    if-eqz v0, :cond_28

    const-string v1, "PowerManagerService"

    const-string v2, "[auto power off] auto power off already. It\'s canceled."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$AutoPowerOffReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v1}, Lcom/android/server/power/PowerManagerService;->resetAutoPowerOffTimer()V

    :goto_24
    return-void

    :catchall_25
    move-exception v1

    :try_start_26
    monitor-exit v2
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw v1

    :cond_28
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$AutoPowerOffReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    #getter for: Lcom/android/server/power/PowerManagerService;->mAutoPowerOffSuspendBlocker:Lcom/android/server/power/SuspendBlocker;
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$2300(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/SuspendBlocker;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$AutoPowerOffReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v2, 0x0

    const-string v3, "AutoPowerOff"

    #calls: Lcom/android/server/power/PowerManagerService;->shutdownOrRebootInternal(ZZLjava/lang/String;Z)V
    invoke-static {v1, v4, v2, v3, v4}, Lcom/android/server/power/PowerManagerService;->access$3400(Lcom/android/server/power/PowerManagerService;ZZLjava/lang/String;Z)V

    goto :goto_24
.end method
