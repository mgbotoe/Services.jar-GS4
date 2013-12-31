.class public Lcom/android/server/Watchdog;
.super Ljava/lang/Thread;
.source "Watchdog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/Watchdog$Monitor;,
        Lcom/android/server/Watchdog$RebootRequestReceiver;,
        Lcom/android/server/Watchdog$RebootReceiver;,
        Lcom/android/server/Watchdog$HeartbeatHandler;
    }
.end annotation


# static fields
.field static final DB:Z = false

.field static final MEMCHECK_DEFAULT_MIN_ALARM:I = 0xb4

.field static final MEMCHECK_DEFAULT_MIN_SCREEN_OFF:I = 0x12c

.field static final MEMCHECK_DEFAULT_RECHECK_INTERVAL:I = 0x12c

.field static final MONITOR:I = 0xa9e

.field static final NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String; = null

.field static final REBOOT_ACTION:Ljava/lang/String; = "com.android.service.Watchdog.REBOOT"

.field static final REBOOT_DEFAULT_INTERVAL:I = 0x0

.field static final REBOOT_DEFAULT_START_TIME:I = 0x2a30

.field static final REBOOT_DEFAULT_WINDOW:I = 0xe10

.field static final RECORD_KERNEL_THREADS:Z = true

.field static final TAG:Ljava/lang/String; = "Watchdog"

.field static final TIME_TO_RESTART:I = 0xea60

.field static final TIME_TO_WAIT:I = 0x7530

.field static WSyncCount:I

.field static final localLOGV:Z

.field static sWatchdog:Lcom/android/server/Watchdog;


# instance fields
.field mActivity:Lcom/android/server/am/ActivityManagerService;

.field mActivityControllerPid:I

.field mAlarm:Lcom/android/server/AlarmManagerService;

.field mAllowRestart:Z

.field mBattery:Lcom/android/server/BatteryService;

.field mBootTime:J

.field final mCalendar:Ljava/util/Calendar;

.field mCheckupIntent:Landroid/app/PendingIntent;

.field mCompleted:Z

.field mController:Landroid/app/IActivityController;

.field mCurrentMonitor:Lcom/android/server/Watchdog$Monitor;

.field final mHandler:Landroid/os/Handler;

.field mMinAlarm:I

.field mMinScreenOff:I

.field final mMonitors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/Watchdog$Monitor;",
            ">;"
        }
    .end annotation
.end field

.field mNeedScheduledCheck:Z

.field mPhonePid:I

.field mPower:Lcom/android/server/power/PowerManagerService;

.field mRebootIntent:Landroid/app/PendingIntent;

.field mRebootInterval:I

.field mReqMinNextAlarm:I

.field mReqMinScreenOff:I

.field mReqRebootInterval:I

.field mReqRebootNoWait:Z

.field mReqRebootStartTime:I

.field mReqRebootWindow:I

.field mReqRecheckInterval:I

.field mResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x0

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "/system/bin/mediaserver"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "/system/bin/sdcard"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "/system/bin/surfaceflinger"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/Watchdog;->NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

    sput v3, Lcom/android/server/Watchdog;->WSyncCount:I

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    const/4 v1, -0x1

    const-string v0, "watchdog"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/Watchdog;->mMonitors:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/Watchdog;->mAllowRestart:Z

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/Watchdog;->mCalendar:Ljava/util/Calendar;

    const/16 v0, 0x12c

    iput v0, p0, Lcom/android/server/Watchdog;->mMinScreenOff:I

    const/16 v0, 0xb4

    iput v0, p0, Lcom/android/server/Watchdog;->mMinAlarm:I

    iput v1, p0, Lcom/android/server/Watchdog;->mReqRebootInterval:I

    iput v1, p0, Lcom/android/server/Watchdog;->mReqRebootStartTime:I

    iput v1, p0, Lcom/android/server/Watchdog;->mReqRebootWindow:I

    iput v1, p0, Lcom/android/server/Watchdog;->mReqMinScreenOff:I

    iput v1, p0, Lcom/android/server/Watchdog;->mReqMinNextAlarm:I

    iput v1, p0, Lcom/android/server/Watchdog;->mReqRecheckInterval:I

    new-instance v0, Lcom/android/server/Watchdog$HeartbeatHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/Watchdog$HeartbeatHandler;-><init>(Lcom/android/server/Watchdog;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/Watchdog;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static computeCalendarTime(Ljava/util/Calendar;JJ)J
    .registers 11

    invoke-virtual {p0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    long-to-int v3, p3

    div-int/lit16 v2, v3, 0xe10

    const/16 v3, 0xb

    invoke-virtual {p0, v3, v2}, Ljava/util/Calendar;->set(II)V

    mul-int/lit16 v3, v2, 0xe10

    int-to-long v3, v3

    sub-long/2addr p3, v3

    long-to-int v3, p3

    div-int/lit8 v2, v3, 0x3c

    const/16 v3, 0xc

    invoke-virtual {p0, v3, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xd

    long-to-int v4, p3

    mul-int/lit8 v5, v2, 0x3c

    sub-int/2addr v4, v5

    invoke-virtual {p0, v3, v4}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    cmp-long v3, v0, p1

    if-gez v3, :cond_37

    const/4 v3, 0x5

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    :cond_37
    return-wide v0
.end method

.method private dumpKernelStackTraces()Ljava/io/File;
    .registers 4

    const/4 v1, 0x0

    const-string v2, "dalvik.vm.stack-trace-file"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_10

    :cond_f
    :goto_f
    return-object v1

    :cond_10
    invoke-direct {p0, v0}, Lcom/android/server/Watchdog;->native_dumpKernelStacks(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_f
.end method

.method public static getInstance()Lcom/android/server/Watchdog;
    .registers 1

    sget-object v0, Lcom/android/server/Watchdog;->sWatchdog:Lcom/android/server/Watchdog;

    if-nez v0, :cond_b

    new-instance v0, Lcom/android/server/Watchdog;

    invoke-direct {v0}, Lcom/android/server/Watchdog;-><init>()V

    sput-object v0, Lcom/android/server/Watchdog;->sWatchdog:Lcom/android/server/Watchdog;

    :cond_b
    sget-object v0, Lcom/android/server/Watchdog;->sWatchdog:Lcom/android/server/Watchdog;

    return-object v0
.end method

.method private native native_dumpKernelStacks(Ljava/lang/String;)V
.end method


# virtual methods
.method public addMonitor(Lcom/android/server/Watchdog$Monitor;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/Watchdog;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_12

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Monitors can\'t be added while the Watchdog is running"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_f
    move-exception v0

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_f

    throw v0

    :cond_12
    :try_start_12
    iget-object v0, p0, Lcom/android/server/Watchdog;->mMonitors:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_12 .. :try_end_18} :catchall_f

    return-void
.end method

.method checkReboot(Z)V
    .registers 23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/Watchdog;->mReqRebootInterval:I

    move/from16 v17, v0

    if-ltz v17, :cond_22

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/Watchdog;->mReqRebootInterval:I

    :goto_c
    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/server/Watchdog;->mRebootInterval:I

    if-gtz v8, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog;->mAlarm:Lcom/android/server/AlarmManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog;->mRebootIntent:Landroid/app/PendingIntent;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/server/AlarmManagerService;->remove(Landroid/app/PendingIntent;)V

    :goto_21
    return-void

    :cond_22
    const/4 v8, 0x0

    goto :goto_c

    :cond_24
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/Watchdog;->mReqRebootStartTime:I

    move/from16 v17, v0

    if-ltz v17, :cond_f5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/Watchdog;->mReqRebootStartTime:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-long v11, v0

    :goto_35
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/Watchdog;->mReqRebootWindow:I

    move/from16 v17, v0

    if-ltz v17, :cond_f9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/Watchdog;->mReqRebootWindow:I

    move/from16 v17, v0

    :goto_43
    move/from16 v0, v17

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-long v13, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/Watchdog;->mReqRecheckInterval:I

    move/from16 v17, v0

    if-ltz v17, :cond_fd

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/Watchdog;->mReqRecheckInterval:I

    move/from16 v17, v0

    :goto_5a
    move/from16 v0, v17

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-long v15, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/Watchdog;->retrieveBrutalityAmount()V

    monitor-enter p0

    :try_start_67
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog;->mCalendar:Ljava/util/Calendar;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v0, v4, v5, v11, v12}, Lcom/android/server/Watchdog;->computeCalendarTime(Ljava/util/Calendar;JJ)J

    move-result-wide v6

    mul-int/lit8 v17, v8, 0x18

    mul-int/lit8 v17, v17, 0x3c

    mul-int/lit8 v17, v17, 0x3c

    move/from16 v0, v17

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-long v9, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/Watchdog;->mReqRebootNoWait:Z

    move/from16 v17, v0

    if-nez v17, :cond_9c

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/Watchdog;->mBootTime:J

    move-wide/from16 v17, v0

    sub-long v17, v4, v17

    sub-long v19, v9, v13

    cmp-long v17, v17, v19

    if-ltz v17, :cond_111

    :cond_9c
    if-eqz p1, :cond_101

    const-wide/16 v17, 0x0

    cmp-long v17, v13, v17

    if-gtz v17, :cond_101

    const/16 v17, 0xaf8

    const/16 v18, 0x5

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    long-to-int v0, v9

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x2

    long-to-int v0, v11

    move/from16 v20, v0

    move/from16 v0, v20

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x3

    long-to-int v0, v13

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x4

    const-string v20, ""

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    const-string v17, "Checkin scheduled forced"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/Watchdog;->rebootSystem(Ljava/lang/String;)V

    monitor-exit p0

    goto/16 :goto_21

    :catchall_f2
    move-exception v17

    monitor-exit p0
    :try_end_f4
    .catchall {:try_start_67 .. :try_end_f4} :catchall_f2

    throw v17

    :cond_f5
    const-wide/16 v11, 0x2a30

    goto/16 :goto_35

    :cond_f9
    const/16 v17, 0xe10

    goto/16 :goto_43

    :cond_fd
    const/16 v17, 0x12c

    goto/16 :goto_5a

    :cond_101
    cmp-long v17, v4, v6

    if-gez v17, :cond_13a

    :try_start_105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog;->mCalendar:Ljava/util/Calendar;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v0, v4, v5, v11, v12}, Lcom/android/server/Watchdog;->computeCalendarTime(Ljava/util/Calendar;JJ)J

    move-result-wide v6

    :cond_111
    :goto_111
    monitor-exit p0
    :try_end_112
    .catchall {:try_start_105 .. :try_end_112} :catchall_f2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog;->mAlarm:Lcom/android/server/AlarmManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog;->mRebootIntent:Landroid/app/PendingIntent;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/server/AlarmManagerService;->remove(Landroid/app/PendingIntent;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog;->mAlarm:Lcom/android/server/AlarmManagerService;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog;->mRebootIntent:Landroid/app/PendingIntent;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v6, v7, v2}, Lcom/android/server/AlarmManagerService;->set(IJLandroid/app/PendingIntent;)V

    goto/16 :goto_21

    :cond_13a
    add-long v17, v6, v13

    cmp-long v17, v4, v17

    if-gez v17, :cond_1b6

    :try_start_140
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/android/server/Watchdog;->shouldWeBeBrutalLocked(J)Ljava/lang/String;

    move-result-object v3

    const/16 v18, 0xaf8

    const/16 v17, 0x5

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v17, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    aput-object v20, v19, v17

    const/16 v17, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v19, v17

    const/16 v17, 0x2

    long-to-int v0, v11

    move/from16 v20, v0

    move/from16 v0, v20

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v19, v17

    const/16 v17, 0x3

    long-to-int v0, v13

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v19, v17

    const/16 v20, 0x4

    if-eqz v3, :cond_195

    move-object/from16 v17, v3

    :goto_182
    aput-object v17, v19, v20

    invoke-static/range {v18 .. v19}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    if-nez v3, :cond_198

    const-string v17, "Checked scheduled range"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/Watchdog;->rebootSystem(Ljava/lang/String;)V

    monitor-exit p0

    goto/16 :goto_21

    :cond_195
    const-string v17, ""

    goto :goto_182

    :cond_198
    add-long v17, v4, v15

    add-long v19, v6, v13

    cmp-long v17, v17, v19

    if-ltz v17, :cond_1b2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog;->mCalendar:Ljava/util/Calendar;

    move-object/from16 v17, v0

    add-long v18, v4, v9

    move-object/from16 v0, v17

    move-wide/from16 v1, v18

    invoke-static {v0, v1, v2, v11, v12}, Lcom/android/server/Watchdog;->computeCalendarTime(Ljava/util/Calendar;JJ)J

    move-result-wide v6

    goto/16 :goto_111

    :cond_1b2
    add-long v6, v4, v15

    goto/16 :goto_111

    :cond_1b6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog;->mCalendar:Ljava/util/Calendar;

    move-object/from16 v17, v0

    add-long v18, v4, v9

    move-object/from16 v0, v17

    move-wide/from16 v1, v18

    invoke-static {v0, v1, v2, v11, v12}, Lcom/android/server/Watchdog;->computeCalendarTime(Ljava/util/Calendar;JJ)J
    :try_end_1c5
    .catchall {:try_start_140 .. :try_end_1c5} :catchall_f2

    move-result-wide v6

    goto/16 :goto_111
.end method

.method public init(Landroid/content/Context;Lcom/android/server/BatteryService;Lcom/android/server/power/PowerManagerService;Lcom/android/server/AlarmManagerService;Lcom/android/server/am/ActivityManagerService;)V
    .registers 10

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/Watchdog;->mResolver:Landroid/content/ContentResolver;

    iput-object p2, p0, Lcom/android/server/Watchdog;->mBattery:Lcom/android/server/BatteryService;

    iput-object p3, p0, Lcom/android/server/Watchdog;->mPower:Lcom/android/server/power/PowerManagerService;

    iput-object p4, p0, Lcom/android/server/Watchdog;->mAlarm:Lcom/android/server/AlarmManagerService;

    iput-object p5, p0, Lcom/android/server/Watchdog;->mActivity:Lcom/android/server/am/ActivityManagerService;

    new-instance v0, Lcom/android/server/Watchdog$RebootReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/Watchdog$RebootReceiver;-><init>(Lcom/android/server/Watchdog;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.android.service.Watchdog.REBOOT"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.service.Watchdog.REBOOT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v3, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/Watchdog;->mRebootIntent:Landroid/app/PendingIntent;

    new-instance v0, Lcom/android/server/Watchdog$RebootRequestReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/Watchdog$RebootRequestReceiver;-><init>(Lcom/android/server/Watchdog;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.REBOOT"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v2, "android.permission.REBOOT"

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/Watchdog;->mBootTime:J

    return-void
.end method

.method public processStarted(Ljava/lang/String;I)V
    .registers 4

    monitor-enter p0

    :try_start_1
    const-string v0, "com.android.phone"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iput p2, p0, Lcom/android/server/Watchdog;->mPhonePid:I

    :cond_b
    :goto_b
    monitor-exit p0

    return-void

    :cond_d
    const-string v0, "ActivityController"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iput p2, p0, Lcom/android/server/Watchdog;->mActivityControllerPid:I

    goto :goto_b

    :catchall_18
    move-exception v0

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method rebootSystem(Ljava/lang/String;)V
    .registers 7

    const/4 v4, 0x0

    const-string v1, "Watchdog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Rebooting system because: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "power"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0, v4, p1, v4}, Lcom/android/server/power/PowerManagerService;->reboot(ZLjava/lang/String;Z)V

    return-void
.end method

.method retrieveBrutalityAmount()V
    .registers 2

    iget v0, p0, Lcom/android/server/Watchdog;->mReqMinScreenOff:I

    if-ltz v0, :cond_15

    iget v0, p0, Lcom/android/server/Watchdog;->mReqMinScreenOff:I

    :goto_6
    mul-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/android/server/Watchdog;->mMinScreenOff:I

    iget v0, p0, Lcom/android/server/Watchdog;->mReqMinNextAlarm:I

    if-ltz v0, :cond_18

    iget v0, p0, Lcom/android/server/Watchdog;->mReqMinNextAlarm:I

    :goto_10
    mul-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/android/server/Watchdog;->mMinAlarm:I

    return-void

    :cond_15
    const/16 v0, 0x12c

    goto :goto_6

    :cond_18
    const/16 v0, 0xb4

    goto :goto_10
.end method

.method public run()V
    .registers 23

    const/16 v17, 0x0

    :goto_2
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/Watchdog;->mCompleted:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog;->mHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    const/16 v19, 0xa9e

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    monitor-enter p0

    const-wide/16 v15, 0x7530

    :try_start_18
    const-string v18, "Watchdog"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "!@Sync "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget v20, Lcom/android/server/Watchdog;->WSyncCount:I

    add-int/lit8 v21, v20, 0x1

    sput v21, Lcom/android/server/Watchdog;->WSyncCount:I

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
    :try_end_39
    .catchall {:try_start_18 .. :try_end_39} :catchall_5a

    move-result-wide v12

    :goto_3a
    const-wide/16 v18, 0x0

    cmp-long v18, v15, v18

    if-lez v18, :cond_5d

    :try_start_40
    move-object/from16 v0, p0

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_46
    .catchall {:try_start_40 .. :try_end_46} :catchall_5a
    .catch Ljava/lang/InterruptedException; {:try_start_40 .. :try_end_46} :catch_51

    :goto_46
    const-wide/16 v18, 0x7530

    :try_start_48
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v20

    sub-long v20, v20, v12

    sub-long v15, v18, v20

    goto :goto_3a

    :catch_51
    move-exception v7

    const-string v18, "Watchdog"

    move-object/from16 v0, v18

    invoke-static {v0, v7}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_46

    :catchall_5a
    move-exception v18

    monitor-exit p0
    :try_end_5c
    .catchall {:try_start_48 .. :try_end_5c} :catchall_5a

    throw v18

    :cond_5d
    :try_start_5d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/Watchdog;->mCompleted:Z

    move/from16 v18, v0

    if-eqz v18, :cond_69

    const/16 v17, 0x0

    monitor-exit p0

    goto :goto_2

    :cond_69
    if-nez v17, :cond_95

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    sget-object v21, Lcom/android/server/Watchdog;->NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

    move/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-static {v0, v9, v1, v2, v3}, Lcom/android/server/am/ActivityManagerService;->dumpStackTraces(ZLjava/util/ArrayList;Lcom/android/internal/os/ProcessStats;Landroid/util/SparseArray;[Ljava/lang/String;)Ljava/io/File;

    const/16 v17, 0x1

    monitor-exit p0

    goto/16 :goto_2

    :cond_95
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog;->mCurrentMonitor:Lcom/android/server/Watchdog$Monitor;

    move-object/from16 v18, v0

    if-eqz v18, :cond_199

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog;->mCurrentMonitor:Lcom/android/server/Watchdog$Monitor;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    :goto_ab
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/Watchdog;->mAllowRestart:Z

    monitor-exit p0
    :try_end_b0
    .catchall {:try_start_5d .. :try_end_b0} :catchall_5a

    const/16 v18, 0xaf2

    move/from16 v0, v18

    invoke-static {v0, v8}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/Watchdog;->mPhonePid:I

    move/from16 v18, v0

    if-lez v18, :cond_e0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/Watchdog;->mPhonePid:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/Watchdog;->mActivityControllerPid:I

    move/from16 v18, v0

    if-lez v18, :cond_f7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/Watchdog;->mActivityControllerPid:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f7
    if-nez v17, :cond_19d

    const/16 v18, 0x1

    :goto_fb
    const/16 v19, 0x0

    const/16 v20, 0x0

    sget-object v21, Lcom/android/server/Watchdog;->NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

    move/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-static {v0, v9, v1, v2, v3}, Lcom/android/server/am/ActivityManagerService;->dumpStackTraces(ZLjava/util/ArrayList;Lcom/android/internal/os/ProcessStats;Landroid/util/SparseArray;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v11

    const-wide/16 v18, 0x7d0

    invoke-static/range {v18 .. v19}, Landroid/os/SystemClock;->sleep(J)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/Watchdog;->dumpKernelStackTraces()Ljava/io/File;

    :try_start_115
    new-instance v14, Ljava/io/FileWriter;

    const-string v18, "/proc/sysrq-trigger"

    move-object/from16 v0, v18

    invoke-direct {v14, v0}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    const-string v18, "w"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/io/FileWriter;->close()V
    :try_end_128
    .catch Ljava/io/IOException; {:try_start_115 .. :try_end_128} :catch_1a1

    :goto_128
    :try_start_128
    new-instance v14, Ljava/io/FileWriter;

    const-string v18, "/proc/sysrq-trigger"

    move-object/from16 v0, v18

    invoke-direct {v14, v0}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    const-string v18, "w"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/io/FileWriter;->close()V
    :try_end_13b
    .catch Ljava/io/IOException; {:try_start_128 .. :try_end_13b} :catch_1b4

    :goto_13b
    const-string v18, "Watchdog"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "WATCHDOG caused by "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v18, "-k -t -z -d -o /data/log/dumpstate_sys_watchdog"

    invoke-static/range {v18 .. v18}, Landroid/os/Debug;->saveDumpstate(Ljava/lang/String;)V

    const-wide/16 v18, 0x2710

    :try_start_15c
    invoke-static/range {v18 .. v19}, Ljava/lang/Thread;->sleep(J)V
    :try_end_15f
    .catch Ljava/lang/InterruptedException; {:try_start_15c .. :try_end_15f} :catch_20d

    :goto_15f
    new-instance v6, Lcom/android/server/Watchdog$1;

    const-string v18, "watchdogWriteToDropbox"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v6, v0, v1, v8, v11}, Lcom/android/server/Watchdog$1;-><init>(Lcom/android/server/Watchdog;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    const-wide/16 v18, 0x7d0

    :try_start_16f
    move-wide/from16 v0, v18

    invoke-virtual {v6, v0, v1}, Ljava/lang/Thread;->join(J)V
    :try_end_174
    .catch Ljava/lang/InterruptedException; {:try_start_16f .. :try_end_174} :catch_210

    :goto_174
    monitor-enter p0

    :try_start_175
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/Watchdog;->mController:Landroid/app/IActivityController;

    monitor-exit p0
    :try_end_17a
    .catchall {:try_start_175 .. :try_end_17a} :catchall_1c7

    if-eqz v5, :cond_1cb

    const-string v18, "Watchdog"

    const-string v19, "Reporting stuck state to activity controller"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_183
    const-string v18, "Service dumps disabled due to hung system process."

    invoke-static/range {v18 .. v18}, Landroid/os/Binder;->setDumpDisabled(Ljava/lang/String;)V

    invoke-interface {v5, v8}, Landroid/app/IActivityController;->systemNotResponding(Ljava/lang/String;)I

    move-result v10

    if-ltz v10, :cond_1cb

    const-string v18, "Watchdog"

    const-string v19, "Activity controller requested to coninue to wait"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_195
    .catch Landroid/os/RemoteException; {:try_start_183 .. :try_end_195} :catch_1ca

    const/16 v17, 0x0

    goto/16 :goto_2

    :cond_199
    :try_start_199
    const-string v8, "null"
    :try_end_19b
    .catchall {:try_start_199 .. :try_end_19b} :catchall_5a

    goto/16 :goto_ab

    :cond_19d
    const/16 v18, 0x0

    goto/16 :goto_fb

    :catch_1a1
    move-exception v7

    const-string v18, "Watchdog"

    const-string v19, "Failed to write to /proc/sysrq-trigger"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v18, "Watchdog"

    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_128

    :catch_1b4
    move-exception v7

    const-string v18, "Watchdog"

    const-string v19, "Failed to write to /proc/sysrq-trigger"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v18, "Watchdog"

    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_13b

    :catchall_1c7
    move-exception v18

    :try_start_1c8
    monitor-exit p0
    :try_end_1c9
    .catchall {:try_start_1c8 .. :try_end_1c9} :catchall_1c7

    throw v18

    :catch_1ca
    move-exception v18

    :cond_1cb
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v18

    if-eqz v18, :cond_1dc

    const-string v18, "Watchdog"

    const-string v19, "Debugger connected: Watchdog is *not* killing the system process"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1d8
    const/16 v17, 0x0

    goto/16 :goto_2

    :cond_1dc
    if-nez v4, :cond_1e6

    const-string v18, "Watchdog"

    const-string v19, "Restart not allowed: Watchdog is *not* killing the system process"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d8

    :cond_1e6
    const-string v18, "Watchdog"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "*** WATCHDOG KILLING SYSTEM PROCESS: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v18

    invoke-static/range {v18 .. v18}, Landroid/os/Process;->killProcess(I)V

    const/16 v18, 0xa

    invoke-static/range {v18 .. v18}, Ljava/lang/System;->exit(I)V

    goto :goto_1d8

    :catch_20d
    move-exception v18

    goto/16 :goto_15f

    :catch_210
    move-exception v18

    goto/16 :goto_174
.end method

.method public setActivityController(Landroid/app/IActivityController;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/android/server/Watchdog;->mController:Landroid/app/IActivityController;

    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public setAllowRestart(Z)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput-boolean p1, p0, Lcom/android/server/Watchdog;->mAllowRestart:Z

    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method shouldWeBeBrutalLocked(J)Ljava/lang/String;
    .registers 7

    iget-object v0, p0, Lcom/android/server/Watchdog;->mBattery:Lcom/android/server/BatteryService;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/server/Watchdog;->mBattery:Lcom/android/server/BatteryService;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/android/server/BatteryService;->isPowered(I)Z

    move-result v0

    if-nez v0, :cond_10

    :cond_d
    const-string v0, "battery"

    :goto_f
    return-object v0

    :cond_10
    iget v0, p0, Lcom/android/server/Watchdog;->mMinScreenOff:I

    if-ltz v0, :cond_28

    iget-object v0, p0, Lcom/android/server/Watchdog;->mPower:Lcom/android/server/power/PowerManagerService;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/android/server/Watchdog;->mPower:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService;->timeSinceScreenWasLastOn()J

    move-result-wide v0

    iget v2, p0, Lcom/android/server/Watchdog;->mMinScreenOff:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_28

    :cond_25
    const-string v0, "screen"

    goto :goto_f

    :cond_28
    iget v0, p0, Lcom/android/server/Watchdog;->mMinAlarm:I

    if-ltz v0, :cond_40

    iget-object v0, p0, Lcom/android/server/Watchdog;->mAlarm:Lcom/android/server/AlarmManagerService;

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/android/server/Watchdog;->mAlarm:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService;->timeToNextAlarm()J

    move-result-wide v0

    iget v2, p0, Lcom/android/server/Watchdog;->mMinAlarm:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_40

    :cond_3d
    const-string v0, "alarm"

    goto :goto_f

    :cond_40
    const/4 v0, 0x0

    goto :goto_f
.end method
