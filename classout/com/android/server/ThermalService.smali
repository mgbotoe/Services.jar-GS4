.class public Lcom/android/server/ThermalService;
.super Landroid/os/Binder;
.source "ThermalService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ThermalService$1;,
        Lcom/android/server/ThermalService$BootCompReceiver;,
        Lcom/android/server/ThermalService$Notify;,
        Lcom/android/server/ThermalService$ThermalParser;,
        Lcom/android/server/ThermalService$PlatformInfo;
    }
.end annotation


# static fields
.field private static final SENSOR_FILE_PATH:Ljava/lang/String; = "/system/etc/thermal_sensor_config.xml"

.field private static final TAG:Ljava/lang/String; = null

.field private static final THROTTLE_FILE_PATH:Ljava/lang/String; = "/system/etc/thermal_throttle_config.xml"

.field private static deffTimerEnablePath:Ljava/lang/String;

.field private static deffTimerTimeoutPath:Ljava/lang/String;

.field private static isPowerOptimizationEnabled:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCoolingManager:Landroid/thermal/ThermalCoolingManager;

.field private mHandler:Landroid/os/Handler;

.field private mPlatformInfo:Lcom/android/server/ThermalService$PlatformInfo;

.field private mThermalZonesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/thermal/ThermalZone;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/android/server/ThermalService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/ThermalService;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput v0, Lcom/android/server/ThermalService;->isPowerOptimizationEnabled:I

    const-string v0, "/sys/class/thermal/deferrable_timer/enable"

    sput-object v0, Lcom/android/server/ThermalService;->deffTimerEnablePath:Ljava/lang/String;

    const-string v0, "/sys/class/thermal/deferrable_timer/timeout"

    sput-object v0, Lcom/android/server/ThermalService;->deffTimerTimeoutPath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/server/ThermalService;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/ThermalService;->TAG:Ljava/lang/String;

    const-string v2, "Initializing Thermal Manager Service"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/server/ThermalService;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/thermal/ThermalCoolingManager;

    invoke-direct {v1}, Landroid/thermal/ThermalCoolingManager;-><init>()V

    iput-object v1, p0, Lcom/android/server/ThermalService;->mCoolingManager:Landroid/thermal/ThermalCoolingManager;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/ThermalService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/ThermalService$BootCompReceiver;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/ThermalService$BootCompReceiver;-><init>(Lcom/android/server/ThermalService;Lcom/android/server/ThermalService$1;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/ThermalService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(I)I
    .registers 1

    sput p0, Lcom/android/server/ThermalService;->isPowerOptimizationEnabled:I

    return p0
.end method

.method static synthetic access$200(Lcom/android/server/ThermalService;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/ThermalService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/ThermalService;)Landroid/thermal/ThermalCoolingManager;
    .registers 2

    iget-object v0, p0, Lcom/android/server/ThermalService;->mCoolingManager:Landroid/thermal/ThermalCoolingManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/ThermalService;)Lcom/android/server/ThermalService$PlatformInfo;
    .registers 2

    iget-object v0, p0, Lcom/android/server/ThermalService;->mPlatformInfo:Lcom/android/server/ThermalService$PlatformInfo;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/server/ThermalService;Lcom/android/server/ThermalService$PlatformInfo;)Lcom/android/server/ThermalService$PlatformInfo;
    .registers 2

    iput-object p1, p0, Lcom/android/server/ThermalService;->mPlatformInfo:Lcom/android/server/ThermalService$PlatformInfo;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/server/ThermalService;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/android/server/ThermalService;->mThermalZonesList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/server/ThermalService;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2

    iput-object p1, p0, Lcom/android/server/ThermalService;->mThermalZonesList:Ljava/util/ArrayList;

    return-object p1
.end method


# virtual methods
.method public checkDefTimerSysfsPath()V
    .registers 5

    const/4 v3, 0x1

    const/4 v0, 0x1

    sget-object v1, Lcom/android/server/ThermalService;->deffTimerEnablePath:Ljava/lang/String;

    invoke-static {v1}, Landroid/thermal/SysfsManager;->isFileExists(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    sget-object v1, Lcom/android/server/ThermalService;->deffTimerTimeoutPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/thermal/SysfsManager;->isFileExists(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1d

    :cond_12
    sget-object v1, Lcom/android/server/ThermalService;->TAG:Ljava/lang/String;

    const-string v2, "deferrable timer does not exist"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    sput v1, Lcom/android/server/ThermalService;->isPowerOptimizationEnabled:I

    const/4 v0, 0x0

    :cond_1d
    sget v1, Lcom/android/server/ThermalService;->isPowerOptimizationEnabled:I

    if-ne v1, v3, :cond_34

    sget-object v1, Lcom/android/server/ThermalService;->TAG:Ljava/lang/String;

    const-string v2, "enabling deferrable timer ..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/server/ThermalService;->deffTimerTimeoutPath:Ljava/lang/String;

    const/16 v2, 0x1d

    invoke-static {v1, v2}, Landroid/thermal/SysfsManager;->writeSysfs(Ljava/lang/String;I)V

    sget-object v1, Lcom/android/server/ThermalService;->deffTimerEnablePath:Ljava/lang/String;

    invoke-static {v1, v3}, Landroid/thermal/SysfsManager;->writeSysfs(Ljava/lang/String;I)V

    :cond_34
    return-void
.end method

.method public startMonitoringZones()V
    .registers 4

    invoke-virtual {p0}, Lcom/android/server/ThermalService;->checkDefTimerSysfsPath()V

    iget-object v2, p0, Lcom/android/server/ThermalService;->mThermalZonesList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/thermal/ThermalZone;

    sget v2, Lcom/android/server/ThermalService;->isPowerOptimizationEnabled:I

    invoke-virtual {v1, v2}, Landroid/thermal/ThermalZone;->setPowerOptimizationFlag(I)V

    invoke-virtual {v1}, Landroid/thermal/ThermalZone;->startMonitoring()V

    goto :goto_9

    :cond_1e
    return-void
.end method
