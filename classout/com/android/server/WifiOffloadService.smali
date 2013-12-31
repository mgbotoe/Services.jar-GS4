.class public Lcom/android/server/WifiOffloadService;
.super Landroid/net/wifi/IWifiOffloadManager$Stub;
.source "WifiOffloadService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/WifiOffloadService$WifiOffloadLogStats;
    }
.end annotation


# static fields
.field private static final ACTION_DELETE_REQUEST:Ljava/lang/String; = "com.android.server.wifi_offload.ACTION_DELETE_REQUEST"

.field private static final BACK_KEY_TIMER:J = 0x668a0L

.field private static final DATA_ACTIVITY_CHECK_INTERVAL:J = 0xdbba0L

.field private static final DATA_ACTIVITY_CHECK_START_DELAY:J = 0xdbba0L

.field private static DBG:Z = false

.field private static final DBG_ERR:Z = true

.field private static final DONT_USE_WIFI_PRESS_TIMER:I = 0x2d0

.field private static final EXTRA_SSID:Ljava/lang/String; = "delete_ssid"

.field private static final MAX_SHOW_DIALOG_CNT:I = 0x3

.field static final PROPERTY_DATA_USAGE_THREHOLD:Ljava/lang/String; = "persist.offload.datausage.limit"

.field static final PROPERTY_DONT_USE_WIFI_TIME:Ljava/lang/String; = "persist.offload.dontuse.time"

.field private static final STATE_DISABLED:I = 0x0

.field private static final STATE_ENABLED:I = 0x1

.field private static final STATE_TURNING_OFF:I = 0x3

.field private static final STATE_TURNING_ON:I = 0x2

.field private static final STATE_UNKNOWN:I = 0x4

.field private static final TAG:Ljava/lang/String; = "WifiOffloadService"

.field public static USER_PRESSED_BACK_KEY:I

.field public static USER_PRESSED_NEVER_TURN_ON_WIFI:I

.field public static USER_PRESSED_OK:I

.field public static USER_PRESSED_TURN_OFF_WIFI:I

.field static dataUsageObj:Ljava/lang/Object;

.field public static dialogCreatedObj:Ljava/lang/Object;

.field static isRunning:Z

.field private static mTempPopupBlocked:Z

.field private static mWifiOffloadTempCnt:I

.field private static mWifiOffloadTempStationId:I

.field static obj:Ljava/lang/Object;


# instance fields
.field public DATA_USAGE_THRESHOLD:I

.field WiFiDataReceiver:Landroid/content/BroadcastReceiver;

.field public appRunOverWiFiResult:I

.field applistDB:Landroid/database/sqlite/SQLiteDatabase;

.field private blacklistedApps:[Ljava/lang/String;

.field private bootCompleteReceiver:Landroid/content/BroadcastReceiver;

.field private cdmalocation:Landroid/telephony/cdma/CdmaCellLocation;

.field private checkBackKeyTimer:Ljava/util/Timer;

.field private checkDataActivityTimer:Ljava/util/Timer;

.field dbHelper:Lcom/android/server/wifi_offload/WifiOffloadDB;

.field private deleteRequestReceiver:Landroid/content/BroadcastReceiver;

.field private dialogShown:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private doOffload:Z

.field private funcCallTimer:I

.field private gsmLocation:Landroid/telephony/gsm/GsmCellLocation;

.field private isBootCompleted:Z

.field private isDontUsewifiPressed:Z

.field private isTimerRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public isUserPressedNeverTurnOnWifi:Z

.field public isWiFiConnected:Z

.field private lastWifiScanTime:J

.field private mContext:Landroid/content/Context;

.field private mDeviceType:Ljava/lang/String;

.field private mDoNotShowOffloadDialogsDelay:J

.field private mDontUseWifiTimerIsRunning:Z

.field public mIsBatteryCharging:Z

.field public mIsServiceReadyForIntelScanMode:Z

.field private mIsTablet:Z

.field private mNewSupplicantState:Landroid/net/wifi/SupplicantState;

.field public mNoWifiTimerStartTime:J

.field public mPackageName:Ljava/lang/String;

.field private mSeamlessConnectWhileConnecting:Z

.field private mWaitForScanResults:Z

.field private mWifiNative:Landroid/net/wifi/WifiNative;

.field private final mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

.field private messageHandler:Landroid/os/Handler;

.field private noKnownNetwork:Z

.field public offloadObj:Ljava/lang/Object;

.field private pm:Landroid/content/pm/PackageManager;

.field private prevWiFiState:Z

.field public previousBaseStation:I

.field private scanCallTimer:I

.field private scanResultAvailable:Landroid/content/BroadcastReceiver;

.field private scanResults:Landroid/content/BroadcastReceiver;

.field private stationID:I

.field private testStationID:I

.field private tm:Landroid/telephony/TelephonyManager;

.field private wifiAuth:Ljava/lang/String;

.field private wifiBSSID:Ljava/lang/String;

.field private wifiManager:Landroid/net/wifi/WifiManager;

.field private wifiSSID:Ljava/lang/String;

.field wifiStateReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/server/WifiOffloadService;->DBG:Z

    sput-boolean v1, Lcom/android/server/WifiOffloadService;->mTempPopupBlocked:Z

    sput v1, Lcom/android/server/WifiOffloadService;->mWifiOffloadTempCnt:I

    sput v1, Lcom/android/server/WifiOffloadService;->mWifiOffloadTempStationId:I

    sput v1, Lcom/android/server/WifiOffloadService;->USER_PRESSED_OK:I

    const/4 v0, 0x1

    sput v0, Lcom/android/server/WifiOffloadService;->USER_PRESSED_TURN_OFF_WIFI:I

    const/4 v0, 0x2

    sput v0, Lcom/android/server/WifiOffloadService;->USER_PRESSED_NEVER_TURN_ON_WIFI:I

    const/4 v0, 0x3

    sput v0, Lcom/android/server/WifiOffloadService;->USER_PRESSED_BACK_KEY:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/WifiOffloadService;->dialogCreatedObj:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/WifiOffloadService;->dataUsageObj:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/WifiOffloadService;->obj:Ljava/lang/Object;

    sput-boolean v1, Lcom/android/server/WifiOffloadService;->isRunning:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 11

    const-wide/16 v7, 0x0

    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-direct {p0}, Landroid/net/wifi/IWifiOffloadManager$Stub;-><init>()V

    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, p0, Lcom/android/server/WifiOffloadService;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/android/server/WifiOffloadService;->isTimerRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object v5, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    iput-boolean v4, p0, Lcom/android/server/WifiOffloadService;->isBootCompleted:Z

    iput v6, p0, Lcom/android/server/WifiOffloadService;->stationID:I

    const-string v2, ""

    iput-object v2, p0, Lcom/android/server/WifiOffloadService;->wifiSSID:Ljava/lang/String;

    const-string v2, ""

    iput-object v2, p0, Lcom/android/server/WifiOffloadService;->wifiBSSID:Ljava/lang/String;

    const-string v2, ""

    iput-object v2, p0, Lcom/android/server/WifiOffloadService;->wifiAuth:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/server/WifiOffloadService;->applistDB:Landroid/database/sqlite/SQLiteDatabase;

    iput-object v5, p0, Lcom/android/server/WifiOffloadService;->dbHelper:Lcom/android/server/wifi_offload/WifiOffloadDB;

    iput v4, p0, Lcom/android/server/WifiOffloadService;->funcCallTimer:I

    iput v4, p0, Lcom/android/server/WifiOffloadService;->scanCallTimer:I

    iput-boolean v4, p0, Lcom/android/server/WifiOffloadService;->isDontUsewifiPressed:Z

    iput-boolean v4, p0, Lcom/android/server/WifiOffloadService;->mDontUseWifiTimerIsRunning:Z

    const-string v2, "persist.offload.dontuse.time"

    const/16 v3, 0x2d0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x3c

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/android/server/WifiOffloadService;->mDoNotShowOffloadDialogsDelay:J

    iput-boolean v4, p0, Lcom/android/server/WifiOffloadService;->prevWiFiState:Z

    iput v6, p0, Lcom/android/server/WifiOffloadService;->appRunOverWiFiResult:I

    iput-boolean v4, p0, Lcom/android/server/WifiOffloadService;->isUserPressedNeverTurnOnWifi:Z

    iput-boolean v4, p0, Lcom/android/server/WifiOffloadService;->mIsServiceReadyForIntelScanMode:Z

    iput v6, p0, Lcom/android/server/WifiOffloadService;->previousBaseStation:I

    iput-object v5, p0, Lcom/android/server/WifiOffloadService;->pm:Landroid/content/pm/PackageManager;

    const/4 v2, 0x1

    iput v2, p0, Lcom/android/server/WifiOffloadService;->DATA_USAGE_THRESHOLD:I

    new-instance v2, Ljava/lang/Object;

    invoke-direct/range {v2 .. v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/WifiOffloadService;->offloadObj:Ljava/lang/Object;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/android/server/WifiOffloadService;->dialogShown:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-string v2, ""

    iput-object v2, p0, Lcom/android/server/WifiOffloadService;->mPackageName:Ljava/lang/String;

    iput-wide v7, p0, Lcom/android/server/WifiOffloadService;->lastWifiScanTime:J

    iput-boolean v4, p0, Lcom/android/server/WifiOffloadService;->doOffload:Z

    iput-boolean v4, p0, Lcom/android/server/WifiOffloadService;->mSeamlessConnectWhileConnecting:Z

    iput-boolean v4, p0, Lcom/android/server/WifiOffloadService;->mWaitForScanResults:Z

    iput-boolean v4, p0, Lcom/android/server/WifiOffloadService;->noKnownNetwork:Z

    iput-object v5, p0, Lcom/android/server/WifiOffloadService;->blacklistedApps:[Ljava/lang/String;

    new-instance v2, Lcom/android/server/WifiOffloadService$1;

    invoke-direct {v2, p0}, Lcom/android/server/WifiOffloadService$1;-><init>(Lcom/android/server/WifiOffloadService;)V

    iput-object v2, p0, Lcom/android/server/WifiOffloadService;->messageHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/WifiOffloadService$2;

    invoke-direct {v2, p0}, Lcom/android/server/WifiOffloadService$2;-><init>(Lcom/android/server/WifiOffloadService;)V

    iput-object v2, p0, Lcom/android/server/WifiOffloadService;->bootCompleteReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Lcom/android/server/WifiOffloadService$3;

    invoke-direct {v2, p0}, Lcom/android/server/WifiOffloadService$3;-><init>(Lcom/android/server/WifiOffloadService;)V

    iput-object v2, p0, Lcom/android/server/WifiOffloadService;->deleteRequestReceiver:Landroid/content/BroadcastReceiver;

    iput-wide v7, p0, Lcom/android/server/WifiOffloadService;->mNoWifiTimerStartTime:J

    new-instance v2, Lcom/android/server/WifiOffloadService$7;

    invoke-direct {v2, p0}, Lcom/android/server/WifiOffloadService$7;-><init>(Lcom/android/server/WifiOffloadService;)V

    iput-object v2, p0, Lcom/android/server/WifiOffloadService;->scanResultAvailable:Landroid/content/BroadcastReceiver;

    new-instance v2, Lcom/android/server/WifiOffloadService$8;

    invoke-direct {v2, p0}, Lcom/android/server/WifiOffloadService$8;-><init>(Lcom/android/server/WifiOffloadService;)V

    iput-object v2, p0, Lcom/android/server/WifiOffloadService;->scanResults:Landroid/content/BroadcastReceiver;

    iput-boolean v4, p0, Lcom/android/server/WifiOffloadService;->isWiFiConnected:Z

    new-instance v2, Lcom/android/server/WifiOffloadService$9;

    invoke-direct {v2, p0}, Lcom/android/server/WifiOffloadService$9;-><init>(Lcom/android/server/WifiOffloadService;)V

    iput-object v2, p0, Lcom/android/server/WifiOffloadService;->wifiStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Lcom/android/server/WifiOffloadService$10;

    invoke-direct {v2, p0}, Lcom/android/server/WifiOffloadService$10;-><init>(Lcom/android/server/WifiOffloadService;)V

    iput-object v2, p0, Lcom/android/server/WifiOffloadService;->WiFiDataReceiver:Landroid/content/BroadcastReceiver;

    iput v6, p0, Lcom/android/server/WifiOffloadService;->testStationID:I

    iput-object p1, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    const-string v2, "WifiOffloadService is started . . ."

    invoke-virtual {p0, v2}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->createWiFiOffloadDB()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.net.wifi.supplicant.CONNECTION_CHANGE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/WifiOffloadService;->WiFiDataReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/WifiOffloadService;->bootCompleteReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/WifiOffloadService;->deleteRequestReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "com.android.server.wifi_offload.ACTION_DELETE_REQUEST"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/WifiOffloadService;->wifiStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/WifiOffloadService;->scanResults:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.net.wifi.SCAN_RESULTS"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string v2, "wifi.interface"

    const-string v3, "wlan0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/net/wifi/WifiNative;

    invoke-direct {v2, v1}, Landroid/net/wifi/WifiNative;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/WifiOffloadService;->mWifiNative:Landroid/net/wifi/WifiNative;

    iget-object v2, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    iput-object v2, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    if-nez v2, :cond_12b

    const-string v2, "WifiOffloadService"

    const-string v3, "WifiManager is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12b
    iget-object v2, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/WifiOffloadService;->pm:Landroid/content/pm/PackageManager;

    invoke-direct {p0}, Lcom/android/server/WifiOffloadService;->isTablet()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/WifiOffloadService;->mIsTablet:Z

    invoke-static {}, Lcom/android/server/WifiOffloadService$WifiOffloadLogStats;->initStats()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/WifiOffloadService;)Landroid/net/wifi/WifiManager;
    .registers 2

    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/server/WifiOffloadService;Landroid/net/wifi/WifiManager;)Landroid/net/wifi/WifiManager;
    .registers 2

    iput-object p1, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/server/WifiOffloadService;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/server/WifiOffloadService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/WifiOffloadService;->prevWiFiState:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/WifiOffloadService;)Landroid/net/wifi/SupplicantState;
    .registers 2

    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->mNewSupplicantState:Landroid/net/wifi/SupplicantState;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/server/WifiOffloadService;Landroid/net/wifi/SupplicantState;)Landroid/net/wifi/SupplicantState;
    .registers 2

    iput-object p1, p0, Lcom/android/server/WifiOffloadService;->mNewSupplicantState:Landroid/net/wifi/SupplicantState;

    return-object p1
.end method

.method static synthetic access$1202(Z)Z
    .registers 1

    sput-boolean p0, Lcom/android/server/WifiOffloadService;->mTempPopupBlocked:Z

    return p0
.end method

.method static synthetic access$1302(I)I
    .registers 1

    sput p0, Lcom/android/server/WifiOffloadService;->mWifiOffloadTempCnt:I

    return p0
.end method

.method static synthetic access$1402(I)I
    .registers 1

    sput p0, Lcom/android/server/WifiOffloadService;->mWifiOffloadTempStationId:I

    return p0
.end method

.method static synthetic access$1500()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/WifiOffloadService;->DBG:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/android/server/WifiOffloadService;)Landroid/content/pm/PackageManager;
    .registers 2

    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->pm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/WifiOffloadService;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/WifiOffloadService;->doOffload:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/android/server/WifiOffloadService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/WifiOffloadService;->doOffload:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/server/WifiOffloadService;ILjava/lang/String;)Z
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/server/WifiOffloadService;->insertDataUsage(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/server/WifiOffloadService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/WifiOffloadService;->notifyDataUsageObject()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/WifiOffloadService;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/WifiOffloadService;->mSeamlessConnectWhileConnecting:Z

    return v0
.end method

.method static synthetic access$2000(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/android/server/WifiOffloadService;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/WifiOffloadService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/WifiOffloadService;->mSeamlessConnectWhileConnecting:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/WifiOffloadService;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/WifiOffloadService;->isBootCompleted:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/WifiOffloadService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/WifiOffloadService;->isBootCompleted:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/WifiOffloadService;)Landroid/content/BroadcastReceiver;
    .registers 2

    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->bootCompleteReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/WifiOffloadService;)Landroid/content/BroadcastReceiver;
    .registers 2

    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->scanResultAvailable:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/WifiOffloadService;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/WifiOffloadService;->lastWifiScanTime:J

    return-wide v0
.end method

.method static synthetic access$602(Lcom/android/server/WifiOffloadService;J)J
    .registers 3

    iput-wide p1, p0, Lcom/android/server/WifiOffloadService;->lastWifiScanTime:J

    return-wide p1
.end method

.method static synthetic access$700(Lcom/android/server/WifiOffloadService;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/WifiOffloadService;->mWaitForScanResults:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/server/WifiOffloadService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/WifiOffloadService;->mWaitForScanResults:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/server/WifiOffloadService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/WifiOffloadService;->hasNetworkInRange()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/WifiOffloadService;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->messageHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private checkInExceptionalAppList(Ljava/lang/String;)Z
    .registers 6

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/WifiOffloadService;->blacklistedApps:[Ljava/lang/String;

    if-nez v2, :cond_12

    iget-boolean v2, p0, Lcom/android/server/WifiOffloadService;->mIsTablet:Z

    if-eqz v2, :cond_1c

    const-string v2, "TABLET blacklistedApps"

    invoke-virtual {p0, v2}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    sget-object v2, Lcom/android/server/wifi_offload/ExceptionalAppList;->appList_Tablet:[Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/WifiOffloadService;->blacklistedApps:[Ljava/lang/String;

    :cond_12
    :goto_12
    iget-object v2, p0, Lcom/android/server/WifiOffloadService;->blacklistedApps:[Ljava/lang/String;

    if-eqz v2, :cond_1b

    iget-object v2, p0, Lcom/android/server/WifiOffloadService;->blacklistedApps:[Ljava/lang/String;

    array-length v2, v2

    if-nez v2, :cond_26

    :cond_1b
    :goto_1b
    return v1

    :cond_1c
    const-string v2, "Smartphone blacklistedApps"

    invoke-virtual {p0, v2}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    sget-object v2, Lcom/android/server/wifi_offload/ExceptionalAppList;->appList:[Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/WifiOffloadService;->blacklistedApps:[Ljava/lang/String;

    goto :goto_12

    :cond_26
    const/4 v0, 0x0

    :goto_27
    iget-object v2, p0, Lcom/android/server/WifiOffloadService;->blacklistedApps:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Comparing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/WifiOffloadService;->blacklistedApps:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/WifiOffloadService;->blacklistedApps:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5c

    const/4 v1, 0x1

    goto :goto_1b

    :cond_5c
    add-int/lit8 v0, v0, 0x1

    goto :goto_27
.end method

.method private checkInWifiOnlyAppList(Ljava/lang/String;)Z
    .registers 6

    const/4 v1, 0x0

    sget-object v2, Lcom/android/server/wifi_offload/ExceptionalAppList;->wifiAppList:[Ljava/lang/String;

    if-eqz v2, :cond_a

    sget-object v2, Lcom/android/server/wifi_offload/ExceptionalAppList;->wifiAppList:[Ljava/lang/String;

    array-length v2, v2

    if-nez v2, :cond_b

    :cond_a
    :goto_a
    return v1

    :cond_b
    const/4 v0, 0x0

    :goto_c
    sget-object v2, Lcom/android/server/wifi_offload/ExceptionalAppList;->wifiAppList:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Comparing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/server/wifi_offload/ExceptionalAppList;->wifiAppList:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    sget-object v2, Lcom/android/server/wifi_offload/ExceptionalAppList;->wifiAppList:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_41

    const/4 v1, 0x1

    goto :goto_a

    :cond_41
    add-int/lit8 v0, v0, 0x1

    goto :goto_c
.end method

.method private checkInternetPermission(Ljava/lang/String;)Z
    .registers 7

    const/4 v0, -0x1

    :try_start_1
    iget-object v2, p0, Lcom/android/server/WifiOffloadService;->pm:Landroid/content/pm/PackageManager;

    const-string v3, "android.permission.INTERNET"

    invoke-virtual {v2, v3, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_8} :catch_d

    move-result v0

    :goto_9
    if-nez v0, :cond_27

    const/4 v2, 0x1

    :goto_c
    return v2

    :catch_d
    move-exception v1

    const-string v2, "WifiOffloadService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in checkInternetPermission "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :cond_27
    const/4 v2, 0x0

    goto :goto_c
.end method

.method private checkSignalStrength(Ljava/lang/String;)Z
    .registers 9

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v2

    iget-object v5, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    if-eqz v2, :cond_37

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_37

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    iget-object v5, v1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    if-eqz v3, :cond_38

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_38

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v5

    const/16 v6, -0xc8

    if-ne v5, v6, :cond_38

    :cond_37
    :goto_37
    return v4

    :cond_38
    const/4 v4, 0x1

    goto :goto_37
.end method

.method private static convertToUnQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/16 v2, 0x22

    if-nez p0, :cond_7

    const-string p0, ""

    :cond_6
    :goto_6
    return-object p0

    :cond_7
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    const-string p0, ""

    goto :goto_6

    :cond_10
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    if-ltz v0, :cond_25

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_6

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_6

    :cond_25
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_6
.end method

.method private dumpAllStoredWifidata(Landroid/content/Context;Ljava/io/PrintWriter;)V
    .registers 12

    const-string v0, "DUMP ALL THE STORED WIFI NETWORKS"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v7, 0x0

    :try_start_6
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->dbHelper:Lcom/android/server/wifi_offload/WifiOffloadDB;

    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->applistDB:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "stationid"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "wifissid"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "wifi_data"

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wifi_offload/WifiOffloadDB;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_1f} :catch_28

    move-result-object v7

    :goto_20
    if-nez v7, :cond_40

    const-string v0, "WIFI_OFFLOAD_TABLE : wifi_data is NULL"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_27
    return-void

    :catch_28
    move-exception v8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception in requestWifiListForStationID for dbHelper.query "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_20

    :cond_40
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_86

    :cond_46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\nBase station : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "stationid"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Network Name : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "wifissid"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_46

    :cond_86
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_27
.end method

.method private dumpAppDataUsage(Landroid/content/Context;Ljava/io/PrintWriter;)V
    .registers 12

    const-string v0, "DUMP ALL THE STORED WIFI NETWORKS"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v7, 0x0

    :try_start_6
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->dbHelper:Lcom/android/server/wifi_offload/WifiOffloadDB;

    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->applistDB:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "pkgname"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "datausage"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "launchcount"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "data_usage"

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wifi_offload/WifiOffloadDB;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_24} :catch_2d

    move-result-object v7

    :goto_25
    if-nez v7, :cond_45

    const-string v0, "DATA_USAGE_TABLE : data_usage is NULL"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_2c
    return-void

    :catch_2d
    move-exception v8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception in requestWifiListForStationID for dbHelper.query "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_25

    :cond_45
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_a5

    :cond_4b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\nApp package : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "pkgname"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Data Usage   : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "datausage"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Launch count : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "launchcount"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_4b

    :cond_a5
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_2c
.end method

.method private static getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method private getDataUsageforPackage(Ljava/lang/String;)V
    .registers 5

    const-string v1, "getDataUsageforApp ()"

    invoke-virtual {p0, v1}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "packageName == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/WifiOffloadService$12;

    invoke-direct {v1, p0, p1}, Lcom/android/server/WifiOffloadService$12;-><init>(Lcom/android/server/WifiOffloadService;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private getDialogShown()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->dialogShown:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method private getITelephony()Lcom/android/internal/telephony/ITelephony;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method private getWifiState()I
    .registers 2

    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method private hasNetworkInRange()V
    .registers 8

    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->getCDMABaseStationID()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/server/WifiOffloadService;->requestWifiListForStationID(I)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_15

    array-length v5, v4

    if-lez v5, :cond_15

    iget-object v5, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_16

    :cond_15
    :goto_15
    return-void

    :cond_16
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_43

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    const/4 v0, 0x0

    :goto_27
    array-length v5, v4

    if-ge v0, v5, :cond_1a

    iget-object v5, p0, Lcom/android/server/WifiOffloadService;->mNewSupplicantState:Landroid/net/wifi/SupplicantState;

    sget-object v6, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    if-eq v5, v6, :cond_15

    aget-object v5, v4, v0

    iget-object v6, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_40

    const-string v5, "Wifi was OFF so if ssid is available in SCAN Results turning ON Wi-Fi will connect to AP"

    invoke-virtual {p0, v5}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    goto :goto_15

    :cond_40
    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    :cond_43
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/server/WifiOffloadService;->noKnownNetwork:Z

    goto :goto_15
.end method

.method private insertDataUsage(ILjava/lang/String;)Z
    .registers 9

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "insertDataUsage for uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    :try_start_17
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "userid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "pkgname"

    invoke-virtual {v0, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "launchcount"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v3, p0, Lcom/android/server/WifiOffloadService;->dbHelper:Lcom/android/server/wifi_offload/WifiOffloadDB;

    iget-object v4, p0, Lcom/android/server/WifiOffloadService;->applistDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "data_usage"

    invoke-virtual {v3, v4, v0, v5}, Lcom/android/server/wifi_offload/WifiOffloadDB;->insertWiFiDetails(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_3d} :catch_3e

    :goto_3d
    return v2

    :catch_3e
    move-exception v1

    const-string v2, "WifiOffloadService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in insertDataUsage for dbHelper "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    goto :goto_3d
.end method

.method private isAirplaneModeOn()Z
    .registers 7

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    :try_start_8
    const-string v4, "airplane_mode_on"

    invoke-static {v0, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_d
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_8 .. :try_end_d} :catch_13

    move-result v4

    if-ne v4, v2, :cond_11

    :goto_10
    return v2

    :cond_11
    move v2, v3

    goto :goto_10

    :catch_13
    move-exception v1

    const-string v2, "WifiOffloadService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Settings AIRPLANE_MODE_ON not found "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    move v2, v3

    goto :goto_10
.end method

.method private isAnyDataActivity()Z
    .registers 7

    const/4 v3, 0x1

    const/4 v0, 0x0

    :goto_2
    const/4 v4, 0x5

    if-ge v0, v4, :cond_23

    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->isMobileDataActive()I

    move-result v1

    const/4 v4, 0x3

    if-eq v1, v4, :cond_11

    if-eq v1, v3, :cond_11

    const/4 v4, 0x2

    if-ne v1, v4, :cond_12

    :cond_11
    :goto_11
    return v3

    :cond_12
    const-wide/16 v4, 0xc8

    :try_start_14
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_17} :catch_1a

    :goto_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :catch_1a
    move-exception v2

    const-string v4, "WifiOffloadService"

    const-string v5, "Unable to put worker thread to sleep"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_17

    :cond_23
    const/4 v3, 0x0

    goto :goto_11
.end method

.method private isCurrentProcessRunning(Ljava/lang/String;)V
    .registers 4

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/WifiOffloadService$6;

    invoke-direct {v1, p0, p1}, Lcom/android/server/WifiOffloadService$6;-><init>(Lcom/android/server/WifiOffloadService;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_2
.end method

.method private isDontUseWifiTimerRunning(I)Z
    .registers 6

    iget-boolean v0, p0, Lcom/android/server/WifiOffloadService;->mDontUseWifiTimerIsRunning:Z

    if-eqz v0, :cond_3a

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/WifiOffloadService;->mDontUseWifiTimerIsRunning:Z

    iget v0, p0, Lcom/android/server/WifiOffloadService;->previousBaseStation:I

    if-ne v0, p1, :cond_3a

    const-string v0, "WifiOffloadService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Timer is running. Same location. TIMER_DELAY = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/WifiOffloadService;->mDoNotShowOffloadDialogsDelay:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/WifiOffloadService;->mNoWifiTimerStartTime:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/android/server/WifiOffloadService;->mDoNotShowOffloadDialogsDelay:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_3a

    const-string v0, "Timer expired. Resetting mDontUseWifiTimerIsRunning flag. *****"

    invoke-virtual {p0, v0}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/WifiOffloadService;->mDontUseWifiTimerIsRunning:Z

    :cond_3a
    iget-boolean v0, p0, Lcom/android/server/WifiOffloadService;->mDontUseWifiTimerIsRunning:Z

    return v0
.end method

.method private isHotspotOn()Z
    .registers 4

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    :cond_11
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_1c

    const-string v0, "No wifiManager."

    invoke-virtual {p0, v0}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    move v0, v1

    :goto_1b
    return v0

    :cond_1c
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    const/16 v2, 0xd

    if-ne v0, v2, :cond_2d

    const-string v0, "Hotspot is ON"

    invoke-virtual {p0, v0}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    move v0, v1

    goto :goto_1b

    :cond_2d
    const-string v0, "Hotspot is Off"

    invoke-virtual {p0, v0}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_1b
.end method

.method private isLastScanFoundNetworks()Z
    .registers 3

    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_10

    const/4 v1, 0x1

    :goto_f
    return v1

    :cond_10
    const/4 v1, 0x0

    goto :goto_f
.end method

.method private isTablet()Z
    .registers 3

    const-string v0, "ro.build.characteristics"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/WifiOffloadService;->mDeviceType:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->mDeviceType:Ljava/lang/String;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->mDeviceType:Ljava/lang/String;

    const-string v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method private notifyDataUsageObject()V
    .registers 3

    sget-object v1, Lcom/android/server/WifiOffloadService;->dataUsageObj:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/android/server/WifiOffloadService;->dataUsageObj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method private setWaitForDialogShown()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->dialogShown:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method private setWifiState(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method private showAppRunningOverWifiDialog()V
    .registers 6

    const-string v3, "showAppRunningOverWifiDialog ---------------->>>>>>>>>>>>>>"

    invoke-virtual {p0, v3}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    const-class v4, Lcom/android/server/wifi_offload/AppRunnOverWifiDialog;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v3, 0x1000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/server/WifiOffloadService;->setWaitForDialogShown()V

    const/4 v0, 0x0

    :goto_17
    invoke-direct {p0}, Lcom/android/server/WifiOffloadService;->getDialogShown()Z

    move-result v3

    if-nez v3, :cond_4b

    add-int/lit8 v1, v0, 0x1

    const/16 v3, 0xa

    if-ge v0, v3, :cond_4a

    iget-object v3, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startActivity for showAppRunningOverWifiDialog Called "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " times"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    const/4 v3, 0x3

    invoke-static {v3}, Lcom/android/server/WifiOffloadService;->waitTillDialogDisplayed(I)V

    move v0, v1

    goto :goto_17

    :cond_4a
    move v0, v1

    :cond_4b
    return-void
.end method

.method public static waitTillDialogDisplayed(I)V
    .registers 6

    sget-object v2, Lcom/android/server/WifiOffloadService;->dialogCreatedObj:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    sget-object v1, Lcom/android/server/WifiOffloadService;->dialogCreatedObj:Ljava/lang/Object;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_26
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_a} :catch_c

    :goto_a
    :try_start_a
    monitor-exit v2

    return-void

    :catch_c
    move-exception v0

    const-string v1, "WifiOffloadService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<<<<<<<<<<<<<<<< Waitinption while waiting >>>>>>>>>>> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :catchall_26
    move-exception v1

    monitor-exit v2
    :try_end_28
    .catchall {:try_start_a .. :try_end_28} :catchall_26

    throw v1
.end method

.method private static wifiStateToFiveState(I)I
    .registers 2

    packed-switch p0, :pswitch_data_e

    const/4 v0, 0x4

    :goto_4
    return v0

    :pswitch_5
    const/4 v0, 0x0

    goto :goto_4

    :pswitch_7
    const/4 v0, 0x1

    goto :goto_4

    :pswitch_9
    const/4 v0, 0x3

    goto :goto_4

    :pswitch_b
    const/4 v0, 0x2

    goto :goto_4

    nop

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_9
        :pswitch_5
        :pswitch_b
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method public blockWifiPopup(IZ)Z
    .registers 6

    const/4 v2, 0x1

    sget v0, Lcom/android/server/WifiOffloadService;->mWifiOffloadTempStationId:I

    if-ne p1, v0, :cond_3e

    sget v0, Lcom/android/server/WifiOffloadService;->mWifiOffloadTempCnt:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/server/WifiOffloadService;->mWifiOffloadTempCnt:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_14

    const-string v0, "wifi offload : Okay, we can show pop up next time"

    invoke-virtual {p0, v0}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    :goto_13
    return v2

    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Temporary pop up blocked is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for location = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/WifiOffloadService;->stationID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    sput-boolean p2, Lcom/android/server/WifiOffloadService;->mTempPopupBlocked:Z

    sput p1, Lcom/android/server/WifiOffloadService;->mWifiOffloadTempStationId:I

    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->startBackKeyTimer()V

    goto :goto_13

    :cond_3e
    const-string v0, "wifi offload : different station id so reset value"

    invoke-virtual {p0, v0}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/WifiOffloadService;->mTempPopupBlocked:Z

    sput v2, Lcom/android/server/WifiOffloadService;->mWifiOffloadTempCnt:I

    sput p1, Lcom/android/server/WifiOffloadService;->mWifiOffloadTempStationId:I

    goto :goto_13
.end method

.method public canAppOffload(Ljava/lang/String;)Z
    .registers 7

    sget-object v2, Lcom/android/server/WifiOffloadService;->dataUsageObj:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    const-string v1, "Calling data usage in seperate thread"

    invoke-virtual {p0, v1}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/WifiOffloadService;->getDataUsageforPackage(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_4d

    :try_start_b
    const-string v1, "waiting here"

    invoke-virtual {p0, v1}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    sget-object v1, Lcom/android/server/WifiOffloadService;->dataUsageObj:Ljava/lang/Object;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v1, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_17
    .catchall {:try_start_b .. :try_end_17} :catchall_4d
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_17} :catch_33

    :goto_17
    :try_start_17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Returning the offload value as "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Lcom/android/server/WifiOffloadService;->doOffload:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/WifiOffloadService;->doOffload:Z

    monitor-exit v2

    return v1

    :catch_33
    move-exception v0

    const-string v1, "WifiOffloadService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    :catchall_4d
    move-exception v1

    monitor-exit v2
    :try_end_4f
    .catchall {:try_start_17 .. :try_end_4f} :catchall_4d

    throw v1
.end method

.method public checkAppNeedsMoveToFront(I)V
    .registers 7

    const-string v2, "Move task to front..!!"

    invoke-virtual {p0, v2}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    :try_start_b
    invoke-interface {v1, p1, v2, v3}, Landroid/app/IActivityManager;->moveTaskToFront(IILandroid/os/Bundle;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_e} :catch_f

    :goto_e
    return-void

    :catch_f
    move-exception v0

    const-string v2, "WifiOffloadService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception move task to front "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method public checkForWifiOffload(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    const/4 v5, 0x0

    const-string v3, "android.intent.action.MAIN"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    const-string v3, "test 1 passed for starting"

    invoke-virtual {p0, v3}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    const/4 v1, -0x1

    :try_start_f
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    const-string v4, "android.permission.INTERNET"

    invoke-interface {v3, v4, p1}, Landroid/content/pm/IPackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_18} :catch_3b

    move-result v1

    :goto_19
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doing test 2 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    if-nez v1, :cond_54

    invoke-virtual {p0, p1}, Lcom/android/server/WifiOffloadService;->isAppinWhiteList(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_54

    invoke-virtual {p0, p1, v5}, Lcom/android/server/WifiOffloadService;->tryToTurnOnWifi(Ljava/lang/String;Z)Z

    :cond_3a
    :goto_3a
    return-void

    :catch_3b
    move-exception v0

    const/4 v1, -0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception while checking permission"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    goto :goto_19

    :cond_54
    if-nez v1, :cond_7c

    invoke-virtual {p0, p1}, Lcom/android/server/WifiOffloadService;->isAppInWiFiBlackList(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7c

    invoke-virtual {p0, p1}, Lcom/android/server/WifiOffloadService;->canAppOffload(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7c

    invoke-virtual {p0, p1, v5}, Lcom/android/server/WifiOffloadService;->tryToTurnOnWifi(Ljava/lang/String;Z)Z

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Now turning ON wifi"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    :cond_7c
    const-string v3, "starting activity now"

    invoke-virtual {p0, v3}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    goto :goto_3a
.end method

.method public checkIsWifiConnected()Z
    .registers 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_12

    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    const-string v4, "wifi"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    :cond_12
    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_18

    move v1, v2

    :goto_17
    return v1

    :cond_18
    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-nez v1, :cond_2b

    iput-boolean v2, p0, Lcom/android/server/WifiOffloadService;->prevWiFiState:Z

    iput-boolean v2, p0, Lcom/android/server/WifiOffloadService;->isWiFiConnected:Z

    const-string v1, "isWifiEnabledAndConnected, Wifi is Not Enabled"

    invoke-virtual {p0, v1}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    move v1, v2

    goto :goto_17

    :cond_2b
    iput-boolean v3, p0, Lcom/android/server/WifiOffloadService;->prevWiFiState:Z

    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-nez v0, :cond_37

    move v1, v2

    goto :goto_17

    :cond_37
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v1

    if-eqz v1, :cond_46

    iput-boolean v3, p0, Lcom/android/server/WifiOffloadService;->isWiFiConnected:Z

    const-string v1, "isWifiEnabledAndConnected Wifi is Connected"

    invoke-virtual {p0, v1}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    move v1, v3

    goto :goto_17

    :cond_46
    iput-boolean v2, p0, Lcom/android/server/WifiOffloadService;->isWiFiConnected:Z

    const-string v1, "isWifiEnabledAndConnected Wifi is Enabled, but not connected"

    invoke-virtual {p0, v1}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    move v1, v2

    goto :goto_17
.end method

.method public checkNetworksAndShowAPDialog()V
    .registers 8

    const/4 v6, 0x1

    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-direct {p0}, Lcom/android/server/WifiOffloadService;->isLastScanFoundNetworks()Z

    move-result v3

    if-nez v3, :cond_18

    const-string v3, "No networks. Start scanning."

    invoke-virtual {p0, v3}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->startScan()Z

    :cond_17
    return-void

    :cond_18
    const-string v3, "Going to show AP dialog now"

    invoke-virtual {p0, v3}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.net.wifi.WIFI_OFFLOAD_DIALOG"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x1000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v3, "WIFI_OFFLOAD_DO_NOT_DISTURB"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "android.intent.extra.REQUEST_WINDOW_MODE"

    const/high16 v4, 0x100

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-direct {p0}, Lcom/android/server/WifiOffloadService;->setWaitForDialogShown()V

    const/4 v0, 0x0

    :goto_3e
    invoke-direct {p0}, Lcom/android/server/WifiOffloadService;->getDialogShown()Z

    move-result v3

    if-nez v3, :cond_17

    add-int/lit8 v1, v0, 0x1

    const/16 v3, 0xa

    if-ge v0, v3, :cond_17

    iget-object v3, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const-string v3, "WifiOffloadService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startActivity for showAppRunningOverWifiDialog Called "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " times"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v6}, Lcom/android/server/WifiOffloadService;->waitTillDialogDisplayed(I)V

    move v0, v1

    goto :goto_3e
.end method

.method public checkisScreenOn()Z
    .registers 6

    const-string v2, "checkisScreenOn()"

    invoke-virtual {p0, v2}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    :try_start_5
    iget-object v2, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_12} :catch_14

    move-result v2

    :goto_13
    return v2

    :catch_14
    move-exception v0

    const-string v2, "WifiOffloadService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception when checking is screen on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    goto :goto_13
.end method

.method public clearAllAccessPoints()V
    .registers 7

    :try_start_0
    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->dbHelper:Lcom/android/server/wifi_offload/WifiOffloadDB;

    iget-object v2, p0, Lcom/android/server/WifiOffloadService;->applistDB:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "wifi_data"

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/server/wifi_offload/WifiOffloadDB;->deleteWifiDetail(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    :goto_b
    return-void

    :catch_c
    move-exception v0

    const-string v1, "WifiOffloadService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in test api clearAllAccessPoints "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b
.end method

.method public collectWiFiDetails()V
    .registers 4

    const-string v1, "getWiFiDetails()"

    invoke-virtual {p0, v1}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_15

    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    :cond_15
    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_1a

    :cond_19
    :goto_19
    return-void

    :cond_1a
    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/WifiOffloadService;->setWifiBSSID(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/WifiOffloadService;->convertToUnQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/WifiOffloadService;->setWifiSSID(Ljava/lang/String;)V

    goto :goto_19
.end method

.method public createWiFiOffloadDB()V
    .registers 5

    :try_start_0
    new-instance v1, Lcom/android/server/wifi_offload/WifiOffloadDB;

    iget-object v2, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/wifi_offload/WifiOffloadDB;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/WifiOffloadService;->dbHelper:Lcom/android/server/wifi_offload/WifiOffloadDB;

    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->dbHelper:Lcom/android/server/wifi_offload/WifiOffloadDB;

    invoke-virtual {v1}, Lcom/android/server/wifi_offload/WifiOffloadDB;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/WifiOffloadService;->applistDB:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12

    :goto_11
    return-void

    :catch_12
    move-exception v0

    const-string v1, "WifiOffloadService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in create WifiOffloadDB "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11
.end method

.method public deleteNetwork(Ljava/lang/String;)I
    .registers 9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteNetwork "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_17
    iget-object v2, p0, Lcom/android/server/WifiOffloadService;->dbHelper:Lcom/android/server/wifi_offload/WifiOffloadDB;

    iget-object v3, p0, Lcom/android/server/WifiOffloadService;->applistDB:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "wifissid = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "wifi_data"

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/server/wifi_offload/WifiOffloadDB;->deleteWifiDetail(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_3a} :catch_5a

    move-result v1

    :goto_3b
    if-lez v1, :cond_59

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updated "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " rows"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    :cond_59
    return v1

    :catch_5a
    move-exception v0

    const-string v2, "WifiOffloadService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in delete network "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3b
.end method

.method public doOffloadStuff(Ljava/lang/String;Ljava/lang/String;)I
    .registers 10

    const/4 v6, 0x0

    const-string v2, "doOffloadStuff()"

    invoke-virtual {p0, v2}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->getIntelligentWifiEnabled()Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wifiIntelligentMode value for intelligent mode :: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    if-eqz v1, :cond_4f

    if-eqz p1, :cond_7c

    sget-object v3, Lcom/android/server/WifiOffloadService;->obj:Ljava/lang/Object;

    monitor-enter v3

    :try_start_27
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Process pkName : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/WifiOffloadService;->isCurrentProcessRunning(Ljava/lang/String;)V
    :try_end_40
    .catchall {:try_start_27 .. :try_end_40} :catchall_5b

    :try_start_40
    sget-object v2, Lcom/android/server/WifiOffloadService;->obj:Ljava/lang/Object;

    const-wide/16 v4, 0x1770

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_47
    .catchall {:try_start_40 .. :try_end_47} :catchall_5b
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_47} :catch_50

    :goto_47
    :try_start_47
    sget-boolean v2, Lcom/android/server/WifiOffloadService;->isRunning:Z

    if-eqz v2, :cond_5e

    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/server/WifiOffloadService;->isRunning:Z

    monitor-exit v3

    :cond_4f
    :goto_4f
    return v6

    :catch_50
    move-exception v0

    const-string v2, "WifiOffloadService"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_47

    :catchall_5b
    move-exception v2

    monitor-exit v3
    :try_end_5d
    .catchall {:try_start_47 .. :try_end_5d} :catchall_5b

    throw v2

    :cond_5e
    :try_start_5e
    monitor-exit v3
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_5b

    invoke-virtual {p0, p1, p2}, Lcom/android/server/WifiOffloadService;->checkForWifiOffload(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Offload pkgName : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    :goto_78
    invoke-virtual {p0, v6}, Lcom/android/server/WifiOffloadService;->setDontuseWifiPressed(Z)V

    goto :goto_4f

    :cond_7c
    const-string v2, "Offload pkgName : is NULL"

    invoke-virtual {p0, v2}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    goto :goto_78
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7

    const-string v1, "WifiOffloadService"

    const-string v2, "dump started"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "WifiOffloadService"

    const-string v2, "check if the caller has DUMP permission"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.DUMP"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_41

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission Denial: can\'t dump WifiOffloadService from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_40
    return-void

    :cond_41
    const-string v1, "WifiOffloadService"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :try_start_46
    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, p2}, Lcom/android/server/WifiOffloadService;->dumpAllStoredWifidata(Landroid/content/Context;Ljava/io/PrintWriter;)V

    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, p2}, Lcom/android/server/WifiOffloadService;->dumpAppDataUsage(Landroid/content/Context;Ljava/io/PrintWriter;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nCurrent app package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/WifiOffloadService;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Previous basestation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/WifiOffloadService;->previousBaseStation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "recent basestation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->getCDMABaseStationID()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/android/server/WifiOffloadService$WifiOffloadLogStats;->dumpStats(Ljava/io/PrintWriter;)V
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_9d} :catch_a5

    :goto_9d
    const-string v1, "WifiOffloadService"

    const-string v2, "dump finished"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_40

    :catch_a5
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9d
.end method

.method public getActualState()I
    .registers 5

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_WIFI_STATE"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_26

    const-string v1, "WifiOffloadService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "android.Manifest.permission.ACCESS_WIFI_STATE not granted for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    :goto_25
    return v0

    :cond_26
    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v1, :cond_25

    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/WifiOffloadService;->wifiStateToFiveState(I)I

    move-result v0

    goto :goto_25
.end method

.method public getAvailableSSIDNames()[Ljava/lang/String;
    .registers 13

    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v8, 0x0

    :try_start_3
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->dbHelper:Lcom/android/server/wifi_offload/WifiOffloadDB;

    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->applistDB:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "wifissid"

    aput-object v4, v2, v3

    const-string v3, "wifissid <> 0"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "wifi_data"

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wifi_offload/WifiOffloadDB;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_18} :catch_41

    move-result-object v8

    if-eqz v8, :cond_5c

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v10, v0, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3c

    :cond_28
    const-string v0, "wifissid"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v10, v7

    add-int/lit8 v7, v7, 0x1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_28

    :cond_3c
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    move-object v0, v10

    :goto_40
    return-object v0

    :catch_41
    move-exception v9

    const-string v0, "WifiOffloadService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in getAvailableSSIDNames for dbHelper "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v11

    goto :goto_40

    :cond_5c
    move-object v0, v11

    goto :goto_40
.end method

.method public getCDMABaseStationID()I
    .registers 8

    const/4 v6, 0x1

    const/4 v4, -0x1

    const/4 v0, -0x1

    iget v3, p0, Lcom/android/server/WifiOffloadService;->testStationID:I

    if-eq v3, v4, :cond_a

    iget v3, p0, Lcom/android/server/WifiOffloadService;->testStationID:I

    :goto_9
    return v3

    :cond_a
    const/4 v2, -0x1

    iget-object v3, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    const-string v5, "phone"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    iput-object v3, p0, Lcom/android/server/WifiOffloadService;->tm:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/android/server/WifiOffloadService;->tm:Landroid/telephony/TelephonyManager;

    if-nez v3, :cond_1d

    move v3, v4

    goto :goto_9

    :cond_1d
    iget-object v3, p0, Lcom/android/server/WifiOffloadService;->tm:Landroid/telephony/TelephonyManager;

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Phone type is "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/WifiOffloadService;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v1

    if-nez v1, :cond_4c

    const-string v3, "CellLocation is NULL, return -1"

    invoke-virtual {p0, v3}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    move v3, v4

    goto :goto_9

    :cond_4c
    const/4 v3, 0x2

    if-ne v2, v3, :cond_83

    instance-of v3, v1, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v3, :cond_68

    check-cast v1, Landroid/telephony/cdma/CdmaCellLocation;

    iput-object v1, p0, Lcom/android/server/WifiOffloadService;->cdmalocation:Landroid/telephony/cdma/CdmaCellLocation;

    iget-object v3, p0, Lcom/android/server/WifiOffloadService;->cdmalocation:Landroid/telephony/cdma/CdmaCellLocation;

    if-nez v3, :cond_62

    const-string v3, "CDMA location is null"

    invoke-virtual {p0, v3}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    move v3, v4

    goto :goto_9

    :cond_62
    iget-object v3, p0, Lcom/android/server/WifiOffloadService;->cdmalocation:Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v3}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v0

    :cond_68
    :goto_68
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BaseStation ID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/server/WifiOffloadService;->setStationID(I)V

    move v3, v0

    goto :goto_9

    :cond_83
    if-ne v2, v6, :cond_68

    instance-of v3, v1, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v3, :cond_68

    check-cast v1, Landroid/telephony/gsm/GsmCellLocation;

    iput-object v1, p0, Lcom/android/server/WifiOffloadService;->gsmLocation:Landroid/telephony/gsm/GsmCellLocation;

    iget-object v3, p0, Lcom/android/server/WifiOffloadService;->gsmLocation:Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v3, :cond_99

    iget-object v3, p0, Lcom/android/server/WifiOffloadService;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    if-ne v3, v6, :cond_a1

    :cond_99
    const-string v3, "GSM location is null"

    invoke-virtual {p0, v3}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    move v3, v4

    goto/16 :goto_9

    :cond_a1
    iget-object v3, p0, Lcom/android/server/WifiOffloadService;->gsmLocation:Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v3}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v0

    goto :goto_68
.end method

.method public getIntelligentWifiEnabled()Z
    .registers 5

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_offload_monitoring"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_1c

    move v1, v2

    :goto_11
    sput-boolean v1, Lcom/android/server/WifiOffloadService;->DBG:Z

    const-string v1, "wifi_use_intelligent_mode"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_1e

    :goto_1b
    return v2

    :cond_1c
    move v1, v3

    goto :goto_11

    :cond_1e
    move v2, v3

    goto :goto_1b
.end method

.method public getLastPkgName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getLastWifiScannedTime()J
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Returning the last scanned time "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/WifiOffloadService;->lastWifiScanTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/WifiOffloadService;->lastWifiScanTime:J

    return-wide v0
.end method

.method public getNeverTurnonWiFiValue()I
    .registers 12

    const/4 v7, 0x1

    const/4 v10, 0x0

    iget-boolean v0, p0, Lcom/android/server/WifiOffloadService;->isUserPressedNeverTurnOnWifi:Z

    if-eqz v0, :cond_7

    :goto_6
    return v7

    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->dbHelper:Lcom/android/server/wifi_offload/WifiOffloadDB;

    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->applistDB:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "dialogstatus"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "wifi_data"

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wifi_offload/WifiOffloadDB;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_50

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4d

    const-string v0, "dialogstatus"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_31} :catch_32

    goto :goto_6

    :catch_32
    move-exception v9

    const-string v0, "WifiOffloadService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in getNeverTurnonWiFiValue for Cursor "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v10

    goto :goto_6

    :cond_4d
    :try_start_4d
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_50} :catch_32

    :cond_50
    move v7, v10

    goto :goto_6
.end method

.method public getStationID()I
    .registers 2

    iget v0, p0, Lcom/android/server/WifiOffloadService;->stationID:I

    return v0
.end method

.method public getWifiAuth()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->wifiAuth:Ljava/lang/String;

    return-object v0
.end method

.method public getWifiBSSID()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->wifiBSSID:Ljava/lang/String;

    return-object v0
.end method

.method public getWifiSSID()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->wifiSSID:Ljava/lang/String;

    return-object v0
.end method

.method public isAppInWiFiBlackList(Ljava/lang/String;)Z
    .registers 3

    if-nez p1, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    invoke-direct {p0, p1}, Lcom/android/server/WifiOffloadService;->checkInExceptionalAppList(Ljava/lang/String;)Z

    move-result v0

    goto :goto_3
.end method

.method public isAppinWhiteList(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public isDontUseWifiPressed()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/WifiOffloadService;->isDontUsewifiPressed:Z

    return v0
.end method

.method public isMobileDataActive()I
    .registers 5

    iget-object v2, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    if-nez v1, :cond_13

    const-string v2, "No Telephony manager"

    invoke-virtual {p0, v2}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    const/4 v0, 0x2

    :goto_12
    return v0

    :cond_13
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDataActivity()I

    move-result v0

    goto :goto_12
.end method

.method public isNotifyMeChecked()Z
    .registers 7

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    :try_start_8
    const-string v4, "wifi_offload_network_notify"

    invoke-static {v0, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_d
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_8 .. :try_end_d} :catch_13

    move-result v4

    if-ne v4, v2, :cond_11

    :goto_10
    return v2

    :cond_11
    move v2, v3

    goto :goto_10

    :catch_13
    move-exception v1

    const-string v2, "WifiOffloadService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exception happened while checking NotifyMe "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    move v2, v3

    goto :goto_10
.end method

.method public isWifiConnected()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/WifiOffloadService;->isWiFiConnected:Z

    return v0
.end method

.method public isWifiOnlyApp(Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    :cond_3
    :goto_3
    return v0

    :cond_4
    sget-object v1, Lcom/android/server/wifi_offload/ExceptionalAppList;->wifiAppList:[Ljava/lang/String;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/android/server/wifi_offload/ExceptionalAppList;->wifiAppList:[Ljava/lang/String;

    array-length v1, v1

    if-eqz v1, :cond_3

    invoke-direct {p0, p1}, Lcom/android/server/WifiOffloadService;->checkInWifiOnlyAppList(Ljava/lang/String;)Z

    move-result v0

    goto :goto_3
.end method

.method public isWifiSeamlessConnect()Z
    .registers 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "wifi_connect_seamlessly"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_11

    :goto_10
    return v1

    :cond_11
    move v1, v2

    goto :goto_10
.end method

.method public notifyDialogDisplayed(I)V
    .registers 5

    sget-object v1, Lcom/android/server/WifiOffloadService;->dialogCreatedObj:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    const-string v0, "<<<<<<<<<<<<<<<< Wait Completed. Dialog created OR error returned >>>>>>>>>>>"

    invoke-virtual {p0, v0}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->dialogShown:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-object v0, Lcom/android/server/WifiOffloadService;->dialogCreatedObj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    return-void

    :catchall_15
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v0
.end method

.method public printLog(Ljava/lang/String;)V
    .registers 3

    sget-boolean v0, Lcom/android/server/WifiOffloadService;->DBG:Z

    if-eqz v0, :cond_9

    const-string v0, "WifiOffloadService"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-void
.end method

.method protected requestStateChange()V
    .registers 4

    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_10

    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    :cond_10
    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_1a

    const-string v1, "No wifiManager."

    invoke-virtual {p0, v1}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    :cond_19
    :goto_19
    return-void

    :cond_1a
    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->getActualState()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wifi state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    const-string v1, "Calling setWifiEnabledDialog() from requestStateChange"

    invoke-virtual {p0, v1}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->isNotifyMeChecked()Z

    move-result v1

    if-eqz v1, :cond_19

    const/4 v1, 0x1

    if-ne v0, v1, :cond_19

    const-string v1, "WifiOffloadService"

    const-string v2, "Wifi state is enabled but not connected so calling our API"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->checkNetworksAndShowAPDialog()V

    goto :goto_19
.end method

.method protected requestStateChange(Ljava/lang/String;)Z
    .registers 12

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v5, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    if-nez v5, :cond_12

    iget-object v5, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    const-string v8, "wifi"

    invoke-virtual {v5, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiManager;

    iput-object v5, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    :cond_12
    iget-object v5, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    if-nez v5, :cond_1d

    const-string v5, "No wifiManager."

    invoke-virtual {p0, v5}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    move v5, v6

    :goto_1c
    return v5

    :cond_1d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ok, wifi is not connected, try to enable network : "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_d6

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Configuration is "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/server/WifiOffloadService;->convertToUnQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SSID is "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3f

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const-string v5, "WifiOffloadService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Enable network for SSID : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5, v3, v7}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    move-result v5

    if-eqz v5, :cond_c2

    const-string v5, "WifiOffloadService"

    const-string v8, "enableNetwork passed"

    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->reconnect()Z

    move-result v5

    if-eqz v5, :cond_cc

    const-string v5, "WifiOffloadService"

    const-string v6, "Connected "

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v7

    goto/16 :goto_1c

    :cond_c2
    const-string v5, "WifiOffloadService"

    const-string v7, "failed enableNetwork"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    goto/16 :goto_1c

    :cond_cc
    const-string v5, "WifiOffloadService"

    const-string v7, "failed to connect"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    goto/16 :goto_1c

    :cond_d6
    move v5, v6

    goto/16 :goto_1c
.end method

.method protected requestStateChange(Z)Z
    .registers 5

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_11

    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->mContext:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    :cond_11
    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_1c

    const-string v1, "No wifiManager."

    invoke-virtual {p0, v1}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_1b
    return v1

    :cond_1c
    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, p1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v0

    move v1, v0

    goto :goto_1b
.end method

.method public requestWifiListForStationID(I)[Ljava/lang/String;
    .registers 13

    const-string v0, "requestWifiListForStationID()"

    invoke-virtual {p0, v0}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Scanning performed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/WifiOffloadService;->scanCallTimer:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Times"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/WifiOffloadService;->scanCallTimer:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/WifiOffloadService;->scanCallTimer:I

    const/4 v7, 0x0

    const/4 v9, 0x0

    :try_start_2b
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->dbHelper:Lcom/android/server/wifi_offload/WifiOffloadDB;

    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->applistDB:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "wifissid"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stationid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "wifi_data"

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wifi_offload/WifiOffloadDB;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_51} :catch_79

    move-result-object v9

    :goto_52
    if-eqz v9, :cond_78

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_75

    const/4 v8, 0x0

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v7, v0, [Ljava/lang/String;

    :cond_61
    const-string v0, "wifissid"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v8

    add-int/lit8 v8, v8, 0x1

    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_61

    :cond_75
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_78
    return-object v7

    :catch_79
    move-exception v10

    const-string v0, "WifiOffloadService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in requestWifiListForStationID for dbHelper.query "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_52
.end method

.method public resetCurrentTestBaseStationID()V
    .registers 2

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/WifiOffloadService;->testStationID:I

    iget v0, p0, Lcom/android/server/WifiOffloadService;->testStationID:I

    invoke-virtual {p0, v0}, Lcom/android/server/WifiOffloadService;->setStationID(I)V

    return-void
.end method

.method public resetNeverTurnOnWifi()V
    .registers 4

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resetNeverTurnOnWifi() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/WifiOffloadService;->mDontUseWifiTimerIsRunning:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/android/server/WifiOffloadService;->mDontUseWifiTimerIsRunning:Z

    const-string v0, "Timer is reset"

    invoke-virtual {p0, v0}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/android/server/WifiOffloadService;->isUserPressedNeverTurnOnWifi:Z

    invoke-virtual {p0, v2}, Lcom/android/server/WifiOffloadService;->updateNeverTurnOnWiFi(I)V

    return-void
.end method

.method public setAppRunOverWiFiResult(IZ)V
    .registers 5

    iput p1, p0, Lcom/android/server/WifiOffloadService;->appRunOverWiFiResult:I

    const-string v0, "notification came"

    invoke-virtual {p0, v0}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->offloadObj:Ljava/lang/Object;

    monitor-enter v1

    :try_start_a
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->offloadObj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    return-void

    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_a .. :try_end_13} :catchall_11

    throw v0
.end method

.method public setCurrentTestBaseStationID(I)V
    .registers 3

    iput p1, p0, Lcom/android/server/WifiOffloadService;->testStationID:I

    iget v0, p0, Lcom/android/server/WifiOffloadService;->testStationID:I

    invoke-virtual {p0, v0}, Lcom/android/server/WifiOffloadService;->setStationID(I)V

    return-void
.end method

.method public setDontuseWifiPressed(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/WifiOffloadService;->isDontUsewifiPressed:Z

    return-void
.end method

.method public setNeverTurnOnWifi()V
    .registers 3

    const/4 v1, 0x1

    const-string v0, "setNeverTurnOnWifi()"

    invoke-virtual {p0, v0}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/android/server/WifiOffloadService;->isUserPressedNeverTurnOnWifi:Z

    invoke-virtual {p0, v1}, Lcom/android/server/WifiOffloadService;->updateNeverTurnOnWiFi(I)V

    return-void
.end method

.method public setStationID(I)V
    .registers 2

    iput p1, p0, Lcom/android/server/WifiOffloadService;->stationID:I

    return-void
.end method

.method public setWifiAuth(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/WifiOffloadService;->wifiAuth:Ljava/lang/String;

    return-void
.end method

.method public setWifiBSSID(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/WifiOffloadService;->wifiBSSID:Ljava/lang/String;

    return-void
.end method

.method public setWifiSSID(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/WifiOffloadService;->wifiSSID:Ljava/lang/String;

    return-void
.end method

.method public startBackKeyTimer()V
    .registers 5

    const-string v0, "Inside startDataActivityTimerOnce(final String packageName, final boolean isWaitrequired)"

    invoke-virtual {p0, v0}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/server/WifiOffloadService;->checkBackKeyTimer:Ljava/util/Timer;

    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->checkBackKeyTimer:Ljava/util/Timer;

    new-instance v1, Lcom/android/server/WifiOffloadService$11;

    invoke-direct {v1, p0}, Lcom/android/server/WifiOffloadService$11;-><init>(Lcom/android/server/WifiOffloadService;)V

    const-wide/32 v2, 0x668a0

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method public startDataActivityTimer()V
    .registers 7

    const-wide/32 v2, 0xdbba0

    const-string v0, "WifiOffloadService"

    const-string v1, "Inside startDataActivityTimer()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->isTimerRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_15

    :goto_14
    return-void

    :cond_15
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/server/WifiOffloadService;->checkDataActivityTimer:Ljava/util/Timer;

    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->checkDataActivityTimer:Ljava/util/Timer;

    new-instance v1, Lcom/android/server/WifiOffloadService$4;

    invoke-direct {v1, p0}, Lcom/android/server/WifiOffloadService$4;-><init>(Lcom/android/server/WifiOffloadService;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto :goto_14
.end method

.method public startDataActivityTimerOnce(Ljava/lang/String;Z)V
    .registers 7

    const-string v0, "Inside startDataActivityTimerOnce(final String packageName, final boolean isWaitrequired)"

    invoke-virtual {p0, v0}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/server/WifiOffloadService;->checkDataActivityTimer:Ljava/util/Timer;

    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->checkDataActivityTimer:Ljava/util/Timer;

    new-instance v1, Lcom/android/server/WifiOffloadService$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/WifiOffloadService$5;-><init>(Lcom/android/server/WifiOffloadService;Ljava/lang/String;Z)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method public startDontUseWiFiPressedTimer()V
    .registers 5

    const-string v0, "Started timer when user pressed Don\'t use WiFi."

    invoke-virtual {p0, v0}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/WifiOffloadService;->mDontUseWifiTimerIsRunning:Z

    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->getCDMABaseStationID()I

    move-result v0

    iput v0, p0, Lcom/android/server/WifiOffloadService;->previousBaseStation:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/WifiOffloadService;->mNoWifiTimerStartTime:J

    const-string v0, "persist.offload.dontuse.time"

    const/16 v1, 0x2d0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/server/WifiOffloadService;->mDoNotShowOffloadDialogsDelay:J

    const-string v0, "WifiOffloadService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Timer delay -- >>> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/WifiOffloadService;->mDoNotShowOffloadDialogsDelay:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public stopDataActivityTimer()V
    .registers 4

    const/4 v2, 0x1

    const-string v0, "WifiOffloadService"

    const-string v1, "Inside stopDataActivityTimer()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->isTimerRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_12

    :goto_11
    return-void

    :cond_12
    iput-boolean v2, p0, Lcom/android/server/WifiOffloadService;->isBootCompleted:Z

    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->checkDataActivityTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    goto :goto_11
.end method

.method public storeWiFiDetails()V
    .registers 6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "storeWiFiDetails"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->getCDMABaseStationID()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " getWifiBSSID() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->getWifiBSSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    :try_start_28
    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->getCDMABaseStationID()I

    move-result v2

    if-lez v2, :cond_79

    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->getWifiBSSID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_79

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "stationid"

    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->getStationID()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "wifissid"

    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->getWifiSSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "wifibssid"

    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->getWifiBSSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "lastuseddate"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "dialogstatus"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v2, p0, Lcom/android/server/WifiOffloadService;->dbHelper:Lcom/android/server/wifi_offload/WifiOffloadDB;

    iget-object v3, p0, Lcom/android/server/WifiOffloadService;->applistDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "wifi_data"

    invoke-virtual {v2, v3, v0, v4}, Lcom/android/server/wifi_offload/WifiOffloadDB;->insertWiFiDetails(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;)V
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_79} :catch_7a

    :cond_79
    :goto_79
    return-void

    :catch_7a
    move-exception v1

    const-string v2, "WifiOffloadService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in StoreWiFiDetais() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_79
.end method

.method public tryToTurnOnWifi(Ljava/lang/String;Z)Z
    .registers 6

    const/4 v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wait for data activity is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    if-eqz p2, :cond_21

    invoke-direct {p0}, Lcom/android/server/WifiOffloadService;->isAnyDataActivity()Z

    move-result v1

    if-nez v1, :cond_20

    const/4 v0, 0x0

    :cond_20
    :goto_20
    return v0

    :cond_21
    invoke-virtual {p0, p1, p2}, Lcom/android/server/WifiOffloadService;->startDataActivityTimerOnce(Ljava/lang/String;Z)V

    goto :goto_20
.end method

.method public updateBaseStationIDs(Ljava/lang/String;I)V
    .registers 10

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "stationid"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :try_start_e
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->dbHelper:Lcom/android/server/wifi_offload/WifiOffloadDB;

    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->applistDB:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wifissid = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "wifi_data"

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wifi_offload/WifiOffloadDB;->updateWiFiDetails(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)I
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_31} :catch_32

    :goto_31
    return-void

    :catch_32
    move-exception v6

    const-string v0, "WifiOffloadService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in test api updateBaseStationIDs "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31
.end method

.method public updateDialogStatus(I)V
    .registers 12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateDialogStatus "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    const/4 v8, 0x1

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "dialogstatus"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "lastuseddate"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 v9, 0x0

    :try_start_33
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->dbHelper:Lcom/android/server/wifi_offload/WifiOffloadDB;

    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->applistDB:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stationid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "wifi_data"

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wifi_offload/WifiOffloadDB;->updateWiFiDetails(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    if-lez v9, :cond_72

    const-string v0, "WifiOffloadService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updated "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " rows"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_71
    return-void

    :cond_72
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "stationid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "wifissid"

    const-string v1, "0"

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "wifibssid"

    const-string v1, ""

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "lastuseddate"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "dialogstatus"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->dbHelper:Lcom/android/server/wifi_offload/WifiOffloadDB;

    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->applistDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "wifi_data"

    invoke-virtual {v0, v1, v6, v3}, Lcom/android/server/wifi_offload/WifiOffloadDB;->insertWiFiDetails(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;)V
    :try_end_ad
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_ad} :catch_ae

    goto :goto_71

    :catch_ae
    move-exception v7

    const-string v0, "WifiOffloadService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in updateDialogStatus for dbHelper "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_71
.end method

.method public updateNeverTurnOnWiFi(I)V
    .registers 11

    const-string v0, "updateNeverTurnOnWiFi to 1"

    invoke-virtual {p0, v0}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "dialogstatus"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v8, 0x0

    :try_start_14
    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->dbHelper:Lcom/android/server/wifi_offload/WifiOffloadDB;

    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->applistDB:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "wifi_data"

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wifi_offload/WifiOffloadDB;->updateWiFiDetails(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    if-lez v8, :cond_41

    const-string v0, "WifiOffloadService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updated "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " rows"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_40
    return-void

    :cond_41
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "stationid"

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "wifissid"

    const-string v1, "0"

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "wifibssid"

    const-string v1, ""

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "lastuseddate"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "dialogstatus"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/android/server/WifiOffloadService;->dbHelper:Lcom/android/server/wifi_offload/WifiOffloadDB;

    iget-object v1, p0, Lcom/android/server/WifiOffloadService;->applistDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "wifi_data"

    invoke-virtual {v0, v1, v6, v3}, Lcom/android/server/wifi_offload/WifiOffloadDB;->insertWiFiDetails(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;)V
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_7a} :catch_7b

    goto :goto_40

    :catch_7b
    move-exception v7

    const-string v0, "WifiOffloadService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in updateNeverTurnOnWiFi "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_40
.end method

.method public wasWiFiReallyOn()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/WifiOffloadService;->prevWiFiState:Z

    return v0
.end method

.method public declared-synchronized wifiOffloadFlow(Ljava/lang/String;Z)Z
    .registers 16

    monitor-enter p0

    :try_start_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Main function called "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/WifiOffloadService;->funcCallTimer:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " Times"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/WifiOffloadService;->mPackageName:Ljava/lang/String;

    iget v9, p0, Lcom/android/server/WifiOffloadService;->funcCallTimer:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/android/server/WifiOffloadService;->funcCallTimer:I

    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->getIntelligentWifiEnabled()Z

    move-result v6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Intel mode is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    if-nez v6, :cond_4b

    const-string v9, "Wi-Fi intelligent mode is not set to ON; return false"

    invoke-virtual {p0, v9}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V
    :try_end_48
    .catchall {:try_start_1 .. :try_end_48} :catchall_29f

    const/4 v9, 0x0

    :goto_49
    monitor-exit p0

    return v9

    :cond_4b
    :try_start_4b
    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->checkIsWifiConnected()Z

    move-result v9

    if-eqz v9, :cond_58

    const-string v9, "WiFi is already connected; return false"

    invoke-virtual {p0, v9}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    const/4 v9, 0x0

    goto :goto_49

    :cond_58
    invoke-direct {p0}, Lcom/android/server/WifiOffloadService;->isAirplaneModeOn()Z

    move-result v9

    if-nez v9, :cond_64

    invoke-direct {p0}, Lcom/android/server/WifiOffloadService;->isHotspotOn()Z

    move-result v9

    if-eqz v9, :cond_6b

    :cond_64
    const-string v9, "Airplane plane OR hotspot return false"

    invoke-virtual {p0, v9}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    const/4 v9, 0x0

    goto :goto_49

    :cond_6b
    const/4 v2, 0x0

    if-eqz p2, :cond_94

    move v3, v2

    :goto_6f
    invoke-direct {p0}, Lcom/android/server/WifiOffloadService;->isAnyDataActivity()Z

    move-result v9

    if-eqz v9, :cond_93

    add-int/lit8 v2, v3, 0x1

    const/16 v9, 0x32

    if-le v3, v9, :cond_82

    const-string v9, "returning since data activity is going on for more than 10 Secs"

    invoke-virtual {p0, v9}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V
    :try_end_80
    .catchall {:try_start_4b .. :try_end_80} :catchall_29f

    const/4 v9, 0x0

    goto :goto_49

    :cond_82
    const-wide/16 v9, 0xc8

    :try_start_84
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_87
    .catchall {:try_start_84 .. :try_end_87} :catchall_29f
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_87} :catch_89

    move v3, v2

    goto :goto_6f

    :catch_89
    move-exception v4

    :try_start_8a
    const-string v9, "WifiOffloadService"

    const-string v10, "Unable to put worker thread to sleep"

    invoke-static {v9, v10, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v3, v2

    goto :goto_6f

    :cond_93
    move v2, v3

    :cond_94
    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->getCDMABaseStationID()I

    move-result v0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\n--------------------------------------------------------\nWifi Enabled = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v10}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "Notify Me = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->isNotifyMeChecked()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "Base Station = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "Timer running = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-direct {p0, v0}, Lcom/android/server/WifiOffloadService;->isDontUseWifiTimerRunning(I)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "Timer Duration = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, p0, Lcom/android/server/WifiOffloadService;->mDoNotShowOffloadDialogsDelay:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "Auto-Connect = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->isWifiSeamlessConnect()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "Package Name = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/WifiOffloadService;->mPackageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "Data Threshold exeeds = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/android/server/WifiOffloadService;->doOffload:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/WifiOffloadService$WifiOffloadLogStats;->logStats(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/server/WifiOffloadService;->isDontUseWifiTimerRunning(I)Z

    move-result v9

    if-eqz v9, :cond_14c

    iget-object v9, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v9

    if-eqz v9, :cond_14c

    const-string v9, "mDontUseWifiTimerIsRunning is true dont offload"

    invoke-virtual {p0, v9}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    const/4 v9, 0x0

    goto/16 :goto_49

    :cond_14c
    const/4 v8, 0x0

    const/4 v9, -0x1

    if-eq v0, v9, :cond_152

    if-nez v0, :cond_174

    :cond_152
    const-string v9, "WifiOffloadService"

    const-string v10, "No Offloading since Base station ID returned -1 or 0"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v9

    if-eqz v9, :cond_171

    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->isNotifyMeChecked()Z

    move-result v9

    if-eqz v9, :cond_171

    if-nez p2, :cond_171

    const-string v9, "Base Station is -1 but wifi is ON show the dialog"

    invoke-virtual {p0, v9}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->checkNetworksAndShowAPDialog()V

    :cond_171
    const/4 v9, 0x0

    goto/16 :goto_49

    :cond_174
    invoke-virtual {p0, v0}, Lcom/android/server/WifiOffloadService;->requestWifiListForStationID(I)[Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_189

    const/4 v9, 0x0

    aget-object v9, v7, v9

    const-string v10, "0"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1c9

    array-length v9, v7

    const/4 v10, 0x1

    if-gt v9, v10, :cond_1c9

    :cond_189
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/server/WifiOffloadService;->mSeamlessConnectWhileConnecting:Z

    iget-object v9, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v9

    if-nez v9, :cond_19c

    const-string v9, "No networks and wifi is off so don\'t offload"

    invoke-virtual {p0, v9}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    const/4 v9, 0x0

    goto/16 :goto_49

    :cond_19c
    if-eqz p2, :cond_1a6

    const-string v9, "if there is no network in wifi offload DB dont turn on wifi just return false"

    invoke-virtual {p0, v9}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    const/4 v9, 0x0

    goto/16 :goto_49

    :cond_1a6
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isNotifyMeChecked :: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->isNotifyMeChecked()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->isNotifyMeChecked()Z

    move-result v9

    if-nez v9, :cond_20f

    const/4 v9, 0x0

    goto/16 :goto_49

    :cond_1c9
    iget-object v9, p0, Lcom/android/server/WifiOffloadService;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v9

    if-eqz v9, :cond_1f2

    const/4 v5, 0x0

    :goto_1d2
    array-length v9, v7

    if-ge v5, v9, :cond_20f

    const-string v9, "requestStateChange : status true"

    invoke-virtual {p0, v9}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    if-eqz p2, :cond_1df

    const/4 v9, 0x0

    goto/16 :goto_49

    :cond_1df
    aget-object v9, v7, v5

    invoke-direct {p0, v9}, Lcom/android/server/WifiOffloadService;->checkSignalStrength(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1f0

    aget-object v9, v7, v5

    invoke-virtual {p0, v9}, Lcom/android/server/WifiOffloadService;->requestStateChange(Ljava/lang/String;)Z

    move-result v8

    :goto_1ed
    add-int/lit8 v5, v5, 0x1

    goto :goto_1d2

    :cond_1f0
    const/4 v8, 0x0

    goto :goto_1ed

    :cond_1f2
    if-eqz p2, :cond_1f7

    const/4 v9, 0x0

    goto/16 :goto_49

    :cond_1f7
    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->isWifiSeamlessConnect()Z

    move-result v9

    if-eqz v9, :cond_23a

    const-string v9, "WifiOffloadService"

    const-string v10, "Connect WiFi seamlessly"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/server/WifiOffloadService;->mSeamlessConnectWhileConnecting:Z

    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/server/WifiOffloadService;->mWaitForScanResults:Z

    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/android/server/WifiOffloadService;->requestStateChange(Z)Z

    move-result v8

    :cond_20f
    const/4 v1, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "requestStateChange returned nowWaitForConnection"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    :cond_226
    :goto_226
    if-eqz v8, :cond_24d

    const/16 v9, 0x64

    if-ge v1, v9, :cond_24d

    iget-object v9, p0, Lcom/android/server/WifiOffloadService;->mNewSupplicantState:Landroid/net/wifi/SupplicantState;

    sget-object v10, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    if-ne v9, v10, :cond_23d

    const-string v9, "Association completed"

    invoke-virtual {p0, v9}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    const/4 v9, 0x1

    goto/16 :goto_49

    :cond_23a
    const/4 v9, 0x0

    goto/16 :goto_49

    :cond_23d
    iget-boolean v9, p0, Lcom/android/server/WifiOffloadService;->noKnownNetwork:Z

    if-eqz v9, :cond_28e

    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/server/WifiOffloadService;->noKnownNetwork:Z

    iget-boolean v9, p0, Lcom/android/server/WifiOffloadService;->mSeamlessConnectWhileConnecting:Z

    if-nez v9, :cond_226

    const-string v9, "Unable to connect to known network since not in range, show AP list dialog"

    invoke-virtual {p0, v9}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    :cond_24d
    iget-boolean v9, p0, Lcom/android/server/WifiOffloadService;->mSeamlessConnectWhileConnecting:Z

    if-eqz v9, :cond_2a2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "AutoConnect: mSeamlessConnectWhileConnecting  is true "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/WifiOffloadService;->messageHandler:Landroid/os/Handler;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/server/WifiOffloadService;->messageHandler:Landroid/os/Handler;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v9

    if-nez v9, :cond_28b

    const-string v9, "AutoConnect unable to CONNNECT : sendEmptyMessageDelayed after 5 min to check Wifi status"

    invoke-virtual {p0, v9}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/server/WifiOffloadService;->messageHandler:Landroid/os/Handler;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v9, p0, Lcom/android/server/WifiOffloadService;->messageHandler:Landroid/os/Handler;

    const/4 v10, 0x1

    const-wide/32 v11, 0x493e0

    invoke-virtual {v9, v10, v11, v12}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_28b
    .catchall {:try_start_8a .. :try_end_28b} :catchall_29f

    :cond_28b
    const/4 v9, 0x0

    goto/16 :goto_49

    :cond_28e
    const-wide/16 v9, 0xc8

    :try_start_290
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_293
    .catchall {:try_start_290 .. :try_end_293} :catchall_29f
    .catch Ljava/lang/Exception; {:try_start_290 .. :try_end_293} :catch_296

    :goto_293
    add-int/lit8 v1, v1, 0x1

    goto :goto_226

    :catch_296
    move-exception v4

    :try_start_297
    const-string v9, "WifiOffloadService"

    const-string v10, "Unable to put worker thread to sleep"

    invoke-static {v9, v10, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_29e
    .catchall {:try_start_297 .. :try_end_29e} :catchall_29f

    goto :goto_293

    :catchall_29f
    move-exception v9

    monitor-exit p0

    throw v9

    :cond_2a2
    :try_start_2a2
    const-string v9, "enableNetwork API failed based on location, try to call standard API"

    invoke-virtual {p0, v9}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    if-nez p2, :cond_2c8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isWaitrequired "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/server/WifiOffloadService;->printLog(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/server/WifiOffloadService;->isDontUseWifiTimerRunning(I)Z

    move-result v9

    if-nez v9, :cond_2c8

    invoke-virtual {p0}, Lcom/android/server/WifiOffloadService;->requestStateChange()V
    :try_end_2c8
    .catchall {:try_start_2a2 .. :try_end_2c8} :catchall_29f

    :cond_2c8
    const/4 v9, 0x1

    goto/16 :goto_49
.end method
