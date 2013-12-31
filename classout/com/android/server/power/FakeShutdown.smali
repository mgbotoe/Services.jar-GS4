.class public Lcom/android/server/power/FakeShutdown;
.super Ljava/lang/Object;
.source "FakeShutdown.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/FakeShutdown$Shutdown;,
        Lcom/android/server/power/FakeShutdown$Bootup;
    }
.end annotation


# static fields
.field private static final AIRPLANE_MODE_NOCARE:I = 0x2

.field private static final AIRPLANE_MODE_OFF:I = 0x0

.field private static final AIRPLANE_MODE_ON:I = 0x1

.field private static final BLUETOOTH_OFF:I = 0x0

.field private static final BLUETOOTH_ON:I = 0x1

.field private static final DOWN_LOWLV:I = 0x2

.field private static final DOWN_START:I = 0x1

.field public static final NOTHING:I = 0x0

.field private static final TAG:Ljava/lang/String; = "FakeShutdown"

.field private static final UP_FINISH:I = 0x5

.field public static final UP_START:I = 0x3

.field private static final VIBE_NOWAIT:Z = false

.field private static final VIBE_WAIT:Z = true

.field private static mAutoPowerOff:Z

.field private static mContext:Landroid/content/Context;

.field private static sFakeState:I

.field private static sFakeStateGuard:Ljava/lang/Object;

.field private static sInstance:Lcom/android/server/power/FakeShutdown;


# instance fields
.field private final CAMERA_APP_NAME:Ljava/lang/String;

.field private final PLAY_BOOT_ANIM:Z

.field private activitiesDoneSync:Ljava/lang/Object;

.field private airplaneDoneSync:Ljava/lang/Object;

.field private autoPowerOffObserver:Landroid/os/UEventObserver;

.field private bluetoothOn:I

.field private dlgAnimation:Lcom/android/server/power/ShutdownDialog;

.field private mp:Landroid/media/MediaPlayer;

.field private oldAirplaneMode:I

.field private soundThread:Ljava/lang/Thread;

.field private syncObj:Ljava/lang/Object;

.field private wakeupSync:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    sput v1, Lcom/android/server/power/FakeShutdown;->sFakeState:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/power/FakeShutdown;->sFakeStateGuard:Ljava/lang/Object;

    sput-boolean v1, Lcom/android/server/power/FakeShutdown;->mAutoPowerOff:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/power/ShutdownDialog;)V
    .registers 6

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "com.sec.android.app.camera"

    iput-object v0, p0, Lcom/android/server/power/FakeShutdown;->CAMERA_APP_NAME:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/android/server/power/FakeShutdown;->PLAY_BOOT_ANIM:Z

    iput v2, p0, Lcom/android/server/power/FakeShutdown;->bluetoothOn:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/power/FakeShutdown;->oldAirplaneMode:I

    iput-object v1, p0, Lcom/android/server/power/FakeShutdown;->airplaneDoneSync:Ljava/lang/Object;

    iput-object v1, p0, Lcom/android/server/power/FakeShutdown;->activitiesDoneSync:Ljava/lang/Object;

    iput-object v1, p0, Lcom/android/server/power/FakeShutdown;->wakeupSync:Ljava/lang/Object;

    new-instance v0, Lcom/android/server/power/FakeShutdown$2;

    invoke-direct {v0, p0}, Lcom/android/server/power/FakeShutdown$2;-><init>(Lcom/android/server/power/FakeShutdown;)V

    iput-object v0, p0, Lcom/android/server/power/FakeShutdown;->autoPowerOffObserver:Landroid/os/UEventObserver;

    sput-object p1, Lcom/android/server/power/FakeShutdown;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_23

    iput-object p2, p0, Lcom/android/server/power/FakeShutdown;->dlgAnimation:Lcom/android/server/power/ShutdownDialog;

    :cond_23
    sput-object p0, Lcom/android/server/power/FakeShutdown;->sInstance:Lcom/android/server/power/FakeShutdown;

    return-void
.end method

.method static synthetic access$1000()I
    .registers 1

    sget v0, Lcom/android/server/power/FakeShutdown;->sFakeState:I

    return v0
.end method

.method static synthetic access$1002(I)I
    .registers 1

    sput p0, Lcom/android/server/power/FakeShutdown;->sFakeState:I

    return p0
.end method

.method static synthetic access$1100(Lcom/android/server/power/FakeShutdown;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/power/FakeShutdown;->waitForCamera()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/power/FakeShutdown;)Lcom/android/server/power/ShutdownDialog;
    .registers 2

    iget-object v0, p0, Lcom/android/server/power/FakeShutdown;->dlgAnimation:Lcom/android/server/power/ShutdownDialog;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/server/power/FakeShutdown;)Lcom/android/server/power/FakeShutdown;
    .registers 1

    sput-object p0, Lcom/android/server/power/FakeShutdown;->sInstance:Lcom/android/server/power/FakeShutdown;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/server/power/FakeShutdown;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/power/FakeShutdown;->prepareAutoPowerOffSound()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/power/FakeShutdown;Lcom/android/server/power/ShutdownDialog;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/power/FakeShutdown;->waitForAnimStart(Lcom/android/server/power/ShutdownDialog;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/power/FakeShutdown;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/power/FakeShutdown;->killAllActivities()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/power/FakeShutdown;Lcom/android/server/power/ShutdownDialog;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/power/FakeShutdown;->waitForAnimEnd(Lcom/android/server/power/ShutdownDialog;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/power/FakeShutdown;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/power/FakeShutdown;->waitForPhoneOff(I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/power/FakeShutdown;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/power/FakeShutdown;->playAutoPowerOffSound()V

    return-void
.end method

.method static synthetic access$200()Landroid/content/Context;
    .registers 1

    sget-object v0, Lcom/android/server/power/FakeShutdown;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/power/FakeShutdown;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/power/FakeShutdown;->bookSilentShutdownAfterHours(I)V

    return-void
.end method

.method static synthetic access$202(Landroid/content/Context;)Landroid/content/Context;
    .registers 1

    sput-object p0, Lcom/android/server/power/FakeShutdown;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/android/server/power/FakeShutdown;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/power/FakeShutdown;->powerManagerFakeShutdown()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/power/FakeShutdown;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/server/power/FakeShutdown;->syncObj:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/power/FakeShutdown;)Landroid/media/MediaPlayer;
    .registers 2

    iget-object v0, p0, Lcom/android/server/power/FakeShutdown;->mp:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/power/FakeShutdown;IZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/power/FakeShutdown;->vibrate(IZ)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/power/FakeShutdown;)Landroid/os/UEventObserver;
    .registers 2

    iget-object v0, p0, Lcom/android/server/power/FakeShutdown;->autoPowerOffObserver:Landroid/os/UEventObserver;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/power/FakeShutdown;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/server/power/FakeShutdown;->lauchCamera()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/power/FakeShutdown;)I
    .registers 2

    iget v0, p0, Lcom/android/server/power/FakeShutdown;->oldAirplaneMode:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/server/power/FakeShutdown;I)I
    .registers 2

    iput p1, p0, Lcom/android/server/power/FakeShutdown;->oldAirplaneMode:I

    return p1
.end method

.method static synthetic access$700(Landroid/content/Context;I)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/power/FakeShutdown;->changeAirplaneMode(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/power/FakeShutdown;)I
    .registers 2

    iget v0, p0, Lcom/android/server/power/FakeShutdown;->bluetoothOn:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/server/power/FakeShutdown;I)I
    .registers 2

    iput p1, p0, Lcom/android/server/power/FakeShutdown;->bluetoothOn:I

    return p1
.end method

.method static synthetic access$900()Ljava/lang/Object;
    .registers 1

    sget-object v0, Lcom/android/server/power/FakeShutdown;->sFakeStateGuard:Ljava/lang/Object;

    return-object v0
.end method

.method private bookSilentShutdownAfterHours(I)V
    .registers 6

    const-string v2, "FakeShutdown"

    const-string v3, "!@startObserving PMEVENT=AutoPowerOff"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/power/FakeShutdown;->autoPowerOffObserver:Landroid/os/UEventObserver;

    const-string v3, "PMEVENT=AutoPowerOff"

    invoke-virtual {v2, v3}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    const-string v2, "alarm"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/IAlarmManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAlarmManager;

    move-result-object v0

    const/4 v2, 0x1

    mul-int/lit8 v3, p1, 0x3c

    :try_start_1b
    invoke-interface {v0, v2, v3}, Landroid/app/IAlarmManager;->shutdownTimeAfterFakeOff(ZI)I
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1e} :catch_1f

    :goto_1e
    return-void

    :catch_1f
    move-exception v1

    const-string v2, "FakeShutdown"

    const-string v3, "!@is service dead?"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1e
.end method

.method public static bootup()Ljava/lang/Boolean;
    .registers 5

    const/4 v4, 0x0

    sget-object v2, Lcom/android/server/power/FakeShutdown;->sInstance:Lcom/android/server/power/FakeShutdown;

    if-eqz v2, :cond_a

    sget v2, Lcom/android/server/power/FakeShutdown;->sFakeState:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_16

    :cond_a
    const-string v2, "FakeShutdown"

    const-string v3, "!@+++++++ duplicate fake bootup ++++++"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    :goto_15
    return-object v2

    :cond_16
    const-string v2, "FakeShutdown"

    const-string v3, "!@beginFastboot FAKE_STATE = UP_START"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/android/server/power/FakeShutdown;->sFakeStateGuard:Ljava/lang/Object;

    monitor-enter v3

    const/4 v2, 0x3

    :try_start_21
    sput v2, Lcom/android/server/power/FakeShutdown;->sFakeState:I

    monitor-exit v3
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_46

    const-string v2, "power"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_2f
    invoke-interface {v1, v2}, Landroid/os/IPowerManager;->forceDisableWakeLock(Z)V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_32} :catch_49

    :goto_32
    new-instance v2, Lcom/android/server/power/FakeShutdown$Bootup;

    sget-object v3, Lcom/android/server/power/FakeShutdown;->sInstance:Lcom/android/server/power/FakeShutdown;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/android/server/power/FakeShutdown$Bootup;-><init>(Lcom/android/server/power/FakeShutdown;Lcom/android/server/power/FakeShutdown$1;)V

    invoke-virtual {v2}, Lcom/android/server/power/FakeShutdown$Bootup;->run()V

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_15

    :catchall_46
    move-exception v2

    :try_start_47
    monitor-exit v3
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_46

    throw v2

    :catch_49
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_32
.end method

.method private static changeAirplaneMode(Landroid/content/Context;I)V
    .registers 5

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static fakeState()I
    .registers 1

    sget v0, Lcom/android/server/power/FakeShutdown;->sFakeState:I

    return v0
.end method

.method public static isNeededToCheckTA(Landroid/content/Context;ZZZLjava/lang/String;)Z
    .registers 6

    const-string v0, "AutoPowerOff"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/power/FakeShutdown;->mAutoPowerOff:Z

    if-nez p1, :cond_12

    if-nez p2, :cond_12

    if-nez p3, :cond_12

    sget-boolean v0, Lcom/android/server/power/FakeShutdown;->mAutoPowerOff:Z

    if-eqz v0, :cond_12

    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method private killAllActivities()V
    .registers 23

    const-string v19, "FakeShutdown"

    const-string v20, "!@am.goingToSleep"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v19, "activity"

    invoke-static/range {v19 .. v19}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/app/ActivityManagerNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;

    move-result-object v10

    if-eqz v10, :cond_1a

    const/16 v19, 0x2710

    :try_start_15
    move/from16 v0, v19

    invoke-interface {v10, v0}, Landroid/app/IActivityManager;->fakeShutdown(I)Z
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1a} :catch_d0

    :cond_1a
    :goto_1a
    const-string v19, "FakeShutdown"

    const-string v20, "create fakeActivity"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Landroid/content/Intent;

    const-string v19, "android.intent.action.ACTION_REQUEST_FAKE_SHUTDOWN"

    move-object/from16 v0, v19

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v19, "fake"

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v19, 0x1000

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    sget-object v19, Lcom/android/server/power/FakeShutdown;->mContext:Landroid/content/Context;

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const-string v19, "FakeShutdown"

    const-string v20, "!@killRunningActivities"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v19, Lcom/android/server/power/FakeShutdown;->mContext:Landroid/content/Context;

    sget-object v20, Lcom/android/server/power/FakeShutdown;->mContext:Landroid/content/Context;

    const-string v20, "activity"

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    const/16 v19, 0x64

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v16

    const-string v2, "android"

    if-eqz v16, :cond_153

    const/4 v4, 0x0

    const/16 v18, 0x0

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_69
    :goto_69
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_153

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v17, :cond_69

    move-object/from16 v0, v17

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->numRunning:I

    move/from16 v19, v0

    if-lez v19, :cond_69

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v18

    if-eqz v4, :cond_69

    if-eqz v18, :cond_69

    move-object/from16 v0, v17

    iget-boolean v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->isHomeType:Z

    move/from16 v19, v0

    if-nez v19, :cond_b5

    const-string v19, "android"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_b5

    const-string v19, "com.sec.android.app.camera"

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_de

    :cond_b5
    const-string v19, "FakeShutdown"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "skip force stop package :"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_69

    :catch_d0
    move-exception v6

    const-string v19, "FakeShutdown"

    const-string v20, "!@is service dead?"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1a

    :cond_de
    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_109

    const-string v19, "FakeShutdown"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "topActivityName = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    goto/16 :goto_69

    :cond_109
    const-string v19, "FakeShutdown"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "topActivityName = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    const-string v19, "FakeShutdown"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "baseActivityName = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3, v4}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    goto/16 :goto_69

    :cond_153
    const-string v19, "FakeShutdown"

    const-string v20, "!@RemoveRecentTasks"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v19, 0x14

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v3, v0, v1}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v15

    if-eqz v15, :cond_215

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v19

    if-eqz v19, :cond_215

    sget-object v19, Lcom/android/server/power/FakeShutdown;->mContext:Landroid/content/Context;

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    new-instance v19, Landroid/content/Intent;

    const-string v20, "android.intent.action.MAIN"

    invoke-direct/range {v19 .. v20}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v20, "android.intent.category.HOME"

    invoke-virtual/range {v19 .. v20}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v11, v1}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v8

    const/4 v13, 0x0

    const/4 v12, 0x0

    const/4 v5, 0x0

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_192
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_215

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/ActivityManager$RecentTaskInfo;

    iget-object v0, v14, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v12

    if-eqz v8, :cond_1d0

    iget-object v0, v8, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1d0

    iget-object v0, v8, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1d0

    const-string v19, "FakeShutdown"

    const-string v20, "Don\'t remove homeActivity"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_192

    :cond_1d0
    const-string v19, "com.sec.android.app.camera"

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_1e4

    const-string v19, "android"

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1ec

    :cond_1e4
    const-string v19, "FakeShutdown"

    const-string v20, "Don\'t remove camera activity"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_192

    :cond_1ec
    const-string v19, "FakeShutdown"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "RemoveRecentTasks +"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, v14, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v3, v0, v1}, Landroid/app/ActivityManager;->removeTask(II)Z

    goto/16 :goto_192

    :cond_215
    return-void
.end method

.method private lauchCamera()Z
    .registers 12

    const/4 v10, 0x1

    const/4 v0, 0x1

    :try_start_2
    sget-object v7, Lcom/android/server/power/FakeShutdown;->mContext:Landroid/content/Context;

    const-string v8, "com.sec.factory"

    const/4 v9, 0x2

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v5

    const-string v7, "di_test_prefs"

    const/4 v8, 0x1

    invoke-virtual {v5, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v7, "camera_auto_start_key"

    const-string v8, "ON"

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "ON"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_1f} :catch_5c
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_1f} :catch_65

    move-result v7

    if-eqz v7, :cond_5a

    const/4 v0, 0x1

    :goto_23
    new-instance v2, Landroid/content/Intent;

    const-string v7, "android.intent.action.MAIN"

    const/4 v8, 0x0

    invoke-direct {v2, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v7, "android.intent.action.MAIN"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v7, 0x1000

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    if-eqz v0, :cond_6e

    const-string v7, "FakeShutdown"

    const-string v8, "!@launch camera"

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/content/ComponentName;

    const-string v7, "com.sec.android.app.camera"

    const-string v8, "com.sec.android.app.camera.Camera"

    invoke-direct {v3, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v7, "from-am"

    invoke-virtual {v2, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v7, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    :goto_54
    sget-object v7, Lcom/android/server/power/FakeShutdown;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return v0

    :cond_5a
    const/4 v0, 0x0

    goto :goto_23

    :catch_5c
    move-exception v1

    const-string v7, "FakeShutdown"

    const-string v8, "isLaunchCamera throws NameNotFoundException"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    :catch_65
    move-exception v1

    const-string v7, "FakeShutdown"

    const-string v8, "isLaunchCamera throws SecurityException"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    :cond_6e
    const-string v7, "FakeShutdown"

    const-string v8, "!@launch home"

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "android.intent.category.HOME"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_54
.end method

.method private playAutoPowerOffSound()V
    .registers 2

    sget-boolean v0, Lcom/android/server/power/FakeShutdown;->mAutoPowerOff:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/server/power/FakeShutdown;->soundThread:Ljava/lang/Thread;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/server/power/FakeShutdown;->soundThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_d
    return-void
.end method

.method private powerManagerFakeShutdown()V
    .registers 6

    const-string v2, "FakeShutdown"

    const-string v3, "!@gotoSleepMode"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/android/server/power/FakeShutdown;->sFakeStateGuard:Ljava/lang/Object;

    monitor-enter v3

    :try_start_a
    const-string v2, "FakeShutdown"

    const-string v4, "!@FAKE_STATE = DOWN_LOWLV"

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x2

    sput v2, Lcom/android/server/power/FakeShutdown;->sFakeState:I

    monitor-exit v3
    :try_end_15
    .catchall {:try_start_a .. :try_end_15} :catchall_2b

    const-string v2, "FakeShutdown"

    const-string v3, "!@powerManagerService.forceDisableWakeLock"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "power"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    const/4 v2, 0x1

    :try_start_27
    invoke-interface {v1, v2}, Landroid/os/IPowerManager;->forceDisableWakeLock(Z)V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_2a} :catch_2e

    :goto_2a
    return-void

    :catchall_2b
    move-exception v2

    :try_start_2c
    monitor-exit v3
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw v2

    :catch_2e
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2a
.end method

.method private prepareAutoPowerOffSound()V
    .registers 11

    const/4 v9, 0x1

    const-string v5, "//system/media/audio/ui/AutoPoweroff.ogg"

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-boolean v7, Lcom/android/server/power/FakeShutdown;->mAutoPowerOff:Z

    if-eqz v7, :cond_2b

    if-eqz v2, :cond_2b

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_2b

    sget-object v7, Lcom/android/server/power/FakeShutdown;->mContext:Landroid/content/Context;

    const-string v8, "audio"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0, v9}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v6

    if-gez v6, :cond_2c

    const-string v7, "FakeShutdown"

    const-string v8, "!@Volume is not enough"

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    :goto_2b
    return-void

    :cond_2c
    const/4 v3, 0x0

    :try_start_2d
    new-instance v7, Landroid/media/MediaPlayer;

    invoke-direct {v7}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v7, p0, Lcom/android/server/power/FakeShutdown;->mp:Landroid/media/MediaPlayer;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_39
    .catchall {:try_start_2d .. :try_end_39} :catchall_a5
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_39} :catch_66
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2d .. :try_end_39} :catch_7d
    .catch Ljava/lang/SecurityException; {:try_start_2d .. :try_end_39} :catch_91

    :try_start_39
    iget-object v7, p0, Lcom/android/server/power/FakeShutdown;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    iget-object v7, p0, Lcom/android/server/power/FakeShutdown;->mp:Landroid/media/MediaPlayer;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    iget-object v7, p0, Lcom/android/server/power/FakeShutdown;->mp:Landroid/media/MediaPlayer;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/media/MediaPlayer;->setLooping(Z)V

    iget-object v7, p0, Lcom/android/server/power/FakeShutdown;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v7}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_53
    .catchall {:try_start_39 .. :try_end_53} :catchall_be
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_53} :catch_c7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_39 .. :try_end_53} :catch_c4
    .catch Ljava/lang/SecurityException; {:try_start_39 .. :try_end_53} :catch_c1

    if-eqz v4, :cond_58

    :try_start_55
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_58} :catch_b5

    :cond_58
    :goto_58
    move-object v3, v4

    :cond_59
    :goto_59
    new-instance v7, Ljava/lang/Thread;

    new-instance v8, Lcom/android/server/power/FakeShutdown$3;

    invoke-direct {v8, p0}, Lcom/android/server/power/FakeShutdown$3;-><init>(Lcom/android/server/power/FakeShutdown;)V

    invoke-direct {v7, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v7, p0, Lcom/android/server/power/FakeShutdown;->soundThread:Ljava/lang/Thread;

    goto :goto_2b

    :catch_66
    move-exception v1

    :goto_67
    :try_start_67
    const-string v7, "FakeShutdown"

    const-string v8, "!@MediaPlayer exception. Sound will not started !"

    invoke-static {v7, v8, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6e
    .catchall {:try_start_67 .. :try_end_6e} :catchall_a5

    if-eqz v3, :cond_59

    :try_start_70
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_73
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_73} :catch_74

    goto :goto_59

    :catch_74
    move-exception v1

    const-string v7, "FakeShutdown"

    const-string v8, "sound file.close"

    :goto_79
    invoke-static {v7, v8, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_59

    :catch_7d
    move-exception v1

    :goto_7e
    :try_start_7e
    const-string v7, "FakeShutdown"

    const-string v8, "!@MediaPlayer exception. Sound will not started !"

    invoke-static {v7, v8, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_85
    .catchall {:try_start_7e .. :try_end_85} :catchall_a5

    if-eqz v3, :cond_59

    :try_start_87
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_8a
    .catch Ljava/io/IOException; {:try_start_87 .. :try_end_8a} :catch_8b

    goto :goto_59

    :catch_8b
    move-exception v1

    const-string v7, "FakeShutdown"

    const-string v8, "sound file.close"

    goto :goto_79

    :catch_91
    move-exception v1

    :goto_92
    :try_start_92
    const-string v7, "FakeShutdown"

    const-string v8, "!@MediaPlayer exception. Sound will not started !"

    invoke-static {v7, v8, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_99
    .catchall {:try_start_92 .. :try_end_99} :catchall_a5

    if-eqz v3, :cond_59

    :try_start_9b
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_9e
    .catch Ljava/io/IOException; {:try_start_9b .. :try_end_9e} :catch_9f

    goto :goto_59

    :catch_9f
    move-exception v1

    const-string v7, "FakeShutdown"

    const-string v8, "sound file.close"

    goto :goto_79

    :catchall_a5
    move-exception v7

    :goto_a6
    if-eqz v3, :cond_ab

    :try_start_a8
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_ab
    .catch Ljava/io/IOException; {:try_start_a8 .. :try_end_ab} :catch_ac

    :cond_ab
    :goto_ab
    throw v7

    :catch_ac
    move-exception v1

    const-string v8, "FakeShutdown"

    const-string v9, "sound file.close"

    invoke-static {v8, v9, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_ab

    :catch_b5
    move-exception v1

    const-string v7, "FakeShutdown"

    const-string v8, "sound file.close"

    invoke-static {v7, v8, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_58

    :catchall_be
    move-exception v7

    move-object v3, v4

    goto :goto_a6

    :catch_c1
    move-exception v1

    move-object v3, v4

    goto :goto_92

    :catch_c4
    move-exception v1

    move-object v3, v4

    goto :goto_7e

    :catch_c7
    move-exception v1

    move-object v3, v4

    goto :goto_67
.end method

.method public static restoreAirplaneMode(Landroid/content/Context;)V
    .registers 6

    const/4 v4, 0x2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "oldAirplaneMode"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v4, :cond_31

    const-string v1, "FakeShutdown"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restoreAirplaneMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, v0}, Lcom/android/server/power/FakeShutdown;->changeAirplaneMode(Landroid/content/Context;I)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "oldAirplaneMode"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_31
    return-void
.end method

.method private vibrate(IZ)V
    .registers 6

    if-gez p1, :cond_a

    const-string v1, "FakeShutdown"

    const-string v2, "!@vibe time under 0"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_9
    return-void

    :cond_a
    new-instance v0, Landroid/os/SystemVibrator;

    invoke-direct {v0}, Landroid/os/SystemVibrator;-><init>()V

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    if-eqz p2, :cond_9

    int-to-long v1, p1

    :try_start_16
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_19
    .catch Ljava/lang/InterruptedException; {:try_start_16 .. :try_end_19} :catch_1a

    goto :goto_9

    :catch_1a
    move-exception v1

    goto :goto_9
.end method

.method private waitForAnimEnd(Lcom/android/server/power/ShutdownDialog;)V
    .registers 5

    if-nez p1, :cond_a

    const-string v0, "FakeShutdown"

    const-string v1, "no animation"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_9
    return-void

    :cond_a
    const/16 v0, 0xf

    invoke-virtual {p1, v0}, Lcom/android/server/power/ShutdownDialog;->waitForAnimEnd(I)Z

    const-string v0, "FakeShutdown"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!@FAKE_STATE = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/server/power/FakeShutdown;->sFakeState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method

.method private waitForAnimStart(Lcom/android/server/power/ShutdownDialog;)V
    .registers 6

    const-string v2, "FakeShutdown"

    const-string v3, "!@start wait for shutdown anim, maximum 2 sec"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_8
    const/16 v2, 0x14

    if-ge v0, v2, :cond_14

    invoke-virtual {p1}, Lcom/android/server/power/ShutdownDialog;->drawState()I

    move-result v2

    const/16 v3, 0x12c

    if-lt v2, v3, :cond_1c

    :cond_14
    const-string v2, "FakeShutdown"

    const-string v3, "!@finish wait for shutdown anim"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1c
    const-wide/16 v2, 0x64

    :try_start_1e
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_21
    .catch Ljava/lang/InterruptedException; {:try_start_1e .. :try_end_21} :catch_24

    :goto_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :catch_24
    move-exception v1

    const-string v2, "FakeShutdown"

    const-string v3, "waitForAnimStart sleep error"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21
.end method

.method private waitForCamera()V
    .registers 8

    sget-object v5, Lcom/android/server/power/FakeShutdown;->mContext:Landroid/content/Context;

    sget-object v6, Lcom/android/server/power/FakeShutdown;->mContext:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v1, 0x0

    :goto_d
    const/16 v5, 0xc

    if-ge v1, v5, :cond_43

    const/16 v5, 0xf

    invoke-virtual {v0, v5}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    const/4 v5, 0x0

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v5, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.sec.android.app.camera"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_34

    const-string v5, "FakeShutdown"

    const-string v6, "!@camera started"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_33
    return-void

    :cond_34
    const-string v5, "FakeShutdown"

    const-string v6, "!@not yet"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v5, 0x1f4

    :try_start_3d
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_40
    .catch Ljava/lang/InterruptedException; {:try_start_3d .. :try_end_40} :catch_4b

    :goto_40
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_43
    const-string v5, "FakeShutdown"

    const-string v6, "!@fail to launch camera"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33

    :catch_4b
    move-exception v5

    goto :goto_40
.end method

.method private waitForIntentBrDone(Landroid/content/Intent;Ljava/lang/String;II)V
    .registers 13

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/FakeShutdown;->syncObj:Ljava/lang/Object;

    new-instance v3, Lcom/android/server/power/FakeShutdown$1;

    invoke-direct {v3, p0}, Lcom/android/server/power/FakeShutdown$1;-><init>(Lcom/android/server/power/FakeShutdown;)V

    sget-object v0, Lcom/android/server/power/FakeShutdown;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    move-object v1, p1

    move-object v4, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/server/power/FakeShutdown;->syncObj:Ljava/lang/Object;

    invoke-direct {p0, v0, p3, p4, p2}, Lcom/android/server/power/FakeShutdown;->waitForNoify(Ljava/lang/Object;IILjava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/power/FakeShutdown;->syncObj:Ljava/lang/Object;

    return-void
.end method

.method private waitForNoify(Ljava/lang/Object;IILjava/lang/String;)V
    .registers 8

    const-string v0, "FakeShutdown"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wait for notify : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-enter p1

    if-nez p2, :cond_3a

    :try_start_1b
    invoke-virtual {p1}, Ljava/lang/Object;->wait()V
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_43
    .catch Ljava/lang/InterruptedException; {:try_start_1b .. :try_end_1e} :catch_41

    :goto_1e
    :try_start_1e
    monitor-exit p1
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_43

    const-string v0, "FakeShutdown"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wait for notify - finish : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p3, :cond_46

    :goto_39
    return-void

    :cond_3a
    mul-int/lit16 v0, p2, 0x3e8

    int-to-long v0, v0

    :try_start_3d
    invoke-virtual {p1, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_43
    .catch Ljava/lang/InterruptedException; {:try_start_3d .. :try_end_40} :catch_41

    goto :goto_1e

    :catch_41
    move-exception v0

    goto :goto_1e

    :catchall_43
    move-exception v0

    :try_start_44
    monitor-exit p1
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    throw v0

    :cond_46
    const-string v0, "FakeShutdown"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sleep after sync : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    mul-int/lit16 v0, p3, 0x3e8

    int-to-long v0, v0

    :try_start_61
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_64
    .catch Ljava/lang/InterruptedException; {:try_start_61 .. :try_end_64} :catch_7d

    :goto_64
    const-string v0, "FakeShutdown"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sleep after sync - finish : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_39

    :catch_7d
    move-exception v0

    goto :goto_64
.end method

.method private waitForPhoneOff(I)V
    .registers 11

    const-string v6, "phone"

    invoke-static {v6}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    const/4 v4, 0x0

    const/16 v0, 0x1f4

    mul-int/lit16 v6, p1, 0x3e8

    div-int/lit16 v5, v6, 0x1f4

    const/4 v2, 0x0

    :goto_12
    if-ge v2, v5, :cond_24

    :try_start_14
    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_17} :catch_4a

    move-result v6

    if-nez v6, :cond_48

    const/4 v4, 0x1

    :goto_1b
    if-eqz v4, :cond_54

    const-string v6, "FakeShutdown"

    const-string v7, "!@Radio turned off"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    const-string v6, "FakeShutdown"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "!@off takes ms "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    mul-int/lit16 v8, v2, 0x1f4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v4, :cond_47

    const-string v6, "FakeShutdown"

    const-string v7, "!@Radio turned off fail"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_47
    return-void

    :cond_48
    const/4 v4, 0x0

    goto :goto_1b

    :catch_4a
    move-exception v1

    const-string v6, "FakeShutdown"

    const-string v7, "RemoteException during radio shutdown"

    invoke-static {v6, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v4, 0x1

    goto :goto_1b

    :cond_54
    const-string v6, "FakeShutdown"

    const-string v7, "!@before sleep"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v6, 0x1f4

    invoke-static {v6, v7}, Landroid/os/SystemClock;->sleep(J)V

    const-string v6, "FakeShutdown"

    const-string v7, "!@after sleep"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_12
.end method


# virtual methods
.method public shutdown()V
    .registers 4

    new-instance v0, Lcom/android/server/power/FakeShutdown$Shutdown;

    sget-object v1, Lcom/android/server/power/FakeShutdown;->sInstance:Lcom/android/server/power/FakeShutdown;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/power/FakeShutdown$Shutdown;-><init>(Lcom/android/server/power/FakeShutdown;Lcom/android/server/power/FakeShutdown$1;)V

    invoke-virtual {v0}, Lcom/android/server/power/FakeShutdown$Shutdown;->start()V

    return-void
.end method
