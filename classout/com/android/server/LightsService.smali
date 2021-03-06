.class public Lcom/android/server/LightsService;
.super Ljava/lang/Object;
.source "LightsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/LightsService$SvcLEDHandler;,
        Lcom/android/server/LightsService$SvcLEDReceiver;,
        Lcom/android/server/LightsService$Light;
    }
.end annotation


# static fields
.field private static final ACTION_UPDATE_SVC_LED:Ljava/lang/String; = "com.android.server.LightsService.action.UPDATE_SVC_LED"

.field public static final BRIGHTNESS_MODE_SENSOR:I = 0x1

.field public static final BRIGHTNESS_MODE_USER:I = 0x0

.field private static final DEBUG:Z = false

.field public static final LIGHT_FLASH_HARDWARE:I = 0x2

.field public static final LIGHT_FLASH_NONE:I = 0x0

.field public static final LIGHT_FLASH_TIMED:I = 0x1

.field public static final LIGHT_ID_ATTENTION:I = 0x5

.field public static final LIGHT_ID_BACKLIGHT:I = 0x0

.field public static final LIGHT_ID_BATTERY:I = 0x3

.field public static final LIGHT_ID_BLUETOOTH:I = 0x6

.field public static final LIGHT_ID_BUTTONS:I = 0x2

.field public static final LIGHT_ID_CONNECTIVITY:I = 0x8

.field public static final LIGHT_ID_COUNT:I = 0xb

.field public static final LIGHT_ID_KEYBOARD:I = 0x1

.field public static final LIGHT_ID_LED_SERVICE:I = 0xa

.field public static final LIGHT_ID_NOTIFICATIONS:I = 0x4

.field public static final LIGHT_ID_VOLUME:I = 0x9

.field public static final LIGHT_ID_WIFI:I = 0x7

.field static final LIGHT_SEC_FLASH:I = 0xa

.field static final LIGHT_SEC_FLASH_CHARGING:I = 0xa

.field static final LIGHT_SEC_FLASH_CHARGING_ERROR:I = 0xb

.field static final LIGHT_SEC_FLASH_FULLY_CHARGED:I = 0xe

.field static final LIGHT_SEC_FLASH_LOW_BATTERY:I = 0xd

.field static final LIGHT_SEC_FLASH_MISSED_NOTIFICATION:I = 0xc

.field private static final MSG_BBL_TIMEOUT:I = 0x1

.field private static final MSG_FORCEDSVCLEDTASK:I = 0x1

.field private static final SVCLED_BATTERY_MASK:I = 0x71

.field private static final SVCLED_CHARGING:I = 0x10

.field private static final SVCLED_CHARGING_ERROR:I = 0x1

.field private static final SVCLED_FULLY_CHARGED:I = 0x40

.field private static final SVCLED_LED_SERVICE:I = 0x8

.field private static final SVCLED_LED_SERVICE_MASK:I = 0x8

.field private static final SVCLED_LOW_BATTERY:I = 0x20

.field private static final SVCLED_MISSED_NOTIFICATION:I = 0x2

.field private static final SVCLED_MODE_CHARGING:I = 0x4

.field private static final SVCLED_MODE_CHARGING_ERROR:I = 0x0

.field private static final SVCLED_MODE_COUNT:I = 0x7

.field private static final SVCLED_MODE_FULLY_CHARGED:I = 0x6

.field private static final SVCLED_MODE_LED_SERVICE:I = 0x3

.field private static final SVCLED_MODE_LOW_BATTERY:I = 0x5

.field private static final SVCLED_MODE_MISSED_NOTIFICATION:I = 0x1

.field private static final SVCLED_MODE_OTHERS:I = 0x2

.field private static final SVCLED_NOTIFICATIONS_MASK:I = 0x6

.field private static final SVCLED_OFF:I = 0x0

.field private static final SVCLED_OTHERS:I = 0x4

.field private static final TAG:Ljava/lang/String; = "LightsService"

.field public static final TAG_API:Ljava/lang/String; = "[api] "

.field public static final TAG_LED:Ljava/lang/String; = "[SvcLED] "

.field private static mPrevSvcLedState:I

.field private static mSvcLedColor:I

.field private static mSvcLedMode:I

.field private static mSvcLedOffMS:I

.field private static mSvcLedOnMS:I

.field private static mSvcLedState:I

.field private static final model:Ljava/lang/String;


# instance fields
.field private isLightSensorEnabled:Z

.field private mAlarmManagerForSvcLED:Landroid/app/AlarmManager;

.field private mButtonBrightness:I

.field private mButtonLightEnable:Z

.field private mButtonLightTimeout:I

.field private final mContext:Landroid/content/Context;

.field private mDelayForcedSvcLEDTask:I

.field private mH:Landroid/os/Handler;

.field private mInitCompleteForSvcLED:Z

.field private mInitializedWakeLockPath:Z

.field private mIsLEDChanged:Z

.field private mLastSvcLedId:I

.field private mLedLowPower:I

.field private mLedLowPowerPath:Ljava/lang/String;

.field private final mLegacyFlashlightHack:Landroid/os/IHardwareService$Stub;

.field private mLightHandler:Landroid/os/Handler;

.field mLightListener:Landroid/hardware/SensorEventListener;

.field private mLightSensor:Landroid/hardware/Sensor;

.field private final mLights:[Lcom/android/server/LightsService$Light;

.field private mNativePointer:I

.field private final mNewWakeLockPaths:[Ljava/lang/String;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSvcLEDHandler:Lcom/android/server/LightsService$SvcLEDHandler;

.field private mSvcLEDThread:Landroid/os/HandlerThread;

.field private mUpdateSvcLEDDelay:I

.field private mUpdateSvcLEDPendingIntent:Landroid/app/PendingIntent;

.field private mUseLEDAutoBrightness:Z

.field private mUsePatternLED:Z

.field private mUseSoftwareAutoBrightness:Z

.field mWakeLockAcquired:Z

.field private mWakeLockPath:Ljava/lang/String;

.field private mWakeUnlockPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x0

    sput v0, Lcom/android/server/LightsService;->mSvcLedState:I

    sput v0, Lcom/android/server/LightsService;->mPrevSvcLedState:I

    sput v0, Lcom/android/server/LightsService;->mSvcLedColor:I

    sput v0, Lcom/android/server/LightsService;->mSvcLedMode:I

    sput v0, Lcom/android/server/LightsService;->mSvcLedOnMS:I

    sput v0, Lcom/android/server/LightsService;->mSvcLedOffMS:I

    const-string v0, "ro.product.model"

    const-string v1, "NONE"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/LightsService;->model:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 10

    const/16 v7, 0xb

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v4, p0, Lcom/android/server/LightsService;->mInitCompleteForSvcLED:Z

    const/16 v2, 0x2bc

    iput v2, p0, Lcom/android/server/LightsService;->mDelayForcedSvcLEDTask:I

    iput-boolean v4, p0, Lcom/android/server/LightsService;->mUseLEDAutoBrightness:Z

    iput-boolean v5, p0, Lcom/android/server/LightsService;->mUsePatternLED:Z

    const v2, 0x927c0

    iput v2, p0, Lcom/android/server/LightsService;->mUpdateSvcLEDDelay:I

    iput-boolean v4, p0, Lcom/android/server/LightsService;->mIsLEDChanged:Z

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "/sys/power/wake_lock"

    aput-object v3, v2, v4

    const-string v3, "/sys/power/wake_unlock"

    aput-object v3, v2, v5

    iput-object v2, p0, Lcom/android/server/LightsService;->mNewWakeLockPaths:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/LightsService;->mNewWakeLockPaths:[Ljava/lang/String;

    aget-object v2, v2, v4

    iput-object v2, p0, Lcom/android/server/LightsService;->mWakeLockPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/LightsService;->mNewWakeLockPaths:[Ljava/lang/String;

    aget-object v2, v2, v5

    iput-object v2, p0, Lcom/android/server/LightsService;->mWakeUnlockPath:Ljava/lang/String;

    iput-boolean v4, p0, Lcom/android/server/LightsService;->mInitializedWakeLockPath:Z

    new-array v2, v7, [Lcom/android/server/LightsService$Light;

    iput-object v2, p0, Lcom/android/server/LightsService;->mLights:[Lcom/android/server/LightsService$Light;

    iput-object v6, p0, Lcom/android/server/LightsService;->mLightHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/LightsService$1;

    invoke-direct {v2, p0}, Lcom/android/server/LightsService$1;-><init>(Lcom/android/server/LightsService;)V

    iput-object v2, p0, Lcom/android/server/LightsService;->mLegacyFlashlightHack:Landroid/os/IHardwareService$Stub;

    new-instance v2, Lcom/android/server/LightsService$4;

    invoke-direct {v2, p0}, Lcom/android/server/LightsService$4;-><init>(Lcom/android/server/LightsService;)V

    iput-object v2, p0, Lcom/android/server/LightsService;->mH:Landroid/os/Handler;

    iput-boolean v4, p0, Lcom/android/server/LightsService;->isLightSensorEnabled:Z

    new-instance v2, Lcom/android/server/LightsService$5;

    invoke-direct {v2, p0}, Lcom/android/server/LightsService$5;-><init>(Lcom/android/server/LightsService;)V

    iput-object v2, p0, Lcom/android/server/LightsService;->mLightListener:Landroid/hardware/SensorEventListener;

    const-string v2, "/sys/class/sec/led/led_lowpower"

    iput-object v2, p0, Lcom/android/server/LightsService;->mLedLowPowerPath:Ljava/lang/String;

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/LightsService;->mLedLowPower:I

    const/4 v2, 0x3

    iput v2, p0, Lcom/android/server/LightsService;->mLastSvcLedId:I

    iput-boolean v4, p0, Lcom/android/server/LightsService;->mWakeLockAcquired:Z

    invoke-static {}, Lcom/android/server/LightsService;->init_native()I

    move-result v2

    iput v2, p0, Lcom/android/server/LightsService;->mNativePointer:I

    iput-object p1, p0, Lcom/android/server/LightsService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/LightsService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0048

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/LightsService;->mButtonLightTimeout:I

    iget-object v2, p0, Lcom/android/server/LightsService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x111005e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/LightsService;->mButtonLightEnable:Z

    iget-object v2, p0, Lcom/android/server/LightsService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0047

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/LightsService;->mButtonBrightness:I

    new-instance v2, Lcom/android/server/LightsService$2;

    invoke-direct {v2, p0}, Lcom/android/server/LightsService$2;-><init>(Lcom/android/server/LightsService;)V

    iput-object v2, p0, Lcom/android/server/LightsService;->mLightHandler:Landroid/os/Handler;

    const-string v2, "hardware"

    iget-object v3, p0, Lcom/android/server/LightsService;->mLegacyFlashlightHack:Landroid/os/IHardwareService$Stub;

    invoke-static {v2, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    iput-boolean v4, p0, Lcom/android/server/LightsService;->mInitCompleteForSvcLED:Z

    new-instance v2, Lcom/android/server/LightsService$3;

    const-string v3, "mSvcLEDThread"

    invoke-direct {v2, p0, v3}, Lcom/android/server/LightsService$3;-><init>(Lcom/android/server/LightsService;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/LightsService;->mSvcLEDThread:Landroid/os/HandlerThread;

    iget-object v2, p0, Lcom/android/server/LightsService;->mSvcLEDThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    iget-object v3, p0, Lcom/android/server/LightsService;->mSvcLEDThread:Landroid/os/HandlerThread;

    monitor-enter v3

    :goto_b3
    :try_start_b3
    iget-boolean v2, p0, Lcom/android/server/LightsService;->mInitCompleteForSvcLED:Z
    :try_end_b5
    .catchall {:try_start_b3 .. :try_end_b5} :catchall_cf

    if-nez v2, :cond_bf

    :try_start_b7
    iget-object v2, p0, Lcom/android/server/LightsService;->mSvcLEDThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_bc
    .catchall {:try_start_b7 .. :try_end_bc} :catchall_cf
    .catch Ljava/lang/InterruptedException; {:try_start_b7 .. :try_end_bc} :catch_bd

    goto :goto_b3

    :catch_bd
    move-exception v2

    goto :goto_b3

    :cond_bf
    :try_start_bf
    monitor-exit v3
    :try_end_c0
    .catchall {:try_start_bf .. :try_end_c0} :catchall_cf

    const/4 v1, 0x0

    :goto_c1
    if-ge v1, v7, :cond_d2

    iget-object v2, p0, Lcom/android/server/LightsService;->mLights:[Lcom/android/server/LightsService$Light;

    new-instance v3, Lcom/android/server/LightsService$Light;

    invoke-direct {v3, p0, v1, v6}, Lcom/android/server/LightsService$Light;-><init>(Lcom/android/server/LightsService;ILcom/android/server/LightsService$1;)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_c1

    :catchall_cf
    move-exception v2

    :try_start_d0
    monitor-exit v3
    :try_end_d1
    .catchall {:try_start_d0 .. :try_end_d1} :catchall_cf

    throw v2

    :cond_d2
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "com.android.server.LightsService.action.UPDATE_SVC_LED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/LightsService;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/LightsService$SvcLEDReceiver;

    invoke-direct {v3, p0, v6}, Lcom/android/server/LightsService$SvcLEDReceiver;-><init>(Lcom/android/server/LightsService;Lcom/android/server/LightsService$1;)V

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/LightsService;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/LightsService;->mUsePatternLED:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/LightsService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/LightsService;->mUsePatternLED:Z

    return p1
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/android/server/LightsService;->callerInfoToString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000()I
    .registers 1

    sget v0, Lcom/android/server/LightsService;->mSvcLedState:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/LightsService;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/LightsService;->mIsLEDChanged:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/server/LightsService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/LightsService;->mIsLEDChanged:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/server/LightsService;)I
    .registers 2

    iget v0, p0, Lcom/android/server/LightsService;->mNativePointer:I

    return v0
.end method

.method static synthetic access$1300(IIIIIII)V
    .registers 7

    invoke-static/range {p0 .. p6}, Lcom/android/server/LightsService;->setLight_native(IIIIIII)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/LightsService;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/LightsService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/LightsService;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/server/LightsService;->mLightHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/LightsService;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/LightsService;->mButtonLightEnable:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/LightsService;)I
    .registers 2

    iget v0, p0, Lcom/android/server/LightsService;->mButtonBrightness:I

    return v0
.end method

.method static synthetic access$1800(Lcom/android/server/LightsService;)I
    .registers 2

    iget v0, p0, Lcom/android/server/LightsService;->mButtonLightTimeout:I

    return v0
.end method

.method static synthetic access$1902(Lcom/android/server/LightsService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/LightsService;->mInitCompleteForSvcLED:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/LightsService;)Landroid/os/HandlerThread;
    .registers 2

    iget-object v0, p0, Lcom/android/server/LightsService;->mSvcLEDThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/LightsService;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/LightsService;->mUseSoftwareAutoBrightness:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/android/server/LightsService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/LightsService;->mUseSoftwareAutoBrightness:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/server/LightsService;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/LightsService;->mUseLEDAutoBrightness:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/android/server/LightsService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/LightsService;->mUseLEDAutoBrightness:Z

    return p1
.end method

.method static synthetic access$2200()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/LightsService;->model:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/LightsService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/LightsService;->setSvcLedLightLocked(I)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/server/LightsService;)Landroid/app/PendingIntent;
    .registers 2

    iget-object v0, p0, Lcom/android/server/LightsService;->mUpdateSvcLEDPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/server/LightsService;)Landroid/app/AlarmManager;
    .registers 2

    iget-object v0, p0, Lcom/android/server/LightsService;->mAlarmManagerForSvcLED:Landroid/app/AlarmManager;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/server/LightsService;)I
    .registers 2

    iget v0, p0, Lcom/android/server/LightsService;->mUpdateSvcLEDDelay:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/LightsService;IIIIIZ)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/android/server/LightsService;->setSvcLedStateLocked(IIIIIZ)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/server/LightsService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/LightsService;->handleForcedSvcLEDTask()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/LightsService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/LightsService;->acquireWakeLockForLED()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/LightsService;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/LightsService;->enableSvcLEDLightSensorLocked(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/LightsService;)Lcom/android/server/LightsService$SvcLEDHandler;
    .registers 2

    iget-object v0, p0, Lcom/android/server/LightsService;->mSvcLEDHandler:Lcom/android/server/LightsService$SvcLEDHandler;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/server/LightsService;Lcom/android/server/LightsService$SvcLEDHandler;)Lcom/android/server/LightsService$SvcLEDHandler;
    .registers 2

    iput-object p1, p0, Lcom/android/server/LightsService;->mSvcLEDHandler:Lcom/android/server/LightsService$SvcLEDHandler;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/server/LightsService;)I
    .registers 2

    iget v0, p0, Lcom/android/server/LightsService;->mDelayForcedSvcLEDTask:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/server/LightsService;I)I
    .registers 2

    iput p1, p0, Lcom/android/server/LightsService;->mDelayForcedSvcLEDTask:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/server/LightsService;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/server/LightsService;->mH:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/LightsService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/LightsService;->clearSvcLedStateLocked(I)V

    return-void
.end method

.method private acquireWakeLockForLED()V
    .registers 3

    iget-boolean v0, p0, Lcom/android/server/LightsService;->mWakeLockAcquired:Z

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/android/server/LightsService;->mWakeLockPath:Ljava/lang/String;

    const-string v1, "LightsService"

    invoke-direct {p0, v0, v1}, Lcom/android/server/LightsService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/LightsService;->mWakeLockAcquired:Z

    :cond_11
    return-void
.end method

.method private static callerInfoToString()Ljava/lang/String;
    .registers 5

    const-string v1, ""

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " (uid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " pid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private clearSvcLedStateLocked(I)V
    .registers 9

    const/4 v2, 0x0

    const/4 v3, -0x1

    move-object v0, p0

    move v1, p1

    move v4, v2

    move v5, v2

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/LightsService;->setSvcLedStateLocked(IIIIIZ)V

    return-void
.end method

.method private enableSvcLEDLightSensorLocked(Z)V
    .registers 6

    iget-boolean v0, p0, Lcom/android/server/LightsService;->mUseLEDAutoBrightness:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/server/LightsService;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    if-eqz p1, :cond_21

    sget v0, Lcom/android/server/LightsService;->mSvcLedState:I

    if-eqz v0, :cond_21

    iget-boolean v0, p0, Lcom/android/server/LightsService;->isLightSensorEnabled:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/server/LightsService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/LightsService;->mLightListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/server/LightsService;->mLightSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/LightsService;->isLightSensorEnabled:Z

    goto :goto_8

    :cond_21
    iget-boolean v0, p0, Lcom/android/server/LightsService;->isLightSensorEnabled:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/server/LightsService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/LightsService;->mLightListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/LightsService;->isLightSensorEnabled:Z

    goto :goto_8
.end method

.method private fileWriteInt(Ljava/lang/String;I)V
    .registers 8

    const/4 v2, 0x0

    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_b} :catch_1b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_b} :catch_2b

    :try_start_b
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_19} :catch_38

    move-object v2, v3

    :goto_1a
    return-void

    :catch_1b
    move-exception v0

    :try_start_1c
    iget-object v4, p0, Lcom/android/server/LightsService;->mLedLowPowerPath:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/LightsService;->mUseLEDAutoBrightness:Z

    :cond_27
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_2a} :catch_2b

    goto :goto_1a

    :catch_2b
    move-exception v0

    :goto_2c
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :try_start_2f
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_32} :catch_33

    goto :goto_1a

    :catch_33
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1a

    :catch_38
    move-exception v0

    move-object v2, v3

    goto :goto_2c
.end method

.method private fileWriteString(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10

    const/4 v4, 0x0

    const/4 v2, 0x0

    iget-boolean v5, p0, Lcom/android/server/LightsService;->mInitializedWakeLockPath:Z

    if-nez v5, :cond_e

    const-string v5, "LightsService"

    const-string v6, "WakeLock path is not initialized"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_d
    return v4

    :cond_e
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_21

    const-string v5, "LightsService"

    const-string v6, "fileWriteString : file not found"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    :cond_21
    :try_start_21
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2b
    .catch Ljava/io/FileNotFoundException; {:try_start_21 .. :try_end_2b} :catch_38
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_2b} :catch_41

    :try_start_2b
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_35} :catch_4e

    const/4 v4, 0x1

    move-object v2, v3

    goto :goto_d

    :catch_38
    move-exception v0

    :try_start_39
    const-string v5, "LightsService"

    const-string v6, "fileWriteString : file not found"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_40} :catch_41

    goto :goto_d

    :catch_41
    move-exception v0

    :goto_42
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :try_start_45
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_48} :catch_49

    goto :goto_d

    :catch_49
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_d

    :catch_4e
    move-exception v0

    move-object v2, v3

    goto :goto_42
.end method

.method private static native finalize_native(I)V
.end method

.method private handleForcedSvcLEDTask()V
    .registers 4

    const-string v0, "LightsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SvcLED] Lux failed to be updated in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/LightsService;->mDelayForcedSvcLEDTask:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms. -> handleForcedSvcLEDTasK"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/LightsService;->enableSvcLEDLightSensorLocked(Z)V

    const/16 v0, 0x13

    invoke-direct {p0, v0}, Lcom/android/server/LightsService;->setSvcLedLightLocked(I)V

    return-void
.end method

.method private static native init_native()I
.end method

.method private initializeWakeLockPath()V
    .registers 5

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/android/server/LightsService;->mInitializedWakeLockPath:Z

    if-nez v0, :cond_32

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/LightsService;->mNewWakeLockPaths:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/android/server/LightsService;->mNewWakeLockPaths:[Ljava/lang/String;

    aget-object v0, v0, v3

    iput-object v0, p0, Lcom/android/server/LightsService;->mWakeLockPath:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/LightsService;->mNewWakeLockPaths:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/android/server/LightsService;->mNewWakeLockPaths:[Ljava/lang/String;

    aget-object v0, v0, v2

    iput-object v0, p0, Lcom/android/server/LightsService;->mWakeUnlockPath:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/android/server/LightsService;->mInitializedWakeLockPath:Z

    :cond_32
    :goto_32
    return-void

    :cond_33
    const-string v0, "LightsService"

    const-string v1, "wake_lock path does not exists"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_32

    :cond_3b
    const-string v0, "LightsService"

    const-string v1, "wake_unlock path does not exists "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_32
.end method

.method private releaseWakeLockForLED()V
    .registers 3

    iget-boolean v0, p0, Lcom/android/server/LightsService;->mWakeLockAcquired:Z

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/server/LightsService;->mSvcLEDHandler:Lcom/android/server/LightsService$SvcLEDHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/LightsService$SvcLEDHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/android/server/LightsService;->mWakeUnlockPath:Ljava/lang/String;

    const-string v1, "LightsService"

    invoke-direct {p0, v0, v1}, Lcom/android/server/LightsService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/LightsService;->mWakeLockAcquired:Z

    :cond_1a
    return-void
.end method

.method private static native setLight_native(IIIIIII)V
.end method

.method private setSvcLedLightLocked(I)V
    .registers 13

    const/4 v0, 0x1

    const/4 v5, 0x0

    const/16 v1, 0x14

    if-ge p1, v1, :cond_71

    move v6, v0

    :goto_7
    iget-boolean v1, p0, Lcom/android/server/LightsService;->mUseLEDAutoBrightness:Z

    if-eqz v1, :cond_1a

    iget v1, p0, Lcom/android/server/LightsService;->mLedLowPower:I

    if-eq v6, v1, :cond_1a

    iput v6, p0, Lcom/android/server/LightsService;->mLedLowPower:I

    iget-object v1, p0, Lcom/android/server/LightsService;->mLedLowPowerPath:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/LightsService;->mLedLowPower:I

    invoke-direct {p0, v1, v3}, Lcom/android/server/LightsService;->fileWriteInt(Ljava/lang/String;I)V

    iput-boolean v0, p0, Lcom/android/server/LightsService;->mIsLEDChanged:Z

    :cond_1a
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, -0x1

    const/4 v9, 0x0

    :goto_1e
    const/4 v0, 0x7

    if-ge v9, v0, :cond_28

    sget v0, Lcom/android/server/LightsService;->mSvcLedState:I

    shr-int/2addr v0, v9

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_73

    :cond_28
    const/4 v2, 0x0

    sget v0, Lcom/android/server/LightsService;->mSvcLedState:I

    if-nez v0, :cond_76

    iget v10, p0, Lcom/android/server/LightsService;->mLastSvcLedId:I

    const/4 v2, 0x0

    :goto_30
    iget-object v0, p0, Lcom/android/server/LightsService;->mLights:[Lcom/android/server/LightsService$Light;

    aget-object v0, v0, v10

    sget v1, Lcom/android/server/LightsService;->mSvcLedColor:I

    sget v3, Lcom/android/server/LightsService;->mSvcLedOnMS:I

    sget v4, Lcom/android/server/LightsService;->mSvcLedOffMS:I

    #calls: Lcom/android/server/LightsService$Light;->setLightLocked(IIIII)V
    invoke-static/range {v0 .. v5}, Lcom/android/server/LightsService$Light;->access$3000(Lcom/android/server/LightsService$Light;IIIII)V

    iget v0, p0, Lcom/android/server/LightsService;->mLastSvcLedId:I

    if-eq v0, v10, :cond_99

    const-string v0, "LightsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[SvcLED]  setSvcLedLightLocked :: priority changed! SvcLED(id="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/android/server/LightsService;->mLastSvcLedId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ") OUT; SvcLED(id="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ") IN"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6b
    iput v10, p0, Lcom/android/server/LightsService;->mLastSvcLedId:I

    invoke-direct {p0}, Lcom/android/server/LightsService;->releaseWakeLockForLED()V

    return-void

    :cond_71
    move v6, v5

    goto :goto_7

    :cond_73
    add-int/lit8 v9, v9, 0x1

    goto :goto_1e

    :cond_76
    packed-switch v9, :pswitch_data_b8

    const/4 v10, 0x5

    const/4 v2, 0x0

    goto :goto_30

    :pswitch_7c
    const/4 v10, 0x3

    const/16 v2, 0xb

    goto :goto_30

    :pswitch_80
    const/4 v10, 0x4

    const/16 v2, 0xc

    goto :goto_30

    :pswitch_84
    const/4 v10, 0x4

    sget v2, Lcom/android/server/LightsService;->mSvcLedMode:I

    goto :goto_30

    :pswitch_88
    const/16 v10, 0xa

    sget v2, Lcom/android/server/LightsService;->mSvcLedMode:I

    goto :goto_30

    :pswitch_8d
    const/4 v10, 0x3

    const/16 v2, 0xa

    goto :goto_30

    :pswitch_91
    const/4 v10, 0x3

    const/16 v2, 0xd

    goto :goto_30

    :pswitch_95
    const/4 v10, 0x3

    const/16 v2, 0xe

    goto :goto_30

    :cond_99
    const-string v0, "LightsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[SvcLED]  setSvcLedLightLocked :: Current SvcLED(id="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ") maintains its priority right"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6b

    :pswitch_data_b8
    .packed-switch 0x0
        :pswitch_7c
        :pswitch_80
        :pswitch_84
        :pswitch_88
        :pswitch_8d
        :pswitch_91
        :pswitch_95
    .end packed-switch
.end method

.method private setSvcLedStateLocked(IIIIIZ)V
    .registers 10

    const/16 v1, 0xa

    sget v0, Lcom/android/server/LightsService;->mSvcLedState:I

    sput v0, Lcom/android/server/LightsService;->mPrevSvcLedState:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_aa

    sget v0, Lcom/android/server/LightsService;->mSvcLedState:I

    and-int/lit8 v0, v0, -0x72

    sput v0, Lcom/android/server/LightsService;->mSvcLedState:I

    if-eqz p6, :cond_19

    if-ne p3, v1, :cond_6f

    sget v0, Lcom/android/server/LightsService;->mSvcLedState:I

    or-int/lit8 v0, v0, 0x10

    sput v0, Lcom/android/server/LightsService;->mSvcLedState:I

    :cond_19
    :goto_19
    sget v0, Lcom/android/server/LightsService;->mPrevSvcLedState:I

    sget v1, Lcom/android/server/LightsService;->mSvcLedState:I

    if-eq v0, v1, :cond_22

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/LightsService;->mIsLEDChanged:Z

    :cond_22
    const-string v1, "LightsService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SvcLED] setSvcLedStateLocked:: SvcLEDState : 0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v2, Lcom/android/server/LightsService;->mPrevSvcLedState:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " -> "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v2, Lcom/android/server/LightsService;->mSvcLedState:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " | SvcLED(id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") set "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p6, :cond_109

    const-string v0, "On"

    :goto_63
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6f
    const/16 v0, 0xe

    if-ne p3, v0, :cond_7a

    sget v0, Lcom/android/server/LightsService;->mSvcLedState:I

    or-int/lit8 v0, v0, 0x40

    sput v0, Lcom/android/server/LightsService;->mSvcLedState:I

    goto :goto_19

    :cond_7a
    const/16 v0, 0xd

    if-ne p3, v0, :cond_85

    sget v0, Lcom/android/server/LightsService;->mSvcLedState:I

    or-int/lit8 v0, v0, 0x20

    sput v0, Lcom/android/server/LightsService;->mSvcLedState:I

    goto :goto_19

    :cond_85
    const/16 v0, 0xb

    if-ne p3, v0, :cond_90

    sget v0, Lcom/android/server/LightsService;->mSvcLedState:I

    or-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/server/LightsService;->mSvcLedState:I

    goto :goto_19

    :cond_90
    const-string v0, "LightsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SvcLED]  setSvcLedStateLocked::Not Support mode in LIGHT_ID_BATTERY. mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_19

    :cond_aa
    const/4 v0, 0x4

    if-ne p1, v0, :cond_d3

    if-eqz p6, :cond_cb

    const/16 v0, 0xc

    if-ne p3, v0, :cond_bb

    sget v0, Lcom/android/server/LightsService;->mSvcLedState:I

    or-int/lit8 v0, v0, 0x2

    sput v0, Lcom/android/server/LightsService;->mSvcLedState:I

    goto/16 :goto_19

    :cond_bb
    sget v0, Lcom/android/server/LightsService;->mSvcLedState:I

    or-int/lit8 v0, v0, 0x4

    sput v0, Lcom/android/server/LightsService;->mSvcLedState:I

    sput p2, Lcom/android/server/LightsService;->mSvcLedColor:I

    sput p3, Lcom/android/server/LightsService;->mSvcLedMode:I

    sput p4, Lcom/android/server/LightsService;->mSvcLedOnMS:I

    sput p5, Lcom/android/server/LightsService;->mSvcLedOffMS:I

    goto/16 :goto_19

    :cond_cb
    sget v0, Lcom/android/server/LightsService;->mSvcLedState:I

    and-int/lit8 v0, v0, -0x7

    sput v0, Lcom/android/server/LightsService;->mSvcLedState:I

    goto/16 :goto_19

    :cond_d3
    if-ne p1, v1, :cond_ef

    if-eqz p6, :cond_e7

    sget v0, Lcom/android/server/LightsService;->mSvcLedState:I

    or-int/lit8 v0, v0, 0x8

    sput v0, Lcom/android/server/LightsService;->mSvcLedState:I

    sput p2, Lcom/android/server/LightsService;->mSvcLedColor:I

    sput p3, Lcom/android/server/LightsService;->mSvcLedMode:I

    sput p4, Lcom/android/server/LightsService;->mSvcLedOnMS:I

    sput p5, Lcom/android/server/LightsService;->mSvcLedOffMS:I

    goto/16 :goto_19

    :cond_e7
    sget v0, Lcom/android/server/LightsService;->mSvcLedState:I

    and-int/lit8 v0, v0, -0x9

    sput v0, Lcom/android/server/LightsService;->mSvcLedState:I

    goto/16 :goto_19

    :cond_ef
    const-string v0, "LightsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SvcLED]  setSvcLedStateLocked::Not Support. id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_19

    :cond_109
    const-string v0, "Off"

    goto/16 :goto_63
.end method


# virtual methods
.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget v0, p0, Lcom/android/server/LightsService;->mNativePointer:I

    invoke-static {v0}, Lcom/android/server/LightsService;->finalize_native(I)V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getLight(I)Lcom/android/server/LightsService$Light;
    .registers 3

    iget-object v0, p0, Lcom/android/server/LightsService;->mLights:[Lcom/android/server/LightsService$Light;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public setBrightnessButtonLight(I)V
    .registers 4

    const/4 v1, 0x2

    iget-boolean v0, p0, Lcom/android/server/LightsService;->mButtonLightEnable:Z

    if-eqz v0, :cond_d

    invoke-virtual {p0, v1}, Lcom/android/server/LightsService;->getLight(I)Lcom/android/server/LightsService$Light;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/LightsService$Light;->setBrightness(I)V

    :goto_c
    return-void

    :cond_d
    invoke-virtual {p0, v1}, Lcom/android/server/LightsService;->getLight(I)Lcom/android/server/LightsService$Light;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/LightsService$Light;->setBrightness(I)V

    goto :goto_c
.end method

.method systemReady()V
    .registers 5

    const/4 v3, 0x0

    const-string v1, "LightsService"

    const-string v2, "[SvcLED] systemReady"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/LightsService;->mContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    iput-object v1, p0, Lcom/android/server/LightsService;->mAlarmManagerForSvcLED:Landroid/app/AlarmManager;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.server.LightsService.action.UPDATE_SVC_LED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/android/server/LightsService;->mContext:Landroid/content/Context;

    invoke-static {v1, v3, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/LightsService;->mUpdateSvcLEDPendingIntent:Landroid/app/PendingIntent;

    new-instance v1, Landroid/hardware/SystemSensorManager;

    iget-object v2, p0, Lcom/android/server/LightsService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/LightsService;->mSvcLEDThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/hardware/SystemSensorManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/LightsService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-boolean v1, p0, Lcom/android/server/LightsService;->mUseLEDAutoBrightness:Z

    if-eqz v1, :cond_40

    iget-object v1, p0, Lcom/android/server/LightsService;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/LightsService;->mLightSensor:Landroid/hardware/Sensor;

    :cond_40
    invoke-direct {p0}, Lcom/android/server/LightsService;->initializeWakeLockPath()V

    return-void
.end method

.method public turnOffButtonLight()V
    .registers 1

    return-void
.end method

.method public turnOnButtonLight()V
    .registers 1

    return-void
.end method
