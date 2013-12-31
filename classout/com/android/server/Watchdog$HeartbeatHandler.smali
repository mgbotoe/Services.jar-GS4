.class final Lcom/android/server/Watchdog$HeartbeatHandler;
.super Landroid/os/Handler;
.source "Watchdog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/Watchdog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "HeartbeatHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/Watchdog;


# direct methods
.method constructor <init>(Lcom/android/server/Watchdog;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/Watchdog$HeartbeatHandler;->this$0:Lcom/android/server/Watchdog;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8

    const/4 v3, 0x0

    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_5e

    :goto_6
    return-void

    :pswitch_7
    iget-object v4, p0, Lcom/android/server/Watchdog$HeartbeatHandler;->this$0:Lcom/android/server/Watchdog;

    iget v4, v4, Lcom/android/server/Watchdog;->mReqRebootInterval:I

    if-ltz v4, :cond_47

    iget-object v4, p0, Lcom/android/server/Watchdog$HeartbeatHandler;->this$0:Lcom/android/server/Watchdog;

    iget v1, v4, Lcom/android/server/Watchdog;->mReqRebootInterval:I

    :goto_11
    iget-object v4, p0, Lcom/android/server/Watchdog$HeartbeatHandler;->this$0:Lcom/android/server/Watchdog;

    iget v4, v4, Lcom/android/server/Watchdog;->mRebootInterval:I

    if-eq v4, v1, :cond_20

    iget-object v4, p0, Lcom/android/server/Watchdog$HeartbeatHandler;->this$0:Lcom/android/server/Watchdog;

    iput v1, v4, Lcom/android/server/Watchdog;->mRebootInterval:I

    iget-object v4, p0, Lcom/android/server/Watchdog$HeartbeatHandler;->this$0:Lcom/android/server/Watchdog;

    invoke-virtual {v4, v3}, Lcom/android/server/Watchdog;->checkReboot(Z)V

    :cond_20
    iget-object v3, p0, Lcom/android/server/Watchdog$HeartbeatHandler;->this$0:Lcom/android/server/Watchdog;

    iget-object v3, v3, Lcom/android/server/Watchdog;->mMonitors:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_29
    if-ge v0, v2, :cond_4c

    iget-object v4, p0, Lcom/android/server/Watchdog$HeartbeatHandler;->this$0:Lcom/android/server/Watchdog;

    monitor-enter v4

    :try_start_2e
    iget-object v5, p0, Lcom/android/server/Watchdog$HeartbeatHandler;->this$0:Lcom/android/server/Watchdog;

    iget-object v3, p0, Lcom/android/server/Watchdog$HeartbeatHandler;->this$0:Lcom/android/server/Watchdog;

    iget-object v3, v3, Lcom/android/server/Watchdog;->mMonitors:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/Watchdog$Monitor;

    iput-object v3, v5, Lcom/android/server/Watchdog;->mCurrentMonitor:Lcom/android/server/Watchdog$Monitor;

    monitor-exit v4
    :try_end_3d
    .catchall {:try_start_2e .. :try_end_3d} :catchall_49

    iget-object v3, p0, Lcom/android/server/Watchdog$HeartbeatHandler;->this$0:Lcom/android/server/Watchdog;

    iget-object v3, v3, Lcom/android/server/Watchdog;->mCurrentMonitor:Lcom/android/server/Watchdog$Monitor;

    invoke-interface {v3}, Lcom/android/server/Watchdog$Monitor;->monitor()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    :cond_47
    move v1, v3

    goto :goto_11

    :catchall_49
    move-exception v3

    :try_start_4a
    monitor-exit v4
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    throw v3

    :cond_4c
    iget-object v4, p0, Lcom/android/server/Watchdog$HeartbeatHandler;->this$0:Lcom/android/server/Watchdog;

    monitor-enter v4

    :try_start_4f
    iget-object v3, p0, Lcom/android/server/Watchdog$HeartbeatHandler;->this$0:Lcom/android/server/Watchdog;

    const/4 v5, 0x1

    iput-boolean v5, v3, Lcom/android/server/Watchdog;->mCompleted:Z

    iget-object v3, p0, Lcom/android/server/Watchdog$HeartbeatHandler;->this$0:Lcom/android/server/Watchdog;

    const/4 v5, 0x0

    iput-object v5, v3, Lcom/android/server/Watchdog;->mCurrentMonitor:Lcom/android/server/Watchdog$Monitor;

    monitor-exit v4

    goto :goto_6

    :catchall_5b
    move-exception v3

    monitor-exit v4
    :try_end_5d
    .catchall {:try_start_4f .. :try_end_5d} :catchall_5b

    throw v3

    :pswitch_data_5e
    .packed-switch 0xa9e
        :pswitch_7
    .end packed-switch
.end method
