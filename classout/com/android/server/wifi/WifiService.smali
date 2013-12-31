.class public final Lcom/android/server/wifi/WifiService;
.super Landroid/net/wifi/IWifiManager$Stub;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiService$15;,
        Lcom/android/server/wifi/WifiService$Multicaster;,
        Lcom/android/server/wifi/WifiService$DeathRecipient;,
        Lcom/android/server/wifi/WifiService$LockList;,
        Lcom/android/server/wifi/WifiService$WifiLock;,
        Lcom/android/server/wifi/WifiService$EncryptTool;,
        Lcom/android/server/wifi/WifiService$ApInfo;,
        Lcom/android/server/wifi/WifiService$WifiProfile;,
        Lcom/android/server/wifi/WifiService$WifiStateMachineHandler;,
        Lcom/android/server/wifi/WifiService$ClientHandler;,
        Lcom/android/server/wifi/WifiService$HS20_ConType;
    }
.end annotation


# static fields
.field private static final CHECK_IMEI:I = 0xa

#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field private static final ICON_NETWORKS_HS20_H_CONNECTED:I = 0x108033e

.field private static final ICON_NETWORKS_HS20_R_CONNECTED:I = 0x108033f

.field private static final TAG:Ljava/lang/String; = "WifiService"

.field public static final WIFIAP_POWER_MODE_ALARM:Ljava/lang/String; = "android.net.wifi.wifiap_power_mode_alarm"

.field public static final WIFIAP_POWER_MODE_ALARM_EXPIRE:I = 0x1

.field public static final WIFIAP_POWER_MODE_ALARM_OPTION:Ljava/lang/String; = "wifiap_power_mode_alarm_option"

.field public static final WIFIAP_POWER_MODE_ALARM_START:I = 0x0

.field public static final WIFIAP_POWER_MODE_ALARM_STOP:I = 0x2

.field public static final WIFIAP_POWER_MODE_ALARM_UNKNOWN:I = 0x3

.field public static final WIFIAP_POWER_MODE_VALUE_CHANGED:I = 0x4

.field private static defaultTimeoutValue:I

.field private static filePathDefaultAp:Ljava/io/File;

.field private static filePathGeneralinfo:Ljava/io/File;

.field private static mApInfo:[Lcom/android/server/wifi/WifiService$ApInfo;

.field private static mFilePath:Ljava/io/File;

.field private static mFirstScanAddProfile:Z

.field private static mGeneralNwInfo:[Lcom/android/server/wifi/WifiService$ApInfo;

.field private static mMatchedNetworkName:Ljava/lang/String;

.field private static mMatchedPrevNetworkName:Ljava/lang/String;

.field private static mRemoveWifiProfile:Z

.field private static mWifiProfileLoaded:Z


# instance fields
.field private final PATH_GENERALINFOFILE_NAME:Ljava/lang/String;

.field private final PATH_WIFIPROFILE:Ljava/lang/String;

.field private final PATH_WIFIPROFILE_NAME:Ljava/lang/String;

.field private allowWifi:Z

.field private allowWifiAp:Z

.field private isBootCompleted:Z

.field private final mAppOps:Landroid/app/AppOpsManager;

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mBcSmsReceived:Z

.field private mBlockScanFromOthers:Z

.field private mChameleonEnabled:Z

.field private mClientHandler:Lcom/android/server/wifi/WifiService$ClientHandler;

.field private final mContext:Landroid/content/Context;

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mDeviceManager:Lcom/android/server/DeviceManager3LMService;

.field private mDomRoamMaxUser:I

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mFullHighPerfLocksAcquired:I

.field private mFullHighPerfLocksReleased:I

.field private mFullLocksAcquired:I

.field private mFullLocksReleased:I

.field private mGsmMaxUser:I

.field private mHotspotTestMode:Z

.field private mHs20Noti:Landroid/app/Notification;

.field private mIntRoamMaxUser:I

.field private mInterfaceName:Ljava/lang/String;

.field private mIsReceiverRegistered:Z

.field final mLocks:Lcom/android/server/wifi/WifiService$LockList;

.field private mMaxUser:I

.field private mMulticastDisabled:I

.field private mMulticastEnabled:I

.field private final mMulticasters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/WifiService$Multicaster;",
            ">;"
        }
    .end annotation
.end field

.field mNetworkInfo:Landroid/net/NetworkInfo;

.field private mNotificationController:Lcom/android/server/wifi/WifiNotificationController;

.field private mNotificationHS20Enabled:Z

.field private mNwService:Landroid/os/INetworkManagementService;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPppoeStateMachine:Landroid/net/wifi/PppoeStateMachine;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRequestWifiOn:Z

.field private mScanLocksAcquired:I

.field private mScanLocksReleased:I

.field private mSendDhcpRelease:Z

.field final mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

.field private mSsid:Ljava/lang/String;

.field private mTetheredData:I

.field public mTrafficPoller:Lcom/android/server/wifi/WifiTrafficPoller;

.field private mWifiController:Lcom/android/server/wifi/WifiController;

.field private mWifiEnabled:Z

.field private mWifiProfile:Lcom/android/server/wifi/WifiService$WifiProfile;

.field final mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

.field private mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

.field mWifiStateMachineHandler:Lcom/android/server/wifi/WifiService$WifiStateMachineHandler;

.field private mWifiWatchdogStateMachine:Landroid/net/wifi/WifiWatchdogStateMachine;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v2

    if-ne v2, v0, :cond_9

    move v0, v1

    :cond_9
    sput-boolean v0, Lcom/android/server/wifi/WifiService;->DBG:Z

    new-instance v0, Ljava/io/File;

    const-string v2, "/data/misc/wifi/generalinfo_nw.conf"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/wifi/WifiService;->filePathGeneralinfo:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    const-string v2, "/data/misc/wifi/default_ap.conf"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/wifi/WifiService;->filePathDefaultAp:Ljava/io/File;

    sput-boolean v1, Lcom/android/server/wifi/WifiService;->mFirstScanAddProfile:Z

    sput-boolean v1, Lcom/android/server/wifi/WifiService;->mRemoveWifiProfile:Z

    sput-boolean v1, Lcom/android/server/wifi/WifiService;->mWifiProfileLoaded:Z

    const-string v0, ""

    sput-object v0, Lcom/android/server/wifi/WifiService;->mMatchedNetworkName:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/android/server/wifi/WifiService;->mMatchedPrevNetworkName:Ljava/lang/String;

    const-string v0, "1200"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/wifi/WifiService;->defaultTimeoutValue:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 12

    const/4 v9, 0x0

    const/16 v8, 0xa

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-direct {p0}, Landroid/net/wifi/IWifiManager$Stub;-><init>()V

    iput-boolean v6, p0, Lcom/android/server/wifi/WifiService;->mBcSmsReceived:Z

    iput-boolean v6, p0, Lcom/android/server/wifi/WifiService;->mBlockScanFromOthers:Z

    new-instance v3, Lcom/android/server/wifi/WifiService$LockList;

    invoke-direct {v3, p0, v9}, Lcom/android/server/wifi/WifiService$LockList;-><init>(Lcom/android/server/wifi/WifiService;Lcom/android/server/wifi/WifiService$1;)V

    iput-object v3, p0, Lcom/android/server/wifi/WifiService;->mLocks:Lcom/android/server/wifi/WifiService$LockList;

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Wifi_SendSignalDuringPowerOff"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/wifi/WifiService;->mSendDhcpRelease:Z

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/wifi/WifiService;->mMulticasters:Ljava/util/List;

    iput-boolean v6, p0, Lcom/android/server/wifi/WifiService;->isBootCompleted:Z

    iput-object v9, p0, Lcom/android/server/wifi/WifiService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-boolean v6, p0, Lcom/android/server/wifi/WifiService;->mHotspotTestMode:Z

    iput-boolean v7, p0, Lcom/android/server/wifi/WifiService;->allowWifi:Z

    iput-boolean v7, p0, Lcom/android/server/wifi/WifiService;->allowWifiAp:Z

    iput-boolean v6, p0, Lcom/android/server/wifi/WifiService;->mWifiEnabled:Z

    iput-boolean v6, p0, Lcom/android/server/wifi/WifiService;->mIsReceiverRegistered:Z

    const-string v3, "/data/misc/wifi"

    iput-object v3, p0, Lcom/android/server/wifi/WifiService;->PATH_WIFIPROFILE:Ljava/lang/String;

    const-string v3, "default_ap.conf"

    iput-object v3, p0, Lcom/android/server/wifi/WifiService;->PATH_WIFIPROFILE_NAME:Ljava/lang/String;

    const-string v3, "generalinfo_nw.conf"

    iput-object v3, p0, Lcom/android/server/wifi/WifiService;->PATH_GENERALINFOFILE_NAME:Ljava/lang/String;

    new-instance v3, Landroid/net/NetworkInfo;

    const-string v4, "WIFI"

    const-string v5, ""

    invoke-direct {v3, v7, v6, v4, v5}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/wifi/WifiService;->mNetworkInfo:Landroid/net/NetworkInfo;

    iput-boolean v6, p0, Lcom/android/server/wifi/WifiService;->mRequestWifiOn:Z

    iput-boolean v6, p0, Lcom/android/server/wifi/WifiService;->mChameleonEnabled:Z

    iput v6, p0, Lcom/android/server/wifi/WifiService;->mTetheredData:I

    const-string v3, ""

    iput-object v3, p0, Lcom/android/server/wifi/WifiService;->mSsid:Ljava/lang/String;

    iput v8, p0, Lcom/android/server/wifi/WifiService;->mMaxUser:I

    iput v7, p0, Lcom/android/server/wifi/WifiService;->mGsmMaxUser:I

    iput v8, p0, Lcom/android/server/wifi/WifiService;->mDomRoamMaxUser:I

    iput v8, p0, Lcom/android/server/wifi/WifiService;->mIntRoamMaxUser:I

    iput-object v9, p0, Lcom/android/server/wifi/WifiService;->mWifiWatchdogStateMachine:Landroid/net/wifi/WifiWatchdogStateMachine;

    new-instance v3, Lcom/android/server/wifi/WifiService$12;

    invoke-direct {v3, p0}, Lcom/android/server/wifi/WifiService$12;-><init>(Lcom/android/server/wifi/WifiService;)V

    iput-object v3, p0, Lcom/android/server/wifi/WifiService;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Lcom/android/server/wifi/WifiService$14;

    invoke-direct {v3, p0}, Lcom/android/server/wifi/WifiService$14;-><init>(Lcom/android/server/wifi/WifiService;)V

    iput-object v3, p0, Lcom/android/server/wifi/WifiService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    iput-object p1, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    const-string v4, "enterprise_policy"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v3, p0, Lcom/android/server/wifi/WifiService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    const-string v3, "network_management"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/wifi/WifiService;->mNwService:Landroid/os/INetworkManagementService;

    const-string v3, "wifi.interface"

    const-string v4, "wlan0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/wifi/WifiService;->mInterfaceName:Ljava/lang/String;

    new-instance v3, Landroid/net/wifi/WifiStateMachine;

    iget-object v4, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mInterfaceName:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/net/wifi/WifiStateMachine;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v3, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v3, v7}, Landroid/net/wifi/WifiStateMachine;->enableRssiPolling(Z)V

    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/wifi/WifiService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    const-string v3, "appops"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager;

    iput-object v3, p0, Lcom/android/server/wifi/WifiService;->mAppOps:Landroid/app/AppOpsManager;

    new-instance v3, Lcom/android/server/wifi/WifiNotificationController;

    iget-object v4, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {v3, v4, v5}, Lcom/android/server/wifi/WifiNotificationController;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiStateMachine;)V

    iput-object v3, p0, Lcom/android/server/wifi/WifiService;->mNotificationController:Lcom/android/server/wifi/WifiNotificationController;

    new-instance v3, Lcom/android/server/wifi/WifiTrafficPoller;

    iget-object v4, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mInterfaceName:Ljava/lang/String;

    invoke-direct {v3, v4, p0, v5}, Lcom/android/server/wifi/WifiTrafficPoller;-><init>(Landroid/content/Context;Lcom/android/server/wifi/WifiService;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/wifi/WifiService;->mTrafficPoller:Lcom/android/server/wifi/WifiTrafficPoller;

    new-instance v3, Lcom/android/server/wifi/WifiSettingsStore;

    iget-object v4, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/server/wifi/WifiSettingsStore;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/server/wifi/WifiService;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    new-instance v3, Lcom/android/server/wifi/WifiService$WifiProfile;

    invoke-direct {v3, p0}, Lcom/android/server/wifi/WifiService$WifiProfile;-><init>(Lcom/android/server/wifi/WifiService;)V

    iput-object v3, p0, Lcom/android/server/wifi/WifiService;->mWifiProfile:Lcom/android/server/wifi/WifiService$WifiProfile;

    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "WifiService"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    new-instance v3, Lcom/android/server/wifi/WifiService$ClientHandler;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/android/server/wifi/WifiService$ClientHandler;-><init>(Lcom/android/server/wifi/WifiService;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/server/wifi/WifiService;->mClientHandler:Lcom/android/server/wifi/WifiService$ClientHandler;

    new-instance v3, Lcom/android/server/wifi/WifiService$WifiStateMachineHandler;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/android/server/wifi/WifiService$WifiStateMachineHandler;-><init>(Lcom/android/server/wifi/WifiService;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineHandler:Lcom/android/server/wifi/WifiService$WifiStateMachineHandler;

    new-instance v3, Lcom/android/server/wifi/WifiController;

    iget-object v4, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v3, v4, p0, v5}, Lcom/android/server/wifi/WifiController;-><init>(Landroid/content/Context;Lcom/android/server/wifi/WifiService;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/server/wifi/WifiService;->mWifiController:Lcom/android/server/wifi/WifiController;

    iget-object v3, p0, Lcom/android/server/wifi/WifiService;->mWifiController:Lcom/android/server/wifi/WifiController;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiController;->start()V

    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->registerForScanModeChange()V

    iget-object v3, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    iget-object v4, p0, Lcom/android/server/wifi/WifiService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v5, 0x40

    invoke-virtual {v3, v4, v5}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    iget-object v3, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/wifi/WifiService$1;

    invoke-direct {v4, p0}, Lcom/android/server/wifi/WifiService$1;-><init>(Lcom/android/server/wifi/WifiService;)V

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.net.wifi.SEC_NOTIFICATION_CANCEL"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.net.wifi.WIFI_AP_STA_STATUS_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    const-string v4, "device_policy"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/DevicePolicyManager;

    iput-object v3, p0, Lcom/android/server/wifi/WifiService;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const-string v3, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/wifi/WifiService$2;

    invoke-direct {v4, p0}, Lcom/android/server/wifi/WifiService$2;-><init>(Lcom/android/server/wifi/WifiService;)V

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/wifi/WifiService$3;

    invoke-direct {v4, p0}, Lcom/android/server/wifi/WifiService$3;-><init>(Lcom/android/server/wifi/WifiService;)V

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/wifi/WifiService$4;

    invoke-direct {v4, p0}, Lcom/android/server/wifi/WifiService$4;-><init>(Lcom/android/server/wifi/WifiService;)V

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.CSC_WIFI_DEFAULTAP_DONE"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/wifi/WifiService$5;

    invoke-direct {v4, p0}, Lcom/android/server/wifi/WifiService$5;-><init>(Lcom/android/server/wifi/WifiService;)V

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.CSC_WIFI_GENERALINFO_DONE"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/wifi/WifiService$6;

    invoke-direct {v4, p0}, Lcom/android/server/wifi/WifiService$6;-><init>(Lcom/android/server/wifi/WifiService;)V

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.net.wifi.SCAN_RESULTS"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/wifi/WifiService$9;

    invoke-direct {v4, p0}, Lcom/android/server/wifi/WifiService$9;-><init>(Lcom/android/server/wifi/WifiService;)V

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.COEX_INFO"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/wifi/WifiService$10;

    invoke-direct {v4, p0}, Lcom/android/server/wifi/WifiService$10;-><init>(Lcom/android/server/wifi/WifiService;)V

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.net.wifi.SET_HOME_AP"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/wifi/WifiService$11;

    invoke-direct {v4, p0}, Lcom/android/server/wifi/WifiService$11;-><init>(Lcom/android/server/wifi/WifiService;)V

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.net.wifi.WIFI_AP_WPS_STATE_ACTION"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->registerForBroadcasts()V

    return-void
.end method

.method static synthetic access$100()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/wifi/WifiService;->DBG:Z

    return v0
.end method

.method static synthetic access$1000()Ljava/io/File;
    .registers 1

    sget-object v0, Lcom/android/server/wifi/WifiService;->mFilePath:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$1002(Ljava/io/File;)Ljava/io/File;
    .registers 1

    sput-object p0, Lcom/android/server/wifi/WifiService;->mFilePath:Ljava/io/File;

    return-object p0
.end method

.method static synthetic access$1100()Ljava/io/File;
    .registers 1

    sget-object v0, Lcom/android/server/wifi/WifiService;->filePathDefaultAp:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$1200()Ljava/io/File;
    .registers 1

    sget-object v0, Lcom/android/server/wifi/WifiService;->filePathGeneralinfo:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$1300()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/wifi/WifiService;->mFirstScanAddProfile:Z

    return v0
.end method

.method static synthetic access$1302(Z)Z
    .registers 1

    sput-boolean p0, Lcom/android/server/wifi/WifiService;->mFirstScanAddProfile:Z

    return p0
.end method

.method static synthetic access$1400(Lcom/android/server/wifi/WifiService;)Lcom/android/server/wifi/WifiService$WifiProfile;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiProfile:Lcom/android/server/wifi/WifiService$WifiProfile;

    return-object v0
.end method

.method static synthetic access$1600()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/wifi/WifiService;->mWifiProfileLoaded:Z

    return v0
.end method

.method static synthetic access$1602(Z)Z
    .registers 1

    sput-boolean p0, Lcom/android/server/wifi/WifiService;->mWifiProfileLoaded:Z

    return p0
.end method

.method static synthetic access$1700()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/wifi/WifiService;->mMatchedPrevNetworkName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1702(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    sput-object p0, Lcom/android/server/wifi/WifiService;->mMatchedPrevNetworkName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1800()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/wifi/WifiService;->mRemoveWifiProfile:Z

    return v0
.end method

.method static synthetic access$1802(Z)Z
    .registers 1

    sput-boolean p0, Lcom/android/server/wifi/WifiService;->mRemoveWifiProfile:Z

    return p0
.end method

.method static synthetic access$1900()[Lcom/android/server/wifi/WifiService$ApInfo;
    .registers 1

    sget-object v0, Lcom/android/server/wifi/WifiService;->mApInfo:[Lcom/android/server/wifi/WifiService$ApInfo;

    return-object v0
.end method

.method static synthetic access$1902([Lcom/android/server/wifi/WifiService$ApInfo;)[Lcom/android/server/wifi/WifiService$ApInfo;
    .registers 1

    sput-object p0, Lcom/android/server/wifi/WifiService;->mApInfo:[Lcom/android/server/wifi/WifiService$ApInfo;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/server/wifi/WifiService;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2000()[Lcom/android/server/wifi/WifiService$ApInfo;
    .registers 1

    sget-object v0, Lcom/android/server/wifi/WifiService;->mGeneralNwInfo:[Lcom/android/server/wifi/WifiService$ApInfo;

    return-object v0
.end method

.method static synthetic access$2002([Lcom/android/server/wifi/WifiService$ApInfo;)[Lcom/android/server/wifi/WifiService$ApInfo;
    .registers 1

    sput-object p0, Lcom/android/server/wifi/WifiService;->mGeneralNwInfo:[Lcom/android/server/wifi/WifiService$ApInfo;

    return-object p0
.end method

.method static synthetic access$2100()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/wifi/WifiService;->mMatchedNetworkName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2102(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    sput-object p0, Lcom/android/server/wifi/WifiService;->mMatchedNetworkName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/android/server/wifi/WifiService;Landroid/os/IBinder;)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiService;->releaseWifiLockLocked(Landroid/os/IBinder;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/android/server/wifi/WifiService;)I
    .registers 2

    iget v0, p0, Lcom/android/server/wifi/WifiService;->mFullHighPerfLocksAcquired:I

    return v0
.end method

.method static synthetic access$2500(Lcom/android/server/wifi/WifiService;)I
    .registers 2

    iget v0, p0, Lcom/android/server/wifi/WifiService;->mFullHighPerfLocksReleased:I

    return v0
.end method

.method static synthetic access$2600(Lcom/android/server/wifi/WifiService;)I
    .registers 2

    iget v0, p0, Lcom/android/server/wifi/WifiService;->mFullLocksAcquired:I

    return v0
.end method

.method static synthetic access$2700(Lcom/android/server/wifi/WifiService;)I
    .registers 2

    iget v0, p0, Lcom/android/server/wifi/WifiService;->mFullLocksReleased:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/wifi/WifiService;)Landroid/net/wifi/PppoeStateMachine;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mPppoeStateMachine:Landroid/net/wifi/PppoeStateMachine;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/server/wifi/WifiService;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mMulticasters:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/server/wifi/WifiService;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiService;->removeMulticasterLocked(II)V

    return-void
.end method

.method static synthetic access$402(Lcom/android/server/wifi/WifiService;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;
    .registers 2

    iput-object p1, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/server/wifi/WifiService;)Lcom/android/server/wifi/WifiController;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiController:Lcom/android/server/wifi/WifiController;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/server/wifi/WifiService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/wifi/WifiService;->mWifiEnabled:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/wifi/WifiService;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/wifi/WifiService;->mNotificationHS20Enabled:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/wifi/WifiService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->handleSecurityPolicy()V

    return-void
.end method

.method static synthetic access$902(Lcom/android/server/wifi/WifiService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/wifi/WifiService;->isBootCompleted:Z

    return p1
.end method

.method private acquireWifiLockLocked(Lcom/android/server/wifi/WifiService$WifiLock;)Z
    .registers 8

    sget-boolean v3, Lcom/android/server/wifi/WifiService;->DBG:Z

    if-eqz v3, :cond_1c

    const-string v3, "WifiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "acquireWifiLockLocked: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    iget-object v3, p0, Lcom/android/server/wifi/WifiService;->mLocks:Lcom/android/server/wifi/WifiService$LockList;

    #calls: Lcom/android/server/wifi/WifiService$LockList;->addLock(Lcom/android/server/wifi/WifiService$WifiLock;)V
    invoke-static {v3, p1}, Lcom/android/server/wifi/WifiService$LockList;->access$2800(Lcom/android/server/wifi/WifiService$LockList;Lcom/android/server/wifi/WifiService$WifiLock;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_25
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiService;->noteAcquireWifiLock(Lcom/android/server/wifi/WifiService$WifiLock;)V

    iget v3, p1, Lcom/android/server/wifi/WifiService$WifiLock;->mMode:I

    packed-switch v3, :pswitch_data_58

    :goto_2d
    iget-object v3, p0, Lcom/android/server/wifi/WifiService;->mWifiController:Lcom/android/server/wifi/WifiController;

    const v4, 0x26006

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiController;->sendMessage(I)V
    :try_end_35
    .catchall {:try_start_25 .. :try_end_35} :catchall_4b
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_35} :catch_41

    const/4 v3, 0x1

    :goto_36
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :pswitch_3a
    :try_start_3a
    iget v3, p0, Lcom/android/server/wifi/WifiService;->mFullLocksAcquired:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/wifi/WifiService;->mFullLocksAcquired:I

    goto :goto_2d

    :catch_41
    move-exception v0

    const/4 v3, 0x0

    goto :goto_36

    :pswitch_44
    iget v3, p0, Lcom/android/server/wifi/WifiService;->mFullHighPerfLocksAcquired:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/wifi/WifiService;->mFullHighPerfLocksAcquired:I
    :try_end_4a
    .catchall {:try_start_3a .. :try_end_4a} :catchall_4b
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_4a} :catch_41

    goto :goto_2d

    :catchall_4b
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :pswitch_50
    :try_start_50
    iget v3, p0, Lcom/android/server/wifi/WifiService;->mScanLocksAcquired:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/wifi/WifiService;->mScanLocksAcquired:I
    :try_end_56
    .catchall {:try_start_50 .. :try_end_56} :catchall_4b
    .catch Landroid/os/RemoteException; {:try_start_50 .. :try_end_56} :catch_41

    goto :goto_2d

    nop

    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_3a
        :pswitch_50
        :pswitch_44
    .end packed-switch
.end method

.method private enforceAccessPermission()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_WIFI_STATE"

    const-string v2, "WifiService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private enforceAccessSecuredPermission()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.sec.ACCESS_WIFI_SECURED_INFO"

    const-string v2, "WifiService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private enforceChangePermission()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CHANGE_WIFI_STATE"

    const-string v2, "WifiService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private enforceConnectivityInternalPermission()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "ConnectivityService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private enforceMulticastChangePermission()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CHANGE_WIFI_MULTICAST_STATE"

    const-string v2, "WifiService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private handleSecurityPolicy()V
    .registers 6

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1, v4}, Landroid/app/admin/DevicePolicyManager;->getAllowWifi(Landroid/content/ComponentName;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wifi/WifiService;->allowWifi:Z

    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1, v4}, Landroid/app/admin/DevicePolicyManager;->getAllowInternetSharing(Landroid/content/ComponentName;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wifi/WifiService;->allowWifiAp:Z

    const-string v1, "WifiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSecurityPolicy()     allowWifi ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/wifi/WifiService;->allowWifi:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")     allowWifiAp ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/wifi/WifiService;->allowWifiAp:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/server/wifi/WifiService;->allowWifi:Z

    if-nez v1, :cond_61

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiService;->getWifiEnabledState()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_61

    iget-boolean v1, p0, Lcom/android/server/wifi/WifiService;->allowWifi:Z

    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiService;->setWifiEnabled(Z)Z

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.SHOW_INFO_MESSAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "info_type"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_61
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiService;->allowWifiAp:Z

    if-nez v1, :cond_83

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiService;->getWifiApEnabledState()I

    move-result v1

    const/16 v2, 0xb

    if-eq v1, v2, :cond_83

    const/4 v1, 0x0

    invoke-virtual {p0, v4, v1}, Lcom/android/server/wifi/WifiService;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.SHOW_INFO_MESSAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "info_type"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_83
    return-void
.end method

.method private static hexStringToByteArray(Ljava/lang/String;)[B
    .registers 8

    const/16 v6, 0x10

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v3, v2, 0x2

    new-array v0, v3, [B

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v2, :cond_2a

    div-int/lit8 v3, v1, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    add-int/lit8 v1, v1, 0x2

    goto :goto_b

    :cond_2a
    return-object v0
.end method

.method private isHotspotTestMode()Z
    .registers 12

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    sget-boolean v9, Lcom/android/server/wifi/WifiService;->DBG:Z

    if-eqz v9, :cond_47

    const-string v0, "/data/misc/wifi/hotspot_info"

    const/4 v1, 0x0

    const-string v3, ""

    :try_start_c
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/FileReader;

    invoke-direct {v9, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_4f
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_16} :catch_3e

    :cond_16
    :goto_16
    :try_start_16
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_60

    const-string v9, " "

    invoke-virtual {v3, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v9, v5

    const/4 v10, 0x2

    if-lt v9, v10, :cond_16

    const-string v9, "ATT_HOTSPOT"

    const/4 v10, 0x0

    aget-object v10, v5, v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_16

    const/4 v9, 0x1

    aget-object v9, v5, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_37
    .catchall {:try_start_16 .. :try_end_37} :catchall_68
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_37} :catch_6b

    move-result v9

    if-ne v9, v7, :cond_3c

    move v6, v7

    :goto_3b
    goto :goto_16

    :cond_3c
    move v6, v8

    goto :goto_3b

    :catch_3e
    move-exception v4

    :goto_3f
    :try_start_3f
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_4f

    if-eqz v1, :cond_47

    :try_start_44
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_47} :catch_5b

    :cond_47
    :goto_47
    if-nez v6, :cond_4d

    iget-boolean v9, p0, Lcom/android/server/wifi/WifiService;->mHotspotTestMode:Z

    if-eqz v9, :cond_4e

    :cond_4d
    move v8, v7

    :cond_4e
    return v8

    :catchall_4f
    move-exception v7

    :goto_50
    if-eqz v1, :cond_55

    :try_start_52
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_55} :catch_56

    :cond_55
    :goto_55
    throw v7

    :catch_56
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_55

    :catch_5b
    move-exception v4

    :goto_5c
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_47

    :cond_60
    if-eqz v2, :cond_47

    :try_start_62
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_65} :catch_66

    goto :goto_47

    :catch_66
    move-exception v4

    goto :goto_5c

    :catchall_68
    move-exception v7

    move-object v1, v2

    goto :goto_50

    :catch_6b
    move-exception v4

    move-object v1, v2

    goto :goto_3f
.end method

.method private isIMEIWritten()Z
    .registers 5

    iget-object v2, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    const/4 v2, 0x1

    :goto_11
    return v2

    :cond_12
    const-string v2, "WifiService"

    const-string v3, "Fail to get IMEI"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    goto :goto_11
.end method

.method private isSecuredAp(I)Z
    .registers 9

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiService;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3f

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v5, p1, :cond_c

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v5, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-eqz v5, :cond_25

    :cond_24
    :goto_24
    return v3

    :cond_25
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-nez v5, :cond_24

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-nez v5, :cond_24

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v5, v5, v4

    if-nez v5, :cond_24

    move v3, v4

    goto :goto_24

    :cond_3f
    move v3, v4

    goto :goto_24
.end method

.method private noteAcquireWifiLock(Lcom/android/server/wifi/WifiService$WifiLock;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p1, Lcom/android/server/wifi/WifiService$WifiLock;->mMode:I

    packed-switch v0, :pswitch_data_e

    :goto_5
    return-void

    :pswitch_6
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v1, p1, Lcom/android/server/wifi/WifiService$WifiLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-interface {v0, v1}, Lcom/android/internal/app/IBatteryStats;->noteFullWifiLockAcquiredFromSource(Landroid/os/WorkSource;)V

    goto :goto_5

    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method private noteReleaseWifiLock(Lcom/android/server/wifi/WifiService$WifiLock;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p1, Lcom/android/server/wifi/WifiService$WifiLock;->mMode:I

    packed-switch v0, :pswitch_data_e

    :goto_5
    return-void

    :pswitch_6
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v1, p1, Lcom/android/server/wifi/WifiService$WifiLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-interface {v0, v1}, Lcom/android/internal/app/IBatteryStats;->noteFullWifiLockReleasedFromSource(Landroid/os/WorkSource;)V

    goto :goto_5

    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method private registerForBroadcasts()V
    .registers 4

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/wifi/WifiService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private registerForScanModeChange()V
    .registers 5

    new-instance v0, Lcom/android/server/wifi/WifiService$13;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/wifi/WifiService$13;-><init>(Lcom/android/server/wifi/WifiService;Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_scan_always_enabled"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private releaseWifiLockLocked(Landroid/os/IBinder;)Z
    .registers 9

    iget-object v4, p0, Lcom/android/server/wifi/WifiService;->mLocks:Lcom/android/server/wifi/WifiService$LockList;

    #calls: Lcom/android/server/wifi/WifiService$LockList;->removeLock(Landroid/os/IBinder;)Lcom/android/server/wifi/WifiService$WifiLock;
    invoke-static {v4, p1}, Lcom/android/server/wifi/WifiService$LockList;->access$3100(Lcom/android/server/wifi/WifiService$LockList;Landroid/os/IBinder;)Lcom/android/server/wifi/WifiService$WifiLock;

    move-result-object v3

    sget-boolean v4, Lcom/android/server/wifi/WifiService;->DBG:Z

    if-eqz v4, :cond_22

    const-string v4, "WifiService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "releaseWifiLockLocked: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    if-eqz v3, :cond_3f

    const/4 v0, 0x1

    :goto_25
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    if-eqz v0, :cond_3b

    :try_start_2b
    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiService;->noteReleaseWifiLock(Lcom/android/server/wifi/WifiService$WifiLock;)V

    iget v4, v3, Lcom/android/server/wifi/WifiService$WifiLock;->mMode:I

    packed-switch v4, :pswitch_data_5e

    :goto_33
    iget-object v4, p0, Lcom/android/server/wifi/WifiService;->mWifiController:Lcom/android/server/wifi/WifiController;

    const v5, 0x26006

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiController;->sendMessage(I)V
    :try_end_3b
    .catchall {:try_start_2b .. :try_end_3b} :catchall_51
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_3b} :catch_48

    :cond_3b
    :goto_3b
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0

    :cond_3f
    const/4 v0, 0x0

    goto :goto_25

    :pswitch_41
    :try_start_41
    iget v4, p0, Lcom/android/server/wifi/WifiService;->mFullLocksReleased:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/wifi/WifiService;->mFullLocksReleased:I

    goto :goto_33

    :catch_48
    move-exception v4

    goto :goto_3b

    :pswitch_4a
    iget v4, p0, Lcom/android/server/wifi/WifiService;->mFullHighPerfLocksReleased:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/wifi/WifiService;->mFullHighPerfLocksReleased:I
    :try_end_50
    .catchall {:try_start_41 .. :try_end_50} :catchall_51
    .catch Landroid/os/RemoteException; {:try_start_41 .. :try_end_50} :catch_48

    goto :goto_33

    :catchall_51
    move-exception v4

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    :pswitch_56
    :try_start_56
    iget v4, p0, Lcom/android/server/wifi/WifiService;->mScanLocksReleased:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/wifi/WifiService;->mScanLocksReleased:I
    :try_end_5c
    .catchall {:try_start_56 .. :try_end_5c} :catchall_51
    .catch Landroid/os/RemoteException; {:try_start_56 .. :try_end_5c} :catch_48

    goto :goto_33

    nop

    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_41
        :pswitch_56
        :pswitch_4a
    .end packed-switch
.end method

.method private removeMulticasterLocked(II)V
    .registers 7

    iget-object v3, p0, Lcom/android/server/wifi/WifiService;->mMulticasters:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/WifiService$Multicaster;

    if-eqz v2, :cond_d

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiService$Multicaster;->unlinkDeathRecipient()V

    :cond_d
    iget-object v3, p0, Lcom/android/server/wifi/WifiService;->mMulticasters:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1a

    iget-object v3, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v3}, Landroid/net/wifi/WifiStateMachine;->startFilteringMulticastV4Packets()V

    :cond_1a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_1e
    iget-object v3, p0, Lcom/android/server/wifi/WifiService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3, p2}, Lcom/android/internal/app/IBatteryStats;->noteWifiMulticastDisabled(I)V
    :try_end_23
    .catchall {:try_start_1e .. :try_end_23} :catchall_27
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_23} :catch_2c

    :goto_23
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_27
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :catch_2c
    move-exception v3

    goto :goto_23
.end method

.method private declared-synchronized setWifiEnabled(ZI)Z
    .registers 14

    const/4 v7, 0x3

    const v10, 0x2600c

    const/4 v6, 0x1

    const/4 v5, 0x0

    monitor-enter p0

    :try_start_7
    sget-boolean v8, Lcom/android/server/wifi/WifiService;->DBG:Z

    if-eqz v8, :cond_12

    const-string v8, "WifiService"

    const-string v9, "Invoking mWifiStateMachine.setWifiEnabled\n"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    if-eqz p1, :cond_41

    iget-object v8, p0, Lcom/android/server/wifi/WifiService;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/app/admin/DevicePolicyManager;->getAllowWifi(Landroid/content/ComponentName;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/server/wifi/WifiService;->allowWifi:Z

    iget-boolean p1, p0, Lcom/android/server/wifi/WifiService;->allowWifi:Z

    iget-boolean v8, p0, Lcom/android/server/wifi/WifiService;->allowWifi:Z

    if-nez v8, :cond_41

    const-string v6, "WifiService"

    const-string v7, "Wi-Fi is not allowed (Policy)a"

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Landroid/content/Intent;

    const-string v6, "android.net.wifi.SHOW_INFO_MESSAGE"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "info_type"

    const/4 v7, 0x2

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const v7, 0x20130

    invoke-virtual {v6, v7, v4}, Landroid/net/wifi/WifiStateMachine;->sendMessage(ILjava/lang/Object;)V
    :try_end_3f
    .catchall {:try_start_7 .. :try_end_3f} :catchall_70

    :goto_3f
    monitor-exit p0

    return v5

    :cond_41
    if-eqz p1, :cond_77

    :try_start_43
    iget-object v9, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    if-ne p2, v10, :cond_73

    move v8, v7

    :goto_48
    invoke-virtual {v9, v8}, Landroid/net/wifi/WifiStateMachine;->canEnabledFirmwareType(I)I

    move-result v0

    if-ltz v0, :cond_77

    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.WIFI_ENABLE_WARNING"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v8, "req_type"

    if-ne p2, v10, :cond_75

    move v6, v7

    :goto_5a
    invoke-virtual {v3, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v6, "extra_type"

    invoke-virtual {v3, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v6, 0x800

    invoke-virtual {v3, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const v7, 0x20130

    invoke-virtual {v6, v7, v3}, Landroid/net/wifi/WifiStateMachine;->sendMessage(ILjava/lang/Object;)V
    :try_end_6f
    .catchall {:try_start_43 .. :try_end_6f} :catchall_70

    goto :goto_3f

    :catchall_70
    move-exception v5

    monitor-exit p0

    throw v5

    :cond_73
    move v8, v5

    goto :goto_48

    :cond_75
    move v6, v5

    goto :goto_5a

    :cond_77
    if-nez p1, :cond_8c

    :try_start_79
    iget-boolean v7, p0, Lcom/android/server/wifi/WifiService;->mSendDhcpRelease:Z

    if-eqz v7, :cond_8c

    const-string v7, "WifiService"

    const-string v8, "sendMessage - WifiStateMachine.CMD_SEND_DHCP_RELEASE"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const v8, 0x200a1

    invoke-virtual {v7, v8}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    :cond_8c
    if-eqz p1, :cond_91

    const/4 v7, 0x0

    sput-boolean v7, Lcom/android/server/wifi/WifiService;->mFirstScanAddProfile:Z

    :cond_91
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_94
    .catchall {:try_start_79 .. :try_end_94} :catchall_70

    move-result-wide v1

    :try_start_95
    iget-object v7, p0, Lcom/android/server/wifi/WifiService;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v7, p1}, Lcom/android/server/wifi/WifiSettingsStore;->handleWifiToggled(Z)Z
    :try_end_9a
    .catchall {:try_start_95 .. :try_end_9a} :catchall_b5

    move-result v7

    if-nez v7, :cond_a2

    :try_start_9d
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v5, v6

    goto :goto_3f

    :cond_a2
    if-eqz p1, :cond_a4

    :cond_a4
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-ne p2, v10, :cond_ba

    iget-object v7, p0, Lcom/android/server/wifi/WifiService;->mWifiController:Lcom/android/server/wifi/WifiController;

    if-eqz p1, :cond_ae

    move v5, v6

    :cond_ae
    invoke-virtual {v7, p2, v5}, Lcom/android/server/wifi/WifiController;->sendMessage(II)V

    :goto_b1
    if-nez p1, :cond_b3

    :cond_b3
    move v5, v6

    goto :goto_3f

    :catchall_b5
    move-exception v5

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    :cond_ba
    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mWifiController:Lcom/android/server/wifi/WifiController;

    invoke-virtual {v5, p2}, Lcom/android/server/wifi/WifiController;->sendMessage(I)V
    :try_end_bf
    .catchall {:try_start_9d .. :try_end_bf} :catchall_70

    goto :goto_b1
.end method


# virtual methods
.method public acquireMulticastLock(Landroid/os/IBinder;Ljava/lang/String;)V
    .registers 9

    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceMulticastChangePermission()V

    iget-object v4, p0, Lcom/android/server/wifi/WifiService;->mMulticasters:Ljava/util/List;

    monitor-enter v4

    :try_start_6
    iget v3, p0, Lcom/android/server/wifi/WifiService;->mMulticastEnabled:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/wifi/WifiService;->mMulticastEnabled:I

    iget-object v3, p0, Lcom/android/server/wifi/WifiService;->mMulticasters:Ljava/util/List;

    new-instance v5, Lcom/android/server/wifi/WifiService$Multicaster;

    invoke-direct {v5, p0, p2, p1}, Lcom/android/server/wifi/WifiService$Multicaster;-><init>(Lcom/android/server/wifi/WifiService;Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v3}, Landroid/net/wifi/WifiStateMachine;->stopFilteringMulticastV4Packets()V

    monitor-exit v4
    :try_end_1c
    .catchall {:try_start_6 .. :try_end_1c} :catchall_2d

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_24
    iget-object v3, p0, Lcom/android/server/wifi/WifiService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3, v2}, Lcom/android/internal/app/IBatteryStats;->noteWifiMulticastEnabled(I)V
    :try_end_29
    .catchall {:try_start_24 .. :try_end_29} :catchall_30
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_29} :catch_35

    :goto_29
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_2d
    move-exception v3

    :try_start_2e
    monitor-exit v4
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw v3

    :catchall_30
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :catch_35
    move-exception v3

    goto :goto_29
.end method

.method public acquireWifiLock(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/WorkSource;)Z
    .registers 11

    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.WAKE_LOCK"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    if-eq p2, v1, :cond_48

    const/4 v1, 0x2

    if-eq p2, v1, :cond_48

    const/4 v1, 0x3

    if-eq p2, v1, :cond_48

    const-string v1, "WifiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal argument, lockMode= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v1, Lcom/android/server/wifi/WifiService;->DBG:Z

    if-eqz v1, :cond_46

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lockMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_46
    const/4 v1, 0x0

    :goto_47
    return v1

    :cond_48
    if-eqz p4, :cond_51

    invoke-virtual {p4}, Landroid/os/WorkSource;->size()I

    move-result v1

    if-nez v1, :cond_51

    const/4 p4, 0x0

    :cond_51
    if-eqz p4, :cond_5e

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wifi/WifiService;->enforceWakeSourcePermission(II)V

    :cond_5e
    if-nez p4, :cond_69

    new-instance p4, Landroid/os/WorkSource;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {p4, v1}, Landroid/os/WorkSource;-><init>(I)V

    :cond_69
    new-instance v0, Lcom/android/server/wifi/WifiService$WifiLock;

    move-object v1, p0

    move v2, p2

    move-object v3, p3

    move-object v4, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wifi/WifiService$WifiLock;-><init>(Lcom/android/server/wifi/WifiService;ILjava/lang/String;Landroid/os/IBinder;Landroid/os/WorkSource;)V

    iget-object v2, p0, Lcom/android/server/wifi/WifiService;->mLocks:Lcom/android/server/wifi/WifiService$LockList;

    monitor-enter v2

    :try_start_76
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiService;->acquireWifiLockLocked(Lcom/android/server/wifi/WifiService$WifiLock;)Z

    move-result v1

    monitor-exit v2

    goto :goto_47

    :catchall_7c
    move-exception v1

    monitor-exit v2
    :try_end_7e
    .catchall {:try_start_76 .. :try_end_7e} :catchall_7c

    throw v1
.end method

.method public addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I
    .registers 4

    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1, p1}, Landroid/net/wifi/WifiStateMachine;->syncAddOrUpdateNetwork(Lcom/android/internal/util/AsyncChannel;Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    :goto_f
    return v0

    :cond_10
    const-string v0, "WifiService"

    const-string v1, "mWifiStateMachineChannel is not initialized"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    goto :goto_f
.end method

.method public addToBlacklist(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiStateMachine;->addToBlacklist(Ljava/lang/String;)V

    return-void
.end method

.method public callSECApi(Landroid/os/Message;)I
    .registers 12

    const/4 v5, 0x1

    const/4 v7, -0x1

    const/4 v6, 0x0

    if-nez p1, :cond_7

    move v6, v7

    :cond_6
    :goto_6
    :sswitch_6
    return v6

    :cond_7
    iget v8, p1, Landroid/os/Message;->what:I

    sparse-switch v8, :sswitch_data_354

    move v6, v7

    goto :goto_6

    :sswitch_e
    invoke-virtual {p1}, Landroid/os/Message;->recycle()V

    goto :goto_6

    :sswitch_12
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v5, p1}, Landroid/net/wifi/WifiStateMachine;->callSECApi(Landroid/os/Message;)I

    move-result v6

    goto :goto_6

    :sswitch_1c
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v5, p1}, Landroid/net/wifi/WifiStateMachine;->callSECApi(Landroid/os/Message;)I

    move-result v6

    goto :goto_6

    :sswitch_26
    :try_start_26
    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mNwService:Landroid/os/INetworkManagementService;

    invoke-interface {v5}, Landroid/os/INetworkManagementService;->getAccessPointNumConnectedSta()I
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_2b} :catch_2d

    move-result v6

    goto :goto_6

    :catch_2d
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    move v6, v7

    goto :goto_6

    :sswitch_33
    :try_start_33
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mNwService:Landroid/os/INetworkManagementService;

    const-string v7, "mac"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Landroid/os/INetworkManagementService;->setAccessPointDisassocSta(Ljava/lang/String;)I
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_42} :catch_44

    move-result v6

    goto :goto_6

    :catch_44
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_6

    :sswitch_49
    :try_start_49
    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mNwService:Landroid/os/INetworkManagementService;

    invoke-interface {v5}, Landroid/os/INetworkManagementService;->readWhiteList()I
    :try_end_4e
    .catch Landroid/os/RemoteException; {:try_start_49 .. :try_end_4e} :catch_50

    move-result v6

    goto :goto_6

    :catch_50
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_6

    :sswitch_55
    :try_start_55
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mNwService:Landroid/os/INetworkManagementService;

    const-string v7, "macaddrAcl"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v5, v7}, Landroid/os/INetworkManagementService;->setMacaddrAcl(I)I
    :try_end_64
    .catch Landroid/os/RemoteException; {:try_start_55 .. :try_end_64} :catch_66

    move-result v6

    goto :goto_6

    :catch_66
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_6

    :sswitch_6b
    iget-object v7, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v7}, Landroid/net/wifi/WifiStateMachine;->getRvfMode()I

    move-result v7

    if-eq v7, v5, :cond_6

    :try_start_73
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mNwService:Landroid/os/INetworkManagementService;

    const-string v7, "maxClient"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v5, v7}, Landroid/os/INetworkManagementService;->setMaxClient(I)I
    :try_end_82
    .catch Landroid/os/RemoteException; {:try_start_73 .. :try_end_82} :catch_84

    move-result v6

    goto :goto_6

    :catch_84
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_6

    :sswitch_8a
    :try_start_8a
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    const-string v5, "wps_start"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a4

    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mNwService:Landroid/os/INetworkManagementService;

    invoke-interface {v5}, Landroid/os/INetworkManagementService;->startWpsPbc()V
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_9b} :catch_9d

    goto/16 :goto_6

    :catch_9d
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    move v6, v7

    goto/16 :goto_6

    :cond_a4
    :try_start_a4
    const-string v5, "wps_cancel"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mNwService:Landroid/os/INetworkManagementService;

    invoke-interface {v5}, Landroid/os/INetworkManagementService;->cancelWps()V
    :try_end_b1
    .catch Ljava/lang/Exception; {:try_start_a4 .. :try_end_b1} :catch_9d

    goto/16 :goto_6

    :sswitch_b3
    :try_start_b3
    iget-object v7, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "att_hotspot_test"

    invoke-static {v7, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v7

    if-ne v7, v5, :cond_e5

    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/server/wifi/WifiService;->mHotspotTestMode:Z

    :goto_c4
    const-string v7, "WifiService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mHotspotTestMode : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/server/wifi/WifiService;->mHotspotTestMode:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_de
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_b3 .. :try_end_de} :catch_e9

    :goto_de
    iget-boolean v7, p0, Lcom/android/server/wifi/WifiService;->mHotspotTestMode:Z

    if-eqz v7, :cond_f8

    :goto_e2
    move v6, v5

    goto/16 :goto_6

    :cond_e5
    const/4 v7, 0x0

    :try_start_e6
    iput-boolean v7, p0, Lcom/android/server/wifi/WifiService;->mHotspotTestMode:Z
    :try_end_e8
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_e6 .. :try_end_e8} :catch_e9

    goto :goto_c4

    :catch_e9
    move-exception v3

    iput-boolean v6, p0, Lcom/android/server/wifi/WifiService;->mHotspotTestMode:Z

    iget-object v7, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "att_hotspot_test"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_de

    :cond_f8
    move v5, v6

    goto :goto_e2

    :sswitch_fa
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v5, p1}, Landroid/net/wifi/WifiStateMachine;->callSECApi(Landroid/os/Message;)I

    goto/16 :goto_6

    :sswitch_104
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mWifiWatchdogStateMachine:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-virtual {v5}, Landroid/net/wifi/WifiWatchdogStateMachine;->checkDnsQuery()V

    goto/16 :goto_6

    :sswitch_10e
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v5, p1}, Landroid/net/wifi/WifiStateMachine;->callSECApi(Landroid/os/Message;)I

    move-result v6

    goto/16 :goto_6

    :sswitch_119
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v5, p1}, Landroid/net/wifi/WifiStateMachine;->callSECApi(Landroid/os/Message;)I

    move-result v6

    goto/16 :goto_6

    :sswitch_124
    move v6, v7

    goto/16 :goto_6

    :sswitch_127
    move v6, v7

    goto/16 :goto_6

    :sswitch_12a
    move v6, v7

    goto/16 :goto_6

    :sswitch_12d
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v5, p1}, Landroid/net/wifi/WifiStateMachine;->callSECApi(Landroid/os/Message;)I

    move-result v6

    goto/16 :goto_6

    :sswitch_138
    move v6, v7

    goto/16 :goto_6

    :sswitch_13b
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const-string v7, "netId"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/net/wifi/WifiStateMachine;->unlockMobNetwork(I)V

    goto/16 :goto_6

    :sswitch_14f
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v5, p1}, Landroid/net/wifi/WifiStateMachine;->callSECApi(Landroid/os/Message;)I

    move-result v6

    goto/16 :goto_6

    :sswitch_15a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    const-string v7, "enable"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_17e

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiService;->getWifiEnabledState()I

    move-result v7

    const/4 v8, 0x3

    if-eq v7, v8, :cond_170

    invoke-virtual {p0, v5}, Lcom/android/server/wifi/WifiService;->setWifiEnabled(Z)Z

    :cond_170
    const-string v5, "WifiService"

    const-string v7, "WiFi Enabled with p2p -> Stop Scan, Stop Assoc"

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_177
    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v5, p1}, Landroid/net/wifi/WifiStateMachine;->callSECApi(Landroid/os/Message;)I

    goto/16 :goto_6

    :cond_17e
    const-string v5, "WifiService"

    const-string v7, "Start scan, start assoc"

    invoke-static {v5, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_177

    :sswitch_186
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const-string v7, "mode"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/net/wifi/WifiStateMachine;->setRvfMode(I)V

    goto/16 :goto_6

    :sswitch_197
    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v5}, Landroid/net/wifi/WifiStateMachine;->getRvfMode()I

    move-result v6

    goto/16 :goto_6

    :sswitch_19f
    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v5, p1}, Landroid/net/wifi/WifiStateMachine;->callSECApi(Landroid/os/Message;)I

    move-result v6

    goto/16 :goto_6

    :sswitch_1a7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const-string v6, "channel"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/net/wifi/WifiStateMachine;->startPartialScan([I)I

    move-result v6

    goto/16 :goto_6

    :sswitch_1b9
    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v5, p1}, Landroid/net/wifi/WifiStateMachine;->callSECApi(Landroid/os/Message;)I

    move-result v6

    goto/16 :goto_6

    :sswitch_1c1
    move v6, v7

    goto/16 :goto_6

    :sswitch_1c4
    move v6, v7

    goto/16 :goto_6

    :sswitch_1c7
    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v5, p1}, Landroid/net/wifi/WifiStateMachine;->callSECApi(Landroid/os/Message;)I

    move-result v6

    goto/16 :goto_6

    :sswitch_1cf
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v5, p1}, Landroid/net/wifi/WifiStateMachine;->callSECApi(Landroid/os/Message;)I

    move-result v6

    goto/16 :goto_6

    :sswitch_1da
    const-string v5, "WifiService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "callSECApi - id : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v8, p1, Landroid/os/Message;->what:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v5, :cond_205

    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v6, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v5, v6, p1}, Landroid/net/wifi/WifiStateMachine;->syncCallSECApi(Lcom/android/internal/util/AsyncChannel;Landroid/os/Message;)I

    move-result v6

    goto/16 :goto_6

    :cond_205
    const-string v5, "WifiService"

    const-string v6, "mWifiStateMachineChannel is not initialized"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    goto/16 :goto_6

    :sswitch_20f
    const-string v5, "WifiService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "callSECApi - id : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v8, p1, Landroid/os/Message;->what:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v5, :cond_23a

    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v6, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v5, v6, p1}, Landroid/net/wifi/WifiStateMachine;->syncCallSECApi(Lcom/android/internal/util/AsyncChannel;Landroid/os/Message;)I

    move-result v6

    goto/16 :goto_6

    :cond_23a
    const-string v5, "WifiService"

    const-string v6, "mWifiStateMachineChannel is not initialized"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    goto/16 :goto_6

    :sswitch_244
    const-string v5, "WifiService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "callSECApi - id : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v8, p1, Landroid/os/Message;->what:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v5, :cond_26f

    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v6, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v5, v6, p1}, Landroid/net/wifi/WifiStateMachine;->syncCallSECApi(Lcom/android/internal/util/AsyncChannel;Landroid/os/Message;)I

    move-result v6

    goto/16 :goto_6

    :cond_26f
    const-string v5, "WifiService"

    const-string v6, "mWifiStateMachineChannel is not initialized"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    goto/16 :goto_6

    :sswitch_279
    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v5}, Landroid/net/wifi/WifiStateMachine;->getDhcpRenewAfterRoamingMode()I

    move-result v6

    goto/16 :goto_6

    :sswitch_281
    iget-object v6, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/Bundle;

    const-string v7, "mode"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v6, v5}, Landroid/net/wifi/WifiStateMachine;->setDhcpRenewAfterRoamingMode(I)I

    move-result v6

    goto/16 :goto_6

    :sswitch_293
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    const-string v5, "persist.service.wifi_band"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    goto/16 :goto_6

    :sswitch_29e
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ltz v1, :cond_2a8

    const/4 v5, 0x2

    if-le v1, v5, :cond_2ab

    :cond_2a8
    move v6, v7

    goto/16 :goto_6

    :cond_2ab
    const-string v5, "persist.service.wifi_band"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :sswitch_2c5
    const-string v5, "WifiService"

    const-string v6, "SEC_COMMAND_ID_SET_WIFI_ENABLED_WITH_RIL called"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    goto/16 :goto_6

    :sswitch_2cf
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v5, p1}, Landroid/net/wifi/WifiStateMachine;->callSECApi(Landroid/os/Message;)I

    move-result v6

    goto/16 :goto_6

    :sswitch_2da
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    move v6, v7

    goto/16 :goto_6

    :sswitch_2e0
    :try_start_2e0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mNwService:Landroid/os/INetworkManagementService;

    const-string v6, "txPower"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/os/INetworkManagementService;->setTxPower(I)I
    :try_end_2ef
    .catch Landroid/os/RemoteException; {:try_start_2e0 .. :try_end_2ef} :catch_2f2

    move-result v6

    goto/16 :goto_6

    :catch_2f2
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    move v6, v7

    goto/16 :goto_6

    :sswitch_2f9
    const-string v5, "WifiService"

    const-string v7, "Unthered Failed"

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mWifiController:Lcom/android/server/wifi/WifiController;

    const v7, 0x26015

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v6, v6, v8}, Lcom/android/server/wifi/WifiController;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_6

    :sswitch_30f
    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mWifiController:Lcom/android/server/wifi/WifiController;

    const v7, 0x26016

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v5, v7, v6, v6, v8}, Lcom/android/server/wifi/WifiController;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_6

    :sswitch_31f
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessSecuredPermission()V

    const-string v7, "WifiService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "callSECApi: SEC_COMMAND_ID_CMCC_WLAN_ENABLE_WARN. setWifiEnabled: true pid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", uid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v5}, Lcom/android/server/wifi/WifiService;->setWifiEnabled(Z)Z

    goto/16 :goto_6

    :sswitch_data_354
    .sparse-switch
        0x0 -> :sswitch_e
        0x1 -> :sswitch_12
        0x3 -> :sswitch_26
        0x4 -> :sswitch_33
        0x5 -> :sswitch_49
        0xe -> :sswitch_6b
        0xf -> :sswitch_1c
        0x10 -> :sswitch_fa
        0x11 -> :sswitch_10e
        0x12 -> :sswitch_14f
        0x13 -> :sswitch_119
        0x14 -> :sswitch_124
        0x15 -> :sswitch_127
        0x16 -> :sswitch_12a
        0x18 -> :sswitch_138
        0x19 -> :sswitch_104
        0x1a -> :sswitch_15a
        0x1b -> :sswitch_186
        0x1c -> :sswitch_197
        0x1d -> :sswitch_13b
        0x1e -> :sswitch_293
        0x1f -> :sswitch_29e
        0x20 -> :sswitch_19f
        0x24 -> :sswitch_1a7
        0x25 -> :sswitch_1b9
        0x28 -> :sswitch_2c5
        0x29 -> :sswitch_12d
        0x2a -> :sswitch_12d
        0x2b -> :sswitch_12d
        0x2c -> :sswitch_12d
        0x2d -> :sswitch_12d
        0x2e -> :sswitch_12d
        0x32 -> :sswitch_1c1
        0x33 -> :sswitch_1c4
        0x3d -> :sswitch_2cf
        0x3e -> :sswitch_2da
        0x3f -> :sswitch_1c7
        0x40 -> :sswitch_1cf
        0x42 -> :sswitch_1cf
        0x43 -> :sswitch_1cf
        0x46 -> :sswitch_31f
        0x64 -> :sswitch_1da
        0x65 -> :sswitch_1da
        0x66 -> :sswitch_1da
        0x67 -> :sswitch_1da
        0x68 -> :sswitch_1da
        0x69 -> :sswitch_1da
        0x6a -> :sswitch_1da
        0x6b -> :sswitch_1da
        0x6d -> :sswitch_1da
        0x82 -> :sswitch_1da
        0x83 -> :sswitch_1da
        0x84 -> :sswitch_1da
        0x85 -> :sswitch_1da
        0x86 -> :sswitch_1da
        0x87 -> :sswitch_1da
        0x88 -> :sswitch_1da
        0x89 -> :sswitch_1da
        0x96 -> :sswitch_1da
        0x97 -> :sswitch_1da
        0xa1 -> :sswitch_1da
        0xa2 -> :sswitch_1da
        0xa3 -> :sswitch_1da
        0xaa -> :sswitch_1da
        0xab -> :sswitch_1da
        0xac -> :sswitch_20f
        0xad -> :sswitch_20f
        0xae -> :sswitch_244
        0xaf -> :sswitch_244
        0xb4 -> :sswitch_279
        0xb5 -> :sswitch_281
        0xbe -> :sswitch_8a
        0xbf -> :sswitch_b3
        0xc0 -> :sswitch_6
        0xc2 -> :sswitch_55
        0xc3 -> :sswitch_2e0
        0xc4 -> :sswitch_2f9
        0xc5 -> :sswitch_30f
    .end sparse-switch
.end method

.method public callSECStringApi(Landroid/os/Message;)Ljava/lang/String;
    .registers 9

    const/4 v1, 0x0

    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_e2

    :cond_6
    :goto_6
    return-object v1

    :sswitch_7
    invoke-virtual {p1}, Landroid/os/Message;->recycle()V

    const-string v1, ""

    goto :goto_6

    :sswitch_d
    const-string v4, "WifiService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "callSECStringApi - id : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    iget-object v4, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v4, :cond_37

    iget-object v4, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v4, v5, p1}, Landroid/net/wifi/WifiStateMachine;->syncCallSECStringApi(Lcom/android/internal/util/AsyncChannel;Landroid/os/Message;)Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    :cond_37
    const-string v4, "WifiService"

    const-string v5, "mWifiStateMachineChannel is not initialized"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :sswitch_3f
    const-string v4, "WifiService"

    const-string v5, "callSECStringApi - SEC_COMMAND_ID_GET_SCAN_RESULTS_EX"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v4, :cond_53

    iget-object v4, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v4, v5, p1}, Landroid/net/wifi/WifiStateMachine;->syncCallSECStringApi(Lcom/android/internal/util/AsyncChannel;Landroid/os/Message;)Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    :cond_53
    const-string v4, "WifiService"

    const-string v5, "mWifiStateMachineChannel is not initialized"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :sswitch_5b
    const-string v4, "WifiService"

    const-string v5, "callSECStringApi - SEC_COMMAND_MSAP_GAS_RESP"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    iget-object v4, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v4, :cond_72

    iget-object v4, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v4, v5, p1}, Landroid/net/wifi/WifiStateMachine;->syncCallSECStringApi(Lcom/android/internal/util/AsyncChannel;Landroid/os/Message;)Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    :cond_72
    const-string v4, "WifiService"

    const-string v5, "mWifiStateMachineChannel is not initialized"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :sswitch_7a
    const-string v4, "WifiService"

    const-string v5, "callSECStringApi - SEC_COMMAND_MSAP_BSS_INFO"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v4, :cond_8f

    iget-object v4, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v4, v5, p1}, Landroid/net/wifi/WifiStateMachine;->syncCallSECStringApi(Lcom/android/internal/util/AsyncChannel;Landroid/os/Message;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_6

    :cond_8f
    const-string v4, "WifiService"

    const-string v5, "mWifiStateMachineChannel is not initialized"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :sswitch_98
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessSecuredPermission()V

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/server/wifi/WifiService;->mWifiController:Lcom/android/server/wifi/WifiController;

    iget-object v4, v4, Lcom/android/server/wifi/WifiController;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v4, v5, :cond_6

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v4, :cond_ce

    iget-object v4, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v4, v5, p1}, Landroid/net/wifi/WifiStateMachine;->syncCallSECStringApi(Lcom/android/internal/util/AsyncChannel;Landroid/os/Message;)Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x0

    if-eqz v3, :cond_6

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/Bundle;

    const-string v5, "key"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :try_start_c8
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiService$EncryptTool;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_cb
    .catch Ljava/lang/Exception; {:try_start_c8 .. :try_end_cb} :catch_d7

    move-result-object v1

    goto/16 :goto_6

    :cond_ce
    const-string v4, "WifiService"

    const-string v5, "mWifiStateMachineChannel is not initialized"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :catch_d7
    move-exception v0

    const-string v4, "WifiService"

    const-string v5, "Encryption failure"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    nop

    :sswitch_data_e2
    .sparse-switch
        0x0 -> :sswitch_7
        0x21 -> :sswitch_3f
        0x27 -> :sswitch_98
        0x41 -> :sswitch_5b
        0x44 -> :sswitch_7a
        0x6c -> :sswitch_d
        0xa0 -> :sswitch_d
    .end sparse-switch
.end method

.method public captivePortalCheckComplete()V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceConnectivityInternalPermission()V

    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->captivePortalCheckComplete()V

    return-void
.end method

.method public ccx_disable_location_service()I
    .registers 3

    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    sget-boolean v0, Lcom/android/server/wifi/WifiService;->DBG:Z

    if-eqz v0, :cond_e

    const-string v0, "WifiService"

    const-string v1, "Do not support ccx_disable_location_service"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method public ccx_enable_location_service()I
    .registers 3

    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    sget-boolean v0, Lcom/android/server/wifi/WifiService;->DBG:Z

    if-eqz v0, :cond_e

    const-string v0, "WifiService"

    const-string v1, "Do not support ccx_enable_location_service"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method public ccx_send_location_service_request(Ljava/lang/String;)I
    .registers 4

    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    sget-boolean v0, Lcom/android/server/wifi/WifiService;->DBG:Z

    if-eqz v0, :cond_e

    const-string v0, "WifiService"

    const-string v1, "Do not support ccx_send_location_service_request"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method public checkAndStartWifi()V
    .registers 5

    iget-boolean v1, p0, Lcom/android/server/wifi/WifiService;->isBootCompleted:Z

    if-nez v1, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiSettingsStore;->isWifiToggleEnabled()Z

    move-result v0

    const-string v2, "WifiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WifiService starting up with Wi-Fi "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v0, :cond_35

    const-string v1, "enabled"

    :goto_1c
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_2c

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiService;->setWifiEnabled(Z)Z

    :cond_2c
    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->makeWifiWatchdogStateMachine(Landroid/content/Context;)Landroid/net/wifi/WifiWatchdogStateMachine;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/WifiService;->mWifiWatchdogStateMachine:Landroid/net/wifi/WifiWatchdogStateMachine;

    goto :goto_4

    :cond_35
    const-string v1, "disabled"

    goto :goto_1c
.end method

.method public checkAndStartWifiAp(I)V
    .registers 10

    const/4 v7, 0x1

    iget-boolean v4, p0, Lcom/android/server/wifi/WifiService;->isBootCompleted:Z

    if-nez v4, :cond_6

    :goto_5
    return-void

    :cond_6
    if-lez p1, :cond_29

    const/4 v1, 0x0

    :goto_9
    if-ge v1, p1, :cond_29

    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->isIMEIWritten()Z

    move-result v4

    if-eqz v4, :cond_60

    const-string v4, "WifiService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IMEI is written, i = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29
    iget-object v4, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v4

    if-nez v4, :cond_3c

    invoke-virtual {v2, v7}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    :cond_3c
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiService;->getWifiEnabledState()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_4e

    const/4 v4, 0x3

    if-eq v3, v4, :cond_4e

    iget-object v4, p0, Lcom/android/server/wifi/WifiService;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiSettingsStore;->isScanAlwaysAvailable()Z

    move-result v4

    if-eqz v4, :cond_59

    :cond_4e
    iget-object v4, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiStateMachine;->setSupplicantRunning(Z)V

    const-wide/16 v4, 0x258

    :try_start_56
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_59
    .catch Ljava/lang/InterruptedException; {:try_start_56 .. :try_end_59} :catch_6d

    :cond_59
    :goto_59
    iget-object v4, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v7}, Landroid/net/wifi/WifiStateMachine;->setHostApRunning(Landroid/net/wifi/WifiConfiguration;Z)V

    goto :goto_5

    :cond_60
    const-wide/16 v4, 0x1f4

    :try_start_62
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_65
    .catch Ljava/lang/InterruptedException; {:try_start_62 .. :try_end_65} :catch_68

    :goto_65
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :catch_68
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_65

    :catch_6d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_59
.end method

.method public clearBlacklist()V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->clearBlacklist()V

    return-void
.end method

.method public disableNetwork(I)Z
    .registers 6

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    const-string v1, "WifiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disableNetwork: pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    if-eq p1, v1, :cond_3a

    const v1, 0x7fffffff

    if-eq p1, v1, :cond_3a

    const/high16 v1, -0x8000

    if-ne p1, v1, :cond_42

    :cond_3a
    const-string v1, "WifiService"

    const-string v2, "invalid netId was used"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_41
    return v0

    :cond_42
    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v1, :cond_4f

    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1, p1}, Landroid/net/wifi/WifiStateMachine;->syncDisableNetwork(Lcom/android/internal/util/AsyncChannel;I)Z

    move-result v0

    goto :goto_41

    :cond_4f
    const-string v1, "WifiService"

    const-string v2, "mWifiStateMachineChannel is not initialized"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_41
.end method

.method public disconnect()V
    .registers 4

    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    const-string v0, "WifiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disconnect: pid="

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

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->disconnectCommand()V

    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 15

    const/4 v10, 0x0

    iget-object v6, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    const-string v7, "android.permission.DUMP"

    invoke-virtual {v6, v7}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_34

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Permission Denial: can\'t dump WifiService from from pid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", uid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_33
    return-void

    :cond_34
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Wi-Fi is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v7}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiStateByName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Stay-awake conditions: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "stay_on_while_plugged_in"

    invoke-static {v7, v8, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mMulticastEnabled "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/wifi/WifiService;->mMulticastEnabled:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mMulticastDisabled "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/wifi/WifiService;->mMulticastDisabled:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HS20Enabled: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "wifi_hotspot20_enable"

    invoke-static {v7, v8, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/wifi/WifiService;->mWifiController:Lcom/android/server/wifi/WifiController;

    invoke-virtual {v6, p1, p2, p3}, Lcom/android/server/wifi/WifiController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/wifi/WifiService;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v6, p1, p2, p3}, Lcom/android/server/wifi/WifiSettingsStore;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/wifi/WifiService;->mNotificationController:Lcom/android/server/wifi/WifiNotificationController;

    invoke-virtual {v6, p1, p2, p3}, Lcom/android/server/wifi/WifiNotificationController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/wifi/WifiService;->mTrafficPoller:Lcom/android/server/wifi/WifiTrafficPoller;

    invoke-virtual {v6, p1, p2, p3}, Lcom/android/server/wifi/WifiTrafficPoller;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    const-string v6, "Latest scan results:"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v6}, Landroid/net/wifi/WifiStateMachine;->syncGetScanResultsList()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_130

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-eqz v6, :cond_130

    const-string v6, "  BSSID              Frequency   RSSI  Flags             SSID"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_130

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    const-string v7, "  %17s  %9d  %5d  %-16s  %s%n"

    const/4 v6, 0x5

    new-array v8, v6, [Ljava/lang/Object;

    iget-object v6, v3, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    aput-object v6, v8, v10

    const/4 v6, 0x1

    iget v9, v3, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v6

    const/4 v6, 0x2

    iget v9, v3, Landroid/net/wifi/ScanResult;->level:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v6

    const/4 v6, 0x3

    iget-object v9, v3, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    aput-object v9, v8, v6

    const/4 v9, 0x4

    iget-object v6, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-nez v6, :cond_12d

    const-string v6, ""

    :goto_127
    aput-object v6, v8, v9

    invoke-virtual {p2, v7, v8}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    goto :goto_f4

    :cond_12d
    iget-object v6, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    goto :goto_127

    :cond_130
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Locks acquired: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/wifi/WifiService;->mFullLocksAcquired:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " full, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/wifi/WifiService;->mFullHighPerfLocksAcquired:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " full high perf, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/wifi/WifiService;->mScanLocksAcquired:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " scan"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Locks released: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/wifi/WifiService;->mFullLocksReleased:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " full, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/wifi/WifiService;->mFullHighPerfLocksReleased:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " full high perf, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/wifi/WifiService;->mScanLocksReleased:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " scan"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string v6, "Locks held:"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/wifi/WifiService;->mLocks:Lcom/android/server/wifi/WifiService$LockList;

    #calls: Lcom/android/server/wifi/WifiService$LockList;->dump(Ljava/io/PrintWriter;)V
    invoke-static {v6, p2}, Lcom/android/server/wifi/WifiService$LockList;->access$2200(Lcom/android/server/wifi/WifiService$LockList;Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    iget-object v6, p0, Lcom/android/server/wifi/WifiService;->mMulticasters:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Multicasters held("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "):"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v5, -0x1

    :goto_1d3
    if-ltz v0, :cond_204

    iget-object v6, p0, Lcom/android/server/wifi/WifiService;->mMulticasters:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/WifiService$Multicaster;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiService$Multicaster;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1d3

    :cond_204
    iget-object v6, p0, Lcom/android/server/wifi/WifiService;->mWifiWatchdogStateMachine:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-virtual {v6, p1, p2, p3}, Landroid/net/wifi/WifiWatchdogStateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    iget-object v6, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v6, p1, p2, p3}, Landroid/net/wifi/WifiStateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    goto/16 :goto_33
.end method

.method public enableNetwork(IZ)Z
    .registers 5

    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1, p1, p2}, Landroid/net/wifi/WifiStateMachine;->syncEnableNetwork(Lcom/android/internal/util/AsyncChannel;IZ)Z

    move-result v0

    :goto_f
    return v0

    :cond_10
    const-string v0, "WifiService"

    const-string v1, "mWifiStateMachineChannel is not initialized"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_f
.end method

.method enforceWakeSourcePermission(II)V
    .registers 6

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    if-ne p1, v0, :cond_7

    :goto_6
    return-void

    :cond_7
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.UPDATE_DEVICE_STATS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, p1, v2}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_6
.end method

.method public getConfigFile()Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->getConfigFile()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConfiguredNetworks()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateMachine;->syncGetConfiguredNetworks(Lcom/android/internal/util/AsyncChannel;)Ljava/util/List;

    move-result-object v0

    :goto_f
    return-object v0

    :cond_10
    const-string v0, "WifiService"

    const-string v1, "mWifiStateMachineChannel is not initialized"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_f
.end method

.method public getConnectableAPList()Landroid/net/wifi/HS20ConnectableList;
    .registers 2

    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->syncGetConnectableAPList()Landroid/net/wifi/HS20ConnectableList;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionInfo()Landroid/net/wifi/WifiInfo;
    .registers 2

    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->syncRequestConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    return-object v0
.end method

.method public getCountryRev()Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->syncGetCountryRev()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDhcpInfo()Landroid/net/DhcpInfo;
    .registers 13

    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    iget-object v11, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v11}, Landroid/net/wifi/WifiStateMachine;->syncGetDhcpResults()Landroid/net/DhcpResults;

    move-result-object v2

    iget-object v11, v2, Landroid/net/DhcpResults;->linkProperties:Landroid/net/LinkProperties;

    if-nez v11, :cond_f

    const/4 v7, 0x0

    :goto_e
    return-object v7

    :cond_f
    new-instance v7, Landroid/net/DhcpInfo;

    invoke-direct {v7}, Landroid/net/DhcpInfo;-><init>()V

    iget-object v11, v2, Landroid/net/DhcpResults;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v11}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/LinkAddress;

    invoke-virtual {v8}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    instance-of v11, v0, Ljava/net/Inet4Address;

    if-eqz v11, :cond_1e

    check-cast v0, Ljava/net/Inet4Address;

    invoke-static {v0}, Landroid/net/NetworkUtils;->inetAddressToInt(Ljava/net/Inet4Address;)I

    move-result v11

    iput v11, v7, Landroid/net/DhcpInfo;->ipAddress:I

    :cond_3a
    iget-object v11, v2, Landroid/net/DhcpResults;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v11}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_44
    :goto_44
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_84

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/RouteInfo;

    invoke-virtual {v9}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v11

    if-eqz v11, :cond_67

    invoke-virtual {v9}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v5

    instance-of v11, v5, Ljava/net/Inet4Address;

    if-eqz v11, :cond_44

    check-cast v5, Ljava/net/Inet4Address;

    invoke-static {v5}, Landroid/net/NetworkUtils;->inetAddressToInt(Ljava/net/Inet4Address;)I

    move-result v11

    iput v11, v7, Landroid/net/DhcpInfo;->gateway:I

    goto :goto_44

    :cond_67
    invoke-virtual {v9}, Landroid/net/RouteInfo;->hasGateway()Z

    move-result v11

    if-nez v11, :cond_44

    invoke-virtual {v9}, Landroid/net/RouteInfo;->getDestination()Landroid/net/LinkAddress;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v11

    instance-of v11, v11, Ljava/net/Inet4Address;

    if-eqz v11, :cond_44

    invoke-virtual {v1}, Landroid/net/LinkAddress;->getNetworkPrefixLength()I

    move-result v11

    invoke-static {v11}, Landroid/net/NetworkUtils;->prefixLengthToNetmaskInt(I)I

    move-result v11

    iput v11, v7, Landroid/net/DhcpInfo;->netmask:I

    goto :goto_44

    :cond_84
    const/4 v4, 0x0

    iget-object v11, v2, Landroid/net/DhcpResults;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v11}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_8f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_ae

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    instance-of v11, v3, Ljava/net/Inet4Address;

    if-eqz v11, :cond_8f

    if-nez v4, :cond_c2

    check-cast v3, Ljava/net/Inet4Address;

    invoke-static {v3}, Landroid/net/NetworkUtils;->inetAddressToInt(Ljava/net/Inet4Address;)I

    move-result v11

    iput v11, v7, Landroid/net/DhcpInfo;->dns1:I

    :goto_a9
    add-int/lit8 v4, v4, 0x1

    const/4 v11, 0x1

    if-le v4, v11, :cond_8f

    :cond_ae
    iget-object v10, v2, Landroid/net/DhcpResults;->serverAddress:Ljava/net/InetAddress;

    instance-of v11, v10, Ljava/net/Inet4Address;

    if-eqz v11, :cond_bc

    check-cast v10, Ljava/net/Inet4Address;

    invoke-static {v10}, Landroid/net/NetworkUtils;->inetAddressToInt(Ljava/net/Inet4Address;)I

    move-result v11

    iput v11, v7, Landroid/net/DhcpInfo;->serverAddress:I

    :cond_bc
    iget v11, v2, Landroid/net/DhcpResults;->leaseDuration:I

    iput v11, v7, Landroid/net/DhcpInfo;->leaseDuration:I

    goto/16 :goto_e

    :cond_c2
    check-cast v3, Ljava/net/Inet4Address;

    invoke-static {v3}, Landroid/net/NetworkUtils;->inetAddressToInt(Ljava/net/Inet4Address;)I

    move-result v11

    iput v11, v7, Landroid/net/DhcpInfo;->dns2:I

    goto :goto_a9
.end method

.method public getFrequencyBand()I
    .registers 2

    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->getFrequencyBand()I

    move-result v0

    return v0
.end method

.method public getFullRoamScanPeriod()I
    .registers 2

    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->syncGetFullRoamScanPeriod()I

    move-result v0

    return v0
.end method

.method public getNetworkInfo()Landroid/net/NetworkInfo;
    .registers 2

    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->syncGetNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    return-object v0
.end method

.method public getPPPOEInfo()Landroid/net/wifi/PPPOEInfo;
    .registers 3

    const-string v0, "pppoe"

    const-string v1, "wifiservice: getPPPOEInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mPppoeStateMachine:Landroid/net/wifi/PppoeStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/PppoeStateMachine;->getPPPOEInfo()Landroid/net/wifi/PPPOEInfo;

    move-result-object v0

    return-object v0
.end method

.method public getPartialScanResults([I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiStateMachine;->syncGetPartialScanResultsList([I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRoamBand()I
    .registers 2

    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->syncGetRoamBand()I

    move-result v0

    return v0
.end method

.method public getRoamDelta()I
    .registers 2

    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->syncGetRoamDelta()I

    move-result v0

    return v0
.end method

.method public getRoamScanPeriod()I
    .registers 2

    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->syncGetRoamScanPeriod()I

    move-result v0

    return v0
.end method

.method public getRoamTrigger()I
    .registers 2

    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->syncGetRoamTrigger()I

    move-result v0

    return v0
.end method

.method public getScanResults(Ljava/lang/String;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v6, 0xa

    invoke-virtual {v5, v6, v3, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_1f

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :goto_1e
    return-object v5

    :cond_1f
    :try_start_1f
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    if-eq v4, v0, :cond_2e

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V
    :try_end_2a
    .catchall {:try_start_1f .. :try_end_2a} :catchall_35

    :goto_2a
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1e

    :cond_2e
    :try_start_2e
    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v5}, Landroid/net/wifi/WifiStateMachine;->syncGetScanResultsList()Ljava/util/List;
    :try_end_33
    .catchall {:try_start_2e .. :try_end_33} :catchall_35

    move-result-object v5

    goto :goto_2a

    :catchall_35
    move-exception v5

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public getSpecificNetwork(I)Landroid/net/wifi/WifiConfiguration;
    .registers 3

    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiStateMachine;->getSpecificNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedChannels()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiChannel;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_b
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    if-eq v3, v0, :cond_1a

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
    :try_end_16
    .catchall {:try_start_b .. :try_end_16} :catchall_21

    :goto_16
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v4

    :cond_1a
    :try_start_1a
    iget-object v4, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v4}, Landroid/net/wifi/WifiStateMachine;->syncGetSupportedWifiChannels()Ljava/util/List;
    :try_end_1f
    .catchall {:try_start_1a .. :try_end_1f} :catchall_21

    move-result-object v4

    goto :goto_16

    :catchall_21
    move-exception v4

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public getWifiApChameleonSsid()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mSsid:Ljava/lang/String;

    return-object v0
.end method

.method public getWifiApConfigTxPower()I
    .registers 2

    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiApConfigTxPower()I

    move-result v0

    return v0
.end method

.method public getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;
    .registers 2

    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public getWifiApEnabledState()I
    .registers 2

    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiApState()I

    move-result v0

    return v0
.end method

.method public getWifiApStaList()Ljava/lang/String;
    .registers 3

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mNwService:Landroid/os/INetworkManagementService;

    invoke-interface {v1}, Landroid/os/INetworkManagementService;->getAccessPointStaList()Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    :goto_6
    return-object v1

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getWifiApTimeOut()I
    .registers 5

    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_ap_time_out_value"

    sget v3, Lcom/android/server/wifi/WifiService;->defaultTimeoutValue:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string v1, "WifiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getWifiApTimeOut, sec = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public getWifiEnabledState()I
    .registers 2

    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiState()I

    move-result v0

    return v0
.end method

.method public getWifiIBSSEnabledState()I
    .registers 2

    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiIBSSState()I

    move-result v0

    return v0
.end method

.method public getWifiServiceMessenger()Landroid/os/Messenger;
    .registers 3

    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mClientHandler:Lcom/android/server/wifi/WifiService$ClientHandler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method

.method public getWifiStateMachineMessenger()Landroid/os/Messenger;
    .registers 2

    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->getMessenger()Landroid/os/Messenger;

    move-result-object v0

    return-object v0
.end method

.method public get_s69_part_msg(II)Ljava/lang/String;
    .registers 5

    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    sget-boolean v0, Lcom/android/server/wifi/WifiService;->DBG:Z

    if-eqz v0, :cond_e

    const-string v0, "WifiService"

    const-string v1, "Do not support get_s69_part_msg"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    const-string v0, ""

    return-object v0
.end method

.method public initializeMulticastFiltering()V
    .registers 3

    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceMulticastChangePermission()V

    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mMulticasters:Ljava/util/List;

    monitor-enter v1

    :try_start_6
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mMulticasters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_10

    monitor-exit v1

    :goto_f
    return-void

    :cond_10
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->startFilteringMulticastV4Packets()V

    monitor-exit v1

    goto :goto_f

    :catchall_17
    move-exception v0

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_17

    throw v0
.end method

.method public isDualBandSupported()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public isMulticastEnabled()Z
    .registers 3

    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mMulticasters:Ljava/util/List;

    monitor-enter v1

    :try_start_6
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mMulticasters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_11

    const/4 v0, 0x1

    :goto_f
    monitor-exit v1

    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_f

    :catchall_13
    move-exception v0

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_13

    throw v0
.end method

.method public isScanAlwaysAvailable()Z
    .registers 2

    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiSettingsStore;->isScanAlwaysAvailable()Z

    move-result v0

    return v0
.end method

.method public pingSupplicant()Z
    .registers 3

    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateMachine;->syncPingSupplicant(Lcom/android/internal/util/AsyncChannel;)Z

    move-result v0

    :goto_f
    return v0

    :cond_10
    const-string v0, "WifiService"

    const-string v1, "mWifiStateMachineChannel is not initialized"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_f
.end method

.method public reassociate()V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->reassociateCommand()V

    return-void
.end method

.method public reconnect()V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->reconnectCommand()V

    return-void
.end method

.method public releaseMulticastLock()V
    .registers 7

    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceMulticastChangePermission()V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mMulticasters:Ljava/util/List;

    monitor-enter v5

    :try_start_a
    iget v4, p0, Lcom/android/server/wifi/WifiService;->mMulticastDisabled:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/wifi/WifiService;->mMulticastDisabled:I

    iget-object v4, p0, Lcom/android/server/wifi/WifiService;->mMulticasters:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_18
    if-ltz v0, :cond_30

    iget-object v4, p0, Lcom/android/server/wifi/WifiService;->mMulticasters:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/WifiService$Multicaster;

    if-eqz v1, :cond_2d

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiService$Multicaster;->getUid()I

    move-result v4

    if-ne v4, v3, :cond_2d

    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/WifiService;->removeMulticasterLocked(II)V

    :cond_2d
    add-int/lit8 v0, v0, -0x1

    goto :goto_18

    :cond_30
    monitor-exit v5

    return-void

    :catchall_32
    move-exception v4

    monitor-exit v5
    :try_end_34
    .catchall {:try_start_a .. :try_end_34} :catchall_32

    throw v4
.end method

.method public releaseWifiLock(Landroid/os/IBinder;)Z
    .registers 5

    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WAKE_LOCK"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mLocks:Lcom/android/server/wifi/WifiService$LockList;

    monitor-enter v1

    :try_start_b
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiService;->releaseWifiLockLocked(Landroid/os/IBinder;)Z

    move-result v0

    monitor-exit v1

    return v0

    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_b .. :try_end_13} :catchall_11

    throw v0
.end method

.method public removeNetwork(I)Z
    .registers 4

    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1, p1}, Landroid/net/wifi/WifiStateMachine;->syncRemoveNetwork(Lcom/android/internal/util/AsyncChannel;I)Z

    move-result v0

    :goto_f
    return v0

    :cond_10
    const-string v0, "WifiService"

    const-string v1, "mWifiStateMachineChannel is not initialized"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_f
.end method

.method public saveConfiguration()Z
    .registers 4

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v2, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiStateMachine;->syncSaveConfig(Lcom/android/internal/util/AsyncChannel;)Z

    move-result v1

    :goto_10
    return v1

    :cond_11
    const-string v1, "WifiService"

    const-string v2, "mWifiStateMachineChannel is not initialized"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_10
.end method

.method public setCountryCode(Ljava/lang/String;Z)V
    .registers 8

    const-string v2, "WifiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WifiService trying to set country code to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with persist set to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_29
    iget-object v2, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v2, p1, p2}, Landroid/net/wifi/WifiStateMachine;->setCountryCode(Ljava/lang/String;Z)V
    :try_end_2e
    .catchall {:try_start_29 .. :try_end_2e} :catchall_32

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_32
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setCountryRev(Ljava/lang/String;)Z
    .registers 3

    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiStateMachine;->syncSetCountryRev(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setFrequencyBand(IZ)V
    .registers 8

    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiService;->isDualBandSupported()Z

    move-result v2

    if-nez v2, :cond_a

    :goto_9
    return-void

    :cond_a
    const-string v2, "WifiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WifiService trying to set frequency band to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with persist set to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_30
    iget-object v2, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v2, p1, p2}, Landroid/net/wifi/WifiStateMachine;->setFrequencyBand(IZ)V
    :try_end_35
    .catchall {:try_start_30 .. :try_end_35} :catchall_39

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_9

    :catchall_39
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setFullRoamScanPeriod(I)Z
    .registers 3

    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiStateMachine;->syncSetFullRoamScanPeriod(I)Z

    move-result v0

    return v0
.end method

.method public setIsFmcNetwork(Z)Z
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mWifiWatchdogStateMachine:Landroid/net/wifi/WifiWatchdogStateMachine;

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v1, p1}, Landroid/net/wifi/WifiStateMachine;->setIsFmcNetwork(Z)Z

    move-result v1

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mWifiWatchdogStateMachine:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-virtual {v1, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->setIsFmcNetwork(Z)Z

    move-result v1

    if-eqz v1, :cond_1d

    const/4 v0, 0x1

    :cond_1d
    return v0
.end method

.method public setRoamBand(I)Z
    .registers 3

    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiStateMachine;->syncSetRoamBand(I)Z

    move-result v0

    return v0
.end method

.method public setRoamDelta(I)Z
    .registers 3

    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiStateMachine;->syncSetRoamDelta(I)Z

    move-result v0

    return v0
.end method

.method public setRoamScanPeriod(I)Z
    .registers 3

    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiStateMachine;->syncSetRoamScanPeriod(I)Z

    move-result v0

    return v0
.end method

.method public setRoamTrigger(I)Z
    .registers 3

    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiStateMachine;->syncSetRoamTrigger(I)Z

    move-result v0

    return v0
.end method

.method public setWifiApConfigTxPower(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiStateMachine;->setWifiApConfigTxPower(I)V

    return-void
.end method

.method public setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)V
    .registers 3

    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/WifiPolicy;->isWifiApSettingUserModificationAllowed()Z

    move-result v0

    if-nez v0, :cond_10

    :cond_f
    :goto_f
    return-void

    :cond_10
    if-eqz p1, :cond_f

    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiStateMachine;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_f
.end method

.method public setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V
    .registers 10

    const/4 v4, 0x0

    if-nez p2, :cond_3

    :cond_3
    if-eqz p2, :cond_5

    :cond_5
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    if-eqz p2, :cond_17

    iget-object v3, p0, Lcom/android/server/wifi/WifiService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v3}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/enterprise/RestrictionPolicy;->isWifiTetheringEnabled()Z

    move-result v3

    if-nez v3, :cond_17

    :goto_16
    return-void

    :cond_17
    if-eqz p2, :cond_4d

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiService;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    if-eqz v1, :cond_4d

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getAuthType()I

    move-result v0

    if-nez v0, :cond_4d

    iget-object v3, p0, Lcom/android/server/wifi/WifiService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v3}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/enterprise/WifiPolicy;->isOpenWifiApAllowed()Z

    move-result v3

    if-nez v3, :cond_4d

    const-string v3, "WifiService"

    const-string v4, "Starting an Open HOTSPOT is NOT allowed."

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.net.wifi.SHOW_INFO_MESSAGE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "info_type"

    const/16 v4, 0xa

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_16

    :cond_4d
    iget-object v3, p0, Lcom/android/server/wifi/WifiService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v3}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/enterprise/WifiPolicy;->isWifiApSettingUserModificationAllowed()Z

    move-result v3

    if-nez v3, :cond_5a

    const/4 p1, 0x0

    :cond_5a
    if-eqz p2, :cond_86

    iget-object v3, p0, Lcom/android/server/wifi/WifiService;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/app/admin/DevicePolicyManager;->getAllowInternetSharing(Landroid/content/ComponentName;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/wifi/WifiService;->allowWifiAp:Z

    iget-boolean v3, p0, Lcom/android/server/wifi/WifiService;->allowWifiAp:Z

    if-nez v3, :cond_86

    const-string v3, "WifiService"

    const-string v4, "Wi-Fi AP is not allowed (Policy)"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.net.wifi.SHOW_INFO_MESSAGE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "info_type"

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const v4, 0x20130

    invoke-virtual {v3, v4, v2}, Landroid/net/wifi/WifiStateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_16

    :cond_86
    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mWifiController:Lcom/android/server/wifi/WifiController;

    const v6, 0x2600a

    if-eqz p2, :cond_96

    const/4 v3, 0x1

    :goto_8e
    invoke-virtual {v5, v6, v3, v4, p1}, Lcom/android/server/wifi/WifiController;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_16

    :cond_96
    move v3, v4

    goto :goto_8e
.end method

.method public setWifiApTimeOut(I)V
    .registers 6

    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_ap_time_out_value"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v1, "WifiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setWifiApTimeOut, sec = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.wifiap_power_mode_alarm"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "wifiap_power_mode_alarm_option"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public declared-synchronized setWifiEnabled(Z)Z
    .registers 7

    const/4 v4, 0x1

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/sec/enterprise/WifiPolicyCache;->getInstance(Landroid/content/Context;)Landroid/sec/enterprise/WifiPolicyCache;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/sec/enterprise/WifiPolicyCache;->isWifiAllowed(Z)Z

    move-result v1

    if-nez v1, :cond_19

    const-string v1, "WifiService"

    const-string v2, "Wi-Fi state change is not allowed"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_3c

    :goto_17
    monitor-exit p0

    return v0

    :cond_19
    :try_start_19
    const-string v1, ""

    const-string v2, "DCM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3f

    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "toddler_mode_switch"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_3f

    if-eqz p1, :cond_3f

    const-string v1, "WifiService"

    const-string v2, "setWifiEnabled: Network Restriction BLOCKED "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3b
    .catchall {:try_start_19 .. :try_end_3b} :catchall_3c

    goto :goto_17

    :catchall_3c
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3f
    if-nez p1, :cond_4e

    :try_start_41
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiService;->isScanAlwaysAvailable()Z

    move-result v0

    if-eqz v0, :cond_4e

    const-string v0, "WifiService"

    const-string v1, "isScanAlwaysAvailable"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4e
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    const-string v0, "WifiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWifiEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " pid="

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

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x26008

    invoke-direct {p0, p1, v0}, Lcom/android/server/wifi/WifiService;->setWifiEnabled(ZI)Z
    :try_end_8b
    .catchall {:try_start_41 .. :try_end_8b} :catchall_3c

    move-result v0

    goto :goto_17
.end method

.method public declared-synchronized setWifiIBSSEnabled(Z)Z
    .registers 5

    const/4 v2, 0x0

    monitor-enter p0

    :try_start_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/sec/enterprise/WifiPolicyCache;->getInstance(Landroid/content/Context;)Landroid/sec/enterprise/WifiPolicyCache;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/sec/enterprise/WifiPolicyCache;->isWifiAllowed(Z)Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "WifiService"

    const-string v1, "Wi-Fi state change is not allowed"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catchall {:try_start_2 .. :try_end_16} :catchall_1c

    :goto_16
    monitor-exit p0

    return v2

    :cond_18
    :try_start_18
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_1c

    goto :goto_16

    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public showHS20WifiNotification(Lcom/android/server/wifi/WifiService$HS20_ConType;Landroid/net/wifi/WifiConfiguration;)V
    .registers 13

    const-string v5, "WifiService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "showHS20WifiNotification   is  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    const-string v6, "notification"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    sget-object v5, Lcom/android/server/wifi/WifiService$HS20_ConType;->HS20_DISCONNECTED:Lcom/android/server/wifi/WifiService$HS20_ConType;

    if-eq p1, v5, :cond_ef

    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mHs20Noti:Landroid/app/Notification;

    if-nez v5, :cond_57

    new-instance v5, Landroid/app/Notification;

    invoke-direct {v5}, Landroid/app/Notification;-><init>()V

    iput-object v5, p0, Lcom/android/server/wifi/WifiService;->mHs20Noti:Landroid/app/Notification;

    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mHs20Noti:Landroid/app/Notification;

    const-wide/16 v6, 0x0

    iput-wide v6, v5, Landroid/app/Notification;->when:J

    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mHs20Noti:Landroid/app/Notification;

    iget v6, v5, Landroid/app/Notification;->defaults:I

    and-int/lit8 v6, v6, -0x2

    iput v6, v5, Landroid/app/Notification;->defaults:I

    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mHs20Noti:Landroid/app/Notification;

    const/4 v6, 0x2

    iput v6, v5, Landroid/app/Notification;->flags:I

    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mHs20Noti:Landroid/app/Notification;

    iget-object v6, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.net.wifi.SEC_LAUNCH_OPERTOR_URL"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x0

    invoke-static {v6, v7, v8, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    iput-object v6, v5, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    :cond_57
    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiService;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    sget-object v5, Lcom/android/server/wifi/WifiService$HS20_ConType;->HS20_CONNECTED_HSP:Lcom/android/server/wifi/WifiService$HS20_ConType;

    if-ne p1, v5, :cond_bd

    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mHs20Noti:Landroid/app/Notification;

    const v6, 0x108033e

    iput v6, v5, Landroid/app/Notification;->icon:I

    :goto_6e
    iget-object v5, p2, Landroid/net/wifi/WifiConfiguration;->HS20VenueName:Ljava/lang/String;

    if-nez v5, :cond_c5

    const v5, 0x1040666

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :goto_87
    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mHs20Noti:Landroid/app/Notification;

    iput-object v4, v5, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    iget-object v5, p2, Landroid/net/wifi/WifiConfiguration;->HS20OperatorName:Ljava/lang/String;

    if-eqz v5, :cond_dc

    const v5, 0x1040664

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p2, Landroid/net/wifi/WifiConfiguration;->HS20OperatorName:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v3, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_9e
    if-eqz v4, :cond_ad

    if-eqz v1, :cond_ad

    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mHs20Noti:Landroid/app/Notification;

    iget-object v6, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/server/wifi/WifiService;->mHs20Noti:Landroid/app/Notification;

    iget-object v7, v7, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v5, v6, v4, v1, v7}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    :cond_ad
    :try_start_ad
    sget-object v5, Lcom/android/server/wifi/WifiService$HS20_ConType;->HS20_CONNECTED_HSP:Lcom/android/server/wifi/WifiService$HS20_ConType;

    if-ne p1, v5, :cond_e4

    const v5, 0x108033e

    iget-object v6, p0, Lcom/android/server/wifi/WifiService;->mHs20Noti:Landroid/app/Notification;

    invoke-virtual {v2, v5, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_b9
    .catch Ljava/lang/IllegalStateException; {:try_start_ad .. :try_end_b9} :catch_ed

    :goto_b9
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/server/wifi/WifiService;->mNotificationHS20Enabled:Z

    :goto_bc
    return-void

    :cond_bd
    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mHs20Noti:Landroid/app/Notification;

    const v6, 0x108033f

    iput v6, v5, Landroid/app/Notification;->icon:I

    goto :goto_6e

    :cond_c5
    const v5, 0x1040667

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, p2, Landroid/net/wifi/WifiConfiguration;->HS20VenueName:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v3, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_87

    :cond_dc
    const v5, 0x1040665

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_9e

    :cond_e4
    const v5, 0x108033f

    :try_start_e7
    iget-object v6, p0, Lcom/android/server/wifi/WifiService;->mHs20Noti:Landroid/app/Notification;

    invoke-virtual {v2, v5, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_ec
    .catch Ljava/lang/IllegalStateException; {:try_start_e7 .. :try_end_ec} :catch_ed

    goto :goto_b9

    :catch_ed
    move-exception v5

    goto :goto_b9

    :cond_ef
    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mHs20Noti:Landroid/app/Notification;

    if-eqz v5, :cond_104

    if-eqz v2, :cond_104

    const v5, 0x108033e

    invoke-virtual {v2, v5}, Landroid/app/NotificationManager;->cancel(I)V

    const v5, 0x108033f

    invoke-virtual {v2, v5}, Landroid/app/NotificationManager;->cancel(I)V

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/server/wifi/WifiService;->mHs20Noti:Landroid/app/Notification;

    :cond_104
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/server/wifi/WifiService;->mNotificationHS20Enabled:Z

    goto :goto_bc
.end method

.method public shutdown()Z
    .registers 5

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    const-string v1, "WifiService"

    const-string v2, "Shutdown is called"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiService;->getWifiApEnabledState()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_17

    const/16 v1, 0xd

    if-ne v0, v1, :cond_22

    :cond_17
    const-string v1, "WifiService"

    const-string v2, "Mobile AP will disable"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v3}, Lcom/android/server/wifi/WifiService;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V

    :cond_22
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiService;->mSendDhcpRelease:Z

    if-eqz v1, :cond_35

    const-string v1, "WifiService"

    const-string v2, "sendMessage - WifiStateMachine.CMD_SEND_DHCP_RELEASE"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const v2, 0x200a1

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    :cond_35
    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v1, v3}, Landroid/net/wifi/WifiStateMachine;->setSupplicantRunning(Z)V

    iget-boolean v1, p0, Lcom/android/server/wifi/WifiService;->mIsReceiverRegistered:Z

    if-eqz v1, :cond_47

    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/wifi/WifiService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-boolean v3, p0, Lcom/android/server/wifi/WifiService;->mIsReceiverRegistered:Z

    :cond_47
    const/4 v1, 0x1

    return v1
.end method

.method public startPPPOE(Landroid/net/wifi/PPPOEConfig;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mClientHandler:Lcom/android/server/wifi/WifiService$ClientHandler;

    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mClientHandler:Lcom/android/server/wifi/WifiService$ClientHandler;

    const v2, 0x70001

    invoke-static {v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiService$ClientHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public startScan()V
    .registers 3

    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateMachine;->startScan(I)V

    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiWatchdogStateMachine:Landroid/net/wifi/WifiWatchdogStateMachine;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-eq v0, v1, :cond_23

    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiWatchdogStateMachine:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->scanStarted()V

    :cond_23
    return-void
.end method

.method public startWifi()V
    .registers 3

    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceConnectivityInternalPermission()V

    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateMachine;->setDriverStart(Z)V

    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->reconnectCommand()V

    return-void
.end method

.method public stopPPPOE()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mClientHandler:Lcom/android/server/wifi/WifiService$ClientHandler;

    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mClientHandler:Lcom/android/server/wifi/WifiService$ClientHandler;

    const v2, 0x70004

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiService$ClientHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public stopWifi()V
    .registers 3

    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceConnectivityInternalPermission()V

    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateMachine;->setDriverStart(Z)V

    return-void
.end method

.method public updateWifiLockWorkSource(Landroid/os/IBinder;Landroid/os/WorkSource;)V
    .registers 12

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    if-eqz p2, :cond_11

    invoke-virtual {p2}, Landroid/os/WorkSource;->size()I

    move-result v6

    if-nez v6, :cond_11

    const/4 p2, 0x0

    :cond_11
    if-eqz p2, :cond_16

    invoke-virtual {p0, v4, v3}, Lcom/android/server/wifi/WifiService;->enforceWakeSourcePermission(II)V

    :cond_16
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_1a
    iget-object v7, p0, Lcom/android/server/wifi/WifiService;->mLocks:Lcom/android/server/wifi/WifiService$LockList;

    monitor-enter v7
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_58
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1d} :catch_30

    :try_start_1d
    iget-object v6, p0, Lcom/android/server/wifi/WifiService;->mLocks:Lcom/android/server/wifi/WifiService$LockList;

    #calls: Lcom/android/server/wifi/WifiService$LockList;->findLockByBinder(Landroid/os/IBinder;)I
    invoke-static {v6, p1}, Lcom/android/server/wifi/WifiService$LockList;->access$2900(Lcom/android/server/wifi/WifiService$LockList;Landroid/os/IBinder;)I

    move-result v2

    if-gez v2, :cond_35

    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v8, "Wifi lock not active"

    invoke-direct {v6, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :catchall_2d
    move-exception v6

    monitor-exit v7
    :try_end_2f
    .catchall {:try_start_1d .. :try_end_2f} :catchall_2d

    :try_start_2f
    throw v6
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_58
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_30} :catch_30

    :catch_30
    move-exception v6

    :goto_31
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_35
    :try_start_35
    iget-object v6, p0, Lcom/android/server/wifi/WifiService;->mLocks:Lcom/android/server/wifi/WifiService$LockList;

    #getter for: Lcom/android/server/wifi/WifiService$LockList;->mList:Ljava/util/List;
    invoke-static {v6}, Lcom/android/server/wifi/WifiService$LockList;->access$3000(Lcom/android/server/wifi/WifiService$LockList;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wifi/WifiService$WifiLock;

    invoke-direct {p0, v5}, Lcom/android/server/wifi/WifiService;->noteReleaseWifiLock(Lcom/android/server/wifi/WifiService$WifiLock;)V

    if-eqz p2, :cond_52

    new-instance v6, Landroid/os/WorkSource;

    invoke-direct {v6, p2}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    :goto_4b
    iput-object v6, v5, Lcom/android/server/wifi/WifiService$WifiLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v5}, Lcom/android/server/wifi/WifiService;->noteAcquireWifiLock(Lcom/android/server/wifi/WifiService$WifiLock;)V

    monitor-exit v7

    goto :goto_31

    :cond_52
    new-instance v6, Landroid/os/WorkSource;

    invoke-direct {v6, v4}, Landroid/os/WorkSource;-><init>(I)V
    :try_end_57
    .catchall {:try_start_35 .. :try_end_57} :catchall_2d

    goto :goto_4b

    :catchall_58
    move-exception v6

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method
