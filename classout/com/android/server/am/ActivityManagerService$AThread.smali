.class Lcom/android/server/am/ActivityManagerService$AThread;
.super Ljava/lang/Thread;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AThread"
.end annotation


# instance fields
.field mLooper:Landroid/os/Looper;

.field mReady:Z

.field mService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "ActivityManager"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerService$AThread;->mReady:Z

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    invoke-static {}, Landroid/os/Looper;->prepare()V

    const/4 v1, -0x2

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    const/4 v1, 0x0

    invoke-static {v1}, Landroid/os/Process;->setCanSelfBackground(Z)V

    new-instance v0, Lcom/android/server/am/ActivityManagerService;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/am/ActivityManagerService;-><init>(Lcom/android/server/am/ActivityManagerService$1;)V

    monitor-enter p0

    :try_start_12
    iput-object v0, p0, Lcom/android/server/am/ActivityManagerService$AThread;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ActivityManagerService$AThread;->mLooper:Landroid/os/Looper;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_12 .. :try_end_1e} :catchall_29

    monitor-enter p0

    :goto_1f
    :try_start_1f
    iget-boolean v1, p0, Lcom/android/server/am/ActivityManagerService$AThread;->mReady:Z
    :try_end_21
    .catchall {:try_start_1f .. :try_end_21} :catchall_3e

    if-nez v1, :cond_2c

    :try_start_23
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_3e
    .catch Ljava/lang/InterruptedException; {:try_start_23 .. :try_end_26} :catch_27

    goto :goto_1f

    :catch_27
    move-exception v1

    goto :goto_1f

    :catchall_29
    move-exception v1

    :try_start_2a
    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw v1

    :cond_2c
    :try_start_2c
    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_3e

    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    move-result v1

    if-eqz v1, :cond_3a

    const-string v1, "ActivityManager"

    const-string v2, "Enabled StrictMode logging for AThread\'s Looper"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3a
    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void

    :catchall_3e
    move-exception v1

    :try_start_3f
    monitor-exit p0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    throw v1
.end method
