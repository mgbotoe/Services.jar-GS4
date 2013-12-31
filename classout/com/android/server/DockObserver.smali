.class final Lcom/android/server/DockObserver;
.super Landroid/os/UEventObserver;
.source "DockObserver.java"


# static fields
.field private static final ACCESSORY_CONNECTED:I = 0xff

.field private static final DOCKSTATE_PROPERTY:Ljava/lang/String; = "sys.dockstate"

.field private static final DOCK_STATE_PATH:Ljava/lang/String; = "/sys/class/switch/dock/state"

.field private static final DOCK_UEVENT_MATCH:Ljava/lang/String; = "DEVPATH=/devices/virtual/switch/dock"

.field private static final MSG_DOCK_STATE_CHANGED:I

.field private static final TAG:Ljava/lang/String;

.field private static mTone:Landroid/media/Ringtone;


# instance fields
.field private final VIBRATION_DURATION:I

.field private final mContext:Landroid/content/Context;

.field private mDockState:I

.field private final mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mPreviousDockState:I

.field private mSmartDockState:I

.field private mSystemReady:Z

.field private mWakeAudioLock:Landroid/os/PowerManager$WakeLock;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/android/server/DockObserver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/DockObserver;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/DockObserver;->mTone:Landroid/media/Ringtone;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/DockObserver;->mLock:Ljava/lang/Object;

    iput v1, p0, Lcom/android/server/DockObserver;->mDockState:I

    iput v1, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    iput v1, p0, Lcom/android/server/DockObserver;->mSmartDockState:I

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/server/DockObserver;->VIBRATION_DURATION:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/DockObserver;->mWakeAudioLock:Landroid/os/PowerManager$WakeLock;

    new-instance v0, Lcom/android/server/DockObserver$1;

    invoke-direct {v0, p0, v2}, Lcom/android/server/DockObserver$1;-><init>(Lcom/android/server/DockObserver;Z)V

    iput-object v0, p0, Lcom/android/server/DockObserver;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/server/DockObserver;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/DockObserver;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/DockObserver;->mPowerManager:Landroid/os/PowerManager;

    iget-object v0, p0, Lcom/android/server/DockObserver;->mPowerManager:Landroid/os/PowerManager;

    sget-object v1, Lcom/android/server/DockObserver;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DockObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {p0}, Lcom/android/server/DockObserver;->init()V

    const-string v0, "DEVPATH=/devices/virtual/switch/dock"

    invoke-virtual {p0, v0}, Lcom/android/server/DockObserver;->startObserving(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/DockObserver;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/DockObserver;->handleDockStateChange()V

    return-void
.end method

.method private handleDockStateChange()V
    .registers 16

    iget-object v12, p0, Lcom/android/server/DockObserver;->mLock:Ljava/lang/Object;

    monitor-enter v12

    :try_start_3
    sget-object v11, Lcom/android/server/DockObserver;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Dock state changed: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, p0, Lcom/android/server/DockObserver;->mDockState:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", mSmartDockState: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, p0, Lcom/android/server/DockObserver;->mSmartDockState:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v11, p0, Lcom/android/server/DockObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v11, "device_provisioned"

    const/4 v13, 0x0

    invoke-static {v2, v11, v13}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-nez v11, :cond_4d

    iget v11, p0, Lcom/android/server/DockObserver;->mDockState:I

    const/16 v13, 0x9

    if-eq v11, v13, :cond_4d

    iget v11, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    const/16 v13, 0x9

    if-eq v11, v13, :cond_4d

    sget-object v11, Lcom/android/server/DockObserver;->TAG:Ljava/lang/String;

    const-string v13, "Device not provisioned, skipping dock broadcast"

    invoke-static {v11, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v12

    :goto_4c
    return-void

    :cond_4d
    new-instance v3, Landroid/content/Intent;

    const-string v11, "android.intent.action.DOCK_EVENT"

    invoke-direct {v3, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v11, 0x2000

    invoke-virtual {v3, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v11, "android.intent.extra.DOCK_STATE"

    iget v13, p0, Lcom/android/server/DockObserver;->mDockState:I

    invoke-virtual {v3, v11, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v11, "android.intent.extra.SMART_DOCK_STATE"

    iget v13, p0, Lcom/android/server/DockObserver;->mSmartDockState:I

    invoke-virtual {v3, v11, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v11, "dock_sounds_enabled"

    const/4 v13, 0x1

    invoke-static {v2, v11, v13}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    const/4 v13, 0x1

    if-ne v11, v13, :cond_17f

    const/4 v10, 0x0

    iget v11, p0, Lcom/android/server/DockObserver;->mDockState:I

    if-nez v11, :cond_e6

    iget v11, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    const/4 v13, 0x1

    if-eq v11, v13, :cond_8b

    iget v11, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    const/4 v13, 0x3

    if-eq v11, v13, :cond_8b

    iget v11, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    const/4 v13, 0x4

    if-eq v11, v13, :cond_8b

    iget v11, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    const/16 v13, 0x9

    if-ne v11, v13, :cond_de

    :cond_8b
    const-string v10, "desk_undock_sound"

    :cond_8d
    :goto_8d
    iget-object v11, p0, Lcom/android/server/DockObserver;->mContext:Landroid/content/Context;

    const-string v13, "audio"

    invoke-virtual {v11, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v6

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v1

    sget-object v11, Lcom/android/server/DockObserver;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "whichSound is "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v10, :cond_cc

    const/4 v11, 0x1

    if-ne v6, v11, :cond_106

    iget v11, p0, Lcom/android/server/DockObserver;->mDockState:I

    const/16 v13, 0x9

    if-ne v11, v13, :cond_106

    new-instance v9, Landroid/os/SystemVibrator;

    invoke-direct {v9}, Landroid/os/SystemVibrator;-><init>()V

    const-wide/16 v13, 0x3e8

    invoke-virtual {v9, v13, v14}, Landroid/os/Vibrator;->vibrate(J)V

    :cond_cc
    :goto_cc
    iget-object v11, p0, Lcom/android/server/DockObserver;->mContext:Landroid/content/Context;

    sget-object v13, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v11, v3, v13}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    iget-object v11, p0, Lcom/android/server/DockObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v11}, Landroid/os/PowerManager$WakeLock;->release()V

    monitor-exit v12

    goto/16 :goto_4c

    :catchall_db
    move-exception v11

    monitor-exit v12
    :try_end_dd
    .catchall {:try_start_3 .. :try_end_dd} :catchall_db

    throw v11

    :cond_de
    :try_start_de
    iget v11, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    const/4 v13, 0x2

    if-ne v11, v13, :cond_8d

    const-string v10, "car_undock_sound"

    goto :goto_8d

    :cond_e6
    iget v11, p0, Lcom/android/server/DockObserver;->mDockState:I

    const/4 v13, 0x1

    if-eq v11, v13, :cond_fb

    iget v11, p0, Lcom/android/server/DockObserver;->mDockState:I

    const/4 v13, 0x3

    if-eq v11, v13, :cond_fb

    iget v11, p0, Lcom/android/server/DockObserver;->mDockState:I

    const/4 v13, 0x4

    if-eq v11, v13, :cond_fb

    iget v11, p0, Lcom/android/server/DockObserver;->mDockState:I

    const/16 v13, 0x9

    if-ne v11, v13, :cond_fe

    :cond_fb
    const-string v10, "desk_dock_sound"

    goto :goto_8d

    :cond_fe
    iget v11, p0, Lcom/android/server/DockObserver;->mDockState:I

    const/4 v13, 0x2

    if-ne v11, v13, :cond_8d

    const-string v10, "car_dock_sound"

    goto :goto_8d

    :cond_106
    if-eqz v1, :cond_110

    sget-object v11, Lcom/android/server/DockObserver;->TAG:Ljava/lang/String;

    const-string v13, "Not normal mode, don\'t play dock sound"

    invoke-static {v11, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_cc

    :cond_110
    invoke-static {v2, v10}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_cc

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "file://"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    if-eqz v8, :cond_cc

    sget-object v11, Lcom/android/server/DockObserver;->mTone:Landroid/media/Ringtone;

    if-eqz v11, :cond_143

    sget-object v11, Lcom/android/server/DockObserver;->mTone:Landroid/media/Ringtone;

    invoke-virtual {v11}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v11

    if-eqz v11, :cond_140

    sget-object v11, Lcom/android/server/DockObserver;->mTone:Landroid/media/Ringtone;

    invoke-virtual {v11}, Landroid/media/Ringtone;->stop()V

    :cond_140
    const/4 v11, 0x0

    sput-object v11, Lcom/android/server/DockObserver;->mTone:Landroid/media/Ringtone;

    :cond_143
    iget-object v11, p0, Lcom/android/server/DockObserver;->mContext:Landroid/content/Context;

    invoke-static {v11, v8}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v11

    sput-object v11, Lcom/android/server/DockObserver;->mTone:Landroid/media/Ringtone;

    sget-object v11, Lcom/android/server/DockObserver;->mTone:Landroid/media/Ringtone;

    if-eqz v11, :cond_cc

    sget-object v11, Lcom/android/server/DockObserver;->mTone:Landroid/media/Ringtone;

    const/4 v13, 0x7

    invoke-virtual {v11, v13}, Landroid/media/Ringtone;->setStreamType(I)V

    const-string v11, "audioParam;outDevice"

    invoke-virtual {v0, v11}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v4, 0x0

    if-eqz v5, :cond_166

    const-string v11, ""

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_16f

    :cond_166
    :goto_166
    if-nez v4, :cond_cc

    sget-object v11, Lcom/android/server/DockObserver;->mTone:Landroid/media/Ringtone;

    invoke-virtual {v11}, Landroid/media/Ringtone;->play()V

    goto/16 :goto_cc

    :cond_16f
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    and-int/lit16 v11, v11, 0x400

    if-nez v11, :cond_17d

    const/4 v4, 0x0

    :goto_17c
    goto :goto_166

    :cond_17d
    const/4 v4, 0x1

    goto :goto_17c

    :cond_17f
    sget-object v11, Lcom/android/server/DockObserver;->TAG:Ljava/lang/String;

    const-string v13, "DOCK_SOUNDS_ENALBED is not"

    invoke-static {v11, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_186
    .catchall {:try_start_de .. :try_end_186} :catchall_db

    goto/16 :goto_cc
.end method

.method private init()V
    .registers 8

    iget-object v5, p0, Lcom/android/server/DockObserver;->mLock:Ljava/lang/Object;

    monitor-enter v5

    const/16 v4, 0x400

    :try_start_5
    new-array v0, v4, [C

    new-instance v2, Ljava/io/FileReader;

    const-string v4, "/sys/class/switch/dock/state"

    invoke-direct {v2, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_4e
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_e} :catch_45
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_e} :catch_51

    const/4 v4, 0x0

    const/16 v6, 0x400

    :try_start_11
    invoke-virtual {v2, v0, v4, v6}, Ljava/io/FileReader;->read([CII)I

    move-result v3

    new-instance v4, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v4, v0, v6, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Lcom/android/server/DockObserver;->mDockState:I

    iget v4, p0, Lcom/android/server/DockObserver;->mDockState:I

    iput v4, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    iget v4, p0, Lcom/android/server/DockObserver;->mDockState:I

    const/16 v6, 0x8

    if-ne v4, v6, :cond_3b

    const/4 v4, 0x1

    iput v4, p0, Lcom/android/server/DockObserver;->mSmartDockState:I

    const/4 v4, 0x1

    iput v4, p0, Lcom/android/server/DockObserver;->mDockState:I

    iput v4, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I
    :try_end_3b
    .catchall {:try_start_11 .. :try_end_3b} :catchall_40

    :cond_3b
    :try_start_3b
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_4e
    .catch Ljava/io/FileNotFoundException; {:try_start_3b .. :try_end_3e} :catch_45
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_3e} :catch_51

    :goto_3e
    :try_start_3e
    monitor-exit v5
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_4e

    return-void

    :catchall_40
    move-exception v4

    :try_start_41
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V

    throw v4
    :try_end_45
    .catchall {:try_start_41 .. :try_end_45} :catchall_4e
    .catch Ljava/io/FileNotFoundException; {:try_start_41 .. :try_end_45} :catch_45
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_45} :catch_51

    :catch_45
    move-exception v1

    :try_start_46
    sget-object v4, Lcom/android/server/DockObserver;->TAG:Ljava/lang/String;

    const-string v6, "This kernel does not have dock station support"

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3e

    :catchall_4e
    move-exception v4

    monitor-exit v5
    :try_end_50
    .catchall {:try_start_46 .. :try_end_50} :catchall_4e

    throw v4

    :catch_51
    move-exception v1

    :try_start_52
    sget-object v4, Lcom/android/server/DockObserver;->TAG:Ljava/lang/String;

    const-string v6, ""

    invoke-static {v4, v6, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_59
    .catchall {:try_start_52 .. :try_end_59} :catchall_4e

    goto :goto_3e
.end method

.method private updateLocked()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/DockObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v0, p0, Lcom/android/server/DockObserver;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .registers 10

    const/16 v6, 0xff

    const/4 v7, 0x7

    sget-object v3, Lcom/android/server/DockObserver;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Dock UEVENT: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/DockObserver;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_22
    const-string v3, "SWITCH_STATE"

    invoke-virtual {p1, v3}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v3, 0x8

    if-ne v1, v3, :cond_47

    const/4 v3, 0x1

    iput v3, p0, Lcom/android/server/DockObserver;->mSmartDockState:I

    const/4 v1, 0x1

    :goto_34
    if-eq v1, v6, :cond_38

    if-nez v1, :cond_69

    :cond_38
    const-string v3, "sys.dockstate"

    const-string v5, "SWITCH_STATE"

    invoke-virtual {p1, v5}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_43
    .catchall {:try_start_22 .. :try_end_43} :catchall_66
    .catch Ljava/lang/NumberFormatException; {:try_start_22 .. :try_end_43} :catch_4b

    if-ne v1, v6, :cond_69

    :try_start_45
    monitor-exit v4
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_66

    :goto_46
    return-void

    :cond_47
    const/4 v3, 0x0

    :try_start_48
    iput v3, p0, Lcom/android/server/DockObserver;->mSmartDockState:I
    :try_end_4a
    .catchall {:try_start_48 .. :try_end_4a} :catchall_66
    .catch Ljava/lang/NumberFormatException; {:try_start_48 .. :try_end_4a} :catch_4b

    goto :goto_34

    :catch_4b
    move-exception v0

    :try_start_4c
    sget-object v3, Lcom/android/server/DockObserver;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not parse switch state from event "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_64
    :goto_64
    monitor-exit v4

    goto :goto_46

    :catchall_66
    move-exception v3

    monitor-exit v4
    :try_end_68
    .catchall {:try_start_4c .. :try_end_68} :catchall_66

    throw v3

    :cond_69
    :try_start_69
    iget v3, p0, Lcom/android/server/DockObserver;->mDockState:I

    if-eq v1, v3, :cond_64

    iget v3, p0, Lcom/android/server/DockObserver;->mDockState:I

    iput v3, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    iput v1, p0, Lcom/android/server/DockObserver;->mDockState:I

    iget-boolean v3, p0, Lcom/android/server/DockObserver;->mSystemReady:Z

    if-eqz v3, :cond_64

    iget-object v3, p0, Lcom/android/server/DockObserver;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Landroid/os/PowerManager;->wakeUp(J)V

    iget v3, p0, Lcom/android/server/DockObserver;->mDockState:I

    if-ne v3, v7, :cond_ab

    iget-object v3, p0, Lcom/android/server/DockObserver;->mWakeAudioLock:Landroid/os/PowerManager$WakeLock;

    if-nez v3, :cond_a7

    iget-object v3, p0, Lcom/android/server/DockObserver;->mContext:Landroid/content/Context;

    const-string v5, "power"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    const/4 v3, 0x6

    const-string v5, "AudioDockLock"

    invoke-virtual {v2, v3, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/DockObserver;->mWakeAudioLock:Landroid/os/PowerManager$WakeLock;

    iget-object v3, p0, Lcom/android/server/DockObserver;->mWakeAudioLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    sget-object v3, Lcom/android/server/DockObserver;->TAG:Ljava/lang/String;

    const-string v5, "acquire wakelock for audiodock"

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a7
    :goto_a7
    invoke-direct {p0}, Lcom/android/server/DockObserver;->updateLocked()V

    goto :goto_64

    :cond_ab
    iget v3, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    if-ne v3, v7, :cond_a7

    iget v3, p0, Lcom/android/server/DockObserver;->mDockState:I

    if-nez v3, :cond_a7

    iget-object v3, p0, Lcom/android/server/DockObserver;->mWakeAudioLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v3, :cond_a7

    iget-object v3, p0, Lcom/android/server/DockObserver;->mWakeAudioLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/DockObserver;->mWakeAudioLock:Landroid/os/PowerManager$WakeLock;

    sget-object v3, Lcom/android/server/DockObserver;->TAG:Ljava/lang/String;

    const-string v5, "release wakelock for audiodock"

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c6
    .catchall {:try_start_69 .. :try_end_c6} :catchall_66
    .catch Ljava/lang/NumberFormatException; {:try_start_69 .. :try_end_c6} :catch_4b

    goto :goto_a7
.end method

.method systemReady()V
    .registers 3

    iget-object v1, p0, Lcom/android/server/DockObserver;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget v0, p0, Lcom/android/server/DockObserver;->mDockState:I

    if-eqz v0, :cond_a

    invoke-direct {p0}, Lcom/android/server/DockObserver;->updateLocked()V

    :cond_a
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/DockObserver;->mSystemReady:Z

    monitor-exit v1

    return-void

    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v0
.end method
