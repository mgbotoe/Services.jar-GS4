.class public Lcom/android/server/TimaService;
.super Landroid/service/tima/ITimaService$Stub;
.source "TimaService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/TimaService$TimaServiceHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final EVENT_MSG_KERNEL_METADATA_MODIFIED:I = 0x4

.field private static final EVENT_MSG_KERNEL_MODIFIED:I = 0x3

.field private static final EVENT_MSG_LKM_MODIFIED:I = 0x1

.field private static final EVENT_MSG_SELINUX_OFF:I = 0x2

.field private static final PACKAGE_ESDK_ELM:Ljava/lang/String; = "com.sec.esdk.elm"

.field private static final PACKAGE_KNOX_AGENT:Ljava/lang/String; = "com.sec.knox.seandroid"

.field private static final TAG:Ljava/lang/String; = "TimaService"

.field private static final TIMA_ALERT_TITLE:Ljava/lang/String; = "TIMA security measurement"

.field private static final TIMA_DUMP_LOG_EXEC:Ljava/lang/String; = "/system/bin/tima_dump_log -s 20 -d 40 -o "

.field private static final TIMA_ERROR_KEYSTORE_NO_PERMISSON:I = 0x64

.field private static final TIMA_EVENT_ID:I = 0x2

.field private static final TIMA_EVENT_MSG:Ljava/lang/String; = "MSG="

.field private static final TIMA_EVENT_STATUS:Ljava/lang/String; = "TIMA_STATUS="

.field private static final TIMA_INTENT_PERMISSION:Ljava/lang/String; = "com.sec.enterprise.knox.permission.MDM_ENTERPRISE_TIMA_NOTIFICATION"

.field private static final TIMA_LOG_DIR:Ljava/lang/String; = "/data/misc/tima"

.field private static final TIMA_LOG_STEM:Ljava/lang/String; = "/tima.log."

.field public static TIMA_MAX_EVENTS:I = 0x0

.field private static final TIMA_NOTIFICATION_ID:I = 0x1b58

.field public static final TIMA_OPCODE_HISTORY:I = 0xc351

.field public static final TIMA_OPCODE_MEASUREMENT:I = 0xc350

.field private static final TIMA_START_ID:I = 0x1

.field public static final TIMA_SUBCODE_LKM:I = 0x2711

.field public static final TIMA_SUBCODE_PKM:I = 0x2710

.field private static final TIMA_TIMER_CHECK_INTERVAL:J = 0x493e0L

.field private static final TIMA_TIMER_START_DELAY:J = 0x1388L

.field private static final TIMA_TIMER_START_DELAY_FIRST_TIME:J = 0x493e0L

.field public static iBootCompleted:Z

.field private static final mEventList:Ljava/util/LinkedList;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mNotifMgr:Landroid/app/NotificationManager;

.field private mPowerManager:Landroid/os/PowerManager;

.field mTimaServiceHandler:Lcom/android/server/TimaService$TimaServiceHandler;

.field private mTimer:Ljava/util/Timer;

.field private mTimerTask:Ljava/util/TimerTask;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private timaISLClbk:Landroid/service/tima/ITimaISLCallback;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x64

    sput v0, Lcom/android/server/TimaService;->TIMA_MAX_EVENTS:I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/TimaService;->iBootCompleted:Z

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/android/server/TimaService;->mEventList:Ljava/util/LinkedList;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 10

    const-wide/32 v2, 0x493e0

    invoke-direct {p0}, Landroid/service/tima/ITimaService$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/server/TimaService;->mNotifMgr:Landroid/app/NotificationManager;

    new-instance v7, Landroid/os/HandlerThread;

    const-string v0, "TimaService"

    invoke-direct {v7, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v7}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    if-eqz v6, :cond_49

    new-instance v0, Lcom/android/server/TimaService$TimaServiceHandler;

    invoke-direct {v0, p0, v6}, Lcom/android/server/TimaService$TimaServiceHandler;-><init>(Lcom/android/server/TimaService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/TimaService;->mTimaServiceHandler:Lcom/android/server/TimaService$TimaServiceHandler;

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/server/TimaService;->mTimer:Ljava/util/Timer;

    new-instance v0, Lcom/android/server/TimaService$1;

    invoke-direct {v0, p0}, Lcom/android/server/TimaService$1;-><init>(Lcom/android/server/TimaService;)V

    iput-object v0, p0, Lcom/android/server/TimaService;->mTimerTask:Ljava/util/TimerTask;

    iget-object v0, p0, Lcom/android/server/TimaService;->mTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/android/server/TimaService;->mTimerTask:Ljava/util/TimerTask;

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    const-string v0, "TimaService"

    const-string v1, "TIMA: Start TimaService"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_48
    return-void

    :cond_49
    const-string v0, "TimaService"

    const-string v1, "Failed getting looper for TimaServiceHandler"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_48
.end method

.method static synthetic access$000(Lcom/android/server/TimaService;)Landroid/app/NotificationManager;
    .registers 2

    iget-object v0, p0, Lcom/android/server/TimaService;->mNotifMgr:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/TimaService;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private enforcePermission()Z
    .registers 3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_a

    const/4 v1, 0x1

    :goto_9
    return v1

    :cond_a
    const/4 v1, 0x0

    goto :goto_9
.end method

.method static native timaAttestation([B)[B
.end method

.method static native timaCheckEvent(II)Ljava/lang/String;
.end method

.method static native timaCheckHistory(II)Ljava/lang/String;
.end method

.method static native timaGetDeviceID()[B
.end method

.method static native timaKeystoreInit()I
.end method

.method static native timaKeystoreInstallKey(I[B)I
.end method

.method static native timaKeystoreRetrieveKey(I)[B
.end method

.method static native timaKeystoreShutdown()I
.end method

.method private validateRequest(II)Z
    .registers 5

    const/4 v0, 0x1

    const v1, 0xc350

    if-eq p1, v1, :cond_b

    const v1, 0xc351

    if-ne p1, v1, :cond_13

    :cond_b
    const/16 v1, 0x2710

    if-eq p2, v1, :cond_14

    const/16 v1, 0x2711

    if-eq p2, v1, :cond_14

    :cond_13
    const/4 v0, 0x0

    :cond_14
    return v0
.end method


# virtual methods
.method public declared-synchronized attestation([B)[B
    .registers 4

    monitor-enter p0

    :try_start_1
    const-string v0, "TimaService"

    const-string v1, "TIMA: attestation"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/server/TimaService;->timaAttestation([B)[B
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_e

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized checkEvent(II)Ljava/lang/String;
    .registers 7

    monitor-enter p0

    :try_start_1
    const-string v1, "TimaService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TIMA: checkEvent, operation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " subject: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/android/server/TimaService;->mPowerManager:Landroid/os/PowerManager;

    iget-object v1, p0, Lcom/android/server/TimaService;->mPowerManager:Landroid/os/PowerManager;

    const/4 v2, 0x1

    const-string v3, "TimaService"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/TimaService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {p0, p1, p2}, Lcom/android/server/TimaService;->validateRequest(II)Z
    :try_end_3d
    .catchall {:try_start_1 .. :try_end_3d} :catchall_55

    move-result v1

    if-nez v1, :cond_43

    const/4 v0, 0x0

    :goto_41
    monitor-exit p0

    return-object v0

    :cond_43
    :try_start_43
    iget-object v1, p0, Lcom/android/server/TimaService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    invoke-static {p1, p2}, Lcom/android/server/TimaService;->timaCheckEvent(II)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/TimaService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    invoke-virtual {p0, v0}, Lcom/android/server/TimaService;->displayEvent(Ljava/lang/String;)V
    :try_end_54
    .catchall {:try_start_43 .. :try_end_54} :catchall_55

    goto :goto_41

    :catchall_55
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized checkHistory(II)Ljava/lang/String;
    .registers 7

    monitor-enter p0

    :try_start_1
    const-string v1, "TimaService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TIMA: checkHistory, operation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " subject: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2}, Lcom/android/server/TimaService;->validateRequest(II)Z
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_34

    move-result v1

    if-nez v1, :cond_2c

    const/4 v0, 0x0

    :goto_2a
    monitor-exit p0

    return-object v0

    :cond_2c
    :try_start_2c
    invoke-static {p1, p2}, Lcom/android/server/TimaService;->timaCheckHistory(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/TimaService;->displayEvent(Ljava/lang/String;)V
    :try_end_33
    .catchall {:try_start_2c .. :try_end_33} :catchall_34

    goto :goto_2a

    :catchall_34
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public displayEvent(Ljava/lang/String;)V
    .registers 24

    const-string v19, "TimaService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "TIMA MEASUREMENT Result: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_1f

    :goto_1e
    return-void

    :cond_1f
    sget-object v19, Lcom/android/server/TimaService;->mEventList:Ljava/util/LinkedList;

    invoke-virtual/range {v19 .. v19}, Ljava/util/LinkedList;->size()I

    move-result v19

    sget v20, Lcom/android/server/TimaService;->TIMA_MAX_EVENTS:I

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_32

    sget-object v19, Lcom/android/server/TimaService;->mEventList:Ljava/util/LinkedList;

    invoke-virtual/range {v19 .. v19}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    :cond_32
    :try_start_32
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TimaService;->timaISLClbk:Landroid/service/tima/ITimaISLCallback;

    move-object/from16 v19, v0

    if-eqz v19, :cond_4e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TimaService;->timaISLClbk:Landroid/service/tima/ITimaISLCallback;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/service/tima/ITimaISLCallback;->onTimaViolation(Ljava/lang/String;)V

    const-string v19, "TimaService"

    const-string v20, "Reporting violation to ISL"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4e
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_4e} :catch_bc

    :cond_4e
    :goto_4e
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/util/Date;->toLocaleString()Ljava/lang/String;

    move-result-object v18

    sget-object v19, Lcom/android/server/TimaService;->mEventList:Ljava/util/LinkedList;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ": "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const-string v19, "TIMA_STATUS="

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    const/16 v19, 0x3b

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1, v15}, Ljava/lang/String;->indexOf(II)I

    move-result v14

    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v15, v0, :cond_9e

    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v14, v0, :cond_c5

    :cond_9e
    const-string v19, "TimaService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "TIMA MEASUREMENT invalid status: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1e

    :catch_bc
    move-exception v8

    const-string v19, "TimaService"

    const-string v20, "Exception"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4e

    :cond_c5
    const-string v19, "0"

    const-string v20, "TIMA_STATUS="

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    add-int v20, v20, v15

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_fb

    const-string v19, "TimaService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "TIMA MEASUREMENT success status: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1e

    :cond_fb
    const-string v19, "1"

    const-string v20, "TIMA_STATUS="

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    add-int v20, v20, v15

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_131

    const-string v19, "TimaService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "TIMA Internal Error: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1e

    :cond_131
    const-string v19, "MSG="

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    const/16 v19, 0x3b

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1, v13}, Ljava/lang/String;->indexOf(II)I

    move-result v14

    const-string v12, ""

    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v13, v0, :cond_153

    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v14, v0, :cond_171

    :cond_153
    const-string v19, "TimaService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "TIMA MEASUREMENT invalid result: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1e

    :cond_171
    new-instance v3, Landroid/content/Intent;

    const-string v19, "android.intent.action.TIMA_NOTIFICATION"

    move-object/from16 v0, v19

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v19, "MSG="

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    add-int v19, v19, v13

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    const-string v19, "lkm_modified"

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1df

    const-string v19, "TIMA_STATUS="

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_19f
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v19, "yyyyMMddHHmmss"

    move-object/from16 v0, v19

    invoke-direct {v6, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v19, Ljava/util/Date;

    invoke-direct/range {v19 .. v19}, Ljava/util/Date;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    :try_start_1b3
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v19

    const-string v20, "mkdir -p /data/misc/tima"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_1bc
    .catch Ljava/io/IOException; {:try_start_1b3 .. :try_end_1bc} :catch_22b

    :goto_1bc
    :try_start_1bc
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v19

    const-string v20, "chmod 701 /data/misc/tima"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_1c5
    .catch Ljava/io/IOException; {:try_start_1bc .. :try_end_1c5} :catch_234

    :goto_1c5
    :try_start_1c5
    new-instance v7, Ljava/io/File;

    const-string v19, "/data/misc/tima"

    move-object/from16 v0, v19

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v9

    move-object v4, v9

    array-length v11, v4

    const/4 v10, 0x0

    :goto_1d5
    if-ge v10, v11, :cond_241

    aget-object v17, v4, v10

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->delete()Z
    :try_end_1dc
    .catch Ljava/lang/Exception; {:try_start_1c5 .. :try_end_1dc} :catch_23d

    add-int/lit8 v10, v10, 0x1

    goto :goto_1d5

    :cond_1df
    const-string v19, "seandroid_off"

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1f5

    const-string v19, "TIMA_STATUS="

    const/16 v20, 0x2

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_19f

    :cond_1f5
    const-string v19, "kern_modified"

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_20b

    const-string v19, "TIMA_STATUS="

    const/16 v20, 0x3

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_19f

    :cond_20b
    const-string v19, "kern_metadata_modified"

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_222

    const-string v19, "TIMA_STATUS="

    const/16 v20, 0x4

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_19f

    :cond_222
    const-string v19, "TimaService"

    const-string v20, "TIMA: Unknown message from TIMA APPs. Not notifying the user"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1e

    :catch_22b
    move-exception v8

    const-string v19, "TimaService"

    const-string v20, "Failed to create /data/misc/tima"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1bc

    :catch_234
    move-exception v8

    const-string v19, "TimaService"

    const-string v20, "Failed to change permissions of /data/misc/tima"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c5

    :catch_23d
    move-exception v8

    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    :cond_241
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "/data/misc/tima/tima.log."

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    :try_start_256
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "/system/bin/tima_dump_log -s 20 -d 40 -o "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_274
    .catch Ljava/io/IOException; {:try_start_256 .. :try_end_274} :catch_29f

    :goto_274
    :try_start_274
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "chmod 666 "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_292
    .catch Ljava/io/IOException; {:try_start_274 .. :try_end_292} :catch_2bd

    :goto_292
    sget-boolean v19, Lcom/android/server/TimaService;->iBootCompleted:Z

    if-nez v19, :cond_2db

    const-string v19, "TimaService"

    const-string v20, "displayEvent(): iBootCompleted==false"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1e

    :catch_29f
    move-exception v8

    const-string v19, "TimaService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Failed to execute: /system/bin/tima_dump_log -s 20 -d 40 -o "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_274

    :catch_2bd
    move-exception v8

    const-string v19, "TimaService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Failed to change permissions of "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_292

    :cond_2db
    const-string v19, "com.sec.knox.seandroid"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string v20, "com.sec.enterprise.knox.permission.MDM_ENTERPRISE_TIMA_NOTIFICATION"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    new-instance v2, Landroid/content/Intent;

    const-string v19, "android.intent.action.TIMA_NOTIFICATION"

    move-object/from16 v0, v19

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v19, "TIMA_LOG_FILE"

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v19, "com.sec.esdk.elm"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TimaService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string v20, "com.sec.enterprise.knox.permission.MDM_ENTERPRISE_TIMA_NOTIFICATION"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_1e
.end method

.method public declared-synchronized getDeviceID()[B
    .registers 3

    monitor-enter p0

    :try_start_1
    const-string v0, "TimaService"

    const-string v1, "TIMA: getDeviceID"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/TimaService;->timaGetDeviceID()[B
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_e

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getEventList(I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/server/TimaService;->mEventList:Ljava/util/LinkedList;

    return-object v0
.end method

.method public declared-synchronized keystoreInit()I
    .registers 3

    monitor-enter p0

    :try_start_1
    const-string v0, "TimaService"

    const-string v1, "TIMA: keystoreInit"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/TimaService;->enforcePermission()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-static {}, Lcom/android/server/TimaService;->timaKeystoreInit()I
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_17

    move-result v0

    :goto_12
    monitor-exit p0

    return v0

    :cond_14
    const/16 v0, 0x64

    goto :goto_12

    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized keystoreInstallKey(I[B)I
    .registers 5

    monitor-enter p0

    :try_start_1
    const-string v0, "TimaService"

    const-string v1, "TIMA: keystoreInstallKey"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/TimaService;->enforcePermission()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-static {p1, p2}, Lcom/android/server/TimaService;->timaKeystoreInstallKey(I[B)I
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_17

    move-result v0

    :goto_12
    monitor-exit p0

    return v0

    :cond_14
    const/16 v0, 0x64

    goto :goto_12

    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized keystoreRetrieveKey(I)[B
    .registers 5

    monitor-enter p0

    :try_start_1
    const-string v1, "TimaService"

    const-string v2, "TIMA: keystoreRetrieveKey"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/server/TimaService;->timaKeystoreRetrieveKey(I)[B

    move-result-object v0

    invoke-direct {p0}, Lcom/android/server/TimaService;->enforcePermission()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-static {p1}, Lcom/android/server/TimaService;->timaKeystoreRetrieveKey(I)[B
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_1a

    move-result-object v1

    :goto_16
    monitor-exit p0

    return-object v1

    :cond_18
    const/4 v1, 0x0

    goto :goto_16

    :catchall_1a
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized keystoreShutdown()I
    .registers 3

    monitor-enter p0

    :try_start_1
    const-string v0, "TimaService"

    const-string v1, "TIMA: keystoreShutdown"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/TimaService;->enforcePermission()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-static {}, Lcom/android/server/TimaService;->timaKeystoreShutdown()I
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_17

    move-result v0

    :goto_12
    monitor-exit p0

    return v0

    :cond_14
    const/16 v0, 0x64

    goto :goto_12

    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setISLCallback(Landroid/service/tima/ITimaISLCallback;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    const-string v0, "TimaService"

    const-string v1, "TIMA: setISLCallback"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/server/TimaService;->timaISLClbk:Landroid/service/tima/ITimaISLCallback;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    return-void

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method
