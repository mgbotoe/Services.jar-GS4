.class public final Lcom/android/server/power/ShutdownThread;
.super Ljava/lang/Thread;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/ShutdownThread$SaveShutdownLog;,
        Lcom/android/server/power/ShutdownThread$Led;,
        Lcom/android/server/power/ShutdownThread$Slog;,
        Lcom/android/server/power/ShutdownThread$ShutdownStartHandler;,
        Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_CLEAR_COVER_STATE_CHANGE:Ljava/lang/String; = "com.samsung.cover.STATE_CHANGE"

.field private static final LedOffValue:I = 0x6

.field private static final LedOnValue:I = 0x6

.field private static final MAX_BROADCAST_TIME:I = 0x2710

.field private static MAX_LAST_SHUTDOWNLOG:I = 0x0

.field private static final MAX_RADIO_WAIT_TIME:I = 0x2ee0

.field private static final MAX_SHUTDOWN_WAIT_TIME:I = 0x7530

.field private static final MINIMODE_SLEEP_TIME:I = 0x12c

.field private static final MSG_FAKESHUTDOWN:I = 0x2

.field private static final MSG_SHUTDOWN:I = 0x3

.field private static final POWER_CONNECTED:I = 0x1

.field private static final POWER_DISCONNECTED:I = 0x0

.field private static final POWER_UNKNOWN:I = 0x2

.field private static final PRODUCTSHIP:I = 0x1

.field public static final REBOOT_SAFEMODE_PROPERTY:Ljava/lang/String; = "persist.sys.safemode"

.field public static final SHUTDOWN_ACTION_PROPERTY:Ljava/lang/String; = "sys.shutdown.requested"

.field private static final SHUTDOWN_VIBRATE_MS:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "ShutdownThread"

.field private static final TIMEOUT_EXTENDS_RATIO:I = 0x8

.field private static final WITHOUT_SLEEP:Z = false

.field private static final WITH_SLEEP:Z = true

.field private static final coverBrReceiver:Landroid/content/BroadcastReceiver;

.field private static coverOpen:Z

.field private static dlgAnim:Lcom/android/server/power/ShutdownDialog;

.field private static mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

.field private static mReboot:Z

.field private static mRebootReason:Ljava/lang/String;

.field private static mRebootSafeMode:Z

.field private static mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

.field private static mSilent:Z

.field private static sConfirmDialog:Landroid/app/Dialog;

.field private static final sInstance:Lcom/android/server/power/ShutdownThread;

.field private static sIsConfirming:Z

.field private static sIsStarted:Z

.field private static sIsStartedGuard:Ljava/lang/Object;

.field private static shutdownStarter:Lcom/android/server/power/ShutdownThread$ShutdownStartHandler;


# instance fields
.field private mActionDone:Z

.field private mActionDoneMount:Z

.field private final mActionDoneSync:Ljava/lang/Object;

.field private final mActionDoneSyncMount:Ljava/lang/Object;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mPowerManager:Landroid/os/PowerManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    const/4 v0, 0x5

    sput v0, Lcom/android/server/power/ShutdownThread;->MAX_LAST_SHUTDOWNLOG:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/power/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    sput-boolean v1, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    sput-boolean v1, Lcom/android/server/power/ShutdownThread;->sIsConfirming:Z

    sput-boolean v1, Lcom/android/server/power/ShutdownThread;->mSilent:Z

    new-instance v0, Lcom/android/server/power/ShutdownThread;

    invoke-direct {v0}, Lcom/android/server/power/ShutdownThread;-><init>()V

    sput-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->coverOpen:Z

    new-instance v0, Lcom/android/server/power/ShutdownThread$3;

    invoke-direct {v0}, Lcom/android/server/power/ShutdownThread$3;-><init>()V

    sput-object v0, Lcom/android/server/power/ShutdownThread;->coverBrReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    const-string v0, "ShutdownThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/ShutdownThread;->mActionDoneSyncMount:Ljava/lang/Object;

    return-void
.end method

.method public static IsShutDownConfirming()Z
    .registers 2

    sget-object v1, Lcom/android/server/power/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->sIsConfirming:Z

    monitor-exit v1

    return v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public static IsShutDownStarted()Z
    .registers 3

    sget-object v1, Lcom/android/server/power/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    if-eqz v0, :cond_11

    const-string v0, "ShutdownThread"

    const-string v2, "shut down already running , return true"

    invoke-static {v0, v2}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    monitor-exit v1

    :goto_10
    return v0

    :cond_11
    const-string v0, "ShutdownThread"

    const-string v2, "shut down is not started , return false"

    invoke-static {v0, v2}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_10

    :catchall_1b
    move-exception v0

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method static synthetic access$000(Landroid/content/Context;Z)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/power/ShutdownThread;->beginShutdownSequence(Landroid/content/Context;Z)V

    return-void
.end method

.method static synthetic access$100()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->coverOpen:Z

    return v0
.end method

.method static synthetic access$102(Z)Z
    .registers 1

    sput-boolean p0, Lcom/android/server/power/ShutdownThread;->coverOpen:Z

    return p0
.end method

.method static synthetic access$1200()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    return v0
.end method

.method static synthetic access$1300()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400()I
    .registers 1

    sget v0, Lcom/android/server/power/ShutdownThread;->MAX_LAST_SHUTDOWNLOG:I

    return v0
.end method

.method static synthetic access$200()Landroid/app/Dialog;
    .registers 1

    sget-object v0, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$300(Landroid/content/Context;Z)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/power/ShutdownThread;->restoreMiniModeBarAndSleep(Landroid/content/Context;Z)V

    return-void
.end method

.method static synthetic access$400()Landroid/content/BroadcastReceiver;
    .registers 1

    sget-object v0, Lcom/android/server/power/ShutdownThread;->coverBrReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/Object;
    .registers 1

    sget-object v0, Lcom/android/server/power/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$602(Z)Z
    .registers 1

    sput-boolean p0, Lcom/android/server/power/ShutdownThread;->sIsConfirming:Z

    return p0
.end method

.method static synthetic access$700()Lcom/android/server/power/ShutdownDialog;
    .registers 1

    sget-object v0, Lcom/android/server/power/ShutdownThread;->dlgAnim:Lcom/android/server/power/ShutdownDialog;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/server/power/ShutdownDialog;)Lcom/android/server/power/ShutdownDialog;
    .registers 1

    sput-object p0, Lcom/android/server/power/ShutdownThread;->dlgAnim:Lcom/android/server/power/ShutdownDialog;

    return-object p0
.end method

.method static synthetic access$800(Landroid/content/Context;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->normalShutdown(Landroid/content/Context;)V

    return-void
.end method

.method private static beginShutdownSequence(Landroid/content/Context;Z)V
    .registers 13

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x1

    sget-object v1, Lcom/android/server/power/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v1

    :try_start_6
    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    if-eqz v0, :cond_13

    const-string v0, "ShutdownThread"

    const-string v2, "!@Shutdown sequence already running, returning."

    invoke-static {v0, v2}, Lcom/android/server/power/ShutdownThread$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    :goto_12
    return-void

    :cond_13
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    invoke-static {}, Lcom/android/server/power/ShutdownThread$Slog;->startState()V

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_6 .. :try_end_1a} :catchall_cf

    const-string v0, "ShutdownThread"

    const-string v1, "!@beginShutdownSequence"

    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->sendIntentForFolderType(Landroid/content/Context;)V

    invoke-static {v2}, Lcom/android/server/power/ShutdownThread;->setInputKeysDisable(Z)V

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_IMS_EnableVoLTE"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3f

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_IMS_EnableRCSe"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_65

    :cond_3f
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.sec.android.internal.ims.FLIGHT_MODE"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p1, :cond_4c

    move v10, v2

    :cond_4c
    const-string v0, "powerofftriggered"

    invoke-virtual {v8, v0, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_IMS_EnableRCSe"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_62

    const-string v0, "isShutDownForRCS"

    invoke-virtual {v8, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_62
    invoke-virtual {p0, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_65
    sget-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object p0, v0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const-string v0, "power"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, v1, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    sget-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    sput-object v4, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    :try_start_79
    sget-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    sget-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v3, "ShutdownThread-cpu"

    invoke-virtual {v0, v1, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    sput-object v0, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    sget-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    sget-object v0, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    sget-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    sget-object v0, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_97
    .catch Ljava/lang/SecurityException; {:try_start_79 .. :try_end_97} :catch_d2

    :goto_97
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/AudioManager;

    const-string v0, "shutdown"

    const-string v1, "1"

    invoke-virtual {v6, v0, v1}, Landroid/media/AudioManager;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->mSilent:Z

    if-eqz v0, :cond_df

    const-string v0, "ShutdownThread"

    const-string v1, "shutdown thread slient shutdown"

    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    invoke-virtual {v0}, Lcom/android/server/power/ShutdownThread;->start()V

    const/4 v0, 0x5

    const/4 v1, 0x2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v4, v4, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "System shutting down."

    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_12

    :catchall_cf
    move-exception v0

    :try_start_d0
    monitor-exit v1
    :try_end_d1
    .catchall {:try_start_d0 .. :try_end_d1} :catchall_cf

    throw v0

    :catch_d2
    move-exception v7

    const-string v0, "ShutdownThread"

    const-string v1, "!@No permission to acquire wake lock"

    invoke-static {v0, v1, v7}, Lcom/android/server/power/ShutdownThread$Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    sget-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    sput-object v4, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_97

    :cond_df
    sget-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    sput-object v4, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    sget-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_110

    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->mSilent:Z

    if-nez v0, :cond_110

    :try_start_f1
    sget-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    sget-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    const/16 v1, 0x1a

    const-string v2, "ShutdownThread-screen"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    sput-object v0, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    sget-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    sget-object v0, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    sget-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    sget-object v0, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_110
    .catch Ljava/lang/SecurityException; {:try_start_f1 .. :try_end_110} :catch_131

    :cond_110
    :goto_110
    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    sget-boolean v1, Lcom/android/server/power/ShutdownThread;->mSilent:Z

    sget-object v2, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    invoke-static {p0, v0, v1, p1, v2}, Lcom/android/server/power/FakeShutdown;->isNeededToCheckTA(Landroid/content/Context;ZZZLjava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_13e

    const-string v0, "ShutdownThread"

    const-string v1, "!@need to check TA because fakeshutdown"

    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/server/power/ShutdownThread$ShutdownStartHandler;

    invoke-direct {v0, p0}, Lcom/android/server/power/ShutdownThread$ShutdownStartHandler;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/power/ShutdownThread;->shutdownStarter:Lcom/android/server/power/ShutdownThread$ShutdownStartHandler;

    sget-object v0, Lcom/android/server/power/ShutdownThread;->shutdownStarter:Lcom/android/server/power/ShutdownThread$ShutdownStartHandler;

    invoke-virtual {v0, p0}, Lcom/android/server/power/ShutdownThread$ShutdownStartHandler;->checkTaAndSendShutdownMessage(Landroid/content/Context;)V

    goto/16 :goto_12

    :catch_131
    move-exception v7

    const-string v0, "ShutdownThread"

    const-string v1, "!@No permission to acquire wake lock"

    invoke-static {v0, v1, v7}, Lcom/android/server/power/ShutdownThread$Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    sget-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    sput-object v4, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_110

    :cond_13e
    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->normalShutdown(Landroid/content/Context;)V

    goto/16 :goto_12
.end method

.method private static blackMiniModeBar(Landroid/content/Context;)V
    .registers 5

    const/4 v3, 0x1

    const-wide/16 v1, 0x12c

    :try_start_3
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_6} :catch_a

    :goto_6
    invoke-static {p0, v3, v3}, Lcom/android/server/power/ShutdownThread;->sendMiniModeUiIntent(Landroid/content/Context;ZZ)V

    return-void

    :catch_a
    move-exception v0

    const-string v1, "ShutdownThread"

    const-string v2, "InterruptedException"

    invoke-static {v1, v2, v0}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    goto :goto_6
.end method

.method public static canGlobalActionsShow()Z
    .registers 1

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->IsShutDownStarted()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->IsShutDownConfirming()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private static createConfirmDialog(Landroid/content/Context;II)Landroid/app/Dialog;
    .registers 13

    const v9, 0x1040013

    const v8, 0x1040009

    const-string v6, "window"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v5

    if-eqz v5, :cond_18

    :try_start_12
    invoke-interface {v5}, Landroid/view/IWindowManager;->isCoverOpen()Z

    move-result v6

    sput-boolean v6, Lcom/android/server/power/ShutdownThread;->coverOpen:Z
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_18} :catch_5b

    :cond_18
    :goto_18
    new-instance v0, Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;-><init>(Landroid/content/Context;)V

    sget-boolean v6, Lcom/android/server/power/ShutdownThread;->coverOpen:Z

    if-eqz v6, :cond_6e

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    new-instance v6, Lcom/android/server/power/ShutdownThread$1;

    invoke-direct {v6, p0}, Lcom/android/server/power/ShutdownThread$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v9, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v6, 0x0

    invoke-virtual {v2, v8, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    const-string v6, "keyguard"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/KeyguardManager;

    if-eqz v4, :cond_64

    invoke-virtual {v4}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v6

    if-eqz v6, :cond_64

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x7d9

    invoke-virtual {v6, v7}, Landroid/view/Window;->setType(I)V

    :goto_55
    iput-object v1, v0, Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;->dialog:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-object v1

    :catch_5b
    move-exception v3

    const-string v6, "ShutdownThread"

    const-string v7, "error on isCoverOpen"

    invoke-static {v6, v7, v3}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    goto :goto_18

    :cond_64
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x7d8

    invoke-virtual {v6, v7}, Landroid/view/Window;->setType(I)V

    goto :goto_55

    :cond_6e
    new-instance v2, Landroid/app/GlobalActionsSViewCoverDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/GlobalActionsSViewCoverDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, p2}, Landroid/app/GlobalActionsSViewCoverDialog$Builder;->setMessage(I)Landroid/app/GlobalActionsSViewCoverDialog$Builder;

    invoke-virtual {v2, p1}, Landroid/app/GlobalActionsSViewCoverDialog$Builder;->setTitle(I)Landroid/app/GlobalActionsSViewCoverDialog$Builder;

    new-instance v6, Lcom/android/server/power/ShutdownThread$2;

    invoke-direct {v6, p0}, Lcom/android/server/power/ShutdownThread$2;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v9, v6}, Landroid/app/GlobalActionsSViewCoverDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/GlobalActionsSViewCoverDialog$Builder;

    invoke-virtual {v2, v8, v0}, Landroid/app/GlobalActionsSViewCoverDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/GlobalActionsSViewCoverDialog$Builder;

    invoke-virtual {v2}, Landroid/app/GlobalActionsSViewCoverDialog$Builder;->create()Landroid/app/GlobalActionsSViewCoverDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x832

    invoke-virtual {v6, v7}, Landroid/view/Window;->setType(I)V

    goto :goto_55
.end method

.method private static deviceRebootOrShutdown(ZLjava/lang/String;)V
    .registers 11

    const-string v1, "com.android.server.power.ShutdownOem"

    :try_start_2
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_5} :catch_37
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_49

    move-result-object v0

    :try_start_6
    const-string v5, "rebootOrShutdown"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object p1, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_2d} :catch_2e
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_2d} :catch_40
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_2d} :catch_37

    :goto_2d
    return-void

    :catch_2e
    move-exception v3

    :try_start_2f
    const-string v5, "ShutdownThread"

    const-string v6, "!@call method fail rebootOrShutdown"

    invoke-static {v5, v6, v3}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I
    :try_end_36
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2f .. :try_end_36} :catch_37
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_36} :catch_49

    goto :goto_2d

    :catch_37
    move-exception v2

    const-string v5, "ShutdownThread"

    const-string v6, "!@can\'t found class"

    invoke-static {v5, v6, v2}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    goto :goto_2d

    :catch_40
    move-exception v3

    :try_start_41
    const-string v5, "ShutdownThread"

    const-string v6, "!@unchecked exception raised"

    invoke-static {v5, v6, v3}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I
    :try_end_48
    .catch Ljava/lang/ClassNotFoundException; {:try_start_41 .. :try_end_48} :catch_37
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_48} :catch_49

    goto :goto_2d

    :catch_49
    move-exception v2

    const-string v5, "ShutdownThread"

    const-string v6, "!@unchecked exception raised"

    invoke-static {v5, v6, v2}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    goto :goto_2d
.end method

.method public static enableShutdownAgain()V
    .registers 2

    const-string v0, "ShutdownThread"

    const-string v1, "!@enable calling shutdown again"

    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/server/power/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_b
    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->sIsConfirming:Z

    monitor-exit v1

    return-void

    :catchall_18
    move-exception v0

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_b .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public static fakeShutdown(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 9

    const/4 v5, 0x0

    const/4 v4, 0x0

    sget-object v2, Lcom/android/server/power/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v2

    :try_start_5
    sget-boolean v1, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    if-eqz v1, :cond_12

    const-string v1, "ShutdownThread"

    const-string v3, "!@fakeShutdown : shut down already running."

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    :goto_11
    return-void

    :cond_12
    invoke-static {}, Lcom/android/server/power/FakeShutdown;->fakeState()I

    move-result v1

    if-eqz v1, :cond_24

    const-string v1, "ShutdownThread"

    const-string v3, "!@fakeShutdown : fakeshutdown already done"

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    goto :goto_11

    :catchall_21
    move-exception v1

    monitor-exit v2
    :try_end_23
    .catchall {:try_start_5 .. :try_end_23} :catchall_21

    throw v1

    :cond_24
    :try_start_24
    monitor-exit v2
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_21

    const-string v1, "ShutdownThread"

    const-string v2, "get cpulock while 2 secs"

    invoke-static {v1, v2}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const-string v1, "power"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, v2, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    sget-object v1, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    sput-object v5, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    :try_start_3c
    sget-object v1, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    sget-object v1, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v1, v1, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    const/4 v2, 0x1

    const-string v3, "ShutdownThread-cpu"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    sput-object v1, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    sget-object v1, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    sget-object v1, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    sget-object v1, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    sget-object v1, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V
    :try_end_5c
    .catch Ljava/lang/SecurityException; {:try_start_3c .. :try_end_5c} :catch_7e

    :goto_5c
    sput-boolean v4, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    const-string v1, "ShutdownThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reboot reason : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v4, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    sput-object p1, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    invoke-static {p0, p2}, Lcom/android/server/power/ShutdownThread;->shutdown(Landroid/content/Context;Z)V

    goto :goto_11

    :catch_7e
    move-exception v0

    const-string v1, "ShutdownThread"

    const-string v2, "!@No permission to acquire wake lock"

    invoke-static {v1, v2, v0}, Lcom/android/server/power/ShutdownThread$Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    sget-object v1, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    sput-object v5, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_5c
.end method

.method private static getReasonforshutdownFileName()Ljava/io/File;
    .registers 11

    const/16 v10, 0x1b0

    const/4 v9, -0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/log/power_off_reset_reason.txt"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/log/power_off_reset_reason_backup.txt"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v0, Ljava/io/File;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v10, v9, v9}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v5

    const-wide/16 v7, 0x2800

    cmp-long v5, v5, v7

    if-lez v5, :cond_75

    new-instance v3, Ljava/io/File;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v5, "ShutdownThread"

    const-string v6, "The size of power_off_reset_reason.txt is over than 10KB. Rename to power_off_reset_reason_backup.txt for backup."

    invoke-static {v5, v6}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_76

    const-string v5, "ShutdownThread"

    const-string v6, "power_off_reset_reason_backup.txt file is already exist. So, delete it."

    invoke-static {v5, v6}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_76

    const-string v5, "ShutdownThread"

    const-string v6, "power_off_reset_reason_backup.txt delete fail"

    invoke-static {v5, v6}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_75
    :goto_75
    return-object v0

    :cond_76
    invoke-virtual {v0, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_9c

    const-string v5, "ShutdownThread"

    const-string v6, "rename to power_off_reset_reason_backup.txt"

    invoke-static {v5, v6}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/io/File;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v10, v9, v9}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    const-string v5, "ShutdownThread"

    const-string v6, "power_off_reset_reason.txt is re-created."

    invoke-static {v5, v6}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v4

    goto :goto_75

    :cond_9c
    const-string v5, "ShutdownThread"

    const-string v6, "rename to power_off_reset_reason_backup.txt fail"

    invoke-static {v5, v6}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_75
.end method

.method private static normalShutdown(Landroid/content/Context;)V
    .registers 7

    const-string v0, "ShutdownThread"

    const-string v1, "normal shutdown thread will start"

    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/server/power/ShutdownDialog;

    invoke-direct {v0, p0}, Lcom/android/server/power/ShutdownDialog;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/power/ShutdownThread;->dlgAnim:Lcom/android/server/power/ShutdownDialog;

    sget-object v0, Lcom/android/server/power/ShutdownThread;->dlgAnim:Lcom/android/server/power/ShutdownDialog;

    invoke-virtual {v0}, Lcom/android/server/power/ShutdownDialog;->existAnim()Z

    move-result v0

    if-eqz v0, :cond_47

    sget-object v0, Lcom/android/server/power/ShutdownThread;->dlgAnim:Lcom/android/server/power/ShutdownDialog;

    invoke-virtual {v0}, Lcom/android/server/power/ShutdownDialog;->prepare()V

    sget-object v0, Lcom/android/server/power/ShutdownThread;->dlgAnim:Lcom/android/server/power/ShutdownDialog;

    invoke-virtual {v0}, Lcom/android/server/power/ShutdownDialog;->show()V

    :goto_20
    sget-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    new-instance v1, Lcom/android/server/power/ShutdownThread$4;

    invoke-direct {v1}, Lcom/android/server/power/ShutdownThread$4;-><init>()V

    iput-object v1, v0, Lcom/android/server/power/ShutdownThread;->mHandler:Landroid/os/Handler;

    sget-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    invoke-virtual {v0}, Lcom/android/server/power/ShutdownThread;->start()V

    const/4 v0, 0x5

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    sget-object v4, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v4, v4, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "System shutting down."

    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_47
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/power/ShutdownThread;->dlgAnim:Lcom/android/server/power/ShutdownDialog;

    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->startGoogleShutdownDialog(Landroid/content/Context;)V

    goto :goto_20
.end method

.method public static reboot(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 7

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->IsShutDownStarted()Z

    move-result v0

    if-eqz v0, :cond_8

    :goto_7
    return-void

    :cond_8
    const-string v0, "ShutdownThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reboot reason : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", confirm : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    sput-boolean v3, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    sput-object p1, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    invoke-static {p0, p2, v3}, Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;ZZ)V

    goto :goto_7
.end method

.method public static rebootOrShutdown(ZLjava/lang/String;)V
    .registers 7

    const-string v3, "ShutdownThread"

    const-string v4, "!@call oem shutdown..."

    invoke-static {v3, v4}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, p1}, Lcom/android/server/power/ShutdownThread;->deviceRebootOrShutdown(ZLjava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "!@"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p0, :cond_38

    const-string v3, "reboot : "

    :goto_15
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_3b

    const-string v3, "null"

    :goto_1c
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "ShutdownThread"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_46

    :try_start_2a
    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->lowLevelReboot(Ljava/lang/String;)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2d} :catch_3d

    :cond_2d
    :goto_2d
    const-string v3, "ShutdownThread"

    const-string v4, "!@Performing low-level shutdown..."

    invoke-static {v3, v4}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/power/PowerManagerService;->lowLevelShutdown()V

    return-void

    :cond_38
    const-string v3, "shutdown : "

    goto :goto_15

    :cond_3b
    move-object v3, p1

    goto :goto_1c

    :catch_3d
    move-exception v0

    const-string v3, "ShutdownThread"

    const-string v4, "!@Reboot failed, will attempt shutdown instead"

    invoke-static {v3, v4, v0}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    goto :goto_2d

    :cond_46
    sget-boolean v3, Lcom/android/server/power/ShutdownThread;->mSilent:Z

    if-nez v3, :cond_2d

    new-instance v2, Landroid/os/SystemVibrator;

    invoke-direct {v2}, Landroid/os/SystemVibrator;-><init>()V

    const-wide/16 v3, 0x1f4

    :try_start_51
    invoke-virtual {v2, v3, v4}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_54} :catch_5c

    :goto_54
    const-wide/16 v3, 0x1f4

    :try_start_56
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_59
    .catch Ljava/lang/InterruptedException; {:try_start_56 .. :try_end_59} :catch_5a

    goto :goto_2d

    :catch_5a
    move-exception v3

    goto :goto_2d

    :catch_5c
    move-exception v0

    const-string v3, "ShutdownThread"

    const-string v4, "!@Failed to vibrate during shutdown."

    invoke-static {v3, v4, v0}, Lcom/android/server/power/ShutdownThread$Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    goto :goto_54
.end method

.method public static rebootSafeMode(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 8

    const/4 v4, 0x1

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->IsShutDownStarted()Z

    move-result v1

    if-eqz v1, :cond_8

    :goto_7
    return-void

    :cond_8
    const-string v1, "enterprise_policy"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/enterprise/RestrictionPolicy;->isSafeModeAllowed()Z

    move-result v1

    if-nez v1, :cond_22

    const-string v1, "ShutdownThread"

    const-string v2, "SAFE MODE is not allowed"

    invoke-static {v1, v2}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_22
    const-string v1, "ShutdownThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reboot safe reason : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", confirm : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v4, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    sput-boolean v4, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    sput-object p1, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p0, p2, v1}, Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;ZZ)V

    goto :goto_7
.end method

.method public static rebootSafeMode(Landroid/content/Context;Z)V
    .registers 3

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->IsShutDownStarted()Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_6
    return-void

    :cond_7
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/android/server/power/ShutdownThread;->rebootSafeMode(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_6
.end method

.method public static releaseWakeLocks()V
    .registers 2

    const/4 v1, 0x0

    sget-object v0, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_c

    sget-object v0, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    sput-object v1, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    :cond_c
    sget-object v0, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_17

    sget-object v0, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    sput-object v1, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    :cond_17
    return-void
.end method

.method private static restoreMiniModeBarAndSleep(Landroid/content/Context;Z)V
    .registers 5

    const/4 v1, 0x0

    invoke-static {p0, v1, v1}, Lcom/android/server/power/ShutdownThread;->sendMiniModeUiIntent(Landroid/content/Context;ZZ)V

    if-eqz p1, :cond_b

    const-wide/16 v1, 0x12c

    :try_start_8
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_b} :catch_c

    :cond_b
    :goto_b
    return-void

    :catch_c
    move-exception v0

    const-string v1, "ShutdownThread"

    const-string v2, "InterruptedException"

    invoke-static {v1, v2, v0}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    goto :goto_b
.end method

.method public static saveReasonforshutdown(Ljava/lang/Exception;)V
    .registers 11

    const-string v7, "ShutdownThread"

    const-string v8, "ShutdownThread.saveReasonforshutdown"

    invoke-static {v7, v8}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->getReasonforshutdownFileName()Ljava/io/File;

    move-result-object v2

    const/4 v4, 0x0

    :try_start_c
    new-instance v5, Ljava/io/FileOutputStream;

    const/4 v7, 0x1

    invoke-direct {v5, v2, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_56
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_12} :catch_5d

    :try_start_12
    new-instance v6, Ljava/io/PrintWriter;

    invoke-direct {v6, v5}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v7, "yy/MM/dd HH:mm:ss"

    invoke-direct {v3, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "reason : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v6}, Ljava/io/PrintWriter;->flush()V

    invoke-virtual {v6}, Ljava/io/PrintWriter;->close()V
    :try_end_4f
    .catchall {:try_start_12 .. :try_end_4f} :catchall_73
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_4f} :catch_76

    if-eqz v5, :cond_54

    :try_start_51
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_54} :catch_6e

    :cond_54
    :goto_54
    move-object v4, v5

    :cond_55
    :goto_55
    return-void

    :catchall_56
    move-exception v7

    :goto_57
    if-eqz v4, :cond_5c

    :try_start_59
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_5c} :catch_69

    :cond_5c
    :goto_5c
    throw v7

    :catch_5d
    move-exception v7

    :goto_5e
    if-eqz v4, :cond_55

    :try_start_60
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_63} :catch_64

    goto :goto_55

    :catch_64
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_55

    :catch_69
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5c

    :catch_6e
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_54

    :catchall_73
    move-exception v7

    move-object v4, v5

    goto :goto_57

    :catch_76
    move-exception v7

    move-object v4, v5

    goto :goto_5e
.end method

.method private static sendIntentForFolderType(Landroid/content/Context;)V
    .registers 7

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "com.sec.feature.folder_type"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    const-string v4, "ro.csc.sales_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "CTC"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    const/4 v3, 0x1

    :cond_1a
    if-eqz v2, :cond_2f

    if-eqz v3, :cond_2f

    const-string v4, "ShutdownThread"

    const-string v5, "START_SHUTDOWN_WIFH_FOLDR_TYPE"

    invoke-static {v4, v5}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    const-string v4, "START_SHUTDOWN_WIFH_FOLDR_TYPE"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_2f
    return-void
.end method

.method private static sendMiniModeUiIntent(Landroid/content/Context;ZZ)V
    .registers 6

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.cover.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "suppressCoverUI"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "miniModeUI"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "sender"

    const-string v2, "ShutdownThread"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method static setInputKeysDisable(Z)V
    .registers 6

    const-string v2, "input"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/input/IInputManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IInputManager;

    move-result-object v1

    if-nez v1, :cond_25

    const-string v2, "ShutdownThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ServiceManager.checkService fail"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_24
    return-void

    :cond_25
    :try_start_25
    const-string v2, "ShutdownThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setStartedShutdown to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v1, p0}, Landroid/hardware/input/IInputManager;->setStartedShutdown(Z)V
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_40} :catch_41

    goto :goto_24

    :catch_41
    move-exception v0

    const-string v2, "ShutdownThread"

    const-string v3, "error occur while input disable"

    invoke-static {v2, v3}, Lcom/android/server/power/ShutdownThread$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_24
.end method

.method public static shutdown(Landroid/content/Context;Z)V
    .registers 3

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    invoke-static {p0, p1, v0}, Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;ZZ)V

    return-void
.end method

.method public static shutdown(Landroid/content/Context;ZLjava/lang/String;)V
    .registers 3

    sput-object p2, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/server/power/ShutdownThread;->shutdown(Landroid/content/Context;Z)V

    return-void
.end method

.method static shutdownInner(Landroid/content/Context;ZZ)V
    .registers 14

    const/4 v10, 0x2

    sget-object v8, Lcom/android/server/power/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v8

    :try_start_4
    sget-boolean v7, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    if-eqz v7, :cond_11

    const-string v7, "ShutdownThread"

    const-string v9, "!@Request to shutdown already running, returning."

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v8

    :goto_10
    return-void

    :cond_11
    sget-boolean v7, Lcom/android/server/power/ShutdownThread;->sIsConfirming:Z

    if-eqz v7, :cond_23

    if-eqz p1, :cond_23

    const-string v7, "ShutdownThread"

    const-string v9, "!@duplicate shutdown confirm dialog request."

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v8

    goto :goto_10

    :catchall_20
    move-exception v7

    monitor-exit v8
    :try_end_22
    .catchall {:try_start_4 .. :try_end_22} :catchall_20

    throw v7

    :cond_23
    :try_start_23
    sget-boolean v7, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-eqz v7, :cond_2b

    sget-object v7, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    if-eqz v7, :cond_48

    :cond_2b
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/sec/enterprise/RestrictionPolicy;

    move-result-object v5

    if-eqz v5, :cond_48

    if-nez p2, :cond_48

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Landroid/sec/enterprise/RestrictionPolicy;->isPowerOffAllowed(Z)Z

    move-result v7

    if-nez v7, :cond_48

    const-string v7, "ShutdownThread"

    const-string v9, "Shutdown Disabled by Administrator"

    invoke-static {v7, v9}, Lcom/android/server/power/ShutdownThread$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_45
    .catchall {:try_start_23 .. :try_end_45} :catchall_20
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_45} :catch_47

    :try_start_45
    monitor-exit v8

    goto :goto_10

    :catch_47
    move-exception v7

    :cond_48
    const/4 v7, 0x1

    sput-boolean v7, Lcom/android/server/power/ShutdownThread;->sIsConfirming:Z

    monitor-exit v8
    :try_end_4c
    .catchall {:try_start_45 .. :try_end_4c} :catchall_20

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v8, 0x258

    if-lt v7, v8, :cond_d2

    new-instance v1, Landroid/view/ContextThemeWrapper;

    const v7, 0x103012b

    invoke-direct {v1, p0, v7}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    :goto_62
    new-instance v3, Ljava/lang/Exception;

    const-string v7, "It is not an exception!! just save the trace for process which called shutdown thread!! ShutdownThread.shutdown"

    invoke-direct {v3, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/android/server/power/ShutdownThread;->saveReasonforshutdown(Ljava/lang/Exception;)V

    if-eqz p1, :cond_ff

    const-string v7, "ShutdownThread"

    const-string v8, "!@########POWEROFF START WITH CONFIRM######"

    invoke-static {v7, v8}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10e0019

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    sget-boolean v7, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    if-eqz v7, :cond_db

    const v0, 0x10401c3

    :goto_87
    const-string v7, "ShutdownThread"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "!@Notifying thread to start shutdown longPressBehavior="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/power/ShutdownThread$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v7, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/Dialog;

    if-eqz v7, :cond_a8

    sget-object v7, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/Dialog;

    invoke-virtual {v7}, Landroid/app/Dialog;->dismiss()V

    :cond_a8
    sget-boolean v7, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    if-eqz v7, :cond_f3

    const v6, 0x10401c2

    :goto_af
    invoke-static {v1, v6, v0}, Lcom/android/server/power/ShutdownThread;->createConfirmDialog(Landroid/content/Context;II)Landroid/app/Dialog;

    move-result-object v7

    sput-object v7, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/Dialog;

    sget-object v7, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/Dialog;

    invoke-virtual {v7}, Landroid/app/Dialog;->show()V

    sget-boolean v7, Lcom/android/server/power/ShutdownThread;->coverOpen:Z

    if-nez v7, :cond_c1

    invoke-static {v1}, Lcom/android/server/power/ShutdownThread;->blackMiniModeBar(Landroid/content/Context;)V

    :cond_c1
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v7, "com.samsung.cover.OPEN"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v7, Lcom/android/server/power/ShutdownThread;->coverBrReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v7, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto/16 :goto_10

    :cond_d2
    new-instance v1, Landroid/view/ContextThemeWrapper;

    const v7, 0x1030128

    invoke-direct {v1, p0, v7}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    goto :goto_62

    :cond_db
    sget-boolean v7, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-eqz v7, :cond_e9

    if-ne v4, v10, :cond_e5

    const v0, 0x10401c1

    :goto_e4
    goto :goto_87

    :cond_e5
    const v0, 0x10401bf

    goto :goto_e4

    :cond_e9
    if-ne v4, v10, :cond_ef

    const v0, 0x10401c0

    :goto_ee
    goto :goto_87

    :cond_ef
    const v0, 0x10401be

    goto :goto_ee

    :cond_f3
    sget-boolean v7, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-eqz v7, :cond_fb

    const v6, 0x10401c9

    goto :goto_af

    :cond_fb
    const v6, 0x10401c8

    goto :goto_af

    :cond_ff
    const-string v7, "ShutdownThread"

    const-string v8, "!@########POWEROFF START WITHOUT CONFIRM######"

    invoke-static {v7, v8}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    invoke-static {p0, v7}, Lcom/android/server/power/ShutdownThread;->beginShutdownSequence(Landroid/content/Context;Z)V

    goto/16 :goto_10
.end method

.method private shutdownRadios(ILandroid/content/Context;Z)V
    .registers 15

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    int-to-long v9, p1

    add-long v3, v7, v9

    const/4 v1, 0x1

    new-array v5, v1, [Z

    const/16 v6, 0x1f4

    iput-object p2, p0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    const-string v7, "wifi"

    invoke-virtual {v1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    new-instance v0, Lcom/android/server/power/ShutdownThread$7;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/power/ShutdownThread$7;-><init>(Lcom/android/server/power/ShutdownThread;Landroid/net/wifi/WifiManager;J[Z)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    int-to-long v7, p1

    :try_start_22
    invoke-virtual {v0, v7, v8}, Ljava/lang/Thread;->join(J)V
    :try_end_25
    .catch Ljava/lang/InterruptedException; {:try_start_22 .. :try_end_25} :catch_32

    :goto_25
    const/4 v1, 0x0

    aget-boolean v1, v5, v1

    if-nez v1, :cond_31

    const-string v1, "ShutdownThread"

    const-string v7, "Timed out waiting for NFC, Radio and Bluetooth shutdown."

    invoke-static {v1, v7}, Lcom/android/server/power/ShutdownThread$Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_31
    return-void

    :catch_32
    move-exception v1

    goto :goto_25
.end method

.method public static silentShutdown(Landroid/content/Context;)V
    .registers 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->mSilent:Z

    sput-boolean v1, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    sput-boolean v1, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    invoke-static {p0, v1, v1}, Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;ZZ)V

    return-void
.end method

.method private static startGoogleShutdownDialog(Landroid/content/Context;)V
    .registers 4

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    const v1, 0x10401b9

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    const v1, 0x10401bd

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x40

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method

.method public static systemShutdown(Landroid/content/Context;)V
    .registers 3

    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    sput-boolean v1, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    const/4 v0, 0x1

    invoke-static {p0, v1, v0}, Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;ZZ)V

    return-void
.end method


# virtual methods
.method actionDone()V
    .registers 3

    iget-object v1, p0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_d

    throw v0
.end method

.method actionDoneMount()V
    .registers 3

    iget-object v1, p0, Lcom/android/server/power/ShutdownThread;->mActionDoneSyncMount:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Lcom/android/server/power/ShutdownThread;->mActionDoneMount:Z

    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mActionDoneSyncMount:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public run()V
    .registers 23

    const/16 v20, 0x0

    const-string v2, "eng"

    const-string v3, "ro.build.type"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mSilent:Z

    if-nez v2, :cond_1f

    new-instance v20, Lcom/android/server/power/ShutdownThread$SaveShutdownLog;

    const/4 v2, 0x0

    move-object/from16 v0, v20

    invoke-direct {v0, v2}, Lcom/android/server/power/ShutdownThread$SaveShutdownLog;-><init>(Lcom/android/server/power/ShutdownThread$1;)V

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Thread;->start()V

    :cond_1f
    #calls: Lcom/android/server/power/ShutdownThread$Led;->On()V
    invoke-static {}, Lcom/android/server/power/ShutdownThread$Led;->access$1000()V

    new-instance v5, Lcom/android/server/power/ShutdownThread$5;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/server/power/ShutdownThread$5;-><init>(Lcom/android/server/power/ShutdownThread;)V

    new-instance v21, Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-eqz v2, :cond_165

    const-string v2, "1"

    :goto_31
    move-object/from16 v0, v21

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-eqz v2, :cond_45

    sget-object v2, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    if-eqz v2, :cond_45

    sget-object v2, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_45
    const-string v2, "sys.shutdown.requested"

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    if-eqz v2, :cond_59

    const-string v2, "persist.sys.safemode"

    const-string v3, "1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_59
    const-string v2, "ShutdownThread"

    const-string v3, "!@Sending shutdown broadcast..."

    invoke-static {v2, v3}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/power/ShutdownThread;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_169

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v6, 0x2710

    add-long v16, v2, v6

    :goto_8a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v3

    :goto_8f
    :try_start_8f
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    if-nez v2, :cond_a8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v11, v16, v6

    const-wide/16 v6, 0x0

    cmp-long v2, v11, v6

    if-gtz v2, :cond_174

    const-string v2, "ShutdownThread"

    const-string v4, "!@Shutdown broadcast timed out"

    invoke-static {v2, v4}, Lcom/android/server/power/ShutdownThread$Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a8
    monitor-exit v3
    :try_end_a9
    .catchall {:try_start_8f .. :try_end_a9} :catchall_180

    const-string v2, "ShutdownThread"

    const-string v3, "!@Shutting down activity manager..."

    invoke-static {v2, v3}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "activity"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/ActivityManagerNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;

    move-result-object v10

    if-eqz v10, :cond_c1

    const/16 v2, 0x2710

    :try_start_be
    invoke-interface {v10, v2}, Landroid/app/IActivityManager;->shutdown(I)Z
    :try_end_c1
    .catch Landroid/os/RemoteException; {:try_start_be .. :try_end_c1} :catch_1af

    :cond_c1
    :goto_c1
    const/16 v2, 0x2ee0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    sget-boolean v4, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/android/server/power/ShutdownThread;->shutdownRadios(ILandroid/content/Context;Z)V

    const-string v2, "ShutdownThread"

    const-string v3, "waitForAnimEnd"

    invoke-static {v2, v3}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/server/power/ShutdownThread;->dlgAnim:Lcom/android/server/power/ShutdownDialog;

    if-eqz v2, :cond_e3

    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mSilent:Z

    if-nez v2, :cond_e3

    sget-object v2, Lcom/android/server/power/ShutdownThread;->dlgAnim:Lcom/android/server/power/ShutdownDialog;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/android/server/power/ShutdownDialog;->waitForAnimEnd(I)Z

    :cond_e3
    new-instance v19, Lcom/android/server/power/ShutdownThread$6;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/power/ShutdownThread$6;-><init>(Lcom/android/server/power/ShutdownThread;)V

    const-string v2, "ShutdownThread"

    const-string v3, "!@Shutting down MountService"

    invoke-static {v2, v3}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v6, 0x7530

    add-long v14, v2, v6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/ShutdownThread;->mActionDoneSyncMount:Ljava/lang/Object;

    monitor-enter v3

    :try_start_105
    const-string v2, "mount"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v18

    if-eqz v18, :cond_183

    invoke-interface/range {v18 .. v19}, Landroid/os/storage/IMountService;->shutdown(Landroid/os/storage/IMountShutdownObserver;)V
    :try_end_114
    .catchall {:try_start_105 .. :try_end_114} :catchall_194
    .catch Ljava/lang/Exception; {:try_start_105 .. :try_end_114} :catch_18b

    :goto_114
    :try_start_114
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDoneMount:Z

    if-nez v2, :cond_153

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v11, v14, v6

    const-string v2, "ShutdownThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "!@MountService delay : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", systemTime : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v6, 0x0

    cmp-long v2, v11, v6

    if-gtz v2, :cond_197

    const-string v2, "ShutdownThread"

    const-string v4, "!@Shutdown wait timed out"

    invoke-static {v2, v4}, Lcom/android/server/power/ShutdownThread$Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_153
    monitor-exit v3
    :try_end_154
    .catchall {:try_start_114 .. :try_end_154} :catchall_194

    if-eqz v20, :cond_15d

    const-wide/16 v2, 0x7d0

    :try_start_158
    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Ljava/lang/Thread;->join(J)V
    :try_end_15d
    .catch Ljava/lang/InterruptedException; {:try_start_158 .. :try_end_15d} :catch_1a6

    :cond_15d
    :goto_15d
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    sget-object v3, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/server/power/ShutdownThread;->rebootOrShutdown(ZLjava/lang/String;)V

    return-void

    :cond_165
    const-string v2, "0"

    goto/16 :goto_31

    :cond_169
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/32 v6, 0x13880

    add-long v16, v2, v6

    goto/16 :goto_8a

    :cond_174
    :try_start_174
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    invoke-virtual {v2, v11, v12}, Ljava/lang/Object;->wait(J)V
    :try_end_17b
    .catchall {:try_start_174 .. :try_end_17b} :catchall_180
    .catch Ljava/lang/InterruptedException; {:try_start_174 .. :try_end_17b} :catch_17d

    goto/16 :goto_8f

    :catch_17d
    move-exception v2

    goto/16 :goto_8f

    :catchall_180
    move-exception v2

    :try_start_181
    monitor-exit v3
    :try_end_182
    .catchall {:try_start_181 .. :try_end_182} :catchall_180

    throw v2

    :cond_183
    :try_start_183
    const-string v2, "ShutdownThread"

    const-string v4, "!@MountService unavailable for shutdown"

    invoke-static {v2, v4}, Lcom/android/server/power/ShutdownThread$Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18a
    .catchall {:try_start_183 .. :try_end_18a} :catchall_194
    .catch Ljava/lang/Exception; {:try_start_183 .. :try_end_18a} :catch_18b

    goto :goto_114

    :catch_18b
    move-exception v13

    :try_start_18c
    const-string v2, "ShutdownThread"

    const-string v4, "!@Exception during MountService shutdown"

    invoke-static {v2, v4, v13}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    goto :goto_114

    :catchall_194
    move-exception v2

    monitor-exit v3
    :try_end_196
    .catchall {:try_start_18c .. :try_end_196} :catchall_194

    throw v2

    :cond_197
    :try_start_197
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDoneSyncMount:Ljava/lang/Object;

    invoke-virtual {v2, v11, v12}, Ljava/lang/Object;->wait(J)V
    :try_end_19e
    .catchall {:try_start_197 .. :try_end_19e} :catchall_194
    .catch Ljava/lang/InterruptedException; {:try_start_197 .. :try_end_19e} :catch_1a0

    goto/16 :goto_114

    :catch_1a0
    move-exception v13

    :try_start_1a1
    invoke-virtual {v13}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_1a4
    .catchall {:try_start_1a1 .. :try_end_1a4} :catchall_194

    goto/16 :goto_114

    :catch_1a6
    move-exception v13

    const-string v2, "ShutdownThread"

    const-string v3, "error on saveShutdownLog"

    invoke-static {v2, v3}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15d

    :catch_1af
    move-exception v2

    goto/16 :goto_c1
.end method
