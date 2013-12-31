.class Lcom/android/server/AlarmManagerService;
.super Landroid/app/IAlarmManager$Stub;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/AlarmManagerService$PrevAlarm;,
        Lcom/android/server/AlarmManagerService$LongLifeReceiver;,
        Lcom/android/server/AlarmManagerService$SyncScheduler;,
        Lcom/android/server/AlarmManagerService$ResultReceiver;,
        Lcom/android/server/AlarmManagerService$FactoryOnOffControlReceiver;,
        Lcom/android/server/AlarmManagerService$UninstallReceiver;,
        Lcom/android/server/AlarmManagerService$ClockReceiver;,
        Lcom/android/server/AlarmManagerService$AlarmHandler;,
        Lcom/android/server/AlarmManagerService$AlarmThread;,
        Lcom/android/server/AlarmManagerService$Alarm;,
        Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;,
        Lcom/android/server/AlarmManagerService$BroadcastStats;,
        Lcom/android/server/AlarmManagerService$FilterStats;,
        Lcom/android/server/AlarmManagerService$InFlight;
    }
.end annotation


# static fields
.field private static final ALARM_EVENT:I = 0x1

.field private static APP_SYNC_LOG:Z = false

.field private static APP_SYNC_ON:Z = false

.field private static final ClockReceiver_TAG:Ljava/lang/String; = "ClockReceiver"

#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

#the value of this static final field might be set in the static constructor
.field private static final DEBUG_MID:Z = false

.field private static final ELAPSED_REALTIME_MASK:I = 0x8

.field private static final ELAPSED_REALTIME_WAKEUP_MASK:I = 0x4

.field private static FACTORY_ON:I = 0x0

.field private static final FACTORY_START:Ljava/lang/String; = "android.intent.action.START_FACTORY_TEST"

.field private static final FACTORY_STOP:Ljava/lang/String; = "android.intent.action.STOP_FACTORY_TEST"

.field protected static final INTENT_BATTERY_MONITOR:Ljava/lang/String; = "android.server.AndroidManagerService.INTENT_BATTERY_MONITOR"

#the value of this static final field might be set in the static constructor
.field private static final IS_TYPE_MRVL:Z = false

.field private static final LATE_ALARM_THRESHOLD:J = 0x2710L

.field private static final QUANTUM:J = 0xdbba0L

.field private static final RTC_MASK:I = 0x2

.field private static final RTC_WAKEUP_MASK:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AlarmManager"

.field private static final TIMEZONE_PROPERTY:Ljava/lang/String; = "persist.sys.timezone"

.field private static final TIME_CHANGED_MASK:I = 0x10000

.field private static final isEngBinary:Z

.field private static final localLOGV:Z

.field private static final mBackgroundIntent:Landroid/content/Intent;


# instance fields
.field private final mBatteryMonitorSender:Landroid/app/PendingIntent;

.field private final mBlockedUids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mBroadcastRefCount:I

.field private final mBroadcastStats:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/AlarmManagerService$BroadcastStats;",
            ">;"
        }
    .end annotation
.end field

.field private mClockReceiver:Lcom/android/server/AlarmManagerService$ClockReceiver;

.field private final mContext:Landroid/content/Context;

.field private final mDateChangeSender:Landroid/app/PendingIntent;

.field private mDescriptor:I

.field private final mElapsedRealtimeAlarms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;"
        }
    .end annotation
.end field

.field private final mElapsedRealtimeWakeupAlarms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;"
        }
    .end annotation
.end field

.field private mFactoryOnOffControlReceiver:Lcom/android/server/AlarmManagerService$FactoryOnOffControlReceiver;

.field private final mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

.field private mInFlight:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$InFlight;",
            ">;"
        }
    .end annotation
.end field

.field private final mIncreasingTimeOrder:Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;

.field private mLLM:Lcom/jpn/android/LongLifeManager;

.field private mLastTimeTickSetTime:J

.field private mLock:Ljava/lang/Object;

.field private final mLog:Lcom/android/internal/util/LocalLog;

.field private mLongLifeReceiver:Lcom/android/server/AlarmManagerService$LongLifeReceiver;

.field private mPendingAlarmList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$PrevAlarm;",
            ">;"
        }
    .end annotation
.end field

.field private final mResultReceiver:Lcom/android/server/AlarmManagerService$ResultReceiver;

.field private final mRtcAlarms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;"
        }
    .end annotation
.end field

.field private final mRtcWakeupAlarms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;"
        }
    .end annotation
.end field

.field private mSyncScheduler:Lcom/android/server/AlarmManagerService$SyncScheduler;

.field private final mTimeTickSender:Landroid/app/PendingIntent;

.field private final mTriggeredUids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mUninstallReceiver:Lcom/android/server/AlarmManagerService$UninstallReceiver;

.field private final mWaitThread:Lcom/android/server/AlarmManagerService$AlarmThread;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-nez v0, :cond_47

    move v0, v1

    :goto_9
    sput-boolean v0, Lcom/android/server/AlarmManagerService;->DEBUG:Z

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/server/AlarmManagerService;->mBackgroundIntent:Landroid/content/Intent;

    const-string v0, "mrvl"

    const-string v3, "ro.board.platform"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/AlarmManagerService;->IS_TYPE_MRVL:Z

    const-string v0, "0x494d"

    const-string v3, "ro.debug_level"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_49

    move v0, v1

    :goto_34
    sput-boolean v0, Lcom/android/server/AlarmManagerService;->DEBUG_MID:Z

    sput v2, Lcom/android/server/AlarmManagerService;->FACTORY_ON:I

    sput-boolean v1, Lcom/android/server/AlarmManagerService;->APP_SYNC_ON:Z

    sput-boolean v2, Lcom/android/server/AlarmManagerService;->APP_SYNC_LOG:Z

    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/AlarmManagerService;->isEngBinary:Z

    return-void

    :cond_47
    move v0, v2

    goto :goto_9

    :cond_49
    move v0, v2

    goto :goto_34
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 9

    const/high16 v6, 0x4000

    const/4 v5, 0x0

    invoke-direct {p0}, Landroid/app/IAlarmManager$Stub;-><init>()V

    new-instance v3, Lcom/android/internal/util/LocalLog;

    const-string v4, "AlarmManager"

    invoke-direct {v3, v4}, Lcom/android/internal/util/LocalLog;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/AlarmManagerService;->mRtcWakeupAlarms:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/AlarmManagerService;->mRtcAlarms:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeWakeupAlarms:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeAlarms:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;

    invoke-direct {v3}, Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;-><init>()V

    iput-object v3, p0, Lcom/android/server/AlarmManagerService;->mIncreasingTimeOrder:Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/AlarmManagerService;->mTriggeredUids:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/AlarmManagerService;->mBlockedUids:Ljava/util/ArrayList;

    iput v5, p0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/server/AlarmManagerService$AlarmThread;

    invoke-direct {v3, p0}, Lcom/android/server/AlarmManagerService$AlarmThread;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v3, p0, Lcom/android/server/AlarmManagerService;->mWaitThread:Lcom/android/server/AlarmManagerService$AlarmThread;

    new-instance v3, Lcom/android/server/AlarmManagerService$AlarmHandler;

    invoke-direct {v3, p0}, Lcom/android/server/AlarmManagerService$AlarmHandler;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v3, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    new-instance v3, Lcom/android/server/AlarmManagerService$ResultReceiver;

    invoke-direct {v3, p0}, Lcom/android/server/AlarmManagerService$ResultReceiver;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v3, p0, Lcom/android/server/AlarmManagerService;->mResultReceiver:Lcom/android/server/AlarmManagerService$ResultReceiver;

    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/android/server/AlarmManagerService;->mLastTimeTickSetTime:J

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/AlarmManagerService;->mPendingAlarmList:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->init()I

    move-result v3

    iput v3, p0, Lcom/android/server/AlarmManagerService;->mDescriptor:I

    const-string v3, "persist.sys.timezone"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8a

    invoke-virtual {p0, v2}, Lcom/android/server/AlarmManagerService;->setTimeZone(Ljava/lang/String;)V

    :cond_8a
    const-string v3, "power"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    const/4 v3, 0x1

    const-string v4, "AlarmManager"

    invoke-virtual {v1, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.TIME_TICK"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-static {p1, v5, v3, v5, v4}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/AlarmManagerService;->mTimeTickSender:Landroid/app/PendingIntent;

    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.DATE_CHANGED"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x2000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v3, 0x800

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-static {p1, v5, v0, v3, v4}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/AlarmManagerService;->mDateChangeSender:Landroid/app/PendingIntent;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.server.AndroidManagerService.INTENT_BATTERY_MONITOR"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v3

    invoke-static {p1, v5, v3, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/AlarmManagerService;->mBatteryMonitorSender:Landroid/app/PendingIntent;

    new-instance v3, Lcom/android/server/AlarmManagerService$ClockReceiver;

    invoke-direct {v3, p0}, Lcom/android/server/AlarmManagerService$ClockReceiver;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v3, p0, Lcom/android/server/AlarmManagerService;->mClockReceiver:Lcom/android/server/AlarmManagerService$ClockReceiver;

    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mClockReceiver:Lcom/android/server/AlarmManagerService$ClockReceiver;

    invoke-virtual {v3}, Lcom/android/server/AlarmManagerService$ClockReceiver;->scheduleTimeTickEvent()V

    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mClockReceiver:Lcom/android/server/AlarmManagerService$ClockReceiver;

    invoke-virtual {v3}, Lcom/android/server/AlarmManagerService$ClockReceiver;->scheduleDateChangedEvent()V

    sget-boolean v3, Lcom/android/server/AlarmManagerService;->IS_TYPE_MRVL:Z

    if-eqz v3, :cond_ef

    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mClockReceiver:Lcom/android/server/AlarmManagerService$ClockReceiver;

    invoke-virtual {v3}, Lcom/android/server/AlarmManagerService$ClockReceiver;->scheduleBatteryMonitorEvent()V

    :cond_ef
    new-instance v3, Lcom/android/server/AlarmManagerService$UninstallReceiver;

    invoke-direct {v3, p0}, Lcom/android/server/AlarmManagerService$UninstallReceiver;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v3, p0, Lcom/android/server/AlarmManagerService;->mUninstallReceiver:Lcom/android/server/AlarmManagerService$UninstallReceiver;

    new-instance v3, Lcom/android/server/AlarmManagerService$FactoryOnOffControlReceiver;

    invoke-direct {v3, p0}, Lcom/android/server/AlarmManagerService$FactoryOnOffControlReceiver;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v3, p0, Lcom/android/server/AlarmManagerService;->mFactoryOnOffControlReceiver:Lcom/android/server/AlarmManagerService$FactoryOnOffControlReceiver;

    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->SetSyncScheduler()V

    sget-boolean v3, Lcom/android/server/AlarmManagerService;->APP_SYNC_ON:Z

    if-eqz v3, :cond_10d

    new-instance v3, Lcom/android/server/AlarmManagerService$SyncScheduler;

    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v3, p0, v4}, Lcom/android/server/AlarmManagerService$SyncScheduler;-><init>(Lcom/android/server/AlarmManagerService;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/server/AlarmManagerService;->mSyncScheduler:Lcom/android/server/AlarmManagerService$SyncScheduler;

    :cond_10d
    iget v3, p0, Lcom/android/server/AlarmManagerService;->mDescriptor:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_118

    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mWaitThread:Lcom/android/server/AlarmManagerService$AlarmThread;

    invoke-virtual {v3}, Lcom/android/server/AlarmManagerService$AlarmThread;->start()V

    :goto_117
    return-void

    :cond_118
    const-string v3, "AlarmManager"

    const-string v4, "Failed to open alarm driver. Falling back to a handler."

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_117
.end method

.method private SetSyncScheduler()V
    .registers 6

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Common_DisableAppSync"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_21

    move v0, v1

    :goto_f
    if-eqz v0, :cond_23

    sput-boolean v1, Lcom/android/server/AlarmManagerService;->APP_SYNC_ON:Z

    const-string v2, "AlarmManager"

    const-string v3, "___SyncScheduler ACTIVATED___"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v2, Lcom/android/server/AlarmManagerService;->isEngBinary:Z

    if-eqz v2, :cond_20

    sput-boolean v1, Lcom/android/server/AlarmManagerService;->APP_SYNC_LOG:Z

    :cond_20
    :goto_20
    return-void

    :cond_21
    move v0, v2

    goto :goto_f

    :cond_23
    sput-boolean v2, Lcom/android/server/AlarmManagerService;->APP_SYNC_ON:Z

    const-string v1, "AlarmManager"

    const-string v2, "___SyncScheduler DEACTIVATED___"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20
.end method

.method static synthetic access$000(Lcom/android/server/AlarmManagerService;Landroid/app/PendingIntent;)Lcom/android/server/AlarmManagerService$BroadcastStats;
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/AlarmManagerService;->getStatsLocked(Landroid/app/PendingIntent;)Lcom/android/server/AlarmManagerService$BroadcastStats;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/AlarmManagerService;->DEBUG:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mRtcAlarms:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeWakeupAlarms:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeAlarms:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1300()Landroid/content/Intent;
    .registers 1

    sget-object v0, Lcom/android/server/AlarmManagerService;->mBackgroundIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/AlarmManagerService;)Lcom/android/server/AlarmManagerService$ResultReceiver;
    .registers 2

    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mResultReceiver:Lcom/android/server/AlarmManagerService$ResultReceiver;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/AlarmManagerService;)Lcom/android/server/AlarmManagerService$AlarmHandler;
    .registers 2

    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/AlarmManagerService;)I
    .registers 2

    iget v0, p0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    return v0
.end method

.method static synthetic access$1608(Lcom/android/server/AlarmManagerService;)I
    .registers 3

    iget v0, p0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    return v0
.end method

.method static synthetic access$1610(Lcom/android/server/AlarmManagerService;)I
    .registers 3

    iget v0, p0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/AlarmManagerService;)Landroid/os/PowerManager$WakeLock;
    .registers 2

    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mTriggeredUids:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/AlarmManagerService;)I
    .registers 2

    iget v0, p0, Lcom/android/server/AlarmManagerService;->mDescriptor:I

    return v0
.end method

.method static synthetic access$2000()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/AlarmManagerService;->DEBUG_MID:Z

    return v0
.end method

.method static synthetic access$2100()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/AlarmManagerService;->IS_TYPE_MRVL:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/android/server/AlarmManagerService;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/AlarmManagerService;->mLastTimeTickSetTime:J

    return-wide v0
.end method

.method static synthetic access$2300(Lcom/android/server/AlarmManagerService;II)I
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/server/AlarmManagerService;->setKernelTimezone(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/android/server/AlarmManagerService;)Landroid/app/PendingIntent;
    .registers 2

    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mDateChangeSender:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/AlarmManagerService;)Landroid/app/PendingIntent;
    .registers 2

    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mBatteryMonitorSender:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/AlarmManagerService;)Ljava/util/HashMap;
    .registers 2

    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2700()I
    .registers 1

    sget v0, Lcom/android/server/AlarmManagerService;->FACTORY_ON:I

    return v0
.end method

.method static synthetic access$2702(I)I
    .registers 1

    sput p0, Lcom/android/server/AlarmManagerService;->FACTORY_ON:I

    return p0
.end method

.method static synthetic access$2800()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/AlarmManagerService;->APP_SYNC_ON:Z

    return v0
.end method

.method static synthetic access$2900()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/AlarmManagerService;->APP_SYNC_LOG:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/AlarmManagerService;I)I
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/AlarmManagerService;->waitForAlarm(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$3000(Lcom/android/server/AlarmManagerService;)Lcom/android/server/AlarmManagerService$SyncScheduler;
    .registers 2

    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mSyncScheduler:Lcom/android/server/AlarmManagerService$SyncScheduler;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/server/AlarmManagerService;)Lcom/android/internal/util/LocalLog;
    .registers 2

    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mBlockedUids:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/server/AlarmManagerService;Ljava/util/ArrayList;Ljava/lang/String;)Z
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/server/AlarmManagerService;->lookForPackageLocked(Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3400(Lcom/android/server/AlarmManagerService;Ljava/util/ArrayList;Landroid/app/PendingIntent;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/AlarmManagerService;->removeLocked(Ljava/util/ArrayList;Landroid/app/PendingIntent;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/server/AlarmManagerService;Ljava/util/ArrayList;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/AlarmManagerService;->removeLocked(Ljava/util/ArrayList;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/server/AlarmManagerService;)Lcom/jpn/android/LongLifeManager;
    .registers 2

    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mLLM:Lcom/jpn/android/LongLifeManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/AlarmManagerService;)Landroid/app/PendingIntent;
    .registers 2

    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mTimeTickSender:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mPendingAlarmList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/server/AlarmManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->removeDisallowedAlarmList()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/AlarmManagerService;)Lcom/android/server/AlarmManagerService$ClockReceiver;
    .registers 2

    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mClockReceiver:Lcom/android/server/AlarmManagerService$ClockReceiver;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/AlarmManagerService;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/AlarmManagerService;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mRtcWakeupAlarms:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/AlarmManagerService;Ljava/util/ArrayList;Ljava/util/ArrayList;J)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/AlarmManagerService;->triggerAlarmsLocked(Ljava/util/ArrayList;Ljava/util/ArrayList;J)V

    return-void
.end method

.method private addAlarmLocked(Lcom/android/server/AlarmManagerService$Alarm;)I
    .registers 12

    iget v6, p1, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    invoke-direct {p0, v6}, Lcom/android/server/AlarmManagerService;->getAlarmList(I)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mIncreasingTimeOrder:Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;

    invoke-static {v2, p1, v6}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v3

    if-gez v3, :cond_12

    rsub-int/lit8 v6, v3, 0x0

    add-int/lit8 v3, v6, -0x1

    :cond_12
    sget-boolean v6, Lcom/android/server/AlarmManagerService;->APP_SYNC_ON:Z

    if-eqz v6, :cond_97

    sget-boolean v6, Lcom/android/server/AlarmManagerService;->APP_SYNC_LOG:Z

    if-eqz v6, :cond_90

    new-instance v4, Landroid/text/format/Time;

    invoke-direct {v4}, Landroid/text/format/Time;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v0, v6, v8

    iget-wide v6, p1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    iget v8, p1, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/4 v9, 0x2

    if-lt v8, v9, :cond_94

    :goto_30
    add-long/2addr v6, v0

    invoke-virtual {v4, v6, v7}, Landroid/text/format/Time;->set(J)V

    invoke-virtual {v4}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v5

    const-string v6, "AlarmManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Adding alarm (T:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " at "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",INT:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p1, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_90
    :goto_90
    invoke-virtual {v2, v3, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return v3

    :cond_94
    const-wide/16 v0, 0x0

    goto :goto_30

    :cond_97
    sget-boolean v6, Lcom/android/server/AlarmManagerService;->DEBUG:Z

    if-eqz v6, :cond_90

    const-string v6, "AlarmManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Adding alarm "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " at "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_90
.end method

.method private addPendingAlarmList(IJLandroid/app/PendingIntent;)V
    .registers 16

    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mLLM:Lcom/jpn/android/LongLifeManager;

    invoke-virtual {v0}, Lcom/jpn/android/LongLifeManager;->isModifying()Z

    move-result v0

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mLLM:Lcom/jpn/android/LongLifeManager;

    invoke-virtual {p4}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3}, Lcom/jpn/android/LongLifeManager;->isAllowedPackage(Ljava/lang/String;Ljava/lang/String;S)Z

    move-result v0

    if-nez v0, :cond_1e

    :cond_1d
    :goto_1d
    return-void

    :cond_1e
    invoke-virtual {p4}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mLLM:Lcom/jpn/android/LongLifeManager;

    invoke-virtual {p4}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jpn/android/LongLifeManager;->isAllowedIntentAction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    :cond_3a
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mPendingAlarmList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_40
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/AlarmManagerService$PrevAlarm;

    iget-object v0, v8, Lcom/android/server/AlarmManagerService$PrevAlarm;->mOperation:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-virtual {p4}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    iget-object v0, v8, Lcom/android/server/AlarmManagerService$PrevAlarm;->mOperation:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    if-nez v7, :cond_72

    if-eqz v9, :cond_1d

    :cond_72
    if-eqz v7, :cond_40

    if-eqz v9, :cond_40

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    goto :goto_1d

    :cond_7d
    const-string v0, "AlarmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Add pending alarm list : pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p4}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " act="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p4}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jpn/android/LongLifeManager$Elog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/server/AlarmManagerService;->mPendingAlarmList:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/AlarmManagerService$PrevAlarm;

    move-object v1, p0

    move v2, p1

    move-wide v3, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/AlarmManagerService$PrevAlarm;-><init>(Lcom/android/server/AlarmManagerService;IJLandroid/app/PendingIntent;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1d
.end method

.method private native close(I)V
.end method

.method private native disableFakeOffTimer(I)I
.end method

.method private static final dumpAlarmList(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_6
    if-ltz v1, :cond_3d

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, " #"

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, ": "

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p0, v2, p4, p5}, Lcom/android/server/AlarmManagerService$Alarm;->dump(Ljava/io/PrintWriter;Ljava/lang/String;J)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    :cond_3d
    return-void
.end method

.method private getAlarmList(I)Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;"
        }
    .end annotation

    packed-switch p1, :pswitch_data_12

    const/4 v0, 0x0

    :goto_4
    return-object v0

    :pswitch_5
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mRtcWakeupAlarms:Ljava/util/ArrayList;

    goto :goto_4

    :pswitch_8
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mRtcAlarms:Ljava/util/ArrayList;

    goto :goto_4

    :pswitch_b
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeWakeupAlarms:Ljava/util/ArrayList;

    goto :goto_4

    :pswitch_e
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeAlarms:Ljava/util/ArrayList;

    goto :goto_4

    nop

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_5
        :pswitch_8
        :pswitch_b
        :pswitch_e
    .end packed-switch
.end method

.method private final getStatsLocked(Landroid/app/PendingIntent;)Lcom/android/server/AlarmManagerService$BroadcastStats;
    .registers 5

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$BroadcastStats;

    if-nez v0, :cond_18

    new-instance v0, Lcom/android/server/AlarmManagerService$BroadcastStats;

    invoke-direct {v0, v1}, Lcom/android/server/AlarmManagerService$BroadcastStats;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_18
    return-object v0
.end method

.method private native init()I
.end method

.method private lookForPackageLocked(Ljava/util/ArrayList;Ljava/lang/String;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_6
    if-ltz v0, :cond_1f

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$Alarm;

    iget-object v1, v1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    const/4 v1, 0x1

    :goto_1b
    return v1

    :cond_1c
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_1f
    const/4 v1, 0x0

    goto :goto_1b
.end method

.method private removeDisallowedAlarmList()V
    .registers 11

    const/4 v9, 0x4

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v9, :cond_9d

    invoke-direct {p0, v5}, Lcom/android/server/AlarmManagerService;->getAlarmList(I)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    :goto_9
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_99

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/AlarmManagerService$Alarm;

    iget-object v2, v6, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/AlarmManagerService$Alarm;

    iget-wide v3, v6, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mLLM:Lcom/jpn/android/LongLifeManager;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8, v9}, Lcom/jpn/android/LongLifeManager;->isAllowedPackage(Ljava/lang/String;Ljava/lang/String;S)Z

    move-result v6

    if-nez v6, :cond_7b

    const-string v6, "AlarmManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "remove disallowed alarm list : pkg="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " act="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " Type : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/jpn/android/LongLifeManager$Elog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v5, :cond_7e

    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mRtcWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_72
    :goto_72
    invoke-direct {p0, v5, v3, v4, v2}, Lcom/android/server/AlarmManagerService;->addPendingAlarmList(IJLandroid/app/PendingIntent;)V

    invoke-direct {p0, v5}, Lcom/android/server/AlarmManagerService;->getAlarmList(I)Ljava/util/ArrayList;

    move-result-object v0

    add-int/lit8 v1, v1, -0x1

    :cond_7b
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_7e
    const/4 v6, 0x1

    if-ne v5, v6, :cond_87

    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mRtcAlarms:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_72

    :cond_87
    const/4 v6, 0x2

    if-ne v5, v6, :cond_90

    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_72

    :cond_90
    const/4 v6, 0x3

    if-ne v5, v6, :cond_72

    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeAlarms:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_72

    :cond_99
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    :cond_9d
    return-void
.end method

.method private removeLocked(Ljava/util/ArrayList;Landroid/app/PendingIntent;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;",
            "Landroid/app/PendingIntent;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_7

    :cond_6
    return-void

    :cond_7
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v2, p2}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_b
.end method

.method private removeLocked(Ljava/util/ArrayList;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_7

    :cond_6
    return-void

    :cond_7
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_b
.end method

.method private removeUserLocked(Ljava/util/ArrayList;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;I)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_7

    :cond_6
    return-void

    :cond_7
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-ne v2, p2, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_b
.end method

.method private native set(IIJJ)V
.end method

.method private native setBootAlarm(ILjava/lang/String;)V
.end method

.method private native setKernelTimezone(II)I
.end method

.method private setLocked(Lcom/android/server/AlarmManagerService$Alarm;)V
    .registers 14

    const/4 v2, 0x1

    const-wide/16 v10, 0x3e8

    iget v0, p0, Lcom/android/server/AlarmManagerService;->mDescriptor:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_56

    iget-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    const-wide/16 v8, 0x0

    cmp-long v0, v0, v8

    if-gez v0, :cond_4b

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    :goto_14
    const-string v0, "AlarmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AlarmManager_setLocked to type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " as ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ans="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/android/server/AlarmManagerService;->mDescriptor:I

    iget v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/AlarmManagerService;->set(IIJJ)V

    :goto_4a
    return-void

    :cond_4b
    iget-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    div-long v3, v0, v10

    iget-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    rem-long/2addr v0, v10

    mul-long/2addr v0, v10

    mul-long v5, v0, v10

    goto :goto_14

    :cond_56
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v7

    iput v2, v7, Landroid/os/Message;->what:I

    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    invoke-virtual {v0, v2}, Lcom/android/server/AlarmManagerService$AlarmHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    iget-wide v1, p1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    invoke-virtual {v0, v7, v1, v2}, Lcom/android/server/AlarmManagerService$AlarmHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_4a
.end method

.method private native setShutdownTimeAfterFakeOff(ILjava/lang/String;)I
.end method

.method private triggerAlarmsLocked(Ljava/util/ArrayList;Ljava/util/ArrayList;J)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;J)V"
        }
    .end annotation

    const-wide/16 v9, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    iget-wide v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    cmp-long v3, v3, p3

    if-lez v3, :cond_3c

    :cond_1d
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_63

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    iget-wide v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    iget v5, v0, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    int-to-long v5, v5

    iget-wide v7, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    mul-long/2addr v5, v7

    add-long/2addr v3, v5

    iput-wide v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    invoke-direct {p0, v0}, Lcom/android/server/AlarmManagerService;->addAlarmLocked(Lcom/android/server/AlarmManagerService$Alarm;)I

    goto :goto_21

    :cond_3c
    const/4 v3, 0x1

    iput v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    iget-wide v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    cmp-long v3, v3, v9

    if-lez v3, :cond_53

    iget v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    int-to-long v3, v3

    iget-wide v5, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    sub-long v5, p3, v5

    iget-wide v7, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    div-long/2addr v5, v7

    add-long/2addr v3, v5

    long-to-int v3, v3

    iput v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    :cond_53
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    iget-wide v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    cmp-long v3, v3, v9

    if-lez v3, :cond_b

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_63
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_73

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AlarmManagerService$Alarm;

    invoke-direct {p0, v3}, Lcom/android/server/AlarmManagerService;->setLocked(Lcom/android/server/AlarmManagerService$Alarm;)V

    :cond_73
    return-void
.end method

.method private native waitForAlarm(I)I
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 28

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.DUMP"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_37

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission Denial: can\'t dump AlarmManager from from pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_36
    return-void

    :cond_37
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    move-object/from16 v23, v0

    monitor-enter v23

    :try_start_3e
    const-string v3, "Current Alarm Manager state:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService;->mRtcWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_59

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService;->mRtcAlarms:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_b9

    :cond_59
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    new-instance v20, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd HH:mm:ss"

    move-object/from16 v0, v20

    invoke-direct {v0, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "  Realtime wakeup (now="

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v7, v8}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "):"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService;->mRtcWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_a2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mRtcWakeupAlarms:Ljava/util/ArrayList;

    const-string v5, "  "

    const-string v6, "RTC_WAKEUP"

    move-object/from16 v3, p2

    invoke-static/range {v3 .. v8}, Lcom/android/server/AlarmManagerService;->dumpAlarmList(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;J)V

    :cond_a2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService;->mRtcAlarms:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_b9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mRtcAlarms:Ljava/util/ArrayList;

    const-string v5, "  "

    const-string v6, "RTC"

    move-object/from16 v3, p2

    invoke-static/range {v3 .. v8}, Lcom/android/server/AlarmManagerService;->dumpAlarmList(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;J)V

    :cond_b9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_cd

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeAlarms:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_119

    :cond_cd
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    const-string v3, " "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "  Elapsed realtime wakeup (now="

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-static {v7, v8, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string v3, "):"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_102

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeWakeupAlarms:Ljava/util/ArrayList;

    const-string v5, "  "

    const-string v6, "ELAPSED_WAKEUP"

    move-object/from16 v3, p2

    invoke-static/range {v3 .. v8}, Lcom/android/server/AlarmManagerService;->dumpAlarmList(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;J)V

    :cond_102
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeAlarms:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_119

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeAlarms:Ljava/util/ArrayList;

    const-string v5, "  "

    const-string v6, "ELAPSED"

    move-object/from16 v3, p2

    invoke-static/range {v3 .. v8}, Lcom/android/server/AlarmManagerService;->dumpAlarmList(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;J)V

    :cond_119
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    const-string v3, "  Broadcast ref count: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    const-string v4, "  Recent problems"

    const-string v5, "    "

    move-object/from16 v0, p2

    invoke-virtual {v3, v0, v4, v5}, Lcom/android/internal/util/LocalLog;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_142

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    :cond_142
    const/16 v3, 0xa

    new-array v0, v3, [Lcom/android/server/AlarmManagerService$FilterStats;

    move-object/from16 v22, v0

    new-instance v11, Lcom/android/server/AlarmManagerService$1;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/android/server/AlarmManagerService$1;-><init>(Lcom/android/server/AlarmManagerService;)V

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_15d
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1c7

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/AlarmManagerService$BroadcastStats;

    iget-object v3, v10, Lcom/android/server/AlarmManagerService$BroadcastStats;->filterStats:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_179
    :goto_179
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_15d

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/AlarmManagerService$FilterStats;

    if-lez v18, :cond_1c4

    const/4 v3, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v18

    invoke-static {v0, v3, v1, v14, v11}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;IILjava/lang/Object;Ljava/util/Comparator;)I

    move-result v19

    :goto_196
    if-gez v19, :cond_19d

    move/from16 v0, v19

    neg-int v3, v0

    add-int/lit8 v19, v3, -0x1

    :cond_19d
    move-object/from16 v0, v22

    array-length v3, v0

    move/from16 v0, v19

    if-ge v0, v3, :cond_179

    move-object/from16 v0, v22

    array-length v3, v0

    sub-int v3, v3, v19

    add-int/lit8 v12, v3, -0x1

    if-lez v12, :cond_1b8

    add-int/lit8 v3, v19, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v19

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2, v3, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1b8
    aput-object v14, v22, v19

    move-object/from16 v0, v22

    array-length v3, v0

    move/from16 v0, v18

    if-ge v0, v3, :cond_179

    add-int/lit8 v18, v18, 0x1

    goto :goto_179

    :cond_1c4
    const/16 v19, 0x0

    goto :goto_196

    :cond_1c7
    if-lez v18, :cond_261

    const-string v3, "  Top Alarms:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v15, 0x0

    :goto_1d1
    move/from16 v0, v18

    if-ge v15, v0, :cond_261

    aget-object v14, v22, v15

    const-string v3, "    "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v14, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    if-lez v3, :cond_1e9

    const-string v3, "*ACTIVE* "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_1e9
    iget-wide v3, v14, Lcom/android/server/AlarmManagerService$FilterStats;->aggregateTime:J

    move-object/from16 v0, p2

    invoke-static {v3, v4, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string v3, " running, "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v14, Lcom/android/server/AlarmManagerService$FilterStats;->numWakeup:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, " wakeups, "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v14, Lcom/android/server/AlarmManagerService$FilterStats;->count:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, " alarms: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v14, Lcom/android/server/AlarmManagerService$FilterStats;->mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

    iget-object v3, v3, Lcom/android/server/AlarmManagerService$BroadcastStats;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    const-string v3, "      "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v14, Lcom/android/server/AlarmManagerService$FilterStats;->mTarget:Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v3, :cond_23e

    const-string v3, " act="

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v14, Lcom/android/server/AlarmManagerService$FilterStats;->mTarget:Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_23e
    iget-object v3, v14, Lcom/android/server/AlarmManagerService$FilterStats;->mTarget:Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v3, :cond_25a

    const-string v3, " cmp="

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v14, Lcom/android/server/AlarmManagerService$FilterStats;->mTarget:Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_25a
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_1d1

    :cond_261
    const-string v3, " "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "  Alarm Stats:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_280
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_383

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/AlarmManagerService$BroadcastStats;

    const-string v3, "  "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v10, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    if-lez v3, :cond_2a4

    const-string v3, "*ACTIVE* "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_2a4
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, " "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v3, v10, Lcom/android/server/AlarmManagerService$BroadcastStats;->aggregateTime:J

    move-object/from16 v0, p2

    invoke-static {v3, v4, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string v3, " running, "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v10, Lcom/android/server/AlarmManagerService$BroadcastStats;->numWakeup:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, " wakeups:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->clear()V

    iget-object v3, v10, Lcom/android/server/AlarmManagerService$BroadcastStats;->filterStats:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_2df
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2f8

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2df

    :catchall_2f5
    move-exception v3

    monitor-exit v23
    :try_end_2f7
    .catchall {:try_start_3e .. :try_end_2f7} :catchall_2f5

    throw v3

    :cond_2f8
    :try_start_2f8
    move-object/from16 v0, v21

    invoke-static {v0, v11}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v15, 0x0

    :goto_2fe
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v15, v3, :cond_280

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/AlarmManagerService$FilterStats;

    const-string v3, "    "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v14, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    if-lez v3, :cond_31e

    const-string v3, "*ACTIVE* "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_31e
    iget-wide v3, v14, Lcom/android/server/AlarmManagerService$FilterStats;->aggregateTime:J

    move-object/from16 v0, p2

    invoke-static {v3, v4, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string v3, " "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v14, Lcom/android/server/AlarmManagerService$FilterStats;->numWakeup:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, " wakes "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v14, Lcom/android/server/AlarmManagerService$FilterStats;->count:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, " alarms:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v14, Lcom/android/server/AlarmManagerService$FilterStats;->mTarget:Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v3, :cond_360

    const-string v3, " act="

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v14, Lcom/android/server/AlarmManagerService$FilterStats;->mTarget:Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_360
    iget-object v3, v14, Lcom/android/server/AlarmManagerService$FilterStats;->mTarget:Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v3, :cond_37c

    const-string v3, " cmp="

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v14, Lcom/android/server/AlarmManagerService$FilterStats;->mTarget:Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_37c
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_2fe

    :cond_383
    monitor-exit v23
    :try_end_384
    .catchall {:try_start_2f8 .. :try_end_384} :catchall_2f5

    goto/16 :goto_36
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    iget v0, p0, Lcom/android/server/AlarmManagerService;->mDescriptor:I

    invoke-direct {p0, v0}, Lcom/android/server/AlarmManagerService;->close(I)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_9

    invoke-super {p0}, Landroid/app/IAlarmManager$Stub;->finalize()V

    return-void

    :catchall_9
    move-exception v0

    invoke-super {p0}, Landroid/app/IAlarmManager$Stub;->finalize()V

    throw v0
.end method

.method public lookForPackageLocked(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mRtcWakeupAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/server/AlarmManagerService;->lookForPackageLocked(Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mRtcAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/server/AlarmManagerService;->lookForPackageLocked(Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeWakeupAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/server/AlarmManagerService;->lookForPackageLocked(Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/server/AlarmManagerService;->lookForPackageLocked(Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    :cond_20
    const/4 v0, 0x1

    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method public remove(Landroid/app/PendingIntent;)V
    .registers 5

    sget-boolean v0, Lcom/android/server/AlarmManagerService;->APP_SYNC_LOG:Z

    if-eqz v0, :cond_1c

    const-string v0, "AlarmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " remove] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    if-nez p1, :cond_1f

    :goto_1e
    return-void

    :cond_1f
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_22
    invoke-virtual {p0, p1}, Lcom/android/server/AlarmManagerService;->removeLocked(Landroid/app/PendingIntent;)V

    monitor-exit v1

    goto :goto_1e

    :catchall_27
    move-exception v0

    monitor-exit v1
    :try_end_29
    .catchall {:try_start_22 .. :try_end_29} :catchall_27

    throw v0
.end method

.method public removeLocked(Landroid/app/PendingIntent;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mRtcWakeupAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/server/AlarmManagerService;->removeLocked(Ljava/util/ArrayList;Landroid/app/PendingIntent;)V

    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mRtcAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/server/AlarmManagerService;->removeLocked(Ljava/util/ArrayList;Landroid/app/PendingIntent;)V

    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeWakeupAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/server/AlarmManagerService;->removeLocked(Ljava/util/ArrayList;Landroid/app/PendingIntent;)V

    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/server/AlarmManagerService;->removeLocked(Ljava/util/ArrayList;Landroid/app/PendingIntent;)V

    sget-boolean v0, Lcom/android/server/AlarmManagerService;->APP_SYNC_ON:Z

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mSyncScheduler:Lcom/android/server/AlarmManagerService$SyncScheduler;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mSyncScheduler:Lcom/android/server/AlarmManagerService$SyncScheduler;

    invoke-virtual {v0, p1}, Lcom/android/server/AlarmManagerService$SyncScheduler;->removeRepeatingAlarmLocked(Landroid/app/PendingIntent;)V

    :cond_21
    return-void
.end method

.method public removeLocked(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mRtcWakeupAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/server/AlarmManagerService;->removeLocked(Ljava/util/ArrayList;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mRtcAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/server/AlarmManagerService;->removeLocked(Ljava/util/ArrayList;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeWakeupAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/server/AlarmManagerService;->removeLocked(Ljava/util/ArrayList;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/server/AlarmManagerService;->removeLocked(Ljava/util/ArrayList;Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/AlarmManagerService;->APP_SYNC_ON:Z

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mSyncScheduler:Lcom/android/server/AlarmManagerService$SyncScheduler;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mSyncScheduler:Lcom/android/server/AlarmManagerService$SyncScheduler;

    invoke-virtual {v0, p1}, Lcom/android/server/AlarmManagerService$SyncScheduler;->removeRepeatingAlarmLocked(Ljava/lang/String;)V

    :cond_21
    return-void
.end method

.method public removeUserLocked(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mRtcWakeupAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/server/AlarmManagerService;->removeUserLocked(Ljava/util/ArrayList;I)V

    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mRtcAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/server/AlarmManagerService;->removeUserLocked(Ljava/util/ArrayList;I)V

    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeWakeupAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/server/AlarmManagerService;->removeUserLocked(Ljava/util/ArrayList;I)V

    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mElapsedRealtimeAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/server/AlarmManagerService;->removeUserLocked(Ljava/util/ArrayList;I)V

    return-void
.end method

.method public set(IJLandroid/app/PendingIntent;)V
    .registers 12

    const-wide/16 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/AlarmManagerService;->setRepeating(IJJLandroid/app/PendingIntent;)V

    return-void
.end method

.method public setAutoPowerUp(Ljava/lang/String;)V
    .registers 3

    iget v0, p0, Lcom/android/server/AlarmManagerService;->mDescriptor:I

    invoke-direct {p0, v0, p1}, Lcom/android/server/AlarmManagerService;->setBootAlarm(ILjava/lang/String;)V

    return-void
.end method

.method public setInexactRepeating(IJJLandroid/app/PendingIntent;)V
    .registers 21

    if-nez p6, :cond_a

    const-string v2, "AlarmManager"

    const-string v3, "setInexactRepeating ignored because there is no intent"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_9
    return-void

    :cond_a
    const-wide/16 v2, 0x0

    cmp-long v2, p4, v2

    if-gtz v2, :cond_31

    const-string v2, "AlarmManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setInexactRepeating ignored because interval "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p4

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " is invalid"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :cond_31
    const-wide/32 v2, 0xdbba0

    rem-long v2, p4, v2

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-eqz v2, :cond_40

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/AlarmManagerService;->setRepeating(IJJLandroid/app/PendingIntent;)V

    goto :goto_9

    :cond_40
    const/4 v2, 0x1

    if-eq p1, v2, :cond_45

    if-nez p1, :cond_70

    :cond_45
    const/4 v9, 0x1

    :goto_46
    if-eqz v9, :cond_72

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v12, v2, v6

    :goto_52
    sub-long v2, p2, v12

    const-wide/32 v6, 0xdbba0

    rem-long v10, v2, v6

    const-wide/16 v2, 0x0

    cmp-long v2, v10, v2

    if-eqz v2, :cond_75

    sub-long v2, p2, v10

    const-wide/32 v6, 0xdbba0

    add-long v4, v2, v6

    :goto_66
    move-object v2, p0

    move v3, p1

    move-wide/from16 v6, p4

    move-object/from16 v8, p6

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/AlarmManagerService;->setRepeating(IJJLandroid/app/PendingIntent;)V

    goto :goto_9

    :cond_70
    const/4 v9, 0x0

    goto :goto_46

    :cond_72
    const-wide/16 v12, 0x0

    goto :goto_52

    :cond_75
    move-wide/from16 v4, p2

    goto :goto_66
.end method

.method public setRepeating(IJJLandroid/app/PendingIntent;)V
    .registers 21

    if-nez p6, :cond_a

    const-string v8, "AlarmManager"

    const-string v9, "set/setRepeating ignored because there is no intent"

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_9
    return-void

    :cond_a
    sget-boolean v8, Lcom/android/server/AlarmManagerService;->DEBUG:Z

    if-eqz v8, :cond_32

    const-string v8, "AlarmManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Set alarm: type= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " triggerAtTime= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-wide/from16 v0, p2

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_32
    sget-boolean v8, Lcom/android/server/AlarmManagerService;->DEBUG:Z

    if-eqz v8, :cond_50

    const-string v8, "AlarmManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "FACTORY_ON= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/android/server/AlarmManagerService;->FACTORY_ON:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_50
    sget v8, Lcom/android/server/AlarmManagerService;->FACTORY_ON:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_9c

    sget-boolean v8, Lcom/android/server/AlarmManagerService;->DEBUG:Z

    if-eqz v8, :cond_7d

    const-string v8, "AlarmManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Turn off alarm wake up : type= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " triggerAtTime= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-wide/from16 v0, p2

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7d
    if-nez p1, :cond_167

    const/4 p1, 0x1

    :cond_80
    :goto_80
    sget-boolean v8, Lcom/android/server/AlarmManagerService;->DEBUG:Z

    if-eqz v8, :cond_9c

    const-string v8, "AlarmManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Alarm Changed : type= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9c
    iget-object v9, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v9

    :try_start_9f
    new-instance v4, Lcom/android/server/AlarmManagerService$Alarm;

    invoke-direct {v4}, Lcom/android/server/AlarmManagerService$Alarm;-><init>()V

    iput p1, v4, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    move-wide/from16 v0, p2

    iput-wide v0, v4, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    move-wide/from16 v0, p4

    iput-wide v0, v4, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-object/from16 v0, p6

    iput-object v0, v4, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    sget-boolean v8, Lcom/android/server/AlarmManagerService;->APP_SYNC_ON:Z

    if-eqz v8, :cond_171

    move-wide/from16 v0, p2

    iput-wide v0, v4, Lcom/android/server/AlarmManagerService$Alarm;->whenOriginal:J

    iget-object v8, p0, Lcom/android/server/AlarmManagerService;->mSyncScheduler:Lcom/android/server/AlarmManagerService$SyncScheduler;

    if-eqz v8, :cond_137

    sget-boolean v8, Lcom/android/server/AlarmManagerService;->APP_SYNC_LOG:Z

    if-eqz v8, :cond_132

    new-instance v6, Landroid/text/format/Time;

    invoke-direct {v6}, Landroid/text/format/Time;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    sub-long v2, v10, v12

    iget-wide v10, v4, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    iget v8, v4, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/4 v12, 0x2

    if-lt v8, v12, :cond_16d

    :goto_d8
    add-long/2addr v10, v2

    invoke-virtual {v6, v10, v11}, Landroid/text/format/Time;->set(J)V

    invoke-virtual {v6}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v7

    const-string v8, "AlarmManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setRepeating (T:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v4, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v4, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v11}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v11, v4, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ",INT:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v11, v4, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_132
    iget-object v8, p0, Lcom/android/server/AlarmManagerService;->mSyncScheduler:Lcom/android/server/AlarmManagerService$SyncScheduler;

    invoke-virtual {v8, v4}, Lcom/android/server/AlarmManagerService$SyncScheduler;->schedulingRepeatingAlarms(Lcom/android/server/AlarmManagerService$Alarm;)V

    :cond_137
    :goto_137
    sget v8, Lcom/android/server/AlarmManagerService;->FACTORY_ON:I

    const/4 v10, 0x1

    if-ne v8, v10, :cond_158

    sget-boolean v8, Lcom/android/server/AlarmManagerService;->DEBUG:Z

    if-eqz v8, :cond_158

    const-string v8, "AlarmManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "set: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_158
    invoke-direct {p0, v4}, Lcom/android/server/AlarmManagerService;->addAlarmLocked(Lcom/android/server/AlarmManagerService$Alarm;)I

    move-result v5

    if-nez v5, :cond_161

    invoke-direct {p0, v4}, Lcom/android/server/AlarmManagerService;->setLocked(Lcom/android/server/AlarmManagerService$Alarm;)V

    :cond_161
    monitor-exit v9

    goto/16 :goto_9

    :catchall_164
    move-exception v8

    monitor-exit v9
    :try_end_166
    .catchall {:try_start_9f .. :try_end_166} :catchall_164

    throw v8

    :cond_167
    const/4 v8, 0x2

    if-ne p1, v8, :cond_80

    const/4 p1, 0x3

    goto/16 :goto_80

    :cond_16d
    const-wide/16 v2, 0x0

    goto/16 :goto_d8

    :cond_171
    :try_start_171
    move-object/from16 v0, p6

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerService;->removeLocked(Landroid/app/PendingIntent;)V
    :try_end_176
    .catchall {:try_start_171 .. :try_end_176} :catchall_164

    goto :goto_137
.end method

.method public setTime(J)V
    .registers 7

    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.SET_TIME"

    const-string v3, "setTime"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    const/16 v2, 0x2710

    if-lt v1, v2, :cond_2e

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    const/16 v2, 0x4e1f

    if-gt v1, v2, :cond_2e

    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;

    const-string v2, "enterprise_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getDateTimePolicy()Landroid/app/enterprise/DateTimePolicy;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/enterprise/DateTimePolicy;->isDateTimeChangeEnabled()Z

    move-result v1

    if-nez v1, :cond_2e

    :goto_2d
    return-void

    :cond_2e
    const-string v1, "AlarmManager"

    const-string v2, " setTime()"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1, p2}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    goto :goto_2d
.end method

.method public setTimeZone(Ljava/lang/String;)V
    .registers 13

    iget-object v8, p0, Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;

    const-string v9, "android.permission.SET_TIME_ZONE"

    const-string v10, "setTimeZone"

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v8

    const/16 v9, 0x2710

    if-lt v8, v9, :cond_2e

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v8

    const/16 v9, 0x4e1f

    if-gt v8, v9, :cond_2e

    iget-object v8, p0, Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;

    const-string v9, "enterprise_policy"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getDateTimePolicy()Landroid/app/enterprise/DateTimePolicy;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/enterprise/DateTimePolicy;->isDateTimeChangeEnabled()Z

    move-result v8

    if-nez v8, :cond_2e

    :goto_2d
    return-void

    :cond_2e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    :try_start_32
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_c2

    move-result v8

    if-eqz v8, :cond_3c

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2d

    :cond_3c
    :try_start_3c
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v7

    const/4 v6, 0x0

    monitor-enter p0
    :try_end_42
    .catchall {:try_start_3c .. :try_end_42} :catchall_c2

    :try_start_42
    const-string v8, "persist.sys.timezone"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_54

    invoke-virtual {v7}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_84

    :cond_54
    const-string v8, "AlarmManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "timezone changed: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", new="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->secW(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x1

    const-string v8, "persist.sys.timezone"

    invoke-virtual {v7}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_84
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v2

    iget v8, p0, Lcom/android/server/AlarmManagerService;->mDescriptor:I

    const v9, 0xea60

    div-int v9, v2, v9

    neg-int v9, v9

    invoke-direct {p0, v8, v9}, Lcom/android/server/AlarmManagerService;->setKernelTimezone(II)I

    monitor-exit p0
    :try_end_98
    .catchall {:try_start_42 .. :try_end_98} :catchall_bf

    const/4 v8, 0x0

    :try_start_99
    invoke-static {v8}, Ljava/util/TimeZone;->setDefault(Ljava/util/TimeZone;)V

    if-eqz v6, :cond_ba

    new-instance v3, Landroid/content/Intent;

    const-string v8, "android.intent.action.TIMEZONE_CHANGED"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v8, 0x2000

    invoke-virtual {v3, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v8, "time-zone"

    invoke-virtual {v7}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v8, p0, Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;

    sget-object v9, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v8, v3, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_ba
    .catchall {:try_start_99 .. :try_end_ba} :catchall_c2

    :cond_ba
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_2d

    :catchall_bf
    move-exception v8

    :try_start_c0
    monitor-exit p0
    :try_end_c1
    .catchall {:try_start_c0 .. :try_end_c1} :catchall_bf

    :try_start_c1
    throw v8
    :try_end_c2
    .catchall {:try_start_c1 .. :try_end_c2} :catchall_c2

    :catchall_c2
    move-exception v8

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v8
.end method

.method setWakelockWorkSource(Landroid/app/PendingIntent;)V
    .registers 5

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->getUidForIntentSender(Landroid/content/IIntentSender;)I

    move-result v0

    if-ltz v0, :cond_19

    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    new-instance v2, Landroid/os/WorkSource;

    invoke-direct {v2, v0}, Landroid/os/WorkSource;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    :goto_18
    return-void

    :cond_19
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1f} :catch_20

    goto :goto_18

    :catch_20
    move-exception v1

    goto :goto_18
.end method

.method public shutdownTimeAfterFakeOff(ZI)I
    .registers 11

    const/16 v7, 0xa

    const/4 v6, 0x0

    if-eqz p1, :cond_90

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    new-instance v1, Landroid/text/format/Time;

    const-string v4, "UTC"

    invoke-direct {v1, v4}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    mul-int/lit8 v4, p2, 0x3c

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    add-long/2addr v4, v2

    invoke-virtual {v1, v4, v5}, Landroid/text/format/Time;->set(J)V

    invoke-virtual {v1, v6}, Landroid/text/format/Time;->normalize(Z)J

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    iget v5, v1, Landroid/text/format/Time;->year:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    iget v4, v1, Landroid/text/format/Time;->month:I

    add-int/lit8 v4, v4, 0x1

    if-ge v4, v7, :cond_34

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_34
    iget v4, v1, Landroid/text/format/Time;->month:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    iget v4, v1, Landroid/text/format/Time;->monthDay:I

    if-ge v4, v7, :cond_42

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_42
    iget v4, v1, Landroid/text/format/Time;->monthDay:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    iget v4, v1, Landroid/text/format/Time;->hour:I

    if-ge v4, v7, :cond_4e

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_4e
    iget v4, v1, Landroid/text/format/Time;->hour:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    iget v4, v1, Landroid/text/format/Time;->minute:I

    if-ge v4, v7, :cond_5a

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_5a
    iget v4, v1, Landroid/text/format/Time;->minute:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v4, "AlarmManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "shutdownTimeAfterFakeOff : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, p0, Lcom/android/server/AlarmManagerService;->mDescriptor:I

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/server/AlarmManagerService;->setShutdownTimeAfterFakeOff(ILjava/lang/String;)I

    move-result v4

    :goto_8f
    return v4

    :cond_90
    iget v4, p0, Lcom/android/server/AlarmManagerService;->mDescriptor:I

    invoke-direct {p0, v4}, Lcom/android/server/AlarmManagerService;->disableFakeOffTimer(I)I

    move-result v4

    goto :goto_8f
.end method

.method public timeToNextAlarm()J
    .registers 10

    const-wide v3, 0x7fffffffffffffffL

    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    const/4 v2, 0x0

    :goto_9
    const/4 v5, 0x3

    if-gt v2, v5, :cond_28

    :try_start_c
    invoke-direct {p0, v2}, Lcom/android/server/AlarmManagerService;->getAlarmList(I)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_25

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    iget-wide v7, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    cmp-long v5, v7, v3

    if-gez v5, :cond_25

    iget-wide v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_28
    monitor-exit v6

    return-wide v3

    :catchall_2a
    move-exception v5

    monitor-exit v6
    :try_end_2c
    .catchall {:try_start_c .. :try_end_2c} :catchall_2a

    throw v5
.end method

.method updateBlockedUids(IZ)V
    .registers 7

    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    if-eqz p2, :cond_45

    const/4 v0, 0x0

    :goto_6
    :try_start_6
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mTriggeredUids:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_5b

    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mTriggeredUids:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5b

    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mTriggeredUids:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mBlockedUids:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v1, p0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    if-lez v1, :cond_42

    iget v1, p0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    iget v1, p0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    if-nez v1, :cond_42

    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_42
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_45
    const/4 v0, 0x0

    :goto_46
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mBlockedUids:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_5b

    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mBlockedUids:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5d

    :cond_5b
    monitor-exit v2

    return-void

    :cond_5d
    add-int/lit8 v0, v0, 0x1

    goto :goto_46

    :catchall_60
    move-exception v1

    monitor-exit v2
    :try_end_62
    .catchall {:try_start_6 .. :try_end_62} :catchall_60

    throw v1
.end method
