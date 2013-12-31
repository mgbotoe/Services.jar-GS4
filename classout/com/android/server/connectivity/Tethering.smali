.class public Lcom/android/server/connectivity/Tethering;
.super Landroid/net/INetworkManagementEventObserver$Stub;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/Tethering$TetherMasterSM;,
        Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;,
        Lcom/android/server/connectivity/Tethering$StateReceiver;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final DHCP_DEFAULT_LEASE_TIME:Ljava/lang/String; = "60"

.field private static final DHCP_DEFAULT_MAX_CLIENT:Ljava/lang/String; = "150"

.field private static final DHCP_DEFAULT_RANGE:[Ljava/lang/String; = null

.field private static final DHCP_DEFAULT_RANGE1_START:Ljava/lang/String; = "192.168.42.2"

.field private static final DHCP_DEFAULT_RANGE1_STOP:Ljava/lang/String; = "192.168.42.254"

.field private static final DHCP_DEFAULT_RANGE2_START:Ljava/lang/String; = "192.168.43.2"

.field private static final DHCP_DEFAULT_RANGE2_STOP:Ljava/lang/String; = "192.168.43.254"

.field private static final DHCP_RVFMODE_RANGE:[Ljava/lang/String; = null

.field private static final DNS_DEFAULT_SERVER1:Ljava/lang/String; = "8.8.8.8"

.field private static final DNS_DEFAULT_SERVER2:Ljava/lang/String; = "8.8.4.4"

.field private static final DUN2_DSDS_TYPE:Ljava/lang/Integer; = null

.field private static final DUN2_TYPE:Ljava/lang/Integer; = null

.field private static final DUN_TYPE:Ljava/lang/Integer; = null

.field private static final HIPRI2_DSDS_TYPE:Ljava/lang/Integer; = null

.field private static final HIPRI2_TYPE:Ljava/lang/Integer; = null

.field private static final HIPRI_TYPE:Ljava/lang/Integer; = null

.field private static final MAXAP_NOTI_ID:I = 0x104074a

.field private static MAX_CLIENTS:I = 0x0

.field private static final MOBILE2_DSDS_TYPE:Ljava/lang/Integer; = null

.field private static final MOBILE2_TYPE:Ljava/lang/Integer; = null

.field private static final MOBILE_TYPE:Ljava/lang/Integer; = null

.field private static final STRING_MTP_ADB:Ljava/lang/String; = "mtp,adb"

.field private static final STRING_RNDIS_DIAG_MODEM:Ljava/lang/String; = "rndis,acm,diag"

.field private static final STRING_RNDIS_DM_MODEM:Ljava/lang/String; = "rndis,acm,dm"

.field private static final STRING_RNDIS_MODEM_ADB:Ljava/lang/String; = "rndis,acm,adb"

.field private static final TAG:Ljava/lang/String; = "Tethering"

.field private static final USB_NEAR_IFACE_ADDR:Ljava/lang/String; = "192.168.42.129"

.field private static final USB_PREFIX_LENGTH:I = 0x18

.field private static final VDBG:Z = true

.field public static final WIFIAP_HIGH_TX_POWER_MODE:I = 0x1

.field public static final WIFIAP_LOW_TX_POWER_MODE:I = 0x0

.field private static final WIFIAP_PLUG_STATE_CHANGED:Ljava/lang/String; = "com.android.settings.wifi.PLUG_STATE_CHANGED"

.field private static final WIFIAP_PLUG_STATE_CHANGED_OPTION:Ljava/lang/String; = "wifiap_plug_state_changed_option"

.field public static final WIFIAP_POWER_MODE_ALARM:Ljava/lang/String; = "android.net.wifi.wifiap_power_mode_alarm"

.field public static final WIFIAP_POWER_MODE_ALARM_EXPIRE:I = 0x1

.field public static final WIFIAP_POWER_MODE_ALARM_OPTION:Ljava/lang/String; = "wifiap_power_mode_alarm_option"

.field public static final WIFIAP_POWER_MODE_ALARM_START:I = 0x0

.field public static final WIFIAP_POWER_MODE_ALARM_STOP:I = 0x2

.field public static final WIFIAP_POWER_MODE_ALARM_UNKNOWN:I = 0x3

.field public static final WIFIAP_POWER_MODE_VALUE_CHANGED:I = 0x4

.field public static final WIFIAP_STAND_BY_MODE_START:Ljava/lang/String; = "android.net.wifi.wifiap_stand_by_mode_start"

.field public static final WIFIAP_TX_POWER_MODE_CHANGED:Ljava/lang/String; = "android.net.wifi.wifiap_tx_power_mode_changed"

.field public static final WIFIAP_TX_POWER_MODE_VALUE:Ljava/lang/String; = "android.net.wifi.wifiap_tx_power_mode_value"

.field static final WIFI_AP_ON_ICON:[I = null

.field private static bExpireAlarm:Z = false

.field private static bStartAlarm:Z = false

.field private static busBooster:Landroid/os/DVFSHelper; = null

.field private static clients:I = 0x0

.field private static cpuBooster:Landroid/os/DVFSHelper; = null

.field private static defaultTimeoutValue:I = 0x0

.field private static final lowBatteryThreshold:I = 0xf

.field private static mIsPlugged:Z

.field private static mIsTetherActive:Z

.field private static mLastClients:I

.field private static mRVFMode:I


# instance fields
.field private add_client_event:Z

.field private isDVFSBusSupported:Z

.field private isDVFSSupported:Z

.field private locale_changed_event:Z

.field private mBluetoothPan:Landroid/bluetooth/BluetoothPan;

.field private final mConnService:Landroid/net/IConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mCpaDnsSet:Z

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mDefaultDnsServers:[Ljava/lang/String;

.field private mDhcpConfig:[Ljava/lang/String;

.field private mDhcpRange:[Ljava/lang/String;

.field private mIfaces:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;",
            ">;"
        }
    .end annotation
.end field

.field private mIsBootComplete:Z

.field private mLooper:Landroid/os/Looper;

.field private mLowBatteryNotification:Landroid/app/Notification;

.field private mMaxApNotification:Landroid/app/Notification;

.field private final mNMService:Landroid/os/INetworkManagementService;

.field private mPreferredUpstreamMobileApn:I

.field private mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mPublicSync:Ljava/lang/Object;

.field private mRetryLimit:I

.field private mRndisEnabled:Z

.field private mStateReceiver:Landroid/content/BroadcastReceiver;

.field private final mStatsService:Landroid/net/INetworkStatsService;

.field private mTetherMasterSM:Lcom/android/internal/util/StateMachine;

.field private mTetherableBluetoothRegexs:[Ljava/lang/String;

.field private mTetherableUsbRegexs:[Ljava/lang/String;

.field private mTetherableWifiRegexs:[Ljava/lang/String;

.field private mTetheredNotification:Landroid/app/Notification;

.field private mTetheredVendorNotification:Landroid/app/Notification;

.field private mThread:Landroid/os/HandlerThread;

.field private mUpstreamIfaceTypes:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mUsbTetherRequested:Z

.field private usbTethered:Z

.field private wifiTethered:Z

.field private wifiVendorTethered:Z


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x2

    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v3}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/android/server/connectivity/Tethering;->MOBILE_TYPE:Ljava/lang/Integer;

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v6}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/android/server/connectivity/Tethering;->HIPRI_TYPE:Ljava/lang/Integer;

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v5}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/android/server/connectivity/Tethering;->DUN_TYPE:Ljava/lang/Integer;

    new-instance v0, Ljava/lang/Integer;

    const/16 v1, 0x1a

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/android/server/connectivity/Tethering;->MOBILE2_DSDS_TYPE:Ljava/lang/Integer;

    new-instance v0, Ljava/lang/Integer;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/android/server/connectivity/Tethering;->HIPRI2_DSDS_TYPE:Ljava/lang/Integer;

    new-instance v0, Ljava/lang/Integer;

    const/16 v1, 0x1d

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/android/server/connectivity/Tethering;->DUN2_DSDS_TYPE:Ljava/lang/Integer;

    new-instance v0, Ljava/lang/Integer;

    invoke-static {v3, v4}, Landroid/net/MultiSimConnectivityManager;->getTypeMobileFromSimSlot(II)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/android/server/connectivity/Tethering;->MOBILE2_TYPE:Ljava/lang/Integer;

    new-instance v0, Ljava/lang/Integer;

    invoke-static {v6, v4}, Landroid/net/MultiSimConnectivityManager;->getTypeMobileFromSimSlot(II)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/android/server/connectivity/Tethering;->HIPRI2_TYPE:Ljava/lang/Integer;

    new-instance v0, Ljava/lang/Integer;

    invoke-static {v5, v4}, Landroid/net/MultiSimConnectivityManager;->getTypeMobileFromSimSlot(II)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/android/server/connectivity/Tethering;->DUN2_TYPE:Ljava/lang/Integer;

    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "192.168.42.2"

    aput-object v1, v0, v3

    const-string v1, "192.168.42.254"

    aput-object v1, v0, v4

    const-string v1, "192.168.43.2"

    aput-object v1, v0, v7

    const/4 v1, 0x3

    const-string v2, "192.168.43.254"

    aput-object v2, v0, v1

    const-string v1, "192.168.44.2"

    aput-object v1, v0, v5

    const-string v1, "192.168.44.254"

    aput-object v1, v0, v6

    const/4 v1, 0x6

    const-string v2, "192.168.45.2"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "192.168.45.254"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "192.168.46.2"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "192.168.46.254"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "192.168.47.2"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "192.168.47.254"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "192.168.48.2"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "192.168.48.254"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/connectivity/Tethering;->DHCP_DEFAULT_RANGE:[Ljava/lang/String;

    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "192.168.102.2"

    aput-object v1, v0, v3

    const-string v1, "192.168.102.254"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/server/connectivity/Tethering;->DHCP_RVFMODE_RANGE:[Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/connectivity/Tethering;->cpuBooster:Landroid/os/DVFSHelper;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/connectivity/Tethering;->busBooster:Landroid/os/DVFSHelper;

    sput-boolean v3, Lcom/android/server/connectivity/Tethering;->mIsPlugged:Z

    sput v3, Lcom/android/server/connectivity/Tethering;->clients:I

    sput v3, Lcom/android/server/connectivity/Tethering;->mLastClients:I

    sput v3, Lcom/android/server/connectivity/Tethering;->mRVFMode:I

    const-string v0, "10"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/connectivity/Tethering;->MAX_CLIENTS:I

    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_de

    sput-object v0, Lcom/android/server/connectivity/Tethering;->WIFI_AP_ON_ICON:[I

    sput-boolean v3, Lcom/android/server/connectivity/Tethering;->bExpireAlarm:Z

    sput-boolean v3, Lcom/android/server/connectivity/Tethering;->bStartAlarm:Z

    const-string v0, "1200"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/connectivity/Tethering;->defaultTimeoutValue:I

    sput-boolean v3, Lcom/android/server/connectivity/Tethering;->mIsTetherActive:Z

    return-void

    nop

    :array_de
    .array-data 0x4
        0x1dt 0x8t 0x8t 0x1t
        0x1et 0x8t 0x8t 0x1t
        0x1ft 0x8t 0x8t 0x1t
        0x20t 0x8t 0x8t 0x1t
        0x21t 0x8t 0x8t 0x1t
        0x22t 0x8t 0x8t 0x1t
        0x23t 0x8t 0x8t 0x1t
        0x24t 0x8t 0x8t 0x1t
        0x25t 0x8t 0x8t 0x1t
        0x26t 0x8t 0x8t 0x1t
        0x27t 0x8t 0x8t 0x1t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/IConnectivityManager;Landroid/os/Looper;)V
    .registers 15

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-direct {p0}, Landroid/net/INetworkManagementEventObserver$Stub;-><init>()V

    const/4 v3, -0x1

    iput v3, p0, Lcom/android/server/connectivity/Tethering;->mPreferredUpstreamMobileApn:I

    iput-boolean v6, p0, Lcom/android/server/connectivity/Tethering;->isDVFSSupported:Z

    iput-boolean v6, p0, Lcom/android/server/connectivity/Tethering;->isDVFSBusSupported:Z

    iput-boolean v6, p0, Lcom/android/server/connectivity/Tethering;->add_client_event:Z

    iput-boolean v6, p0, Lcom/android/server/connectivity/Tethering;->locale_changed_event:Z

    iput-boolean v6, p0, Lcom/android/server/connectivity/Tethering;->wifiTethered:Z

    iput-boolean v6, p0, Lcom/android/server/connectivity/Tethering;->usbTethered:Z

    iput-boolean v6, p0, Lcom/android/server/connectivity/Tethering;->wifiVendorTethered:Z

    iput-object v8, p0, Lcom/android/server/connectivity/Tethering;->mLowBatteryNotification:Landroid/app/Notification;

    iput-object v8, p0, Lcom/android/server/connectivity/Tethering;->mMaxApNotification:Landroid/app/Notification;

    iput-boolean v6, p0, Lcom/android/server/connectivity/Tethering;->mCpaDnsSet:Z

    new-instance v3, Lcom/android/server/connectivity/Tethering$1;

    invoke-direct {v3, p0}, Lcom/android/server/connectivity/Tethering$1;-><init>(Lcom/android/server/connectivity/Tethering;)V

    iput-object v3, p0, Lcom/android/server/connectivity/Tethering;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    iput-object p1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;

    iput-object p3, p0, Lcom/android/server/connectivity/Tethering;->mStatsService:Landroid/net/INetworkStatsService;

    iput-object p4, p0, Lcom/android/server/connectivity/Tethering;->mConnService:Landroid/net/IConnectivityManager;

    iput-object p5, p0, Lcom/android/server/connectivity/Tethering;->mLooper:Landroid/os/Looper;

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    new-instance v3, Landroid/os/HandlerThread;

    const-string v4, "Tethering"

    invoke-direct {v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/connectivity/Tethering;->mThread:Landroid/os/HandlerThread;

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/connectivity/Tethering;->mLooper:Landroid/os/Looper;

    new-instance v3, Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    const-string v4, "TetherMaster"

    iget-object v5, p0, Lcom/android/server/connectivity/Tethering;->mLooper:Landroid/os/Looper;

    invoke-direct {v3, p0, v4, v5}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;-><init>(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;

    invoke-virtual {v3}, Lcom/android/internal/util/StateMachine;->start()V

    new-instance v3, Lcom/android/server/connectivity/Tethering$StateReceiver;

    invoke-direct {v3, p0, v8}, Lcom/android/server/connectivity/Tethering$StateReceiver;-><init>(Lcom/android/server/connectivity/Tethering;Lcom/android/server/connectivity/Tethering$1;)V

    iput-object v3, p0, Lcom/android/server/connectivity/Tethering;->mStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.net.wifi.WIFI_AP_STA_STATUS_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.net.wifi.MAXAP_NOTI"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.MEDIA_UNSHARED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "file"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1070021

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/connectivity/Tethering;->mDhcpRange:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mDhcpRange:[Ljava/lang/String;

    array-length v3, v3

    if-eqz v3, :cond_d6

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mDhcpRange:[Ljava/lang/String;

    array-length v3, v3

    rem-int/lit8 v3, v3, 0x2

    if-ne v3, v7, :cond_da

    :cond_d6
    sget-object v3, Lcom/android/server/connectivity/Tethering;->DHCP_DEFAULT_RANGE:[Ljava/lang/String;

    iput-object v3, p0, Lcom/android/server/connectivity/Tethering;->mDhcpRange:[Ljava/lang/String;

    :cond_da
    invoke-virtual {p0}, Lcom/android/server/connectivity/Tethering;->updateConfiguration()V

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, p0, Lcom/android/server/connectivity/Tethering;->mDefaultDnsServers:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mDefaultDnsServers:[Ljava/lang/String;

    const-string v4, "8.8.8.8"

    aput-object v4, v3, v6

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mDefaultDnsServers:[Ljava/lang/String;

    const-string v4, "8.8.4.4"

    aput-object v4, v3, v7

    new-instance v3, Landroid/os/DVFSHelper;

    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const/16 v5, 0xc

    invoke-direct {v3, v4, v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;I)V

    sput-object v3, Lcom/android/server/connectivity/Tethering;->cpuBooster:Landroid/os/DVFSHelper;

    sget-object v3, Lcom/android/server/connectivity/Tethering;->cpuBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v3}, Landroid/os/DVFSHelper;->getSupportedCPUFrequency()[I

    move-result-object v2

    if-eqz v2, :cond_11f

    sget-object v3, Lcom/android/server/connectivity/Tethering;->cpuBooster:Landroid/os/DVFSHelper;

    const-string v4, "CPU"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget v6, v2, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v7, p0, Lcom/android/server/connectivity/Tethering;->isDVFSSupported:Z

    :cond_11f
    new-instance v3, Landroid/os/DVFSHelper;

    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const/16 v5, 0x13

    invoke-direct {v3, v4, v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;I)V

    sput-object v3, Lcom/android/server/connectivity/Tethering;->busBooster:Landroid/os/DVFSHelper;

    sget-object v3, Lcom/android/server/connectivity/Tethering;->busBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v3}, Landroid/os/DVFSHelper;->getSupportedBUSFrequency()[I

    move-result-object v1

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/connectivity/Tethering;)Landroid/bluetooth/BluetoothPan;
    .registers 2

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/connectivity/Tethering;)Ljava/util/HashMap;
    .registers 2

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/connectivity/Tethering;Landroid/bluetooth/BluetoothPan;)Landroid/bluetooth/BluetoothPan;
    .registers 2

    iput-object p1, p0, Lcom/android/server/connectivity/Tethering;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->blockInternetSharingByActiveSync(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/connectivity/Tethering;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/connectivity/Tethering;->wifiVendorTethered:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/connectivity/Tethering;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/connectivity/Tethering;->wifiTethered:Z

    return v0
.end method

.method static synthetic access$1400()I
    .registers 1

    sget v0, Lcom/android/server/connectivity/Tethering;->mRVFMode:I

    return v0
.end method

.method static synthetic access$1500()I
    .registers 1

    sget v0, Lcom/android/server/connectivity/Tethering;->clients:I

    return v0
.end method

.method static synthetic access$1502(I)I
    .registers 1

    sput p0, Lcom/android/server/connectivity/Tethering;->clients:I

    return p0
.end method

.method static synthetic access$1602(I)I
    .registers 1

    sput p0, Lcom/android/server/connectivity/Tethering;->mLastClients:I

    return p0
.end method

.method static synthetic access$1702(Lcom/android/server/connectivity/Tethering;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/connectivity/Tethering;->add_client_event:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/server/connectivity/Tethering;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V

    return-void
.end method

.method static synthetic access$1900()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/connectivity/Tethering;->bExpireAlarm:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2000()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/connectivity/Tethering;->bStartAlarm:Z

    return v0
.end method

.method static synthetic access$2100(Lcom/android/server/connectivity/Tethering;)Landroid/app/Notification;
    .registers 2

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/android/server/connectivity/Tethering;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/connectivity/Tethering;->locale_changed_event:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/android/server/connectivity/Tethering;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->showTetheredVendorNotification(I)V

    return-void
.end method

.method static synthetic access$2402(Lcom/android/server/connectivity/Tethering;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/connectivity/Tethering;->mIsBootComplete:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/android/server/connectivity/Tethering;)Landroid/bluetooth/BluetoothProfile$ServiceListener;
    .registers 2

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/connectivity/Tethering;Z)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->configureUsbIface(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2900(Lcom/android/server/connectivity/Tethering;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->sendTetherStateChangedBroadcast()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/connectivity/Tethering;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/server/connectivity/Tethering;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->showDialogOnInternetSharingBlockedByActiveSync()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/connectivity/Tethering;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/connectivity/Tethering;->mRndisEnabled:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/connectivity/Tethering;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/connectivity/Tethering;->mRndisEnabled:Z

    return p1
.end method

.method static synthetic access$4300(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;
    .registers 2

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/android/server/connectivity/Tethering;)Landroid/net/INetworkStatsService;
    .registers 2

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mStatsService:Landroid/net/INetworkStatsService;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/connectivity/Tethering;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/connectivity/Tethering;->mUsbTetherRequested:Z

    return v0
.end method

.method static synthetic access$5000(Lcom/android/server/connectivity/Tethering;)I
    .registers 2

    iget v0, p0, Lcom/android/server/connectivity/Tethering;->mPreferredUpstreamMobileApn:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/connectivity/Tethering;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/connectivity/Tethering;->mUsbTetherRequested:Z

    return p1
.end method

.method static synthetic access$5100(Lcom/android/server/connectivity/Tethering;)Landroid/net/IConnectivityManager;
    .registers 2

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mConnService:Landroid/net/IConnectivityManager;

    return-object v0
.end method

.method static synthetic access$5900(Lcom/android/server/connectivity/Tethering;)[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mDhcpRange:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/connectivity/Tethering;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->tetherUsb(Z)V

    return-void
.end method

.method static synthetic access$6200(Lcom/android/server/connectivity/Tethering;)[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mDefaultDnsServers:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/connectivity/Tethering;)Lcom/android/internal/util/StateMachine;
    .registers 2

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;

    return-object v0
.end method

.method static synthetic access$7100(Lcom/android/server/connectivity/Tethering;)Ljava/util/Collection;
    .registers 2

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/connectivity/Tethering;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->isInternetSharingBlockedByActiveSync()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->isUsb(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private blockInternetSharingByActiveSync(Ljava/lang/String;)V
    .registers 7

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_3
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    if-nez v0, :cond_2d

    const-string v1, "Tethering"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ActiveSync] Tried to Untether an unknown iface ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "), ignoring"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    :goto_2c
    return-void

    :cond_2d
    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->sendMessage(I)V

    monitor-exit v2

    goto :goto_2c

    :catchall_34
    move-exception v1

    monitor-exit v2
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_34

    throw v1
.end method

.method private clearLowBatteryNotification()V
    .registers 5

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-eqz v0, :cond_1c

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mLowBatteryNotification:Landroid/app/Notification;

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mLowBatteryNotification:Landroid/app/Notification;

    iget v1, v1, Landroid/app/Notification;->icon:I

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    iput-object v3, p0, Lcom/android/server/connectivity/Tethering;->mLowBatteryNotification:Landroid/app/Notification;

    :cond_1c
    return-void
.end method

.method private clearTetheredNotification()V
    .registers 5

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-eqz v0, :cond_1c

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    iget v1, v1, Landroid/app/Notification;->icon:I

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    iput-object v3, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    :cond_1c
    return-void
.end method

.method private clearTetheredVendorNotification()V
    .registers 5

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-eqz v0, :cond_1c

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mTetheredVendorNotification:Landroid/app/Notification;

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mTetheredVendorNotification:Landroid/app/Notification;

    iget v1, v1, Landroid/app/Notification;->icon:I

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    iput-object v3, p0, Lcom/android/server/connectivity/Tethering;->mTetheredVendorNotification:Landroid/app/Notification;

    :cond_1c
    return-void
.end method

.method private configureUsbIface(Z)Z
    .registers 15

    const/4 v9, 0x0

    const-string v10, "Tethering"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "configureUsbIface("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array v5, v9, [Ljava/lang/String;

    :try_start_21
    iget-object v10, p0, Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;

    invoke-interface {v10}, Landroid/os/INetworkManagementService;->listInterfaces()[Ljava/lang/String;
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_26} :catch_6b

    move-result-object v5

    move-object v1, v5

    array-length v7, v1

    const/4 v3, 0x0

    :goto_2a
    if-ge v3, v7, :cond_92

    aget-object v4, v1, v3

    invoke-direct {p0, v4}, Lcom/android/server/connectivity/Tethering;->isUsb(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_68

    const/4 v6, 0x0

    :try_start_35
    iget-object v10, p0, Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;

    invoke-interface {v10, v4}, Landroid/os/INetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v6

    const-string v8, "00:00:00:00:00:00"

    if-eqz v6, :cond_68

    invoke-virtual {v6}, Landroid/net/InterfaceConfiguration;->getHardwareAddress()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_68

    const-string v10, "192.168.42.129"

    invoke-static {v10}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    new-instance v10, Landroid/net/LinkAddress;

    const/16 v11, 0x18

    invoke-direct {v10, v0, v11}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v6, v10}, Landroid/net/InterfaceConfiguration;->setLinkAddress(Landroid/net/LinkAddress;)V

    if-eqz p1, :cond_74

    invoke-virtual {v6}, Landroid/net/InterfaceConfiguration;->setInterfaceUp()V

    :goto_5e
    const-string v10, "running"

    invoke-virtual {v6, v10}, Landroid/net/InterfaceConfiguration;->clearFlag(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;

    invoke-interface {v10, v4, v6}, Landroid/os/INetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_68} :catch_78

    :cond_68
    add-int/lit8 v3, v3, 0x1

    goto :goto_2a

    :catch_6b
    move-exception v2

    const-string v10, "Tethering"

    const-string v11, "Error listing Interfaces"

    invoke-static {v10, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_73
    return v9

    :cond_74
    :try_start_74
    invoke-virtual {v6}, Landroid/net/InterfaceConfiguration;->setInterfaceDown()V
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_77} :catch_78

    goto :goto_5e

    :catch_78
    move-exception v2

    const-string v10, "Tethering"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error configuring interface "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_73

    :cond_92
    const/4 v9, 0x1

    goto :goto_73
.end method

.method private getChgType()Z
    .registers 9

    const-string v0, "/sys/class/sec/switch/chg_type"

    const/4 v1, 0x0

    const-string v3, ""

    :try_start_5
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_52
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_f} :catch_43

    :try_start_f
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    const-string v5, "Tethering"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ChgType = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b
    .catchall {:try_start_f .. :try_end_2b} :catchall_65
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_2b} :catch_68

    if-eqz v2, :cond_30

    :try_start_2d
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_30} :catch_60

    :cond_30
    :goto_30
    move-object v1, v2

    :cond_31
    :goto_31
    const-string v5, "0"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_41

    const-string v5, "1"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_59

    :cond_41
    const/4 v5, 0x1

    :goto_42
    return v5

    :catch_43
    move-exception v4

    :goto_44
    :try_start_44
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_52

    if-eqz v1, :cond_31

    :try_start_49
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4c} :catch_4d

    goto :goto_31

    :catch_4d
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_31

    :catchall_52
    move-exception v5

    :goto_53
    if-eqz v1, :cond_58

    :try_start_55
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_58} :catch_5b

    :cond_58
    :goto_58
    throw v5

    :cond_59
    const/4 v5, 0x0

    goto :goto_42

    :catch_5b
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_58

    :catch_60
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_30

    :catchall_65
    move-exception v5

    move-object v1, v2

    goto :goto_53

    :catch_68
    move-exception v4

    move-object v1, v2

    goto :goto_44
.end method

.method private getRvfMode()I
    .registers 7

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string v4, "wifi"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    const/16 v3, 0x1c

    iput v3, v2, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v0

    const-string v3, "Tethering"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mRvfMode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private isInternetSharingBlockedByActiveSync()Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/server/connectivity/Tethering;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getAllowInternetSharing(Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_1e

    const-string v0, "Tethering"

    const-string v1, "[ActiveSync] internet sharing is blocked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :goto_1d
    return v0

    :cond_1e
    const-string v0, "Tethering"

    const-string v1, "[ActiveSync] internet sharing is NOT blocked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_1d
.end method

.method private isUsb(Ljava/lang/String;)Z
    .registers 8

    iget-object v5, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v5

    :try_start_3
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetherableUsbRegexs:[Ljava/lang/String;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v2, :cond_17

    aget-object v3, v0, v1

    invoke-virtual {p1, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14

    const/4 v4, 0x1

    monitor-exit v5

    :goto_13
    return v4

    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_17
    const/4 v4, 0x0

    monitor-exit v5

    goto :goto_13

    :catchall_1a
    move-exception v4

    monitor-exit v5
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v4
.end method

.method private notifyTetheringActiveToRIL(Z)V
    .registers 10

    sget-boolean v5, Lcom/android/server/connectivity/Tethering;->mIsTetherActive:Z

    if-ne v5, p1, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    sput-boolean p1, Lcom/android/server/connectivity/Tethering;->mIsTetherActive:Z

    const-string v5, "phone"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    if-nez v4, :cond_1b

    const-string v5, "Tethering"

    const-string v6, "notifyTetheringActiveToRIL skip send Tether Active to RIL- phone service is not ready"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_1b
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v5, 0x9

    :try_start_27
    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v5, 0x5

    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    if-eqz p1, :cond_6c

    const/4 v5, 0x1

    :goto_36
    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/ITelephony;->invokeOemRilRequestRaw([B)V

    const-string v5, "Tethering"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "send Tether Active to RIL "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_58} :catch_6e
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_58} :catch_88

    :goto_58
    if-eqz v1, :cond_5d

    :try_start_5a
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    :cond_5d
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_62} :catch_63

    goto :goto_4

    :catch_63
    move-exception v3

    const-string v5, "Tethering"

    const-string v6, "close fail!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_6c
    const/4 v5, 0x0

    goto :goto_36

    :catch_6e
    move-exception v2

    const-string v5, "Tethering"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "exception occured during send Tether Active to RIL"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_58

    :catch_88
    move-exception v2

    const-string v5, "Tethering"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "exception occured during send Tether Active to RIL"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_58
.end method

.method public static readSalesCode()Ljava/lang/String;
    .registers 2

    const-string v0, ""

    :try_start_2
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_14

    const-string v1, "ril.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_13} :catch_15

    move-result-object v0

    :cond_14
    :goto_14
    return-object v0

    :catch_15
    move-exception v1

    goto :goto_14
.end method

.method private sendTetherStateChangedBroadcast()V
    .registers 17

    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/connectivity/Tethering;->mConnService:Landroid/net/IConnectivityManager;

    invoke-interface {v13}, Landroid/net/IConnectivityManager;->isTetheringSupported()Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_b

    move-result v13

    if-nez v13, :cond_d

    :cond_a
    :goto_a
    return-void

    :catch_b
    move-exception v6

    goto :goto_a

    :cond_d
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/server/connectivity/Tethering;->wifiTethered:Z

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/server/connectivity/Tethering;->wifiVendorTethered:Z

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/server/connectivity/Tethering;->usbTethered:Z

    const/4 v4, 0x0

    const-string v13, "ro.product_ship"

    invoke-static {v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v14

    :try_start_37
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_43
    :goto_43
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_b7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v13, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    if-eqz v12, :cond_43

    invoke-virtual {v12}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isErrored()Z

    move-result v13

    if-eqz v13, :cond_68

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_43

    :catchall_65
    move-exception v13

    monitor-exit v14
    :try_end_67
    .catchall {:try_start_37 .. :try_end_67} :catchall_65

    throw v13

    :cond_68
    :try_start_68
    invoke-virtual {v12}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isAvailable()Z

    move-result v13

    if-eqz v13, :cond_74

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_43

    :cond_74
    invoke-virtual {v12}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isTethered()Z

    move-result v13

    if-eqz v13, :cond_43

    move-object v0, v9

    check-cast v0, Ljava/lang/String;

    move-object v13, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/connectivity/Tethering;->isUsb(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_91

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/server/connectivity/Tethering;->usbTethered:Z

    :cond_8b
    :goto_8b
    check-cast v9, Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_43

    :cond_91
    move-object v0, v9

    check-cast v0, Ljava/lang/String;

    move-object v13, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/server/connectivity/Tethering;->isWifi(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_a9

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/server/connectivity/Tethering;->wifiTethered:Z

    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/Tethering;->getRvfMode()I

    move-result v13

    sput v13, Lcom/android/server/connectivity/Tethering;->mRVFMode:I

    goto :goto_8b

    :cond_a9
    move-object v0, v9

    check-cast v0, Ljava/lang/String;

    move-object v13, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/server/connectivity/Tethering;->isBluetooth(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_8b

    const/4 v4, 0x1

    goto :goto_8b

    :cond_b7
    monitor-exit v14
    :try_end_b8
    .catchall {:try_start_68 .. :try_end_b8} :catchall_65

    new-instance v5, Landroid/content/Intent;

    const-string v13, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-direct {v5, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v13, 0x2800

    invoke-virtual {v5, v13}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v13, "availableArray"

    invoke-virtual {v5, v13, v3}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const-string v13, "activeArray"

    invoke-virtual {v5, v13, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const-string v13, "erroredArray"

    invoke-virtual {v5, v13, v7}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    sget-object v14, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v13, v5, v14}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const-string v13, "Tethering"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "sendTetherStateChangedBroadcast "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v14, "service.tether.active"

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_159

    const-string v13, "1"

    :goto_11e
    invoke-static {v14, v13}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/connectivity/Tethering;->wifiVendorTethered:Z

    if-eqz v13, :cond_15c

    sget v13, Lcom/android/server/connectivity/Tethering;->mRVFMode:I

    if-nez v13, :cond_15c

    :goto_12b
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/connectivity/Tethering;->wifiTethered:Z

    if-nez v13, :cond_13d

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/connectivity/Tethering;->wifiVendorTethered:Z

    if-nez v13, :cond_13d

    const/4 v13, 0x0

    sput v13, Lcom/android/server/connectivity/Tethering;->clients:I

    const/4 v13, 0x0

    sput v13, Lcom/android/server/connectivity/Tethering;->mLastClients:I

    :cond_13d
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/connectivity/Tethering;->usbTethered:Z

    if-eqz v13, :cond_1b3

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/connectivity/Tethering;->wifiTethered:Z

    if-eqz v13, :cond_14d

    sget v13, Lcom/android/server/connectivity/Tethering;->mRVFMode:I

    if-eqz v13, :cond_14f

    :cond_14d
    if-eqz v4, :cond_160

    :cond_14f
    const v13, 0x1080869

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V

    goto/16 :goto_a

    :cond_159
    const-string v13, "0"

    goto :goto_11e

    :cond_15c
    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/Tethering;->clearTetheredVendorNotification()V

    goto :goto_12b

    :cond_160
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/connectivity/Tethering;->isDVFSSupported:Z

    if-eqz v13, :cond_1a1

    sget-object v13, Lcom/android/server/connectivity/Tethering;->cpuBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v13}, Landroid/os/DVFSHelper;->acquire()V

    :cond_16b
    :goto_16b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "sidesync_usb_enabled"

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    if-nez v13, :cond_1b1

    const/4 v11, 0x0

    :goto_17d
    const-string v13, "Tethering"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "sendTetherStateChangedBroadcast() sidesync_usb_enabled:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v11, :cond_a

    const v13, 0x108086c

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V

    goto/16 :goto_a

    :cond_1a1
    const-string v13, "FALSE"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_16b

    const-string v13, "Tethering"

    const-string v14, "DVFS mode is not supported"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16b

    :cond_1b1
    const/4 v11, 0x1

    goto :goto_17d

    :cond_1b3
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/connectivity/Tethering;->wifiTethered:Z

    if-eqz v13, :cond_1d3

    sget v13, Lcom/android/server/connectivity/Tethering;->mRVFMode:I

    if-nez v13, :cond_1d3

    if-eqz v4, :cond_1c9

    const v13, 0x1080869

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V

    goto/16 :goto_a

    :cond_1c9
    const v13, 0x108086d

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V

    goto/16 :goto_a

    :cond_1d3
    if-eqz v4, :cond_1df

    const v13, 0x108083e

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V

    goto/16 :goto_a

    :cond_1df
    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/Tethering;->clearTetheredNotification()V

    sget-object v13, Lcom/android/server/connectivity/Tethering;->busBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v13}, Landroid/os/DVFSHelper;->release()V

    sget-object v13, Lcom/android/server/connectivity/Tethering;->cpuBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v13}, Landroid/os/DVFSHelper;->release()V

    goto/16 :goto_a
.end method

.method private sendWifiApPowerModeAlarmIntent(Landroid/content/Context;I)V
    .registers 5

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.wifiap_power_mode_alarm"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "wifiap_power_mode_alarm_option"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private setWifiApTxPowerMode(I)I
    .registers 10

    const/4 v6, 0x0

    iget-object v5, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string v7, "wifi"

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    invoke-virtual {v4, p1}, Landroid/net/wifi/WifiManager;->setWifiApConfigTxPower(I)Z

    iget-boolean v5, p0, Lcom/android/server/connectivity/Tethering;->mIsBootComplete:Z

    if-eqz v5, :cond_23

    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.net.wifi.wifiap_tx_power_mode_changed"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "android.net.wifi.wifiap_tx_power_mode_value"

    invoke-virtual {v2, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v2}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    :cond_23
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v7, "wifi_ap_tx_power_changed_by_service"

    if-nez p1, :cond_59

    move v5, v6

    :goto_2e
    invoke-static {v1, v7, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v5

    const/16 v7, 0xd

    if-ne v5, v7, :cond_58

    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->getRvfMode()I

    move-result v5

    if-nez v5, :cond_58

    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    const/16 v5, 0xc3

    iput v5, v3, Landroid/os/Message;->what:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v5, "txPower"

    invoke-virtual {v0, v5, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iput-object v0, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v3}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v6

    :cond_58
    return v6

    :cond_59
    const/4 v5, 0x1

    goto :goto_2e
.end method

.method private showDialogOnInternetSharingBlockedByActiveSync()V
    .registers 4

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10401a9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private showLowBatteryNotification()V
    .registers 13

    const/4 v10, 0x0

    iget-object v8, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string v9, "notification"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    if-nez v4, :cond_e

    :goto_d
    return-void

    :cond_e
    const v0, 0x108008a

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, ""

    const-string v8, "ro.build.characteristics"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_72

    const-string v8, "biscotto"

    invoke-virtual {v2, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_72

    const-string v7, "Battery is below 15%."

    :goto_29
    const v8, 0x1040749

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    new-instance v1, Landroid/content/Intent;

    const-string v8, "android.settings.WIFI_AP_SEC_SETTINGS"

    invoke-direct {v1, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-static {v8, v10, v1, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    iget-object v8, p0, Lcom/android/server/connectivity/Tethering;->mLowBatteryNotification:Landroid/app/Notification;

    if-nez v8, :cond_4e

    new-instance v8, Landroid/app/Notification;

    invoke-direct {v8}, Landroid/app/Notification;-><init>()V

    iput-object v8, p0, Lcom/android/server/connectivity/Tethering;->mLowBatteryNotification:Landroid/app/Notification;

    iget-object v8, p0, Lcom/android/server/connectivity/Tethering;->mLowBatteryNotification:Landroid/app/Notification;

    const-wide/16 v9, 0x0

    iput-wide v9, v8, Landroid/app/Notification;->when:J

    :cond_4e
    iget-object v8, p0, Lcom/android/server/connectivity/Tethering;->mLowBatteryNotification:Landroid/app/Notification;

    iput v0, v8, Landroid/app/Notification;->icon:I

    iget-object v8, p0, Lcom/android/server/connectivity/Tethering;->mLowBatteryNotification:Landroid/app/Notification;

    iget v9, v8, Landroid/app/Notification;->defaults:I

    and-int/lit8 v9, v9, -0x2

    iput v9, v8, Landroid/app/Notification;->defaults:I

    iget-object v8, p0, Lcom/android/server/connectivity/Tethering;->mLowBatteryNotification:Landroid/app/Notification;

    iput-object v7, v8, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    iget-object v8, p0, Lcom/android/server/connectivity/Tethering;->mLowBatteryNotification:Landroid/app/Notification;

    iget-object v9, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v9, v7, v3, v5}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/server/connectivity/Tethering;->mLowBatteryNotification:Landroid/app/Notification;

    iget v9, v9, Landroid/app/Notification;->icon:I

    iget-object v10, p0, Lcom/android/server/connectivity/Tethering;->mLowBatteryNotification:Landroid/app/Notification;

    sget-object v11, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v8, v9, v10, v11}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    goto :goto_d

    :cond_72
    const v8, 0x1040748

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    goto :goto_29
.end method

.method private showTetheredNotification(I)V
    .registers 15

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/NotificationManager;

    if-nez v7, :cond_10

    :cond_f
    :goto_f
    return-void

    :cond_10
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->getRvfMode()I

    move-result v0

    if-lez v0, :cond_1a

    iget-boolean v0, p0, Lcom/android/server/connectivity/Tethering;->usbTethered:Z

    if-eqz v0, :cond_f

    :cond_1a
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    iget v0, v0, Landroid/app/Notification;->icon:I

    if-ne v0, p1, :cond_2c

    iget-boolean v0, p0, Lcom/android/server/connectivity/Tethering;->add_client_event:Z

    if-nez v0, :cond_2c

    iget-boolean v0, p0, Lcom/android/server/connectivity/Tethering;->locale_changed_event:Z

    if-eqz v0, :cond_f

    :cond_2c
    iput-boolean v1, p0, Lcom/android/server/connectivity/Tethering;->add_client_event:Z

    iput-boolean v1, p0, Lcom/android/server/connectivity/Tethering;->locale_changed_event:Z

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    iget v0, v0, Landroid/app/Notification;->icon:I

    invoke-virtual {v7, v0}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_37
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v9

    sget v0, Lcom/android/server/connectivity/Tethering;->clients:I

    if-lez v0, :cond_c6

    sget v0, Lcom/android/server/connectivity/Tethering;->clients:I

    if-ne v0, v5, :cond_a5

    const v0, 0x1040747

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    :goto_4a
    const v0, 0x1040745

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.android.settings"

    const-string v3, "com.android.settings.TetherSettings"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x1400

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move v3, v1

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v8

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    if-nez v0, :cond_7c

    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    const-wide/16 v11, 0x0

    iput-wide v11, v0, Landroid/app/Notification;->when:J

    :cond_7c
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->icon:I

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->defaults:I

    and-int/lit8 v1, v1, -0x2

    iput v1, v0, Landroid/app/Notification;->defaults:I

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    const/4 v1, 0x2

    iput v1, v0, Landroid/app/Notification;->flags:I

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    iput-object v10, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v10, v6, v8}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    iget v0, v0, Landroid/app/Notification;->icon:I

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v7, v4, v0, v1, v3}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    goto/16 :goto_f

    :cond_a5
    const v0, 0x1040746

    new-array v3, v5, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v11, Lcom/android/server/connectivity/Tethering;->clients:I

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v1

    invoke-virtual {v9, v0, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto :goto_4a

    :cond_c6
    const v0, 0x1040741

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    goto/16 :goto_4a
.end method

.method private showTetheredVendorNotification(I)V
    .registers 13

    const/4 v9, 0x1

    const/4 v10, 0x0

    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string v7, "notification"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    if-nez v2, :cond_f

    :cond_e
    :goto_e
    return-void

    :cond_f
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->getRvfMode()I

    move-result v6

    if-gtz v6, :cond_e

    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mTetheredVendorNotification:Landroid/app/Notification;

    if-eqz v6, :cond_32

    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mTetheredVendorNotification:Landroid/app/Notification;

    iget v6, v6, Landroid/app/Notification;->icon:I

    if-ne v6, p1, :cond_27

    iget-boolean v6, p0, Lcom/android/server/connectivity/Tethering;->add_client_event:Z

    if-nez v6, :cond_27

    iget-boolean v6, p0, Lcom/android/server/connectivity/Tethering;->locale_changed_event:Z

    if-eqz v6, :cond_e

    :cond_27
    iput-boolean v10, p0, Lcom/android/server/connectivity/Tethering;->add_client_event:Z

    iput-boolean v10, p0, Lcom/android/server/connectivity/Tethering;->locale_changed_event:Z

    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mTetheredVendorNotification:Landroid/app/Notification;

    iget v6, v6, Landroid/app/Notification;->icon:I

    invoke-virtual {v2, v6}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_32
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x1040745

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const v6, 0x1040743

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mTetheredVendorNotification:Landroid/app/Notification;

    if-nez v6, :cond_55

    new-instance v6, Landroid/app/Notification;

    invoke-direct {v6}, Landroid/app/Notification;-><init>()V

    iput-object v6, p0, Lcom/android/server/connectivity/Tethering;->mTetheredVendorNotification:Landroid/app/Notification;

    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mTetheredVendorNotification:Landroid/app/Notification;

    const-wide/16 v7, 0x0

    iput-wide v7, v6, Landroid/app/Notification;->when:J

    :cond_55
    new-instance v0, Landroid/content/Intent;

    const-string v6, "android.settings.WIFI_AP_SEC_SETTINGS"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v6, 0x108086e

    if-ne p1, v6, :cond_70

    sget v6, Lcom/android/server/connectivity/Tethering;->clients:I

    if-lez v6, :cond_c1

    sget v6, Lcom/android/server/connectivity/Tethering;->clients:I

    if-ne v6, v9, :cond_a0

    const v6, 0x1040747

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    :cond_70
    :goto_70
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-static {v6, v10, v0, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mTetheredVendorNotification:Landroid/app/Notification;

    iput p1, v6, Landroid/app/Notification;->icon:I

    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mTetheredVendorNotification:Landroid/app/Notification;

    iget v7, v6, Landroid/app/Notification;->defaults:I

    and-int/lit8 v7, v7, -0x2

    iput v7, v6, Landroid/app/Notification;->defaults:I

    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mTetheredVendorNotification:Landroid/app/Notification;

    const/4 v7, 0x2

    iput v7, v6, Landroid/app/Notification;->flags:I

    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mTetheredVendorNotification:Landroid/app/Notification;

    iput-object v5, v6, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mTetheredVendorNotification:Landroid/app/Notification;

    iget-object v7, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v7, v5, v1, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/server/connectivity/Tethering;->mTetheredVendorNotification:Landroid/app/Notification;

    iget v7, v7, Landroid/app/Notification;->icon:I

    iget-object v8, p0, Lcom/android/server/connectivity/Tethering;->mTetheredVendorNotification:Landroid/app/Notification;

    sget-object v9, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v6, v7, v8, v9}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    goto/16 :goto_e

    :cond_a0
    const v6, 0x1040746

    new-array v7, v9, [Ljava/lang/Object;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v9, Lcom/android/server/connectivity/Tethering;->clients:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-virtual {v4, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_70

    :cond_c1
    const v6, 0x1040744

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    goto :goto_70
.end method

.method private tetherUsb(Z)V
    .registers 12

    const-string v7, "Tethering"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "tetherUsb "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    new-array v4, v7, [Ljava/lang/String;

    :try_start_1b
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;

    invoke-interface {v7}, Landroid/os/INetworkManagementService;->listInterfaces()[Ljava/lang/String;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_20} :catch_37

    move-result-object v4

    move-object v0, v4

    array-length v5, v0

    const/4 v2, 0x0

    :goto_24
    if-ge v2, v5, :cond_48

    aget-object v3, v0, v2

    invoke-direct {p0, v3}, Lcom/android/server/connectivity/Tethering;->isUsb(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_45

    if-eqz p1, :cond_40

    invoke-virtual {p0, v3}, Lcom/android/server/connectivity/Tethering;->tether(Ljava/lang/String;)I

    move-result v6

    :goto_34
    if-nez v6, :cond_45

    :goto_36
    return-void

    :catch_37
    move-exception v1

    const-string v7, "Tethering"

    const-string v8, "Error listing Interfaces"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_36

    :cond_40
    invoke-virtual {p0, v3}, Lcom/android/server/connectivity/Tethering;->untether(Ljava/lang/String;)I

    move-result v6

    goto :goto_34

    :cond_45
    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    :cond_48
    const-string v7, "Tethering"

    const-string v8, "unable start or stop USB tethering"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36
.end method


# virtual methods
.method public checkDunRequired()V
    .registers 10

    const/4 v0, 0x5

    const/4 v8, 0x2

    const/4 v3, 0x4

    const/4 v7, 0x1

    iget-boolean v4, p0, Lcom/android/server/connectivity/Tethering;->mIsBootComplete:Z

    if-eqz v4, :cond_56

    invoke-virtual {p0}, Lcom/android/server/connectivity/Tethering;->setOemDunRequired()V

    :goto_b
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "tether_dun_required"

    invoke-static {v4, v5, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "tether_dun_required2"

    invoke-static {v4, v5, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v4

    :try_start_26
    const-string v5, "persist.sys.dataprefer.simid"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v7, :cond_da

    if-eq v1, v8, :cond_88

    if-ne v1, v7, :cond_5e

    const/4 v3, 0x4

    const/4 v5, 0x1

    invoke-static {v3, v5}, Landroid/net/MultiSimConnectivityManager;->getTypeMobileFromSimSlot(II)I

    move-result v0

    :goto_39
    const/4 v3, 0x4

    const/4 v5, 0x1

    invoke-static {v3, v5}, Landroid/net/MultiSimConnectivityManager;->getTypeMobileFromSimSlot(II)I

    move-result v3

    if-ne v0, v3, :cond_9c

    :goto_41
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v5, Lcom/android/server/connectivity/Tethering;->MOBILE2_TYPE:Ljava/lang/Integer;

    invoke-interface {v3, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_65

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v5, Lcom/android/server/connectivity/Tethering;->MOBILE2_TYPE:Ljava/lang/Integer;

    invoke-interface {v3, v5}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    goto :goto_41

    :catchall_53
    move-exception v3

    monitor-exit v4
    :try_end_55
    .catchall {:try_start_26 .. :try_end_55} :catchall_53

    throw v3

    :cond_56
    const-string v4, "Tethering"

    const-string v5, "Boot not complete yet."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    :cond_5e
    const/4 v3, 0x5

    const/4 v5, 0x1

    :try_start_60
    invoke-static {v3, v5}, Landroid/net/MultiSimConnectivityManager;->getTypeMobileFromSimSlot(II)I

    move-result v0

    goto :goto_39

    :cond_65
    :goto_65
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v5, Lcom/android/server/connectivity/Tethering;->HIPRI2_TYPE:Ljava/lang/Integer;

    invoke-interface {v3, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_77

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v5, Lcom/android/server/connectivity/Tethering;->HIPRI2_TYPE:Ljava/lang/Integer;

    invoke-interface {v3, v5}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    goto :goto_65

    :cond_77
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v5, Lcom/android/server/connectivity/Tethering;->DUN2_TYPE:Ljava/lang/Integer;

    invoke-interface {v3, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_88

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v5, Lcom/android/server/connectivity/Tethering;->DUN2_TYPE:Ljava/lang/Integer;

    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_88
    :goto_88
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v5, Lcom/android/server/connectivity/Tethering;->DUN2_TYPE:Ljava/lang/Integer;

    invoke-interface {v3, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d1

    const/4 v3, 0x4

    const/4 v5, 0x1

    invoke-static {v3, v5}, Landroid/net/MultiSimConnectivityManager;->getTypeMobileFromSimSlot(II)I

    move-result v3

    iput v3, p0, Lcom/android/server/connectivity/Tethering;->mPreferredUpstreamMobileApn:I

    :goto_9a
    monitor-exit v4

    return-void

    :cond_9c
    :goto_9c
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v5, Lcom/android/server/connectivity/Tethering;->DUN2_TYPE:Ljava/lang/Integer;

    invoke-interface {v3, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ae

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v5, Lcom/android/server/connectivity/Tethering;->DUN2_TYPE:Ljava/lang/Integer;

    invoke-interface {v3, v5}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    goto :goto_9c

    :cond_ae
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v5, Lcom/android/server/connectivity/Tethering;->MOBILE2_TYPE:Ljava/lang/Integer;

    invoke-interface {v3, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_bf

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v5, Lcom/android/server/connectivity/Tethering;->MOBILE2_TYPE:Ljava/lang/Integer;

    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_bf
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v5, Lcom/android/server/connectivity/Tethering;->HIPRI2_TYPE:Ljava/lang/Integer;

    invoke-interface {v3, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_88

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v5, Lcom/android/server/connectivity/Tethering;->HIPRI2_TYPE:Ljava/lang/Integer;

    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_88

    :cond_d1
    const/4 v3, -0x1

    const/4 v5, 0x1

    invoke-static {v3, v5}, Landroid/net/MultiSimConnectivityManager;->getTypeMobileFromSimSlot(II)I

    move-result v3

    iput v3, p0, Lcom/android/server/connectivity/Tethering;->mPreferredUpstreamMobileApn:I

    goto :goto_9a

    :cond_da
    if-eq v1, v8, :cond_116

    if-ne v1, v7, :cond_df

    move v0, v3

    :cond_df
    if-ne v0, v3, :cond_125

    :goto_e1
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v5, Lcom/android/server/connectivity/Tethering;->MOBILE_TYPE:Ljava/lang/Integer;

    invoke-interface {v3, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f3

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v5, Lcom/android/server/connectivity/Tethering;->MOBILE_TYPE:Ljava/lang/Integer;

    invoke-interface {v3, v5}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    goto :goto_e1

    :cond_f3
    :goto_f3
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v5, Lcom/android/server/connectivity/Tethering;->HIPRI_TYPE:Ljava/lang/Integer;

    invoke-interface {v3, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_105

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v5, Lcom/android/server/connectivity/Tethering;->HIPRI_TYPE:Ljava/lang/Integer;

    invoke-interface {v3, v5}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    goto :goto_f3

    :cond_105
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v5, Lcom/android/server/connectivity/Tethering;->DUN_TYPE:Ljava/lang/Integer;

    invoke-interface {v3, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_116

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v5, Lcom/android/server/connectivity/Tethering;->DUN_TYPE:Ljava/lang/Integer;

    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_116
    :goto_116
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v5, Lcom/android/server/connectivity/Tethering;->DUN_TYPE:Ljava/lang/Integer;

    invoke-interface {v3, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15a

    const/4 v3, 0x4

    iput v3, p0, Lcom/android/server/connectivity/Tethering;->mPreferredUpstreamMobileApn:I

    goto/16 :goto_9a

    :cond_125
    :goto_125
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v5, Lcom/android/server/connectivity/Tethering;->DUN_TYPE:Ljava/lang/Integer;

    invoke-interface {v3, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_137

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v5, Lcom/android/server/connectivity/Tethering;->DUN_TYPE:Ljava/lang/Integer;

    invoke-interface {v3, v5}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    goto :goto_125

    :cond_137
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v5, Lcom/android/server/connectivity/Tethering;->MOBILE_TYPE:Ljava/lang/Integer;

    invoke-interface {v3, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_148

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v5, Lcom/android/server/connectivity/Tethering;->MOBILE_TYPE:Ljava/lang/Integer;

    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_148
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v5, Lcom/android/server/connectivity/Tethering;->HIPRI_TYPE:Ljava/lang/Integer;

    invoke-interface {v3, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_116

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v5, Lcom/android/server/connectivity/Tethering;->HIPRI_TYPE:Ljava/lang/Integer;

    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_116

    :cond_15a
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/server/connectivity/Tethering;->mPreferredUpstreamMobileApn:I
    :try_end_15d
    .catchall {:try_start_60 .. :try_end_15d} :catchall_53

    goto/16 :goto_9a
.end method

.method clearMaxApNotification()V
    .registers 5

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-eqz v0, :cond_1b

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mMaxApNotification:Landroid/app/Notification;

    if-eqz v1, :cond_1b

    const v1, 0x104074a

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    iput-object v3, p0, Lcom/android/server/connectivity/Tethering;->mMaxApNotification:Landroid/app/Notification;

    :cond_1b
    return-void
.end method

.method createMaxApNotification()V
    .registers 16

    iget-object v11, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string v12, "notification"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationManager;

    const v4, 0x108008a

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v7

    const v11, 0x104074a

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const v11, 0x104074b

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    new-instance v5, Landroid/content/Intent;

    const-string v11, "android.net.wifi.MAXAP_NOTI"

    invoke-direct {v5, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v11, v12, v5, v13}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    new-instance v1, Landroid/app/Notification$Builder;

    iget-object v11, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-direct {v1, v11}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v8}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v11

    invoke-virtual {v11, v9, v10}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v11

    invoke-virtual {v11, v8}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v11

    invoke-virtual {v11, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v11

    invoke-virtual {v11, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v11

    invoke-virtual {v11, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    new-instance v3, Landroid/widget/RemoteViews;

    iget-object v11, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    const v12, 0x109015e

    invoke-direct {v3, v11, v12}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    const v11, 0x1020006

    invoke-virtual {v3, v11, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    const v11, 0x1020016

    invoke-virtual {v3, v11, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const-wide/16 v11, 0x0

    cmp-long v11, v9, v11

    if-eqz v11, :cond_84

    const v11, 0x102006c

    const/4 v12, 0x0

    invoke-virtual {v3, v11, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v11, 0x102006c

    const-string v12, "setTime"

    invoke-virtual {v3, v11, v12, v9, v10}, Landroid/widget/RemoteViews;->setLong(ILjava/lang/String;J)V

    :cond_84
    const v11, 0x102004e

    invoke-virtual {v3, v11, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v11

    iput-object v11, p0, Lcom/android/server/connectivity/Tethering;->mMaxApNotification:Landroid/app/Notification;

    iget-object v11, p0, Lcom/android/server/connectivity/Tethering;->mMaxApNotification:Landroid/app/Notification;

    iput-object v3, v11, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    const/4 v11, 0x0

    const v12, 0x104074a

    iget-object v13, p0, Lcom/android/server/connectivity/Tethering;->mMaxApNotification:Landroid/app/Notification;

    sget-object v14, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v6, v11, v12, v13, v14}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 10

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.DUMP"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_33

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission Denial: can\'t dump ConnectivityService.Tether from from pid="

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

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_32
    return-void

    :cond_33
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v4

    :try_start_36
    const-string v3, "mUpstreamIfaceTypes: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_41
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_67

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_41

    :catchall_64
    move-exception v3

    monitor-exit v4
    :try_end_66
    .catchall {:try_start_36 .. :try_end_66} :catchall_64

    throw v3

    :cond_67
    :try_start_67
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string v3, "Tether state:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_79
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_79

    :cond_9c
    monitor-exit v4
    :try_end_9d
    .catchall {:try_start_67 .. :try_end_9d} :catchall_64

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_32
.end method

.method public getCountTetheredIfaces()I
    .registers 8

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v6

    :try_start_8
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_12
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_33

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    iget-object v5, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    invoke-virtual {v4}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isTethered()Z

    move-result v5

    if-eqz v5, :cond_12

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :catchall_30
    move-exception v5

    monitor-exit v6
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_30

    throw v5

    :cond_33
    :try_start_33
    monitor-exit v6
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_30

    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->getRvfMode()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_42

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    :goto_41
    return v5

    :cond_42
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    goto :goto_41
.end method

.method public getErroredIfaces()[Ljava/lang/String;
    .registers 10

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v8, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v8

    :try_start_8
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_12
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    iget-object v7, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    invoke-virtual {v6}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isErrored()Z

    move-result v7

    if-eqz v7, :cond_12

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :catchall_30
    move-exception v7

    monitor-exit v8
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_30

    throw v7

    :cond_33
    :try_start_33
    monitor-exit v8
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_30

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v5, v7, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_3b
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_4c

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    aput-object v7, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3b

    :cond_4c
    return-object v5
.end method

.method public getLastTetherError(Ljava/lang/String;)I
    .registers 8

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v3

    :try_start_4
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object v1, v0

    if-nez v1, :cond_31

    const-string v2, "Tethering"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Tried to getLastTetherError on an unknown iface :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", ignoring"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    monitor-exit v3

    :goto_30
    return v2

    :cond_31
    invoke-virtual {v1}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->getLastError()I

    move-result v2

    monitor-exit v3

    goto :goto_30

    :catchall_37
    move-exception v2

    monitor-exit v3
    :try_end_39
    .catchall {:try_start_4 .. :try_end_39} :catchall_37

    throw v2
.end method

.method public getTetherableBluetoothRegexs()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetherableBluetoothRegexs:[Ljava/lang/String;

    return-object v0
.end method

.method public getTetherableIfaces()[Ljava/lang/String;
    .registers 10

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v8, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v8

    :try_start_8
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_12
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    iget-object v7, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    invoke-virtual {v6}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isAvailable()Z

    move-result v7

    if-eqz v7, :cond_12

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :catchall_30
    move-exception v7

    monitor-exit v8
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_30

    throw v7

    :cond_33
    :try_start_33
    monitor-exit v8
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_30

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v5, v7, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_3b
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_4c

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    aput-object v7, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3b

    :cond_4c
    return-object v5
.end method

.method public getTetherableUsbRegexs()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetherableUsbRegexs:[Ljava/lang/String;

    return-object v0
.end method

.method public getTetherableWifiRegexs()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetherableWifiRegexs:[Ljava/lang/String;

    return-object v0
.end method

.method public getTetheredIfacePairs()[Ljava/lang/String;
    .registers 6

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v4

    :try_start_7
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_11
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    invoke-virtual {v2}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isTethered()Z

    move-result v3

    if-eqz v3, :cond_11

    iget-object v3, v2, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mMyUpstreamIfaceName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v2, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :catchall_2e
    move-exception v3

    monitor-exit v4
    :try_end_30
    .catchall {:try_start_7 .. :try_end_30} :catchall_2e

    throw v3

    :cond_31
    :try_start_31
    monitor-exit v4
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_2e

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    return-object v3
.end method

.method public getTetheredIfaces()[Ljava/lang/String;
    .registers 10

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v8, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v8

    :try_start_8
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_12
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    iget-object v7, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    invoke-virtual {v6}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isTethered()Z

    move-result v7

    if-eqz v7, :cond_12

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :catchall_30
    move-exception v7

    monitor-exit v8
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_30

    throw v7

    :cond_33
    :try_start_33
    monitor-exit v8
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_30

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v5, v7, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_3b
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_4c

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    aput-object v7, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3b

    :cond_4c
    return-object v5
.end method

.method public getUpstreamIfaceTypes()[I
    .registers 6

    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v4

    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/connectivity/Tethering;->updateConfiguration()V

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    new-array v2, v3, [I

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v0, 0x0

    :goto_15
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    if-ge v0, v3, :cond_2c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :cond_2c
    monitor-exit v4

    return-object v2

    :catchall_2e
    move-exception v3

    monitor-exit v4
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_2e

    throw v3
.end method

.method public handleTetherIfaceChange()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    return-void
.end method

.method public interfaceAdded(Ljava/lang/String;)V
    .registers 9

    const-string v3, "Tethering"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "interfaceAdded "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v4

    :try_start_1d
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Tethering;->isWifi(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_24

    const/4 v0, 0x1

    :cond_24
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->isUsb(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2c

    const/4 v0, 0x1

    const/4 v2, 0x1

    :cond_2c
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Tethering;->isBluetooth(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_33

    const/4 v0, 0x1

    :cond_33
    if-nez v0, :cond_4f

    const-string v3, "Tethering"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not a tetherable iface, ignoring"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v4

    :goto_4e
    return-void

    :cond_4f
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    if-eqz v1, :cond_7c

    const-string v3, "Tethering"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "active iface ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") reported as added, ignoring"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v4

    goto :goto_4e

    :catchall_79
    move-exception v3

    monitor-exit v4
    :try_end_7b
    .catchall {:try_start_1d .. :try_end_7b} :catchall_79

    throw v3

    :cond_7c
    :try_start_7c
    new-instance v1, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, p1, v3, v2}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;-><init>(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;Landroid/os/Looper;Z)V

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->start()V

    monitor-exit v4
    :try_end_8c
    .catchall {:try_start_7c .. :try_end_8c} :catchall_79

    goto :goto_4e
.end method

.method public interfaceClassDataActivityChanged(Ljava/lang/String;Z)V
    .registers 3

    return-void
.end method

.method public interfaceLinkStateChanged(Ljava/lang/String;Z)V
    .registers 6

    const-string v0, "Tethering"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "interfaceLinkStateChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1, p2}, Lcom/android/server/connectivity/Tethering;->interfaceStatusChanged(Ljava/lang/String;Z)V

    return-void
.end method

.method public interfaceRemoved(Ljava/lang/String;)V
    .registers 7

    const-string v1, "Tethering"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "interfaceRemoved "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1b
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    if-nez v0, :cond_45

    const-string v1, "Tethering"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "attempting to remove unknown iface ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "), ignoring"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    :goto_44
    return-void

    :cond_45
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->sendMessage(I)V

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2

    goto :goto_44

    :catchall_50
    move-exception v1

    monitor-exit v2
    :try_end_52
    .catchall {:try_start_1b .. :try_end_52} :catchall_50

    throw v1
.end method

.method public interfaceStatusChanged(Ljava/lang/String;Z)V
    .registers 10

    const-string v3, "Tethering"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "interfaceStatusChanged "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v4

    :try_start_27
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Tethering;->isWifi(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_32

    const/4 v0, 0x1

    :cond_2e
    :goto_2e
    if-nez v0, :cond_43

    monitor-exit v4

    :goto_31
    return-void

    :cond_32
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->isUsb(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3b

    const/4 v0, 0x1

    const/4 v2, 0x1

    goto :goto_2e

    :cond_3b
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Tethering;->isBluetooth(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2e

    const/4 v0, 0x1

    goto :goto_2e

    :cond_43
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    if-eqz p2, :cond_63

    if-nez v1, :cond_5e

    new-instance v1, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, p1, v3, v2}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;-><init>(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;Landroid/os/Looper;Z)V

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->start()V

    :cond_5e
    :goto_5e
    monitor-exit v4

    goto :goto_31

    :catchall_60
    move-exception v3

    monitor-exit v4
    :try_end_62
    .catchall {:try_start_27 .. :try_end_62} :catchall_60

    throw v3

    :cond_63
    :try_start_63
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->isUsb(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_82

    const-string v3, "Tethering"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ignore interface down for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5e

    :cond_82
    if-eqz v1, :cond_5e

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->sendMessage(I)V

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8d
    .catchall {:try_start_63 .. :try_end_8d} :catchall_60

    goto :goto_5e
.end method

.method public isBluetooth(Ljava/lang/String;)Z
    .registers 8

    iget-object v5, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v5

    :try_start_3
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetherableBluetoothRegexs:[Ljava/lang/String;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v2, :cond_17

    aget-object v3, v0, v1

    invoke-virtual {p1, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14

    const/4 v4, 0x1

    monitor-exit v5

    :goto_13
    return v4

    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_17
    const/4 v4, 0x0

    monitor-exit v5

    goto :goto_13

    :catchall_1a
    move-exception v4

    monitor-exit v5
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v4
.end method

.method public isWifi(Ljava/lang/String;)Z
    .registers 8

    iget-object v5, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v5

    :try_start_3
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetherableWifiRegexs:[Ljava/lang/String;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v2, :cond_17

    aget-object v3, v0, v1

    invoke-virtual {p1, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14

    const/4 v4, 0x1

    monitor-exit v5

    :goto_13
    return v4

    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_17
    const/4 v4, 0x0

    monitor-exit v5

    goto :goto_13

    :catchall_1a
    move-exception v4

    monitor-exit v5
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v4
.end method

.method public limitReached(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method public setOemDunRequired()V
    .registers 14

    const/4 v12, 0x0

    const-string v0, "Tethering"

    const-string v1, "setOemDunRequired"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, ""

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    const-string v2, "persist.sys.dataprefer.simid"

    invoke-static {v2, v12}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/MultiSimManager;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/telephony/TelephonyManager;

    if-nez v10, :cond_28

    const-string v0, "Tethering"

    const-string v1, "No telephony manager"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27
    :goto_27
    return-void

    :cond_28
    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3a

    const-string v0, "Tethering"

    const-string v1, "No numeric data"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27

    :cond_3a
    const/4 v6, 0x0

    const/4 v8, 0x0

    new-instance v3, Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "numeric = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :try_start_5a
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_a6

    const-string v0, "Tethering"

    const-string v1, "Query databases to find dun type"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_a6

    :cond_78
    const-string v0, "type"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a0

    const-string v0, "dun"

    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a0

    const-string v0, "default"

    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a0

    const-string v0, "Tethering"

    const-string v1, "Dun type is exist"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x1

    :cond_a0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_a3
    .catchall {:try_start_5a .. :try_end_a3} :catchall_e2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5a .. :try_end_a3} :catch_c2

    move-result v0

    if-nez v0, :cond_78

    :cond_a6
    if-eqz v6, :cond_ab

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_ab
    if-eqz v8, :cond_e9

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "tether_dun_required"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v0, "Tethering"

    const-string v1, "Set dun requiered as 1"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_27

    :catch_c2
    move-exception v7

    :try_start_c3
    const-string v0, "Tethering"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception caught to query databases : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_db
    .catchall {:try_start_c3 .. :try_end_db} :catchall_e2

    if-eqz v6, :cond_27

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_27

    :catchall_e2
    move-exception v0

    if-eqz v6, :cond_e8

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_e8
    throw v0

    :cond_e9
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "tether_dun_required"

    invoke-static {v0, v1, v12}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v0, "Tethering"

    const-string v1, "Set dun requiered as 0"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_27
.end method

.method public setUsbTethering(Z)I
    .registers 8

    const/4 v5, 0x0

    const-string v2, "Tethering"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setUsbTethering("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string v3, "usb"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/usb/UsbManager;

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v3

    if-eqz p1, :cond_76

    :try_start_2e
    iget-boolean v2, p0, Lcom/android/server/connectivity/Tethering;->mRndisEnabled:Z

    if-eqz v2, :cond_38

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/server/connectivity/Tethering;->tetherUsb(Z)V

    :goto_36
    monitor-exit v3

    return v5

    :cond_38
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/connectivity/Tethering;->mUsbTetherRequested:Z

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "enabled"

    const-string v4, "TETHER_ALWAYS_ON_MODE"

    invoke-static {v0, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6f

    const-string v2, "Tethering"

    const-string v4, "[Tethering always mode] call tetherUsb()"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "adb_enabled"

    const/4 v4, 0x0

    invoke-static {v0, v2, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_65

    const-string v2, "adb_enabled"

    const/4 v4, 0x0

    invoke-static {v0, v2, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_65
    const-string v2, "rndis,acm,diag"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    goto :goto_36

    :catchall_6c
    move-exception v2

    monitor-exit v3
    :try_end_6e
    .catchall {:try_start_2e .. :try_end_6e} :catchall_6c

    throw v2

    :cond_6f
    :try_start_6f
    const-string v2, "rndis"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    goto :goto_36

    :cond_76
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/server/connectivity/Tethering;->tetherUsb(Z)V

    iget-boolean v2, p0, Lcom/android/server/connectivity/Tethering;->mRndisEnabled:Z

    if-eqz v2, :cond_83

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    :cond_83
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/connectivity/Tethering;->mUsbTetherRequested:Z
    :try_end_86
    .catchall {:try_start_6f .. :try_end_86} :catchall_6c

    goto :goto_36
.end method

.method public tether(Ljava/lang/String;)I
    .registers 10

    const/16 v5, 0x14

    const/4 v4, 0x2

    const-string v3, "Tethering"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Tethering "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v6

    :try_start_1f
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object v2, v0

    monitor-exit v6
    :try_end_2a
    .catchall {:try_start_1f .. :try_end_2a} :catchall_4d

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string v6, "enterprise_policy"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->isUsb(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_50

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/enterprise/RestrictionPolicy;->isUsbTetheringEnabled()Z

    move-result v3

    if-nez v3, :cond_50

    const-string v3, "Tethering"

    const-string v5, "Tethering USB is not allowed (MDM)"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    :goto_4c
    return v3

    :catchall_4d
    move-exception v3

    :try_start_4e
    monitor-exit v6
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4d

    throw v3

    :cond_50
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Tethering;->isBluetooth(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_69

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/enterprise/RestrictionPolicy;->isBluetoothTetheringEnabled()Z

    move-result v3

    if-nez v3, :cond_69

    const-string v3, "Tethering"

    const-string v5, "Tethering Bluetooth is not allowed (MDM)"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    goto :goto_4c

    :cond_69
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->isInternetSharingBlockedByActiveSync()Z

    move-result v3

    if-eqz v3, :cond_7b

    const-string v3, "Tethering"

    const-string v4, "[ActiveSync] tether() Internet sharing has banned due to security policy."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, v5}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->sendMessage(I)V

    move v3, v5

    goto :goto_4c

    :cond_7b
    if-nez v2, :cond_9d

    const-string v3, "Tethering"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Tried to Tether an unknown iface :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", ignoring"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    goto :goto_4c

    :cond_9d
    invoke-virtual {v2}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isAvailable()Z

    move-result v3

    if-nez v3, :cond_c9

    invoke-virtual {v2}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isErrored()Z

    move-result v3

    if-nez v3, :cond_c9

    const-string v3, "Tethering"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Tried to Tether an unavailable iface :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", ignoring"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x4

    goto :goto_4c

    :cond_c9
    invoke-virtual {v2, v4}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->sendMessage(I)V

    const/4 v3, 0x0

    goto/16 :goto_4c
.end method

.method public untether(Ljava/lang/String;)I
    .registers 7

    const-string v2, "Tethering"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Untethering "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v3

    :try_start_1c
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object v1, v0

    monitor-exit v3
    :try_end_27
    .catchall {:try_start_1c .. :try_end_27} :catchall_49

    if-nez v1, :cond_4c

    const-string v2, "Tethering"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tried to Untether an unknown iface :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ignoring"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    :goto_48
    return v2

    :catchall_49
    move-exception v2

    :try_start_4a
    monitor-exit v3
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    throw v2

    :cond_4c
    invoke-virtual {v1}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isErrored()Z

    move-result v2

    if-eqz v2, :cond_72

    const-string v2, "Tethering"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tried to Untethered an errored iface :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ignoring"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x4

    goto :goto_48

    :cond_72
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->sendMessage(I)V

    const/4 v2, 0x0

    goto :goto_48
.end method

.method updateConfiguration()V
    .registers 18

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x107001d

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v11

    const-string v14, "wlan0"

    const-string v15, ","

    invoke-virtual {v14, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x1070020

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x1070023

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v8

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    const-string v14, "connectivity"

    invoke-static {v14}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v4

    :try_start_44
    invoke-interface {v4}, Landroid/net/IConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v14

    invoke-virtual {v14}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    move-object v2, v8

    array-length v9, v2

    const/4 v7, 0x0

    :goto_4f
    if-ge v7, v9, :cond_79

    aget v6, v2, v7

    if-ne v6, v1, :cond_5d

    new-instance v14, Ljava/lang/Integer;

    invoke-direct {v14, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v13, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_5d} :catch_60

    :cond_5d
    add-int/lit8 v7, v7, 0x1

    goto :goto_4f

    :catch_60
    move-exception v5

    const-string v14, "Tethering"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Exception adding default nw to upstreamIfaceTypes: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_79
    move-object v2, v8

    array-length v9, v2

    const/4 v7, 0x0

    :goto_7c
    if-ge v7, v9, :cond_96

    aget v6, v2, v7

    new-instance v14, Ljava/lang/Integer;

    invoke-direct {v14, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v13, v14}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_93

    new-instance v14, Ljava/lang/Integer;

    invoke-direct {v14, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v13, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_93
    add-int/lit8 v7, v7, 0x1

    goto :goto_7c

    :cond_96
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v15

    :try_start_9b
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/server/connectivity/Tethering;->mTetherableUsbRegexs:[Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/server/connectivity/Tethering;->mTetherableWifiRegexs:[Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/server/connectivity/Tethering;->mTetherableBluetoothRegexs:[Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    monitor-exit v15
    :try_end_ac
    .catchall {:try_start_9b .. :try_end_ac} :catchall_b0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/connectivity/Tethering;->checkDunRequired()V

    return-void

    :catchall_b0
    move-exception v14

    :try_start_b1
    monitor-exit v15
    :try_end_b2
    .catchall {:try_start_b1 .. :try_end_b2} :catchall_b0

    throw v14
.end method
