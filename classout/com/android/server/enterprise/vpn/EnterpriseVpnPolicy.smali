.class public Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;
.super Landroid/app/enterprise/IEnterpriseVpnPolicy$Stub;
.source "EnterpriseVpnPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;
.implements Lcom/android/server/enterprise/EnterpriseContainerSubscriber;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;,
        Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$FirewallRule;,
        Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$DatabaseColumnValues;,
        Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;,
        Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;,
        Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnReceiver;,
        Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnCallback;,
        Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$LooperThread;,
        Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;,
        Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnCallBack;
    }
.end annotation


# static fields
.field private static final ACTION_MOCANA_FIPSVPN_SERVICE:Ljava/lang/String; = "com.mocana.vpn.BIND_MOCANA_SERVICE"

.field private static final ACTION_VPN_ANYCONNECT_SERVICE:Ljava/lang/String; = "android.app.enterprise.VPN_ANYCONNECT"

.field private static final ACTIVITY_PACKAGE:Ljava/lang/String; = "com.samsung.android.mdm"

.field private static final ACTIVITY_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.mdm.VpnError"

.field private static final CAC_AUTHENTICATION:I = 0x6

.field private static final CERTIFICATE_AUTHENTICATION:I = 0x1

.field private static final CONTAINER_PREFIX:Ljava/lang/String; = "sec_container_"

.field private static final CONTAINER_REMOVAL_INTENT:Ljava/lang/String; = "enterprise.container.uninstalled"

#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field private static final DNS_CONF_FILE_PATH:Ljava/lang/String; = "/data/system/dnsproperties.ini"

.field private static final FIPS:I = 0x1

.field private static final FIPS_ERROR:I = -0x1

.field private static final GET_STATUS_IS_CONNECTED:Ljava/lang/String; = "CONNECTED"

.field private static final GET_STATUS_IS_CONNECTING:Ljava/lang/String; = "CONNECTING"

.field private static final GET_STATUS_IS_DISCONNECTING:Ljava/lang/String; = "DISCONNECTING"

.field private static final GET_STATUS_IS_FAILED:Ljava/lang/String; = "FAILED"

.field private static final GET_STATUS_IS_IDLE:Ljava/lang/String; = "IDLE"

.field private static final INVALID_CONTAINER_ID:I = 0x0

.field private static final INVALID_UID:I = -0x1

.field private static final MAP_KEY_ERRORSTRING:Ljava/lang/String; = "errorString"

.field private static final MAP_KEY_EXTRA_REPLACING:Ljava/lang/String; = "new_install_or_update"

.field private static final MAP_KEY_PACKAGENAME:Ljava/lang/String; = "package"

.field private static final MAP_KEY_PROFILENAME:Ljava/lang/String; = "profileName"

.field private static final MAP_KEY_STATE:Ljava/lang/String; = "state"

.field private static final MAP_KEY_STATUS:Ljava/lang/String; = "status"

.field private static final MAP_KEY_UID:Ljava/lang/String; = "uid"

.field private static final MAX_DNS_SERVERS:I = 0x4

.field private static final MOCANA_SERVICE_PACKAGE:Ljava/lang/String; = "com.mocana.vpn.android"

.field private static final NON_FIPS:I = 0x0

.field private static final NOTIFICATION_ID:I = 0x1

.field private static final NOTIFICATION_TAG:Ljava/lang/String; = "VPN_ERROR_RETRY"

.field private static final NO_ERROR_STOP_CONNECTION_CALLBACK:Ljava/lang/String; = "No Error"

.field private static final PROFILE_MAX_CHARACTERS:I = 0xf

.field private static final SET_FIPS:Z = true

.field private static final SET_NONFIPS:Z = false

.field private static TAG:Ljava/lang/String; = null

.field private static final VPN_CALLBACK_STATE_START:I = 0x0

.field private static final VPN_CALLBACK_STATE_STOP:I = 0x1

.field private static final VPN_ERRORED_PROFILE_INFO:Ljava/lang/String; = "vpn_error_profile_info"

.field private static final VPN_ERROR_MESSAGE:Ljava/lang/String; = "vpn_error_message"

.field private static final VPN_ERROR_TITLE:Ljava/lang/String; = "vpn_error_title"

.field private static final VPN_PERMISSION:Ljava/lang/String; = "android.permission.sec.MDM_ENTERPRISE_VPN"

.field private static final VPN_RETRY_CALLBACK_ACTION:Ljava/lang/String; = "com.samsung.android.mdm.VPN_RETRY_CALLBACK"

.field private static kvpn_install_type:Z

.field private static final syncObj:Ljava/lang/Object;


# instance fields
.field cAnyconnect:Landroid/content/ServiceConnection;

.field cMocanaFipsConnect:Landroid/content/ServiceConnection;

.field private mAnyconnectService:Landroid/app/enterprise/IEnterpriseVpnInterface;

.field private mConnectionManager:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mLooperThread:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$LooperThread;

.field private mMocanaService:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

.field private mNetworkManagementService:Landroid/os/INetworkManagementService;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private final packageNameVpnMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final profileNameVpnMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final uidIptableBlockMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final uidIptableRouteMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private vpninterfacelist:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;


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
    sput-boolean v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->DBG:Z

    const-string v0, "OldVpnPolicy"

    sput-object v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    sput-boolean v1, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->kvpn_install_type:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->syncObj:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/app/enterprise/IEnterpriseVpnPolicy$Stub;-><init>()V

    new-instance v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;-><init>(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->vpninterfacelist:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;

    new-instance v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$1;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$1;-><init>(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->cAnyconnect:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$2;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$2;-><init>(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->cMocanaFipsConnect:Landroid/content/ServiceConnection;

    sget-object v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    const-string v1, "In Constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->mContext:Landroid/content/Context;

    iput-object v2, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->mAnyconnectService:Landroid/app/enterprise/IEnterpriseVpnInterface;

    iput-object v2, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->mMocanaService:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    iput-object v2, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->packageNameVpnMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->profileNameVpnMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->uidIptableBlockMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->uidIptableRouteMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->setupIntentFilter()V

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->initLooperThread()V

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->initializeHashtable()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Landroid/app/enterprise/IEnterpriseVpnInterface;
    .registers 2

    iget-object v0, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->mAnyconnectService:Landroid/app/enterprise/IEnterpriseVpnInterface;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;Landroid/app/enterprise/IEnterpriseVpnInterface;)Landroid/app/enterprise/IEnterpriseVpnInterface;
    .registers 2

    iput-object p1, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->mAnyconnectService:Landroid/app/enterprise/IEnterpriseVpnInterface;

    return-object p1
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->printVpnState()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->isNetworkConnected()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->runAllVpnService()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->handleMocanaServiceDisconnect()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->bindMocanaVpnInterface()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .registers 2

    iget-object v0, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;Ljava/lang/String;)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->removeVpnConnectionForPerAppVpn(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->removeVpnConnectionAfterAdminRemoval(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$LooperThread;
    .registers 2

    iget-object v0, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->mLooperThread:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$LooperThread;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$LooperThread;
    .registers 2

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->getLooperThread()Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$LooperThread;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;
    .registers 2

    iget-object v0, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->vpninterfacelist:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->addIptableBlockingRulesAfterBootComplete()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->clearDatabaseAfterContainerRemoval(I)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Ljava/util/HashMap;
    .registers 2

    iget-object v0, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->profileNameVpnMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Ljava/util/List;
    .registers 2

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->getRunningPackages()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;Ljava/lang/String;Ljava/util/List;)Z
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->isPackageRunning(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->addIPtableRoute(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->removeIPtableBLock(I)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;Ljava/lang/String;ILjava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->setDnsSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 2

    iget-object v0, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->createNotification()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->bindAnyconnectVpnInterface()V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->cancelNotification()V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->addIPtableBLock(I)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->removeIPtableRoute(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->unsetDnsSystemProperty(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->createNotification(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->printPackageVpnMap()V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->printProfileVpnMap()V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;Ljava/lang/String;I)Z
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->updatePackageData(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3800(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;Ljava/lang/String;)Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->getVpnObjectFromDB(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->addToHashMap(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;
    .registers 2

    iget-object v0, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->mMocanaService:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;Ljava/lang/String;)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->isPackageRunning(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;)Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;
    .registers 2

    iput-object p1, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->mMocanaService:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    return-object p1
.end method

.method static synthetic access$4100(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)I
    .registers 2

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->findUid()I

    move-result v0

    return v0
.end method

.method static synthetic access$4200(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Ljava/util/HashMap;
    .registers 2

    iget-object v0, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->packageNameVpnMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;Ljava/lang/String;)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->deleteUIDFromPackageData(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4400(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->removeFromHashMapByPackageName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->kvpn_install_type:Z

    return v0
.end method

.method static synthetic access$502(Z)Z
    .registers 1

    sput-boolean p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->kvpn_install_type:Z

    return p0
.end method

.method static synthetic access$600(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->createVpnFromDatabase()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->checkVpnModeOfOperationAfterNewinstall()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->checkPackagesOnStartup()V

    return-void
.end method

.method static synthetic access$900()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->DBG:Z

    return v0
.end method

.method private addIPtableBLock(I)V
    .registers 5

    sget-boolean v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->DBG:Z

    if-eqz v0, :cond_1c

    sget-object v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add iptable : called with UID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    const/4 v0, -0x1

    if-le p1, v0, :cond_28

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->applySetBlockRules(Ljava/lang/String;I)V

    :goto_27
    return-void

    :cond_28
    sget-object v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    const-string v1, "add iptable : Invalid uid received"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27
.end method

.method private addIPtableRoute(ILjava/lang/String;)V
    .registers 6

    sget-object v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    const-string v1, "add iptable route : In "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    if-lt p1, v0, :cond_c

    if-nez p2, :cond_2f

    :cond_c
    sget-object v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add iptable route : Invalid UID or interface name received:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2e
    return-void

    :cond_2f
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, v1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->applySetMarkRules(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_2e
.end method

.method private addIptableBlockingRulesAfterBootComplete()V
    .registers 13

    sget-boolean v9, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->DBG:Z

    if-eqz v9, :cond_b

    sget-object v9, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    const-string v10, "addIptableBlockingRulesAfterBootComplete is reached inintally "

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    :try_start_b
    iget-object v9, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->profileNameVpnMap:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v3

    const/4 v1, 0x0

    array-length v4, v3

    const/4 v1, 0x0

    :goto_18
    if-ge v1, v4, :cond_a0

    iget-object v9, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->profileNameVpnMap:Ljava/util/HashMap;

    aget-object v10, v3, v1

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;

    if-eqz v8, :cond_a1

    invoke-virtual {v8}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;->getVpnStateList()Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_ac

    const/4 v2, 0x0

    :goto_2d
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v2, v9, :cond_ac

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;

    if-eqz v6, :cond_73

    sget-boolean v9, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->DBG:Z

    if-eqz v9, :cond_69

    sget-object v9, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "addIptableBlockingRulesAfterBootComplete: uid is"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getUid()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "and profile name is"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getProfileName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_69
    invoke-virtual {v6}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getUid()I

    move-result v9

    invoke-direct {p0, v9}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->addIPtableBLock(I)V

    :cond_70
    :goto_70
    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    :cond_73
    sget-boolean v9, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->DBG:Z

    if-eqz v9, :cond_70

    sget-object v9, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    const-string v10, "List contains NULL object."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_7e} :catch_7f

    goto :goto_70

    :catch_7f
    move-exception v0

    sget-boolean v9, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->DBG:Z

    if-eqz v9, :cond_a0

    sget-object v9, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a0
    return-void

    :cond_a1
    :try_start_a1
    sget-boolean v9, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->DBG:Z

    if-eqz v9, :cond_ac

    sget-object v9, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    const-string v10, "ProfileNameVpnEntry contains NULL object."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ac
    .catch Ljava/lang/Exception; {:try_start_a1 .. :try_end_ac} :catch_7f

    :cond_ac
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_18
.end method

.method private addToHashMap(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;)V
    .registers 10

    sget-object v7, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->syncObj:Ljava/lang/Object;

    monitor-enter v7

    if-eqz p1, :cond_31

    :try_start_5
    invoke-virtual {p1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getProfileName()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->packageNameVpnMap:Ljava/util/HashMap;

    invoke-virtual {v6, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->profileNameVpnMap:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;

    if-nez v5, :cond_21

    new-instance v5, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;

    invoke-direct {v5, p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;-><init>(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V

    :cond_21
    invoke-virtual {v5}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;->getVpnStateList()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_2c

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    :cond_2c
    if-eqz v0, :cond_41

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_31
    :goto_31
    sget-boolean v6, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->DBG:Z

    if-eqz v6, :cond_38

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->printPackageVpnMap()V

    :cond_38
    sget-boolean v6, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->DBG:Z

    if-eqz v6, :cond_3f

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->printProfileVpnMap()V

    :cond_3f
    monitor-exit v7

    return-void

    :cond_41
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5, v2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;->setVpnStateList(Ljava/util/ArrayList;)V

    iget-object v6, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->profileNameVpnMap:Ljava/util/HashMap;

    invoke-virtual {v6, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_31

    :catchall_52
    move-exception v6

    monitor-exit v7
    :try_end_54
    .catchall {:try_start_5 .. :try_end_54} :catchall_52

    throw v6
.end method

.method private applySetBlockRules(Ljava/lang/String;I)V
    .registers 9

    const/4 v0, 0x0

    if-nez p2, :cond_6c

    const-string v0, "A"

    :goto_5
    invoke-direct {p0, v0, p1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->getIPtableBlockCmd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, p1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->getIPtableBlockCmdForOutgoingPackets(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "A"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_82

    iget-object v3, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->uidIptableBlockMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7a

    iget-object v3, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->uidIptableBlockMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v3, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->DBG:Z

    if-eqz v3, :cond_2d

    sget-object v3, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    const-string v4, "apply block rule : Iptable block rule is going to be added for the current UID"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2d
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->runSingleCommand(Ljava/lang/String;)V

    sget-boolean v3, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->DBG:Z

    if-eqz v3, :cond_4c

    sget-object v3, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "apply block rule : ipCommand:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4c
    invoke-direct {p0, v2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->runSingleCommand(Ljava/lang/String;)V

    sget-boolean v3, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->DBG:Z

    if-eqz v3, :cond_6b

    sget-object v3, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "apply block rule : ipTable BLock for outgoing packet is added"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6b
    :goto_6b
    return-void

    :cond_6c
    const/4 v3, 0x1

    if-ne p2, v3, :cond_72

    const-string v0, "D"

    goto :goto_5

    :cond_72
    sget-object v3, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    const-string v4, "apply block rule : Block type is neither Append nor delete"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6b

    :cond_7a
    sget-object v3, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    const-string v4, "apply block rule : Iptable block rule is already present for the current UID"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6b

    :cond_82
    const-string v3, "D"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6b

    iget-object v3, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->uidIptableBlockMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_dd

    iget-object v3, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->uidIptableBlockMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    const-string v4, "apply block rule : Iptable block rule is going to be removed for the current UID"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_9e
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->runSingleCommand(Ljava/lang/String;)V

    sget-boolean v3, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->DBG:Z

    if-eqz v3, :cond_bd

    sget-object v3, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "apply block rule : ipCommand:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_bd
    invoke-direct {p0, v2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->runSingleCommand(Ljava/lang/String;)V

    sget-boolean v3, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->DBG:Z

    if-eqz v3, :cond_6b

    sget-object v3, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "apply block rule : ipTable BLock for outgoing packet is added"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6b

    :cond_dd
    sget-object v3, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    const-string v4, "apply block rule : Iptable block rule is not present for the current UID"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9e
.end method

.method private applySetMarkRules(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p3, :cond_58

    const-string v0, "A"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setprop ctl.start ipruleset:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->DBG:Z

    if-eqz v2, :cond_35

    sget-object v2, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "apply mark rule : In setprop mark:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_35
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->uidIptableRouteMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_50

    iget-object v2, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->uidIptableRouteMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    const-string v3, "apply mark rule : added for the current UID"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->runSingleCommand(Ljava/lang/String;)V

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->applySetMarkRules2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4f
    :goto_4f
    return-void

    :cond_50
    sget-object v2, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    const-string v3, "apply mark rule : already present for the current UID"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4f

    :cond_58
    const/4 v2, 0x1

    if-ne p3, v2, :cond_4f

    const-string v0, "D"

    iget-object v2, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->uidIptableRouteMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_75

    iget-object v2, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->uidIptableRouteMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    const-string v3, "apply mark rule : removed for the current UID"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_71
    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->applySetMarkRules2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4f

    :cond_75
    sget-object v2, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    const-string v3, "apply mark rule : not present for the current UID"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_71
.end method

.method private applySetMarkRules2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->getIPtableConnMarkCmd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-boolean v3, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->DBG:Z

    if-eqz v3, :cond_20

    sget-object v3, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "apply mark rule2 : mark:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->runSingleCommand(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->getIPtableConnRestoreCmd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-boolean v3, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->DBG:Z

    if-eqz v3, :cond_43

    sget-object v3, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "apply mark rule2 : restore:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_43
    invoke-direct {p0, v2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->runSingleCommand(Ljava/lang/String;)V

    invoke-direct {p0, p1, p3}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->getIPtableMasqueradeCmd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-boolean v3, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->DBG:Z

    if-eqz v3, :cond_66

    sget-object v3, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "apply mark rule2 : MASQUERADE:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_66
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->runSingleCommand(Ljava/lang/String;)V

    return-void
.end method

.method private arrayListConverterToByteArray(Ljava/util/List;)[B
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)[B"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v2, 0x0

    if-nez p1, :cond_11

    sget-boolean v7, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->DBG:Z

    if-eqz v7, :cond_f

    sget-object v7, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    const-string v8, "The arrayListConverterToByteArray routeList value is null"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    const/4 v7, 0x0

    :goto_10
    return-object v7

    :cond_11
    :try_start_11
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_65
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_16} :catch_da

    :try_start_16
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1b
    .catchall {:try_start_16 .. :try_end_1b} :catchall_d3
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1b} :catch_dd

    :try_start_1b
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    sget-boolean v7, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->DBG:Z

    if-eqz v7, :cond_47

    sget-object v7, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "arrayListConverterToByteArray value is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_47
    invoke-virtual {v3, v6}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_4a
    .catchall {:try_start_1b .. :try_end_4a} :catchall_d6
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_4a} :catch_4b

    goto :goto_1f

    :catch_4b
    move-exception v4

    move-object v2, v3

    move-object v0, v1

    :goto_4e
    :try_start_4e
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_51
    .catchall {:try_start_4e .. :try_end_51} :catchall_65

    :try_start_51
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_57} :catch_8f

    :cond_57
    :goto_57
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    goto :goto_10

    :cond_5c
    :try_start_5c
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_62} :catch_b1

    :cond_62
    :goto_62
    move-object v2, v3

    move-object v0, v1

    goto :goto_57

    :catchall_65
    move-exception v7

    :goto_66
    :try_start_66
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_6c} :catch_6d

    :cond_6c
    :goto_6c
    throw v7

    :catch_6d
    move-exception v4

    sget-boolean v8, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->DBG:Z

    if-eqz v8, :cond_6c

    sget-object v8, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "arrayListConverterToByteArray  exception value is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6c

    :catch_8f
    move-exception v4

    sget-boolean v7, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->DBG:Z

    if-eqz v7, :cond_57

    sget-object v7, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "arrayListConverterToByteArray  exception value is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_57

    :catch_b1
    move-exception v4

    sget-boolean v7, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->DBG:Z

    if-eqz v7, :cond_62

    sget-object v7, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "arrayListConverterToByteArray  exception value is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_62

    :catchall_d3
    move-exception v7

    move-object v0, v1

    goto :goto_66

    :catchall_d6
    move-exception v7

    move-object v2, v3

    move-object v0, v1

    goto :goto_66

    :catch_da
    move-exception v4

    goto/16 :goto_4e

    :catch_dd
    move-exception v4

    move-object v0, v1

    goto/16 :goto_4e
.end method

.method private bindAnyconnectVpnInterface()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->mAnyconnectService:Landroid/app/enterprise/IEnterpriseVpnInterface;

    if-nez v0, :cond_1a

    sget-object v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    const-string v1, "bind to anyconnect interface"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.app.enterprise.VPN_ANYCONNECT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->cAnyconnect:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    :cond_1a
    return-void
.end method

.method private bindMocanaVpnInterface()V
    .registers 5

    sget-object v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    const-string v1, "bind to mocana interface"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->mMocanaService:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    if-nez v0, :cond_29

    const-string v0, "com.mocana.vpn.android"

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    sget-object v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    const-string v1, "bind to mocana interface : Mocana package found. Binding to it."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.mocana.vpn.BIND_MOCANA_SERVICE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->cMocanaFipsConnect:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    :cond_29
    return-void
.end method

.method private byteArrayToArrayListConverter(Ljava/lang/String;)Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    const/4 v2, 0x0

    iget-object v8, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "Vpn_table"

    const-string v10, "profile"

    const-string v11, "Forward_Routes"

    invoke-virtual {v8, v9, v10, p1, v11}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBlob(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v6

    sget-boolean v8, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->DBG:Z

    if-eqz v8, :cond_2f

    sget-object v8, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "The byteArrayToArrayListConverter initial value is"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2f
    if-nez v6, :cond_3e

    sget-boolean v8, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->DBG:Z

    if-eqz v8, :cond_3c

    sget-object v8, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    const-string v9, "The byteArrayToArrayListConverter routeBytes value is null"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3c
    const/4 v7, 0x0

    :cond_3d
    :goto_3d
    return-object v7

    :cond_3e
    :try_start_3e
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_43
    .catchall {:try_start_3e .. :try_end_43} :catchall_aa
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_43} :catch_fd

    :try_start_43
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_48
    .catchall {:try_start_43 .. :try_end_48} :catchall_f6
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_48} :catch_100

    :goto_48
    :try_start_48
    invoke-virtual {v3}, Ljava/io/DataInputStream;->available()I

    move-result v8

    if-lez v8, :cond_a1

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v5

    sget-boolean v8, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->DBG:Z

    if-eqz v8, :cond_6e

    sget-object v8, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "The byteArrayToArrayListConverter value is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6e
    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_71
    .catchall {:try_start_48 .. :try_end_71} :catchall_f9
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_71} :catch_72

    goto :goto_48

    :catch_72
    move-exception v4

    move-object v2, v3

    move-object v0, v1

    :goto_75
    :try_start_75
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_78
    .catchall {:try_start_75 .. :try_end_78} :catchall_aa

    :try_start_78
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_7e} :catch_7f

    goto :goto_3d

    :catch_7f
    move-exception v4

    sget-boolean v8, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->DBG:Z

    if-eqz v8, :cond_3d

    sget-object v8, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "byteArrayToArrayListConverter  exception value is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3d

    :cond_a1
    :try_start_a1
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V

    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_a1 .. :try_end_a7} :catch_d4

    :cond_a7
    :goto_a7
    move-object v2, v3

    move-object v0, v1

    goto :goto_3d

    :catchall_aa
    move-exception v8

    :goto_ab
    :try_start_ab
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_b1
    .catch Ljava/lang/Exception; {:try_start_ab .. :try_end_b1} :catch_b2

    :cond_b1
    :goto_b1
    throw v8

    :catch_b2
    move-exception v4

    sget-boolean v9, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->DBG:Z

    if-eqz v9, :cond_b1

    sget-object v9, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "byteArrayToArrayListConverter  exception value is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b1

    :catch_d4
    move-exception v4

    sget-boolean v8, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->DBG:Z

    if-eqz v8, :cond_a7

    sget-object v8, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "byteArrayToArrayListConverter  exception value is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a7

    :catchall_f6
    move-exception v8

    move-object v0, v1

    goto :goto_ab

    :catchall_f9
    move-exception v8

    move-object v2, v3

    move-object v0, v1

    goto :goto_ab

    :catch_fd
    move-exception v4

    goto/16 :goto_75

    :catch_100
    move-exception v4

    move-object v0, v1

    goto/16 :goto_75
.end method

.method private cancelNotification()V
    .registers 6

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v2

    const-string v3, "VPN_ERROR_RETRY"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method private checkForSystemUIDApplicationForVpn(Ljava/lang/String;)Z
    .registers 10

    const/4 v2, 0x0

    iget-object v5, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, -0x1

    const/4 v5, 0x0

    :try_start_9
    invoke-virtual {v3, p1, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v4, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    sget-boolean v5, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->DBG:Z

    if-eqz v5, :cond_2b

    sget-object v5, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "check system UID : uid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_2b} :catch_31

    :cond_2b
    const/16 v5, 0x3e8

    if-ne v4, v5, :cond_30

    const/4 v2, 0x1

    :cond_30
    :goto_30
    return v2

    :catch_31
    move-exception v0

    const/4 v4, -0x1

    goto :goto_30
.end method

.method private checkIfAdminHasVpnPermission(ILjava/lang/String;)Z
    .registers 11

    iget-object v7, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1e

    move-object v0, v4

    array-length v3, v0

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v3, :cond_1e

    aget-object v5, v0, v2

    invoke-virtual {v6, p2, v5}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1b

    const/4 v7, 0x1

    :goto_1a
    return v7

    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_1e
    const/4 v7, 0x0

    goto :goto_1a
.end method

.method private checkIfAnyAdminHasFipsMode()Z
    .registers 10

    const/4 v5, 0x1

    const/4 v8, 0x0

    const/4 v3, -0x1

    iget-object v6, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "Fips_Vpn_table"

    invoke-virtual {v6, v7, v8, v8, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_47

    :try_start_d
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_11
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_47

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    const-string v6, "fips_mode"

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_26} :catch_2a

    move-result v3

    if-ne v3, v5, :cond_11

    :goto_29
    return v5

    :catch_2a
    move-exception v2

    sget-object v5, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "check to admin has fips : Failed "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_47
    const/4 v5, 0x0

    goto :goto_29
.end method

.method private checkIfProfileHasDefaultRouteEnabled(Ljava/lang/String;)I
    .registers 15

    const/4 v5, -0x1

    :try_start_1
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "Vpn_table"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "profile"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object p1, v9, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "Default_Route"

    aput-object v12, v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_7e

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_25
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    const-string v6, "Default_Route"

    invoke-virtual {v1, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->convertIntegerToBooleanInDatabase(I)Z

    move-result v0

    sget-boolean v6, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->DBG:Z

    if-eqz v6, :cond_5b

    sget-object v6, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "The default route value is"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_5b} :catch_61

    :cond_5b
    if-eqz v0, :cond_5f

    const/4 v5, 0x1

    goto :goto_25

    :cond_5f
    const/4 v5, 0x0

    goto :goto_25

    :catch_61
    move-exception v3

    sget-object v6, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkIfProfileHasDefaultRouteEnabled: Failed "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7e
    return v5
.end method

.method private checkPackagesOnStartup()V
    .registers 11

    :try_start_0
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->packageNameVpnMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v2

    const/4 v1, 0x0

    array-length v3, v2

    sget-object v7, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    const-string v8, "check to package on startup : Verifying installed packages"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_14
    if-ge v1, v3, :cond_6c

    iget-object v7, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->packageNameVpnMap:Ljava/util/HashMap;

    aget-object v8, v2, v1

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;

    if-eqz v4, :cond_4c

    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4c

    sget-boolean v7, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->DBG:Z

    if-eqz v7, :cond_48

    sget-object v7, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "check to package on startup : Calling removeVpn for package = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_48
    const/4 v7, 0x0

    invoke-virtual {p0, v7, v5}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->removeVpnForApplication(ILjava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4c} :catch_4f

    :cond_4c
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :catch_4f
    move-exception v0

    sget-object v7, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "check to package on startup : Exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6c
    return-void
.end method

.method private checkVpnModeOfOperationAfterNewinstall()Z
    .registers 7

    const/4 v0, 0x0

    const/4 v1, -0x1

    :try_start_2
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->vpninterfacelist:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;

    iget-object v3, v3, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    if-eqz v3, :cond_2c

    iget-object v3, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->vpninterfacelist:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;

    iget-object v3, v3, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    invoke-interface {v3}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->getFIPSMode()I

    move-result v1

    sget-boolean v3, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->DBG:Z

    if-eqz v3, :cond_2c

    sget-object v3, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "check vpn mode after new install : The vpn mode and current vpn mode of operation is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2c
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->checkIfAnyAdminHasFipsMode()Z

    move-result v0

    if-eqz v0, :cond_37

    if-nez v1, :cond_37

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->switchVpnMode()Z
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_37} :catch_54

    :cond_37
    :goto_37
    sget-boolean v3, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->DBG:Z

    if-eqz v3, :cond_53

    sget-object v3, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "check vpn mode after new install : The vpn mode and final value is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_53
    return v0

    :catch_54
    move-exception v2

    sget-boolean v3, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->DBG:Z

    if-eqz v3, :cond_37

    sget-object v3, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "check vpn mode after new install : Error at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_37
.end method

.method private clearDatabaseAfterContainerRemoval(I)V
    .registers 10

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "EnterpriseVpn"

    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "CID"

    aput-object v5, v4, v6

    new-array v5, v7, [Ljava/lang/String;

    aput-object v0, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    sget-object v2, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clear database after container remove : result  is called and the removal is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private convertIntegerToBooleanInDatabase(I)Z
    .registers 6

    const/4 v0, 0x1

    sget-boolean v1, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->DBG:Z

    if-eqz v1, :cond_1d

    sget-object v1, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "convert int to boolean : before is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    if-ne p1, v0, :cond_3c

    :goto_1f
    sget-boolean v1, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->DBG:Z

    if-eqz v1, :cond_3b

    sget-object v1, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "convert int to boolean : after  is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3b
    return v0

    :cond_3c
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method private createNotification()V
    .registers 25

    sget-object v21, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    const-string v22, "In create notification : creating notification"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v13

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->getRunningPackages()Ljava/util/List;

    move-result-object v16

    :try_start_15
    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_19
    :goto_19
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_103

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    sget-object v21, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "In create notification : KeySet key :"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->profileNameVpnMap:Ljava/util/HashMap;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;->getVpnStateList()Ljava/util/ArrayList;

    move-result-object v14

    const/4 v12, 0x0

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_56
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_bd

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;

    sget-object v21, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "In create notification : Running through vpnstate to test : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getPackageName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getCid()I

    move-result v21

    if-lez v21, :cond_9a

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getPackageName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->isPackageRunning(Ljava/lang/String;Ljava/util/List;)Z

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_a0

    :cond_9a
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getCid()I

    move-result v21

    if-nez v21, :cond_56

    :cond_a0
    sget-object v21, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "In create notification : Met true dont remove the profile : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getPackageName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x1

    :cond_bd
    if-nez v12, :cond_19

    sget-object v21, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "In create notification : Removeing profiles not getting used from map: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e4
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_e4} :catch_e6

    goto/16 :goto_19

    :catch_e6
    move-exception v4

    sget-object v21, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "In create notification : Exception: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_103
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v21

    if-lez v21, :cond_1af

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const v22, 0x104072e

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const v22, 0x104072f

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    const v8, 0x1080027

    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    const-string v21, "com.samsung.android.mdm"

    const-string v22, "com.samsung.android.mdm.VpnError"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v21, "vpn_error_profile_info"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v11, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    new-instance v21, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-direct/range {v21 .. v22}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v21

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v21

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v15

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v21

    const-string v22, "VPN_ERROR_RETRY"

    const/16 v23, 0x1

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2, v15}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_1ae
    return-void

    :cond_1af
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->cancelNotification()V

    goto :goto_1ae
.end method

.method private createNotification(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->isNetworkConnected()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->createNotification()V

    :cond_16
    return-void
.end method

.method private createVpnFromDatabase()V
    .registers 21

    sget-boolean v13, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->DBG:Z

    if-eqz v13, :cond_b

    sget-object v13, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    const-string v14, "create vpn from database is reached "

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    const/4 v1, -0x1

    :try_start_c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v14, "Vpn_table"

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x17

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const-string v19, "profile"

    aput-object v19, v17, v18

    const/16 v18, 0x1

    const-string v19, "adminUid"

    aput-object v19, v17, v18

    const/16 v18, 0x2

    const-string v19, "Authentication"

    aput-object v19, v17, v18

    const/16 v18, 0x3

    const-string v19, "BackupServer_status"

    aput-object v19, v17, v18

    const/16 v18, 0x4

    const-string v19, "BackupServer"

    aput-object v19, v17, v18

    const/16 v18, 0x5

    const-string v19, "DPD"

    aput-object v19, v17, v18

    const/16 v18, 0x6

    const-string v19, "GroupName"

    aput-object v19, v17, v18

    const/16 v18, 0x7

    const-string v19, "IPSEC_Type"

    aput-object v19, v17, v18

    const/16 v18, 0x8

    const-string v19, "IKE"

    aput-object v19, v17, v18

    const/16 v18, 0x9

    const-string v19, "Default_Route"

    aput-object v19, v17, v18

    const/16 v18, 0xa

    const-string v19, "User_Auth"

    aput-object v19, v17, v18

    const/16 v18, 0xb

    const-string v19, "Mobike"

    aput-object v19, v17, v18

    const/16 v18, 0xc

    const-string v19, "DH_Group"

    aput-object v19, v17, v18

    const/16 v18, 0xd

    const-string v19, "Phase_Mode"

    aput-object v19, v17, v18

    const/16 v18, 0xe

    const-string v19, "PFS"

    aput-object v19, v17, v18

    const/16 v18, 0xf

    const-string v19, "PSK"

    aput-object v19, v17, v18

    const/16 v18, 0x10

    const-string v19, "SuiteBType"

    aput-object v19, v17, v18

    const/16 v18, 0x11

    const-string v19, "Host"

    aput-object v19, v17, v18

    const/16 v18, 0x12

    const-string v19, "Username"

    aput-object v19, v17, v18

    const/16 v18, 0x13

    const-string v19, "Password"

    aput-object v19, v17, v18

    const/16 v18, 0x14

    const-string v19, "Split_Tunnel_type"

    aput-object v19, v17, v18

    const/16 v18, 0x15

    const-string v19, "CA_Password"

    aput-object v19, v17, v18

    const/16 v18, 0x16

    const-string v19, "User_Password"

    aput-object v19, v17, v18

    invoke-virtual/range {v13 .. v17}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    sget-boolean v13, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->DBG:Z

    if-eqz v13, :cond_cb

    sget-object v13, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "The length of cvList is"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_cb
    if-eqz v6, :cond_2a1

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_d1
    :goto_d1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2a1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentValues;

    new-instance v8, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;

    invoke-direct {v8}, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;-><init>()V

    const-string v13, "profile"

    invoke-virtual {v5, v13}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v8, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->name:Ljava/lang/String;

    const-string v13, "adminUid"

    invoke-virtual {v5, v13}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v13, "Authentication"

    invoke-virtual {v5, v13}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    iput v13, v8, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->authMethod:I

    const-string v13, "BackupServer_status"

    invoke-virtual {v5, v13}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->convertIntegerToBooleanInDatabase(I)Z

    move-result v13

    iput-boolean v13, v8, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->backupServerEnabled:Z

    const-string v13, "BackupServer"

    invoke-virtual {v5, v13}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v8, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->backupVPNServer:Ljava/lang/String;

    const-string v13, "DPD"

    invoke-virtual {v5, v13}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->convertIntegerToBooleanInDatabase(I)Z

    move-result v13

    iput-boolean v13, v8, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->deadPeerDetect:Z

    const-string v13, "GroupName"

    invoke-virtual {v5, v13}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v8, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->groupname:Ljava/lang/String;

    const-string v13, "IPSEC_Type"

    invoke-virtual {v5, v13}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    iput v13, v8, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->iPSecIDType:I

    const-string v13, "IKE"

    invoke-virtual {v5, v13}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    iput v13, v8, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->ikeVersion:I

    const-string v13, "Default_Route"

    invoke-virtual {v5, v13}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->convertIntegerToBooleanInDatabase(I)Z

    move-result v13

    iput-boolean v13, v8, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->isDefaultrouteEnabled:Z

    const-string v13, "User_Auth"

    invoke-virtual {v5, v13}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->convertIntegerToBooleanInDatabase(I)Z

    move-result v13

    iput-boolean v13, v8, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->isUserAuthEnabled:Z

    const-string v13, "Mobike"

    invoke-virtual {v5, v13}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->convertIntegerToBooleanInDatabase(I)Z

    move-result v13

    iput-boolean v13, v8, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->mobikeEnabled:Z

    const-string v13, "DH_Group"

    invoke-virtual {v5, v13}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    iput v13, v8, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->p1DHGroup:I

    const-string v13, "Phase_Mode"

    invoke-virtual {v5, v13}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    iput v13, v8, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->p1Mode:I

    const-string v13, "PFS"

    invoke-virtual {v5, v13}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->convertIntegerToBooleanInDatabase(I)Z

    move-result v13

    iput-boolean v13, v8, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->pfs:Z

    const-string v13, "PSK"

    invoke-virtual {v5, v13}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v8, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->psk:Ljava/lang/String;

    const-string v13, "SuiteBType"

    invoke-virtual {v5, v13}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    iput v13, v8, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->suiteBType:I

    const-string v13, "Host"

    invoke-virtual {v5, v13}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v8, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->host:Ljava/lang/String;

    const-string v13, "Username"

    invoke-virtual {v5, v13}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v8, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->username:Ljava/lang/String;

    const-string v13, "Password"

    invoke-virtual {v5, v13}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v8, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->password:Ljava/lang/String;

    const-string v13, "Split_Tunnel_type"

    invoke-virtual {v5, v13}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    iput v13, v8, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->splitTunnelType:I

    iget-object v13, v8, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->name:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->byteArrayToArrayListConverter(Ljava/lang/String;)Ljava/util/List;

    move-result-object v13

    iput-object v13, v8, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->forwardRoutes:Ljava/util/List;

    sget-boolean v13, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->DBG:Z

    if-eqz v13, :cond_20c

    sget-object v13, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "The forwardRoutes is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v8, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->forwardRoutes:Ljava/util/List;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->vpninterfacelist:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;

    iget-object v13, v13, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    const/4 v14, 0x0

    invoke-interface {v13, v8, v14, v1}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->createConnection(Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;Ljava/lang/String;I)Z

    move-result v10

    sget-boolean v13, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->DBG:Z

    if-eqz v13, :cond_23f

    sget-object v13, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "vpn profile has been retrieved after uninstall"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v8, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->name:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "and its result is"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23f
    const/4 v13, 0x1

    if-ne v10, v13, :cond_2a2

    iget v13, v8, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->authMethod:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_2a2

    const-string v13, "CA_Certificate"

    iget-object v14, v8, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->name:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->getCertificateInfoFromDatabase(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v3

    const-string v13, "CA_Password"

    invoke-virtual {v5, v13}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->vpninterfacelist:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;

    iget-object v13, v13, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    iget-object v14, v8, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->name:Ljava/lang/String;

    invoke-interface {v13, v14, v3, v4, v1}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->setCACertificate(Ljava/lang/String;[BLjava/lang/String;I)Z

    move-result v2

    const-string v13, "User_Certificate"

    iget-object v14, v8, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->name:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->getCertificateInfoFromDatabase(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v11

    const-string v13, "User_Password"

    invoke-virtual {v5, v13}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->vpninterfacelist:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;

    iget-object v13, v13, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    iget-object v14, v8, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->name:Ljava/lang/String;

    invoke-interface {v13, v14, v11, v12, v1}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->setUserCertificate(Ljava/lang/String;[BLjava/lang/String;I)Z
    :try_end_27e
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_27e} :catch_280

    goto/16 :goto_d1

    :catch_280
    move-exception v7

    sget-boolean v13, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->DBG:Z

    if-eqz v13, :cond_2a1

    sget-object v13, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Error at create vpn from database Method "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v7}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a1
    return-void

    :cond_2a2
    const/4 v13, 0x1

    if-ne v10, v13, :cond_d1

    :try_start_2a5
    iget v13, v8, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->authMethod:I

    const/4 v14, 0x6

    if-ne v13, v14, :cond_d1

    const-string v13, "CA_Certificate"

    iget-object v14, v8, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->name:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->getCertificateInfoFromDatabase(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v3

    const-string v13, "CA_Password"

    invoke-virtual {v5, v13}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->vpninterfacelist:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;

    iget-object v13, v13, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    iget-object v14, v8, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->name:Ljava/lang/String;

    invoke-interface {v13, v14, v3, v4, v1}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->setCACertificate(Ljava/lang/String;[BLjava/lang/String;I)Z
    :try_end_2c5
    .catch Ljava/lang/Exception; {:try_start_2a5 .. :try_end_2c5} :catch_280

    goto/16 :goto_d1
.end method

.method private deleteUIDFromPackageData(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->updatePackageData(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private enforceEnterpriseVpnPermission()I
    .registers 3

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_ENTERPRISE_VPN"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method private findUid()I
    .registers 2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method private getCertificateInfoFromDatabase(Ljava/lang/String;Ljava/lang/String;)[B
    .registers 7

    iget-object v1, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "Vpn_table"

    const-string v3, "profile"

    invoke-virtual {v1, v2, v3, p2, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBlob(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    sget-boolean v1, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->DBG:Z

    if-eqz v1, :cond_26

    sget-object v1, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get certificate from database :  byte value is"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    if-nez v0, :cond_34

    sget-boolean v1, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->DBG:Z

    if-eqz v1, :cond_33

    sget-object v1, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    const-string v2, "get certificate from database : The certificateinfo routeBytes value is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_33
    const/4 v0, 0x0

    :cond_34
    return-object v0
.end method

.method private getCommandResult(Ljava/lang/Process;)Ljava/lang/String;
    .registers 12

    const/16 v6, 0x400

    new-array v4, v6, [B

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :try_start_a
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_18
    .catchall {:try_start_a .. :try_end_18} :catchall_80
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_18} :catch_e4

    :goto_18
    :try_start_18
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_79

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0xa

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_34
    .catchall {:try_start_18 .. :try_end_34} :catchall_e1
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_34} :catch_35

    goto :goto_18

    :catch_35
    move-exception v0

    move-object v1, v2

    :goto_37
    :try_start_37
    sget-object v6, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "get command result : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_53
    .catchall {:try_start_37 .. :try_end_53} :catchall_80

    if-eqz v1, :cond_58

    :try_start_55
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_58} :catch_a5

    :cond_58
    :goto_58
    sget-object v6, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "get command result : Command result:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    :cond_79
    if-eqz v2, :cond_7e

    :try_start_7b
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_7e
    .catch Ljava/io/IOException; {:try_start_7b .. :try_end_7e} :catch_c3

    :cond_7e
    :goto_7e
    move-object v1, v2

    goto :goto_58

    :catchall_80
    move-exception v6

    :goto_81
    if-eqz v1, :cond_86

    :try_start_83
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_86
    .catch Ljava/io/IOException; {:try_start_83 .. :try_end_86} :catch_87

    :cond_86
    :goto_86
    throw v6

    :catch_87
    move-exception v0

    sget-object v7, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "get command result : error : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_86

    :catch_a5
    move-exception v0

    sget-object v6, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "get command result : error : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_58

    :catch_c3
    move-exception v0

    sget-object v6, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "get command result : error : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7e

    :catchall_e1
    move-exception v6

    move-object v1, v2

    goto :goto_81

    :catch_e4
    move-exception v0

    goto/16 :goto_37
.end method

.method private getConnectionManager()Landroid/net/ConnectivityManager;
    .registers 3

    iget-object v0, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->mConnectionManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->mConnectionManager:Landroid/net/ConnectivityManager;

    :cond_10
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->mConnectionManager:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .registers 3

    iget-object v0, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    :cond_10
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getIPtableBlockCmd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const-string v3, "iptables -"

    const-string v1, " INPUT -m owner --uid-owner "

    const-string v0, " -j DROP"

    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getIPtableBlockCmdForOutgoingPackets(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const-string v3, "iptables -"

    const-string v1, " OUTPUT -m owner --uid-owner "

    const-string v0, " -j DROP"

    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getIPtableConnMarkCmd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    const-string v3, "iptables -t mangle -"

    const-string v0, " OUTPUT -m owner --uid-owner "

    const-string v2, " -j CONNMARK --set-mark "

    const/4 v5, 0x3

    invoke-virtual {p3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0xa

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getIPtableConnRestoreCmd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    const-string v3, "iptables -t mangle -"

    const-string v0, " OUTPUT -m connmark --mark "

    const-string v2, " -j CONNMARK --restore-mark"

    const/4 v5, 0x3

    invoke-virtual {p3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0xa

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getIPtableMasqueradeCmd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const-string v3, "iptables -t nat -"

    const-string v0, " POSTROUTING -o "

    const-string v2, " -j MASQUERADE"

    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getLooperThread()Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$LooperThread;
    .registers 2

    iget-object v0, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->mLooperThread:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$LooperThread;

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->initLooperThread()V

    :cond_7
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->mLooperThread:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$LooperThread;

    return-object v0
.end method

.method private getMocanaVPNinterface()Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;
    .registers 2

    iget-object v0, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->mMocanaService:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->bindMocanaVpnInterface()V

    :cond_7
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->mMocanaService:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    return-object v0
.end method

.method private getNetworkManagementService()Landroid/os/INetworkManagementService;
    .registers 5

    sget-boolean v1, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->DBG:Z

    if-eqz v1, :cond_b

    sget-object v1, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    const-string v2, "getNetworkManagementService is reached initially"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    const-string v1, "network_management"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    sget-boolean v1, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->DBG:Z

    if-eqz v1, :cond_2d

    sget-object v1, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNetworkManagementService binder value is"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2d
    if-eqz v0, :cond_57

    iget-object v1, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    if-nez v1, :cond_57

    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    sget-boolean v1, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->DBG:Z

    if-eqz v1, :cond_57

    sget-object v1, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNetworkManagementService mNetworkManagementService value is"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_57
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    return-object v1
.end method

.method private getNotificationManager()Landroid/app/NotificationManager;
    .registers 3

    iget-object v0, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->mNotificationManager:Landroid/app/NotificationManager;

    :cond_10
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->mNotificationManager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method private getRunningPackages()Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->mContext:Landroid/content/Context;

    const-string v9, "activity"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_53

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    iget-object v8, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    :goto_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_53

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object v3, v8

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    :try_start_2f
    iget-object v5, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_34} :catch_35

    goto :goto_20

    :catch_35
    move-exception v1

    sget-object v8, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getRunningPackages : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20

    :cond_53
    return-object v7
.end method

.method private getTableAddCmd(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const-string v1, "ip rule add fwmark "

    const/4 v3, 0x3

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0xa

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, " table "

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getTableRouteCmd(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const-string v1, "ip route add 0.0.0.0/0 table "

    const/4 v3, 0x3

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0xa

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, " dev "

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getVpnObjectFromDB(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;
    .registers 16

    const/4 v2, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "EnterpriseVpn"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "applicationInfo"

    aput-object v11, v3, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object p1, v10, v11

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string v13, "profileName"

    aput-object v13, v11, v12

    const/4 v12, 0x1

    const-string v13, "UID_APP"

    aput-object v13, v11, v12

    const/4 v12, 0x2

    const-string v13, "CID"

    aput-object v13, v11, v12

    invoke-virtual {v0, v1, v3, v10, v11}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    if-eqz v7, :cond_ba

    :try_start_2d
    sget-object v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    const-string v1, "getting vpn object from database : Cursor not null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_38
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ba

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ContentValues;

    const-string v0, "profileName"

    invoke-virtual {v6, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "UID_APP"

    invoke-virtual {v6, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string v0, "CID"

    invoke-virtual {v6, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sget-boolean v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->DBG:Z

    if-eqz v0, :cond_8e

    sget-object v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getting vpn object from database : Uid:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " Profile:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " packageName:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8e
    const/4 v0, -0x1

    if-le v4, v0, :cond_38

    if-eqz p1, :cond_38

    if-eqz v2, :cond_38

    new-instance v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;-><init>(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_9c} :catch_9d

    :goto_9c
    return-object v0

    :catch_9d
    move-exception v8

    sget-object v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getting vpn object from database : Exception: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v8}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ba
    const/4 v0, 0x0

    goto :goto_9c
.end method

.method private handleMocanaServiceDisconnect()V
    .registers 16

    const/4 v11, 0x0

    sget-object v12, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    const-string v13, "handle service disconnect to mocana : Trying to add blocking rules"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    const-string v12, "connectivity"

    invoke-static {v12}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v12

    invoke-static {v12}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v7

    const/4 v4, 0x0

    iget-object v12, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->profileNameVpnMap:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1e
    :goto_1e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_b4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;

    if-eqz v10, :cond_ab

    invoke-virtual {v10}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;->getVpnStateList()Ljava/util/ArrayList;

    move-result-object v6

    if-eqz v6, :cond_1e

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v2, 0x0

    :goto_43
    if-ge v2, v5, :cond_76

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;

    invoke-virtual {v11}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getState()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_73

    invoke-virtual {v11}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getUid()I

    move-result v12

    invoke-direct {p0, v12}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->addIPtableBLock(I)V

    invoke-virtual {v11}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getUid()I

    move-result v12

    invoke-virtual {v11}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getInterface()Ljava/lang/String;

    move-result-object v13

    invoke-direct {p0, v12, v13}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->removeIPtableRoute(ILjava/lang/String;)V

    invoke-virtual {v11}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getUid()I

    move-result v12

    invoke-direct {p0, v9, v12}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->unsetDnsSystemProperty(Ljava/lang/String;I)V

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->setState(I)V

    :cond_73
    add-int/lit8 v2, v2, 0x1

    goto :goto_43

    :cond_76
    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;->setInterfaceName(Ljava/lang/String;)V

    const/4 v12, 0x1

    :try_start_7b
    invoke-interface {v7, v9, v12}, Landroid/net/IConnectivityManager;->disconnect(Ljava/lang/String;Z)Z
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_7e} :catch_8d

    :goto_7e
    sget-boolean v12, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->DBG:Z

    if-eqz v12, :cond_85

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->printPackageVpnMap()V

    :cond_85
    sget-boolean v12, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->DBG:Z

    if-eqz v12, :cond_1e

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->printProfileVpnMap()V

    goto :goto_1e

    :catch_8d
    move-exception v0

    sget-object v12, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "handle service disconnect to mocana : Disconnect Failed "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7e

    :cond_ab
    sget-object v12, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    const-string v13, "handle service disconnect to mocana : vpn entry is returned null"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1e

    :cond_b4
    :try_start_b4
    invoke-interface {v7}, Landroid/net/IConnectivityManager;->disconnectSystemVpn()V
    :try_end_b7
    .catch Ljava/lang/Exception; {:try_start_b4 .. :try_end_b7} :catch_b8

    :goto_b7
    return-void

    :catch_b8
    move-exception v0

    sget-object v12, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "handle service disconnect to mocana : disconnect system vpn is Failed"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b7
.end method

.method private declared-synchronized initLooperThread()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->mLooperThread:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$LooperThread;

    if-nez v0, :cond_1c

    new-instance v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$LooperThread;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$LooperThread;-><init>(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->mLooperThread:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$LooperThread;

    iget-object v0, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->mLooperThread:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$LooperThread;

    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$LooperThread;->start()V

    sget-boolean v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->DBG:Z

    if-eqz v0, :cond_1c

    sget-object v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    const-string v1, "init looper thread called "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1e

    :cond_1c
    monitor-exit p0

    return-void

    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private initializeHashtable()V
    .registers 25

    sget-object v5, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    const-string v19, "init hash table called"

    move-object/from16 v0, v19

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v19, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->syncObj:Ljava/lang/Object;

    monitor-enter v19

    const/4 v10, 0x0

    :try_start_d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v20, "Vpn_table"

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-virtual {v5, v0, v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v13

    if-eqz v13, :cond_3f

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_3f

    sget-object v5, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    const-string v20, "VPN INFO: Old Framework is enabled. Set the system property"

    move-object/from16 v0, v20

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "net.vpn.framework"

    const-string v20, "1.0"

    move-object/from16 v0, v20

    invoke-static {v5, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v20, "EnterpriseVpn"

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-virtual {v5, v0, v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v12

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v4, 0x0

    if-eqz v12, :cond_162

    sget-object v5, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    const-string v20, "init hash table : Cursor not null"

    move-object/from16 v0, v20

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_6b
    :goto_6b
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_194

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/ContentValues;

    const-string v5, "applicationInfo"

    invoke-virtual {v11, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v5, "profileName"

    invoke-virtual {v11, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v5, "CID"

    invoke-virtual {v11, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const-string v5, "UID_APP"

    invoke-virtual {v11, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v8

    sget-object v5, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "init hash table : Uid:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " Profile:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " packageName:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "init hash table : Adding new entry to hashMap: { uid:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", packageName:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", profileName:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "}"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, -0x1

    if-le v8, v5, :cond_6b

    new-instance v4, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;-><init>(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;Ljava/lang/String;Ljava/lang/String;II)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->profileNameVpnMap:Ljava/util/HashMap;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_164

    sget-object v5, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    const-string v20, "init hash table : ProfileName found in map. Add to the list."

    move-object/from16 v0, v20

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->profileNameVpnMap:Ljava/util/HashMap;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;->getVpnStateList()Ljava/util/ArrayList;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_135
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->packageNameVpnMap:Ljava/util/HashMap;

    invoke-virtual {v5, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_13c
    .catchall {:try_start_d .. :try_end_13c} :catchall_191
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_13c} :catch_13e

    goto/16 :goto_6b

    :catch_13e
    move-exception v14

    if-eqz v10, :cond_144

    :try_start_141
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_144
    sget-object v5, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "init hash table : Exception when reading DB:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static {v14}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_162
    :goto_162
    monitor-exit v19
    :try_end_163
    .catchall {:try_start_141 .. :try_end_163} :catchall_191

    return-void

    :cond_164
    :try_start_164
    sget-object v5, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    const-string v20, "init hash table : ProfileName not found in Map. Add a new list."

    move-object/from16 v0, v20

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v18, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;-><init>(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;->setVpnStateList(Ljava/util/ArrayList;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->profileNameVpnMap:Ljava/util/HashMap;

    move-object/from16 v0, v18

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_190
    .catchall {:try_start_164 .. :try_end_190} :catchall_191
    .catch Ljava/lang/Exception; {:try_start_164 .. :try_end_190} :catch_13e

    goto :goto_135

    :catchall_191
    move-exception v5

    :try_start_192
    monitor-exit v19
    :try_end_193
    .catchall {:try_start_192 .. :try_end_193} :catchall_191

    throw v5

    :cond_194
    :try_start_194
    sget-boolean v5, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->DBG:Z

    if-eqz v5, :cond_19b

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->printPackageVpnMap()V

    :cond_19b
    sget-boolean v5, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->DBG:Z

    if-eqz v5, :cond_162

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->printProfileVpnMap()V
    :try_end_1a2
    .catchall {:try_start_194 .. :try_end_1a2} :catchall_191
    .catch Ljava/lang/Exception; {:try_start_194 .. :try_end_1a2} :catch_13e

    goto :goto_162
.end method

.method private insertFipsModeInDatabase(I)Z
    .registers 9

    const/4 v2, 0x0

    :try_start_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "adminUid"

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "fips_mode"

    new-instance v4, Ljava/lang/Integer;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v3, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "Fips_Vpn_table"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_24} :catch_26

    move-result v2

    :goto_25
    return v2

    :catch_26
    move-exception v1

    sget-object v3, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "insert fips mode in database : Exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25
.end method

.method private isNetworkConnected()Z
    .registers 3

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->getConnectionManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_21

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->getConnectionManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_21

    sget-object v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    const-string v1, "check network connection : returns true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :goto_20
    return v0

    :cond_21
    sget-object v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    const-string v1, "check network connection : returns false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_20
.end method

.method private isPackageInstalled(Ljava/lang/String;)Z
    .registers 9

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    if-eqz v2, :cond_f

    const/4 v4, 0x0

    :try_start_a
    invoke-virtual {v2, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_d} :catch_10

    move-result-object v1

    const/4 v3, 0x1

    :cond_f
    :goto_f
    return v3

    :catch_10
    move-exception v0

    sget-object v4, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Package installed check: Package Name not found "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f
.end method

.method private isPackageRunning(Ljava/lang/String;)Z
    .registers 9

    const/4 v2, 0x0

    sget-object v4, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "check for package running  : Checking for package :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->getRunningPackages()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_5e

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_24
    if-ge v0, v1, :cond_65

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5b

    sget-object v5, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "check for package running  : Matching running package :"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    :cond_5b
    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    :cond_5e
    sget-object v4, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    const-string v5, "Package list empty"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_65
    return v2
.end method

.method private isPackageRunning(Ljava/lang/String;Ljava/util/List;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    if-eqz p1, :cond_34

    if-eqz p2, :cond_34

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_9
    if-ge v0, v1, :cond_34

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_31

    sget-object v2, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "check for package running  : Matching running package :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    :goto_30
    return v2

    :cond_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_34
    const/4 v2, 0x0

    goto :goto_30
.end method

.method private killVpnService(I)V
    .registers 2

    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V

    return-void
.end method

.method private printPackageVpnMap()V
    .registers 11

    sget-boolean v6, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->DBG:Z

    if-eqz v6, :cond_e0

    sget-object v6, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    const-string v7, "********************Printing package map ********************"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_b
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->packageNameVpnMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    sget-object v6, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "packageName:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v5}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v2

    const/4 v1, 0x0

    array-length v3, v2

    sget-object v6, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Length: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v6, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    const-string v7, ":[ "

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_53
    if-ge v1, v3, :cond_d2

    iget-object v6, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->packageNameVpnMap:Ljava/util/HashMap;

    aget-object v7, v2, v1

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;

    if-eqz v4, :cond_cc

    sget-object v7, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "{"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v8, v2, v1

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ": { uid:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getUid()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", packageName:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", profileName:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getProfileName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " interface:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getInterface()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " state:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getState()I

    move-result v6

    const/4 v9, 0x1

    if-ne v6, v9, :cond_cf

    const-string v6, "RUNNING "

    :goto_bb
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "}},"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_cc
    add-int/lit8 v1, v1, 0x1

    goto :goto_53

    :cond_cf
    const-string v6, "STOPPED "

    goto :goto_bb

    :cond_d2
    sget-object v6, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    const-string v7, "] "

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d9
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_d9} :catch_e1

    :goto_d9
    sget-object v6, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    const-string v7, "-----------------Printing packageNameVpnMap--------------------------"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e0
    return-void

    :catch_e1
    move-exception v0

    sget-object v6, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d9
.end method

.method private printProfileVpnMap()V
    .registers 14

    sget-boolean v9, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->DBG:Z

    if-eqz v9, :cond_143

    sget-object v9, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    const-string v10, "********************Printing profile map ********************"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_b
    iget-object v9, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->profileNameVpnMap:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    sget-object v9, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "profileNames:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v7}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v3

    const/4 v1, 0x0

    array-length v4, v3

    sget-object v9, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Length: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v9, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    const-string v10, ":[ "

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_53
    if-ge v1, v4, :cond_156

    sget-object v9, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "{"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v11, v3, v1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->profileNameVpnMap:Ljava/util/HashMap;

    aget-object v10, v3, v1

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;

    sget-object v9, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "interfaceName:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v8}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;->getInterfaceName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v8, :cond_144

    invoke-virtual {v8}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;->getVpnStateList()Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_14b

    const/4 v2, 0x0

    :goto_a4
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v2, v9, :cond_14b

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;

    if-eqz v6, :cond_117

    sget-object v10, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "{ uid:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getUid()I

    move-result v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ", packageName:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ", profileName:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getProfileName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " interface:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getInterface()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " state:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v6}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getState()I

    move-result v9

    const/4 v12, 0x1

    if-ne v9, v12, :cond_114

    const-string v9, "RUNNING "

    :goto_100
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "}},"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_111
    add-int/lit8 v2, v2, 0x1

    goto :goto_a4

    :cond_114
    const-string v9, "STOPPED "

    goto :goto_100

    :cond_117
    sget-object v9, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    const-string v10, "List contains NULL object."

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_11e} :catch_11f

    goto :goto_111

    :catch_11f
    move-exception v0

    sget-object v9, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_13c
    sget-object v9, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    const-string v10, "-----------------Printing profileNameVpnMap--------------------------"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_143
    return-void

    :cond_144
    :try_start_144
    sget-object v9, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    const-string v10, "ProfileNameVpnEntry contains NULL object."

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14b
    sget-object v9, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    const-string v10, "]},"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_53

    :cond_156
    sget-object v9, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    const-string v10, "] "

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15d
    .catch Ljava/lang/Exception; {:try_start_144 .. :try_end_15d} :catch_11f

    goto :goto_13c
.end method

.method private printVpnState()V
    .registers 10

    :try_start_0
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->vpninterfacelist:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;

    iget-object v6, v6, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    if-eqz v6, :cond_7b

    iget-object v6, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->vpninterfacelist:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;

    iget-object v6, v6, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->findUid()I

    move-result v7

    invoke-interface {v6, v7}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->getAllConnections(I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_16
    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;

    const-string v6, "key_vpn"

    iget-object v7, v0, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->name:Ljava/lang/String;

    invoke-virtual {p0, v6, v7}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->getState(Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3}, Landroid/app/enterprise/EnterpriseResponseData;->getFailureState()I

    move-result v6

    if-nez v6, :cond_37

    invoke-virtual {v3}, Landroid/app/enterprise/EnterpriseResponseData;->getData()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    :cond_37
    if-eqz v4, :cond_16

    sget-object v6, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "print to vpn state : state of profile "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " state: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5d} :catch_5e

    goto :goto_16

    :catch_5e
    move-exception v1

    sget-object v6, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "print to vpn state : Exception:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7b
    return-void
.end method

.method private removeFromHashMapByPackageName(Ljava/lang/String;)V
    .registers 22

    sget-object v17, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->syncObj:Ljava/lang/Object;

    monitor-enter v17

    :try_start_3
    sget-object v16, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    const-string v18, "In remove package"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->packageNameVpnMap:Ljava/util/HashMap;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;

    if-nez v12, :cond_2d

    sget-object v16, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    const-string v18, "Package name not found in the map"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v17

    :goto_2c
    return-void

    :cond_2d
    invoke-virtual {v12}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getProfileName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v12}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getUid()I

    move-result v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->removeIPtableBLock(I)V

    invoke-virtual {v12}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getInterface()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v13, v1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->removeIPtableRoute(ILjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->packageNameVpnMap:Ljava/util/HashMap;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v13}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->unsetDnsSystemProperty(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->profileNameVpnMap:Ljava/util/HashMap;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;

    if-eqz v15, :cond_1e8

    sget-object v16, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    const-string v18, "remove package : VpnEntry is not NULL"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v15}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;->getVpnStateList()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v3, 0x1

    if-eqz v6, :cond_16c

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v16

    if-lez v16, :cond_16c

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->getRunningPackages()Ljava/util/List;

    move-result-object v11

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_8a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_e5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;

    invoke-virtual {v7}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getCid()I

    move-result v16

    if-lez v16, :cond_b0

    invoke-virtual {v7}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getCid()I

    move-result v16

    if-lez v16, :cond_8a

    invoke-virtual {v7}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getPackageName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v11}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->isPackageRunning(Ljava/lang/String;Ljava/util/List;)Z

    move-result v16

    if-eqz v16, :cond_8a

    :cond_b0
    sget-object v16, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "remove package : Don\'t ring down vpn as one of the package is running : { cid : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v7}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getCid()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "name: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v7}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getPackageName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " }"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    :cond_e5
    :goto_e5
    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v3, v0, :cond_14d

    const-string v16, "key_vpn"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v9}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->getState(Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;

    move-result-object v10

    if-eqz v10, :cond_14d

    invoke-virtual {v10}, Landroid/app/enterprise/EnterpriseResponseData;->getData()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    sget-boolean v16, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->DBG:Z

    if-eqz v16, :cond_11f

    sget-object v16, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "remove package : Going to stop the connection as no applications are applicable any more for profile:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11f
    if-eqz v14, :cond_19b

    const-string v16, "CONNECTED"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_135

    const-string v16, "CONNECTING"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_132
    .catchall {:try_start_3 .. :try_end_132} :catchall_169

    move-result v16

    if-eqz v16, :cond_19b

    :cond_135
    :try_start_135
    const-string v16, "key_vpn"

    new-instance v18, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnCallback;

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnCallback;-><init>(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;I)V

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v9, v2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->stopConnection(Ljava/lang/String;Ljava/lang/String;Lcom/mocana/vpn/android/velo/IEnterpriseStatusCallback;)Landroid/app/enterprise/EnterpriseResponseData;
    :try_end_14d
    .catchall {:try_start_135 .. :try_end_14d} :catchall_169
    .catch Ljava/lang/Exception; {:try_start_135 .. :try_end_14d} :catch_179

    :cond_14d
    :goto_14d
    :try_start_14d
    sget-object v16, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    const-string v18, "remove package : Printing after "

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v16, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->DBG:Z

    if-eqz v16, :cond_15f

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->printProfileVpnMap()V

    :cond_15f
    sget-boolean v16, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->DBG:Z

    if-eqz v16, :cond_166

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->printPackageVpnMap()V

    :cond_166
    :goto_166
    monitor-exit v17

    goto/16 :goto_2c

    :catchall_169
    move-exception v16

    monitor-exit v17
    :try_end_16b
    .catchall {:try_start_14d .. :try_end_16b} :catchall_169

    throw v16

    :cond_16c
    :try_start_16c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->profileNameVpnMap:Ljava/util/HashMap;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_e5

    :catch_179
    move-exception v4

    sget-object v16, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Exception:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14d

    :cond_19b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    sget-object v16, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "remove package : errorMessage : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v8, :cond_14d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v16

    if-lez v16, :cond_1e3

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->createNotification()V

    goto/16 :goto_14d

    :cond_1e3
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->cancelNotification()V

    goto/16 :goto_14d

    :cond_1e8
    sget-object v16, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    const-string v18, "remove package : ProfileNameVpnEntry returned null"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f3
    .catchall {:try_start_16c .. :try_end_1f3} :catchall_169

    goto/16 :goto_166
.end method

.method private removeFromHashMapByProfileName(Ljava/lang/String;)V
    .registers 19

    sget-object v14, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->syncObj:Ljava/lang/Object;

    monitor-enter v14

    const/4 v4, 0x0

    :try_start_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->profileNameVpnMap:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;

    if-eqz v12, :cond_14e

    invoke-virtual {v12}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;->getVpnStateList()Ljava/util/ArrayList;

    move-result-object v6

    if-eqz v6, :cond_12e

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    sget-boolean v13, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->DBG:Z

    if-eqz v13, :cond_44

    sget-object v13, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "remove profile : profilename, length :"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_44
    const/4 v3, 0x0

    :goto_45
    if-ge v3, v5, :cond_d2

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;

    check-cast v13, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;

    invoke-virtual {v13}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;

    check-cast v13, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;

    invoke-virtual {v13}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getUid()I

    move-result v10

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;

    check-cast v13, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;

    invoke-virtual {v13}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getInterface()Ljava/lang/String;

    move-result-object v4

    sget-object v13, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "remove profile : loop, pckgename/uid:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->packageNameVpnMap:Ljava/util/HashMap;

    invoke-virtual {v13, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->removeIPtableBLock(I)V

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v4}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->removeIPtableRoute(ILjava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v10}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->unsetDnsSystemProperty(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v13}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v13

    if-lez v13, :cond_cb

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->createNotification()V

    :cond_c7
    :goto_c7
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_45

    :cond_cb
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->cancelNotification()V

    goto :goto_c7

    :catchall_cf
    move-exception v13

    monitor-exit v14
    :try_end_d1
    .catchall {:try_start_4 .. :try_end_d1} :catchall_cf

    throw v13

    :cond_d2
    :try_start_d2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->profileNameVpnMap:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v13, "key_vpn"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v13, v1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->getState(Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;

    move-result-object v9

    if-eqz v9, :cond_119

    invoke-virtual {v9}, Landroid/app/enterprise/EnterpriseResponseData;->getFailureState()I

    move-result v13

    if-nez v13, :cond_119

    invoke-virtual {v9}, Landroid/app/enterprise/EnterpriseResponseData;->getData()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    if-eqz v11, :cond_119

    const-string v13, "CONNECTED"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_105

    const-string v13, "CONNECTING"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_102
    .catchall {:try_start_d2 .. :try_end_102} :catchall_cf

    move-result v13

    if-eqz v13, :cond_119

    :cond_105
    :try_start_105
    const-string v13, "key_vpn"

    new-instance v15, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnCallback;

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v15, v0, v1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnCallback;-><init>(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;I)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v13, v1, v15}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->stopConnection(Ljava/lang/String;Ljava/lang/String;Lcom/mocana/vpn/android/velo/IEnterpriseStatusCallback;)Landroid/app/enterprise/EnterpriseResponseData;
    :try_end_119
    .catchall {:try_start_105 .. :try_end_119} :catchall_cf
    .catch Ljava/lang/Exception; {:try_start_105 .. :try_end_119} :catch_130

    :cond_119
    :goto_119
    :try_start_119
    sget-object v13, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    const-string v15, "remove profile : Printing after "

    invoke-static {v13, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v13, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->DBG:Z

    if-eqz v13, :cond_127

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->printProfileVpnMap()V

    :cond_127
    sget-boolean v13, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->DBG:Z

    if-eqz v13, :cond_12e

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->printPackageVpnMap()V

    :cond_12e
    :goto_12e
    monitor-exit v14

    return-void

    :catch_130
    move-exception v2

    sget-object v13, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "remove profile : Exception:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_119

    :cond_14e
    sget-object v13, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    const-string v15, "remove profile : ProfileNameVpnEntry returned null"

    invoke-static {v13, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_155
    .catchall {:try_start_119 .. :try_end_155} :catchall_cf

    goto :goto_12e
.end method

.method private removeIPtableBLock(I)V
    .registers 5

    sget-boolean v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->DBG:Z

    if-eqz v0, :cond_1c

    sget-object v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove iptable : removeIPtableBLock Method is called with UID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    const/4 v0, -0x1

    if-le p1, v0, :cond_28

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->applySetBlockRules(Ljava/lang/String;I)V

    :goto_27
    return-void

    :cond_28
    sget-object v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    const-string v1, "remove iptable : Invalid uid received"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27
.end method

.method private removeIPtableRoute(ILjava/lang/String;)V
    .registers 6

    sget-object v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    const-string v1, "remove iptable route : In Vendor services"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    if-lt p1, v0, :cond_c

    if-nez p2, :cond_2f

    :cond_c
    sget-object v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove iptable route : Invalid UID or interface name received:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2e
    return-void

    :cond_2f
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, p2, v1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->applySetMarkRules(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_2e
.end method

.method private removeVpnConnectionAfterAdminRemoval(Ljava/lang/String;)V
    .registers 7

    const/4 v1, 0x0

    if-eqz p1, :cond_2c

    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->removeFromHashMapByProfileName(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    iget-object v2, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    if-lez v2, :cond_2d

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->createNotification()V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1e} :catch_31

    :cond_1e
    :goto_1e
    sget-boolean v2, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->DBG:Z

    if-eqz v2, :cond_25

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->printPackageVpnMap()V

    :cond_25
    sget-boolean v2, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->DBG:Z

    if-eqz v2, :cond_2c

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->printProfileVpnMap()V

    :cond_2c
    return-void

    :cond_2d
    :try_start_2d
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->cancelNotification()V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_30} :catch_31

    goto :goto_1e

    :catch_31
    move-exception v0

    sget-object v2, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "remove vpn connection after admin remove : Error in handling "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e
.end method

.method private removeVpnConnectionForPerAppVpn(Ljava/lang/String;)Z
    .registers 11

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_4e

    :try_start_5
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->removeFromHashMapByProfileName(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "EnterpriseVpn"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "profileName"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    sget-object v4, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "remove vpn connection for per app : success : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4e

    iget-object v4, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v4

    if-lez v4, :cond_5d

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->createNotification()V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_4e} :catch_61

    :cond_4e
    :goto_4e
    sget-boolean v4, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->DBG:Z

    if-eqz v4, :cond_55

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->printPackageVpnMap()V

    :cond_55
    sget-boolean v4, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->DBG:Z

    if-eqz v4, :cond_5c

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->printProfileVpnMap()V

    :cond_5c
    return v2

    :cond_5d
    :try_start_5d
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->cancelNotification()V
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_60} :catch_61

    goto :goto_4e

    :catch_61
    move-exception v0

    sget-object v4, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "remove vpn connection for perapp : Error in handling remove connection for per app vpn Feature"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4e
.end method

.method private restartPerAppVpnService(Ljava/lang/String;)V
    .registers 9

    const/4 v4, -0x1

    iget-object v5, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->mContext:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v5, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    if-ne v5, p1, :cond_13

    iget v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->killVpnService(I)V

    :cond_28
    return-void
.end method

.method private runAllVpnService()V
    .registers 22

    sget-object v17, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    const-string v18, "run all vpn : runAllVpnService beginning"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->cancelNotification()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->profileErrorMessage:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->profileNameVpnMap:Ljava/util/HashMap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v14

    sget-boolean v17, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->DBG:Z

    if-eqz v17, :cond_3d

    sget-object v17, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "run all vpn : profileNames:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3d
    invoke-interface {v14}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v8

    const/4 v6, 0x0

    array-length v9, v8

    sget-boolean v17, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->DBG:Z

    if-eqz v17, :cond_61

    sget-object v17, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "run all vpn : Length: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_61
    sget-boolean v17, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->DBG:Z

    if-eqz v17, :cond_89

    sget-object v17, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "run all vpn : Mocanainterface:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->vpninterfacelist:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_89
    const/4 v6, 0x0

    :goto_8a
    if-ge v6, v9, :cond_1c8

    :try_start_8c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->vpninterfacelist:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1b2

    const-string v18, "key_vpn"

    aget-object v17, v8, v6

    check-cast v17, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->getState(Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;

    move-result-object v12

    const/4 v15, 0x0

    invoke-virtual {v12}, Landroid/app/enterprise/EnterpriseResponseData;->getFailureState()I

    move-result v17

    if-nez v17, :cond_b7

    invoke-virtual {v12}, Landroid/app/enterprise/EnterpriseResponseData;->getData()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    :cond_b7
    if-eqz v15, :cond_1b2

    sget-object v17, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "run all vpn : Callback state: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->profileNameVpnMap:Ljava/util/HashMap;

    move-object/from16 v17, v0

    aget-object v18, v8, v6

    invoke-virtual/range {v17 .. v18}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;

    const/4 v11, 0x0

    if-eqz v16, :cond_110

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;->getVpnStateList()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_ec
    :goto_ec
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_110

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;

    invoke-virtual {v13}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getCid()I

    move-result v4

    if-lez v4, :cond_10e

    if-lez v4, :cond_ec

    invoke-virtual {v13}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->getPackageName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->isPackageRunning(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_ec

    :cond_10e
    const/4 v11, 0x1

    goto :goto_ec

    :cond_110
    const-string v17, "IDLE"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_124

    const-string v17, "FAILED"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1b2

    :cond_124
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v11, v0, :cond_1b2

    sget-object v17, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    const-string v18, "run all vpn : Calling startConnection"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->vpninterfacelist:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    move-object/from16 v18, v0

    aget-object v17, v8, v6

    check-cast v17, Ljava/lang/String;

    new-instance v19, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnCallback;

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnCallback;-><init>(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;I)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->findUid()I

    move-result v20

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move-object/from16 v2, v19

    move/from16 v3, v20

    invoke-interface {v0, v1, v2, v3}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->startConnection(Ljava/lang/String;Lcom/mocana/vpn/android/velo/IEnterpriseStatusCallback;I)Z

    move-result v17

    if-nez v17, :cond_1b2

    const-string v18, "key_vpn"

    aget-object v17, v8, v6

    check-cast v17, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->getErrorString(Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;

    move-result-object v12

    const/4 v15, 0x0

    invoke-virtual {v12}, Landroid/app/enterprise/EnterpriseResponseData;->getFailureState()I

    move-result v17

    if-nez v17, :cond_1a0

    invoke-virtual {v12}, Landroid/app/enterprise/EnterpriseResponseData;->getData()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    if-eqz v15, :cond_186

    sget-object v17, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    const-string v18, "run all vpn : Cannot start vpn, mocana returned error:"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_186
    sget-object v17, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "run all vpn : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a0
    aget-object v17, v8, v6

    check-cast v17, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v15}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->createNotification(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v17, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    const-string v18, "run all vpn : Cannot start vpn, mocana returned error"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b2
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_1b2} :catch_1b6

    :cond_1b2
    :goto_1b2
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_8a

    :catch_1b6
    move-exception v5

    sget-object v17, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    const-string v18, "run all vpn : Exception: "

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v17, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b2

    :cond_1c8
    return-void
.end method

.method private runSingleCommand(Ljava/lang/String;)V
    .registers 13

    const/4 v10, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->getLooperThread()Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$LooperThread;

    move-result-object v8

    if-eqz v8, :cond_3a

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const-string v8, " "

    invoke-virtual {p1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    array-length v6, v0

    const/4 v5, 0x0

    :goto_15
    if-ge v5, v6, :cond_1f

    aget-object v2, v0, v5

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_15

    :cond_1f
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v8, "command"

    invoke-virtual {v1, v8, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->mLooperThread:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$LooperThread;

    iget-object v8, v8, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$LooperThread;->mHandler:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;

    const/4 v9, 0x5

    invoke-static {v8, v9, v10, v10, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->mLooperThread:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$LooperThread;

    iget-object v8, v8, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$LooperThread;->mHandler:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;

    invoke-virtual {v8, v7}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_39
    :goto_39
    return-void

    :cond_3a
    sget-boolean v8, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->DBG:Z

    if-eqz v8, :cond_39

    sget-object v8, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    const-string v9, "run command : mLooperThread is null"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_39
.end method

.method private setDnsSystemProperty(Ljava/lang/String;ILjava/lang/String;)V
    .registers 21

    if-eqz p1, :cond_10a

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object v14

    if-eqz v14, :cond_10a

    sget-boolean v14, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->DBG:Z

    if-eqz v14, :cond_26

    sget-object v14, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "the setDnsSystemProperty  profileName value is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    sget-boolean v14, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->DBG:Z

    if-eqz v14, :cond_44

    sget-object v14, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "the setDnsSystemProperty  uidPassed value is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_44
    sget-boolean v14, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->DBG:Z

    if-eqz v14, :cond_62

    sget-object v14, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "the setDnsSystemProperty  interfaceName value is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_62
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->profileNameVpnMap:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    if-eqz v13, :cond_10a

    invoke-virtual {v13}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;->getDnsList()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_10a

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v14

    new-array v14, v14, [Ljava/lang/String;

    invoke-interface {v4, v14}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-virtual {v13}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;->getSearchDomainList()Ljava/util/List;

    move-result-object v8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v8, :cond_af

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_99
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_af

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/16 v15, 0x20

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_99

    :cond_af
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    :try_start_b7
    sget-boolean v14, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->DBG:Z

    if-eqz v14, :cond_d3

    sget-object v14, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "the setDnsSystemProperty  dnsArray value is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d3
    sget-boolean v14, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->DBG:Z

    if-eqz v14, :cond_ef

    sget-object v14, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "the setDnsSystemProperty  searchDomains value is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ef
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    move-object/from16 v0, p3

    invoke-interface {v14, v0, v3, v9}, Landroid/os/INetworkManagementService;->setDnsServersForInterface(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    move-object/from16 v0, p3

    move/from16 v1, p2

    invoke-interface {v14, v0, v1}, Landroid/os/INetworkManagementService;->setDnsInterfaceForUid(Ljava/lang/String;I)V

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_10a
    .catch Ljava/lang/Exception; {:try_start_b7 .. :try_end_10a} :catch_10b

    :cond_10a
    :goto_10a
    return-void

    :catch_10b
    move-exception v6

    sget-object v14, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "setting dns property : Exception in new dns properties file creation and the error is"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10a
.end method

.method private setupIntentFilter()V
    .registers 5

    sget-object v2, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    const-string v3, "setup intent filter is called"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnReceiver;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnReceiver;-><init>(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string v2, "package"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.samsung.android.mdm.VPN_RETRY_CALLBACK"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "enterprise.container.uninstalled"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private stopAllVpnService()V
    .registers 10

    sget-object v5, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    const-string v6, "stop all vpn :  beginning"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->profileNameVpnMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    sget-boolean v5, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->DBG:Z

    if-eqz v5, :cond_2d

    sget-object v5, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "stop all vpn : profileNames:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2d
    invoke-interface {v4}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v2

    const/4 v1, 0x0

    array-length v3, v2

    sget-boolean v5, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->DBG:Z

    if-eqz v5, :cond_4f

    sget-object v5, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "stop all vpn : Length: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4f
    const/4 v1, 0x0

    :goto_50
    if-ge v1, v3, :cond_98

    :try_start_52
    iget-object v5, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->vpninterfacelist:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;

    iget-object v5, v5, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    if-eqz v5, :cond_77

    iget-object v5, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->vpninterfacelist:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;

    iget-object v6, v5, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    aget-object v5, v2, v1

    check-cast v5, Ljava/lang/String;

    new-instance v7, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnCallback;

    const/4 v8, 0x1

    invoke-direct {v7, p0, v8}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnCallback;-><init>(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;I)V

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->findUid()I

    move-result v8

    invoke-interface {v6, v5, v7, v8}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->stopConnection(Ljava/lang/String;Lcom/mocana/vpn/android/velo/IEnterpriseStatusCallback;I)Z

    move-result v5

    if-eqz v5, :cond_77

    sget-object v5, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    const-string v6, "stop all vpn : Cannot stop vpn, mocana returned error"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_77
    .catch Landroid/os/RemoteException; {:try_start_52 .. :try_end_77} :catch_7a

    :cond_77
    :goto_77
    add-int/lit8 v1, v1, 0x1

    goto :goto_50

    :catch_7a
    move-exception v0

    sget-object v5, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "stop all vpn : Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_77

    :cond_98
    return-void
.end method

.method private stopVpnConnectionAfterAdminRemoval(I)V
    .registers 20

    const/4 v9, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v12, "Vpn_table"

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    const-string v17, "profile"

    aput-object v17, v15, v16

    const/16 v16, 0x1

    const-string v17, "adminUid"

    aput-object v17, v15, v16

    invoke-virtual {v11, v12, v13, v14, v15}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_f9

    :try_start_20
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->vpninterfacelist:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;

    iget-object v11, v11, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    if-eqz v11, :cond_f9

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2c
    :goto_2c
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_f9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    const-string v11, "profile"

    invoke-virtual {v3, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v11, "adminUid"

    invoke-virtual {v3, v11}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move/from16 v0, p1

    if-ne v2, v0, :cond_2c

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->vpninterfacelist:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;

    iget-object v11, v11, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->findUid()I

    move-result v12

    invoke-interface {v11, v9, v12}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->getState(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "First status of Remove Connection at stop vpn connection after admin remove is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v11, "FAILED"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c6

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->vpninterfacelist:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;

    iget-object v11, v11, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->findUid()I

    move-result v12

    invoke-interface {v11, v9, v12}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->getState(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    sget-object v11, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Failed Connection Status Check at stop vpn connection after admin remove is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->vpninterfacelist:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;

    iget-object v11, v11, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->findUid()I

    move-result v12

    invoke-interface {v11, v9, v12}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->getErrorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    sget-object v11, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Failed Connection Error Check at stop vpn connection after admin remove is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c6
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->vpninterfacelist:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;

    iget-object v11, v11, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    new-instance v12, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnCallBack;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnCallBack;-><init>(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;Z)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->findUid()I

    move-result v13

    invoke-interface {v11, v9, v12, v13}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->removeConnection(Ljava/lang/String;Lcom/mocana/vpn/android/velo/IEnterpriseStatusCallback;I)Z
    :try_end_da
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_da} :catch_dc

    goto/16 :goto_2c

    :catch_dc
    move-exception v5

    sget-object v11, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "stop vpn connection after admin remove : Failed "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f9
    return-void
.end method

.method private switchVpnMode()Z
    .registers 6

    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->vpninterfacelist:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;

    iget-object v2, v2, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    invoke-interface {v2}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->switchFIPSMode()I

    move-result v1

    sget-boolean v2, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->DBG:Z

    if-eqz v2, :cond_24

    sget-object v2, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "switching vpn mode : result is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    const/4 v2, -0x1

    if-eq v1, v2, :cond_4b

    const-string v2, "com.mocana.vpn.android"

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->restartPerAppVpnService(Ljava/lang/String;)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2c} :catch_2e

    const/4 v2, 0x1

    :goto_2d
    return v2

    :catch_2e
    move-exception v0

    sget-object v2, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "switching vpn mode : Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4b
    const/4 v2, 0x0

    goto :goto_2d
.end method

.method private unsetDnsSystemProperty(Ljava/lang/String;I)V
    .registers 9

    if-eqz p1, :cond_14

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object v3

    if-eqz v3, :cond_14

    :try_start_8
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    invoke-interface {v3, p2}, Landroid/os/INetworkManagementService;->clearDnsInterfaceForUid(I)V

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_14} :catch_15

    :cond_14
    :goto_14
    return-void

    :catch_15
    move-exception v0

    sget-object v3, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unsetDnsSystemProperty : Exception in new dns properties file creation and the error is"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14
.end method

.method private updateCACertificateDetailsInDatabase(Ljava/lang/String;[BLjava/lang/String;)V
    .registers 12

    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "CA_Certificate"

    invoke-virtual {v0, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v3, "CA_Password"

    invoke-virtual {v0, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "Vpn_table"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "profile"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-virtual {v3, v4, v5, v6, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v2

    sget-boolean v3, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->DBG:Z

    if-eqz v3, :cond_41

    sget-object v3, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "update to CACertificate in database : value is"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_41} :catch_42

    :cond_41
    :goto_41
    return-void

    :catch_42
    move-exception v1

    sget-boolean v3, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->DBG:Z

    if-eqz v3, :cond_41

    sget-object v3, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "update to CACertificate in database : Exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_41
.end method

.method private updateFipsModeInDatabase(IZ)Z
    .registers 17

    const/4 v4, -0x1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    if-eqz p2, :cond_54

    const/4 v4, 0x1

    :goto_8
    :try_start_8
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "Fips_Vpn_table"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "adminUid"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v5, v10, v11

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string v13, "fips_mode"

    aput-object v13, v11, v12

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_73

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_73

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v7, "fips_mode"

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v7, 0x1

    new-array v0, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "adminUid"

    aput-object v8, v0, v7

    const/4 v7, 0x1

    new-array v6, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    iget-object v7, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "Fips_Vpn_table"

    invoke-virtual {v7, v8, v0, v6, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_52} :catch_56

    move-result v7

    :goto_53
    return v7

    :cond_54
    const/4 v4, 0x0

    goto :goto_8

    :catch_56
    move-exception v3

    sget-object v7, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "update fips mode in database : Exception:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_73
    const/4 v7, 0x0

    goto :goto_53
.end method

.method private declared-synchronized updatePackageData(Ljava/lang/String;I)Z
    .registers 16

    const/4 v5, 0x0

    monitor-enter p0

    if-eqz p1, :cond_7d

    :try_start_4
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "EnterpriseVpn"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "applicationInfo"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object p1, v9, v10

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "profileName"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "UID_APP"

    aput-object v12, v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_7d

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_7d

    sget-object v6, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    const-string v7, "update to package : Cursor not null and data present, so update packageData UID in DB"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "UID_APP"

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v6, 0x1

    new-array v0, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "applicationInfo"

    aput-object v7, v0, v6

    const/4 v6, 0x1

    new-array v4, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v4, v6

    sget-object v6, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "update to package : update to package before DB insert:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v8, v4, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v8, v0, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "EnterpriseVpn"

    invoke-virtual {v6, v7, v0, v4, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z
    :try_end_7c
    .catchall {:try_start_4 .. :try_end_7c} :catchall_9d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7c} :catch_7f

    move-result v5

    :cond_7d
    :goto_7d
    monitor-exit p0

    return v5

    :catch_7f
    move-exception v3

    :try_start_80
    sget-object v6, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "update to package : Exception:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9c
    .catchall {:try_start_80 .. :try_end_9c} :catchall_9d

    goto :goto_7d

    :catchall_9d
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method private updateUserCertificateDetailsToDatabase(Ljava/lang/String;[BLjava/lang/String;)V
    .registers 12

    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "User_Certificate"

    invoke-virtual {v0, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v3, "User_Password"

    invoke-virtual {v0, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "Vpn_table"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "profile"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-virtual {v3, v4, v5, v6, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v2

    sget-boolean v3, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->DBG:Z

    if-eqz v3, :cond_41

    sget-object v3, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "update to client certificate in database : value is"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_41} :catch_42

    :cond_41
    :goto_41
    return-void

    :catch_42
    move-exception v1

    sget-boolean v3, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->DBG:Z

    if-eqz v3, :cond_41

    sget-object v3, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "update to client certificate in database : Exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_41
.end method

.method private updateVpnModeAfterAdminRemoval()V
    .registers 7

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->checkIfAnyAdminHasFipsMode()Z

    move-result v3

    if-nez v3, :cond_3b

    iget-object v3, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->vpninterfacelist:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;

    iget-object v3, v3, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    if-eqz v3, :cond_3b

    iget-object v3, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->vpninterfacelist:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;

    iget-object v3, v3, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    invoke-interface {v3}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->getFIPSMode()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_3b

    iget-object v3, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->vpninterfacelist:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;

    iget-object v3, v3, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    invoke-interface {v3}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->switchFIPSMode()I

    move-result v2

    sget-boolean v3, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->DBG:Z

    if-eqz v3, :cond_3b

    sget-object v3, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateVpnModeAfterAdminRemoval : FIPS mode switch is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3b} :catch_3c

    :cond_3b
    :goto_3b
    return-void

    :catch_3c
    move-exception v1

    sget-object v3, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "update to vpn mode : Failed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3b
.end method


# virtual methods
.method public addVpnProfileToApp(ILjava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .registers 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->enforceEnterpriseVpnPermission()I

    move-result v9

    new-instance v19, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct/range {v19 .. v19}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    if-nez p2, :cond_1d

    const/4 v4, 0x1

    const/4 v5, 0x4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    :goto_1c
    return-object v19

    :cond_1d
    if-eqz p3, :cond_25

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2d

    :cond_25
    const/4 v4, 0x1

    const/4 v5, 0x2

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto :goto_1c

    :cond_2d
    if-gtz p1, :cond_41

    const-string v4, "sec_container_"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_41

    const/4 v4, 0x1

    const/4 v5, 0x4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto :goto_1c

    :cond_41
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->checkForSystemUIDApplicationForVpn(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_53

    const/4 v4, 0x1

    const/4 v5, 0x5

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto :goto_1c

    :cond_53
    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->vpninterfacelist:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;

    iget-object v4, v4, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    if-eqz v4, :cond_bc

    :try_start_5d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->vpninterfacelist:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;

    iget-object v4, v4, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->findUid()I

    move-result v5

    move-object/from16 v0, p3

    invoke-interface {v4, v0, v5}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->getConnection(Ljava/lang/String;I)Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;

    move-result-object v21

    if-nez v21, :cond_9c

    const/4 v4, 0x1

    const/4 v5, 0x2

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_76
    .catch Landroid/os/RemoteException; {:try_start_5d .. :try_end_76} :catch_77

    goto :goto_1c

    :catch_77
    move-exception v13

    sget-object v4, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "add package to profile : Exception :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v13}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    const/4 v5, 0x3

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto :goto_1c

    :cond_9c
    :try_start_9c
    sget-boolean v4, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->DBG:Z

    if-eqz v4, :cond_bc

    sget-object v4, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "add package in profile : The profile name is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v21

    iget-object v6, v0, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_bc
    .catch Landroid/os/RemoteException; {:try_start_9c .. :try_end_bc} :catch_77

    :cond_bc
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->checkIfProfileHasDefaultRouteEnabled(Ljava/lang/String;)I

    move-result v11

    const/4 v4, 0x1

    if-eq v11, v4, :cond_ca

    const/4 v4, -0x1

    if-ne v11, v4, :cond_d3

    :cond_ca
    const/4 v4, 0x1

    const/4 v5, 0x3

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto/16 :goto_1c

    :cond_d3
    const/4 v7, -0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v16

    const/4 v4, 0x0

    :try_start_dd
    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v14

    iget v7, v14, Landroid/content/pm/ApplicationInfo;->uid:I

    sget-boolean v4, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->DBG:Z

    if-eqz v4, :cond_103

    sget-object v4, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "add package to profile : Uid"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_103
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_dd .. :try_end_103} :catch_28f

    :cond_103
    :goto_103
    sget-boolean v4, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->DBG:Z

    if-eqz v4, :cond_11f

    sget-object v4, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "add package to profile : Found UID:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11f
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "adminUid"

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v9}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v12, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "applicationInfo"

    move-object/from16 v0, p2

    invoke-virtual {v12, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "profileName"

    move-object/from16 v0, p3

    invoke-virtual {v12, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "CID"

    new-instance v5, Ljava/lang/Integer;

    move/from16 v0, p1

    invoke-direct {v5, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v12, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "UID_APP"

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v12, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :try_start_152
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "EnterpriseVpn"

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v8, v12}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v20

    const/4 v4, 0x1

    move/from16 v0, v20

    if-ne v0, v4, :cond_34d

    sget-object v4, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    const-string v5, "add package to profile : put data by field is success"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, -0x1

    if-eq v7, v4, :cond_248

    sget-boolean v4, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->DBG:Z

    if-eqz v4, :cond_189

    sget-object v4, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "add package to profile : Uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_189
    new-instance v3, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;

    move-object/from16 v4, p0

    move-object/from16 v5, p3

    move-object/from16 v6, p2

    move/from16 v8, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;-><init>(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;Ljava/lang/String;Ljava/lang/String;II)V

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->addToHashMap(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->addIPtableBLock(I)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->isNetworkConnected()Z

    move-result v4

    if-eqz v4, :cond_344

    if-lez p1, :cond_1b4

    if-lez p1, :cond_344

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->isPackageRunning(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_344

    :cond_1b4
    sget-object v4, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    const-string v5, "add package to profile : Network is connected via check network connection method"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1bb
    .catch Ljava/lang/Exception; {:try_start_152 .. :try_end_1bb} :catch_269

    :try_start_1bb
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->vpninterfacelist:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;

    iget-object v4, v4, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    if-eqz v4, :cond_248

    const-string v4, "key_vpn"

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v4, v1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->getState(Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;

    move-result-object v17

    const/16 v22, 0x0

    invoke-virtual/range {v17 .. v17}, Landroid/app/enterprise/EnterpriseResponseData;->getFailureState()I

    move-result v4

    if-nez v4, :cond_1db

    invoke-virtual/range {v17 .. v17}, Landroid/app/enterprise/EnterpriseResponseData;->getData()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    :cond_1db
    sget-object v4, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "add package to profile : addVpnProfileToApp - value ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v22, :cond_324

    sget-object v4, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "add package to profile : Callback state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "CONNECTED"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b9

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->profileNameVpnMap:Ljava/util/HashMap;

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;

    if-eqz v23, :cond_293

    invoke-virtual/range {v23 .. v23}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;->getInterfaceName()Ljava/lang/String;

    move-result-object v15

    :goto_22e
    if-eqz v15, :cond_248

    invoke-virtual {v3, v15}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->setInterface(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v15}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->addIPtableRoute(ILjava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->removeIPtableBLock(I)V

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v7, v15}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->setDnsSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;->setState(I)V
    :try_end_248
    .catch Landroid/os/RemoteException; {:try_start_1bb .. :try_end_248} :catch_29b
    .catch Ljava/lang/Exception; {:try_start_1bb .. :try_end_248} :catch_269

    :cond_248
    :goto_248
    :try_start_248
    sget-boolean v4, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->DBG:Z

    if-eqz v4, :cond_24f

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->printPackageVpnMap()V

    :cond_24f
    sget-boolean v4, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->DBG:Z

    if-eqz v4, :cond_256

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->printProfileVpnMap()V

    :cond_256
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_267
    .catch Ljava/lang/Exception; {:try_start_248 .. :try_end_267} :catch_269

    goto/16 :goto_1c

    :catch_269
    move-exception v13

    sget-object v4, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "add package to profile : Exception occured for adding vpn, package map."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v13}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    const/4 v5, 0x3

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto/16 :goto_1c

    :catch_28f
    move-exception v13

    const/4 v7, -0x1

    goto/16 :goto_103

    :cond_293
    :try_start_293
    sget-object v4, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    const-string v5, "add package to profile : ProfileNameVpnEntry returned null value"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_29a
    .catch Landroid/os/RemoteException; {:try_start_293 .. :try_end_29a} :catch_29b
    .catch Ljava/lang/Exception; {:try_start_293 .. :try_end_29a} :catch_269

    goto :goto_22e

    :catch_29b
    move-exception v13

    :try_start_29c
    sget-object v4, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "add package to profile : Exception at mocana:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v13}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b8
    .catch Ljava/lang/Exception; {:try_start_29c .. :try_end_2b8} :catch_269

    goto :goto_248

    :cond_2b9
    :try_start_2b9
    const-string v4, "IDLE"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_248

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->vpninterfacelist:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;

    iget-object v4, v4, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    new-instance v5, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnCallback;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v6}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnCallback;-><init>(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;I)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->findUid()I

    move-result v6

    move-object/from16 v0, p3

    invoke-interface {v4, v0, v5, v6}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->startConnection(Ljava/lang/String;Lcom/mocana/vpn/android/velo/IEnterpriseStatusCallback;I)Z

    move-result v4

    if-nez v4, :cond_248

    const-string v4, "key_vpn"

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v4, v1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->getErrorString(Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;

    move-result-object v18

    const/16 v22, 0x0

    invoke-virtual/range {v18 .. v18}, Landroid/app/enterprise/EnterpriseResponseData;->getFailureState()I

    move-result v4

    if-nez v4, :cond_31c

    invoke-virtual/range {v18 .. v18}, Landroid/app/enterprise/EnterpriseResponseData;->getData()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    if-eqz v22, :cond_311

    sget-object v4, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "add package to profile : Cannot start vpn, mocana returned error : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_311
    :goto_311
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->createNotification(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_248

    :cond_31c
    sget-object v4, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    const-string v5, "add package to profile : Cannot start vpn, mocana returned error : Failure"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_311

    :cond_324
    sget-boolean v4, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->DBG:Z

    if-eqz v4, :cond_248

    sget-object v4, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "add package to profile : Cannot start vpn, profile has some problem:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_342
    .catch Landroid/os/RemoteException; {:try_start_2b9 .. :try_end_342} :catch_29b
    .catch Ljava/lang/Exception; {:try_start_2b9 .. :try_end_342} :catch_269

    goto/16 :goto_248

    :cond_344
    :try_start_344
    sget-object v4, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    const-string v5, "add package to profile : Network is not connected via check network connection method"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_248

    :cond_34d
    sget-object v4, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    const-string v5, "add package to profile : put data by field is failure"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    const/4 v5, 0x2

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_35b
    .catch Ljava/lang/Exception; {:try_start_344 .. :try_end_35b} :catch_269

    goto/16 :goto_1c
.end method

.method public addVpnProfileToDatabase(ILcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;)V
    .registers 12

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "adminUid"

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "Authentication"

    new-instance v4, Ljava/lang/Integer;

    iget v5, p2, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->authMethod:I

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "BackupServer_status"

    new-instance v4, Ljava/lang/Boolean;

    iget-boolean v5, p2, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->backupServerEnabled:Z

    invoke-direct {v4, v5}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v3, "BackupServer"

    iget-object v4, p2, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->backupVPNServer:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "DPD"

    new-instance v4, Ljava/lang/Boolean;

    iget-boolean v5, p2, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->deadPeerDetect:Z

    invoke-direct {v4, v5}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v3, "GroupName"

    iget-object v4, p2, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->groupname:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "IPSEC_Type"

    new-instance v4, Ljava/lang/Integer;

    iget v5, p2, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->iPSecIDType:I

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "IKE"

    new-instance v4, Ljava/lang/Integer;

    iget v5, p2, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->ikeVersion:I

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "Default_Route"

    new-instance v4, Ljava/lang/Boolean;

    iget-boolean v5, p2, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->isDefaultrouteEnabled:Z

    invoke-direct {v4, v5}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v3, "User_Auth"

    new-instance v4, Ljava/lang/Boolean;

    iget-boolean v5, p2, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->isUserAuthEnabled:Z

    invoke-direct {v4, v5}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v3, "Mobike"

    new-instance v4, Ljava/lang/Boolean;

    iget-boolean v5, p2, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->mobikeEnabled:Z

    invoke-direct {v4, v5}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v3, "DH_Group"

    new-instance v4, Ljava/lang/Integer;

    iget v5, p2, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->p1DHGroup:I

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "Phase_Mode"

    new-instance v4, Ljava/lang/Integer;

    iget v5, p2, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->p1Mode:I

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "PFS"

    new-instance v4, Ljava/lang/Boolean;

    iget-boolean v5, p2, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->pfs:Z

    invoke-direct {v4, v5}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v3, "PSK"

    iget-object v4, p2, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->psk:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "SuiteBType"

    new-instance v4, Ljava/lang/Integer;

    iget v5, p2, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->suiteBType:I

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "Host"

    iget-object v4, p2, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->host:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "profile"

    iget-object v4, p2, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->name:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "Username"

    iget-object v4, p2, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->username:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "Password"

    iget-object v4, p2, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->password:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "Split_Tunnel_type"

    iget v4, p2, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->splitTunnelType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "Forward_Routes"

    iget-object v4, p2, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->forwardRoutes:Ljava/util/List;

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->arrayListConverterToByteArray(Ljava/util/List;)[B

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    :try_start_e6
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "Vpn_table"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "profile"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    iget-object v8, p2, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->name:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v5, v6, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v2

    sget-boolean v3, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->DBG:Z

    if-eqz v3, :cond_126

    sget-object v3, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "add profile in database : status is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "profile Name is"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p2, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_126
    .catch Ljava/lang/Exception; {:try_start_e6 .. :try_end_126} :catch_127

    :cond_126
    :goto_126
    return-void

    :catch_127
    move-exception v1

    sget-boolean v3, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->DBG:Z

    if-eqz v3, :cond_126

    sget-object v3, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "add profile in database : Error at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_126
.end method

.method public containerPackageListFromVpnDatabase(I)[Ljava/lang/String;
    .registers 15

    const/4 v3, 0x0

    const/4 v5, 0x0

    :try_start_2
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "EnterpriseVpn"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "CID"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "applicationInfo"

    aput-object v12, v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_4d

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_4d

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v5, v6, [Ljava/lang/String;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_36
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_54

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    const-string v6, "applicationInfo"

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_36

    :cond_4d
    sget-object v6, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    const-string v7, "getting container package list in database : DB read for packages returned NULL"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_54} :catch_55

    :cond_54
    :goto_54
    return-object v5

    :catch_55
    move-exception v2

    sget-object v6, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getting container package list in database : Exception "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_54
.end method

.method public enableDefaultRoute(Ljava/lang/String;Ljava/lang/String;Z)Landroid/app/enterprise/EnterpriseResponseData;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->enforceEnterpriseVpnPermission()I

    new-instance v1, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v1}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    const/4 v3, 0x2

    invoke-virtual {v1, v4, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    if-eqz p1, :cond_30

    if-eqz p2, :cond_30

    :try_start_1a
    const-string v3, "key_vpn"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_69

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->getMocanaVPNinterface()Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    move-result-object v3

    if-nez v3, :cond_31

    sget-object v3, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    const-string v4, "enable to default route : Mocana Service is not started"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    :cond_30
    :goto_30
    return-object v1

    :cond_31
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->vpninterfacelist:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;

    iget-object v3, v3, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->findUid()I

    move-result v4

    invoke-interface {v3, p2, p3, v4}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->enableDefaultRoute(Ljava/lang/String;ZI)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_49} :catch_4a

    goto :goto_30

    :catch_4a
    move-exception v0

    sget-object v3, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enable to default route : Failure at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    goto :goto_30

    :cond_69
    const/4 v3, 0x0

    :try_start_6a
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_76} :catch_4a

    goto :goto_30
.end method

.method public declared-synchronized getAllEnterpriseVpnConnections(Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x0

    monitor-enter p0

    :try_start_2
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->enforceEnterpriseVpnPermission()I
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_82

    const/4 v3, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_3b

    :try_start_a
    const-string v6, "key_vpn"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3d

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->getMocanaVPNinterface()Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    move-result-object v6

    if-nez v6, :cond_21

    sget-object v6, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    const-string v7, "getting all vpn connection : Mocana Service is not started"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f
    .catchall {:try_start_a .. :try_end_1f} :catchall_82
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_1f} :catch_68

    :goto_1f
    monitor-exit p0

    return-object v5

    :cond_21
    :try_start_21
    new-instance v4, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v4}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V
    :try_end_26
    .catchall {:try_start_21 .. :try_end_26} :catchall_82
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_26} :catch_68

    :try_start_26
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->vpninterfacelist:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;

    iget-object v6, v6, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->findUid()I

    move-result v7

    invoke-interface {v6, v7}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->getAllConnections(I)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_3a
    .catchall {:try_start_26 .. :try_end_3a} :catchall_82
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_3a} :catch_85

    move-object v3, v4

    :cond_3b
    :goto_3b
    move-object v5, v3

    goto :goto_1f

    :cond_3d
    :try_start_3d
    const-string v6, "anyconnect"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5e

    new-instance v4, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v4}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V
    :try_end_4a
    .catchall {:try_start_3d .. :try_end_4a} :catchall_82
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_4a} :catch_68

    :try_start_4a
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->vpninterfacelist:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;

    invoke-virtual {v6}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;->getPreparedCiscoInterface()Landroid/app/enterprise/IEnterpriseVpnInterface;

    move-result-object v6

    invoke-interface {v6}, Landroid/app/enterprise/IEnterpriseVpnInterface;->getAllConnections()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_5c
    .catchall {:try_start_4a .. :try_end_5c} :catchall_82
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_5c} :catch_85

    move-object v3, v4

    goto :goto_3b

    :cond_5e
    const/4 v6, 0x0

    :try_start_5f
    invoke-virtual {v3, v6}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-virtual {v3, v6, v7}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_67
    .catchall {:try_start_5f .. :try_end_67} :catchall_82
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_67} :catch_68

    goto :goto_3b

    :catch_68
    move-exception v1

    :goto_69
    :try_start_69
    sget-object v6, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getting all vpn connection : Failure at "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_81
    .catchall {:try_start_69 .. :try_end_81} :catchall_82

    goto :goto_1f

    :catchall_82
    move-exception v5

    monitor-exit p0

    throw v5

    :catch_85
    move-exception v1

    move-object v3, v4

    goto :goto_69
.end method

.method public getAllPackagesForProfile(ILjava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->enforceEnterpriseVpnPermission()I

    move-result v0

    const/4 v7, 0x0

    new-instance v6, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v6}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    invoke-virtual {v6, v7}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    if-eqz p2, :cond_b5

    sget-boolean v8, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->DBG:Z

    if-eqz v8, :cond_1a

    sget-object v8, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    const-string v9, "get all added package : Profile is not null"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    :try_start_1a
    iget-object v8, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "EnterpriseVpn"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "profileName"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "CID"

    aput-object v12, v10, v11

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object p2, v11, v12

    const/4 v12, 0x1

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string v14, "applicationInfo"

    aput-object v14, v12, v13

    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    sget-boolean v8, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->DBG:Z

    if-eqz v8, :cond_4b

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->printPackageVpnMap()V

    :cond_4b
    sget-boolean v8, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->DBG:Z

    if-eqz v8, :cond_52

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->printProfileVpnMap()V

    :cond_52
    const/4 v4, 0x0

    if-eqz v2, :cond_85

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_85

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v7, v8, [Ljava/lang/String;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_65
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    const-string v8, "applicationInfo"

    invoke-virtual {v1, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_65

    :cond_7c
    invoke-virtual {v6, v7}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    :goto_84
    return-object v6

    :cond_85
    sget-object v8, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    const-string v9, "get all added package : DB read for packages returned NULL"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x1

    const/4 v9, 0x4

    invoke-virtual {v6, v8, v9}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_91} :catch_92

    goto :goto_84

    :catch_92
    move-exception v3

    sget-object v8, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "get all added package : Exceptionin notify: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x1

    const/4 v9, 0x3

    invoke-virtual {v6, v8, v9}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto :goto_84

    :cond_b5
    const/4 v8, 0x1

    const/4 v9, 0x2

    invoke-virtual {v6, v8, v9}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto :goto_84
.end method

.method public getCACertificate(Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Landroid/app/enterprise/CertificateInfo;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->enforceEnterpriseVpnPermission()I

    new-instance v1, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v1}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    const/4 v3, 0x2

    invoke-virtual {v1, v4, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    if-eqz p1, :cond_2b

    if-eqz p2, :cond_2b

    :try_start_15
    const-string v3, "key_vpn"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_60

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->getMocanaVPNinterface()Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    move-result-object v3

    if-nez v3, :cond_2c

    sget-object v3, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    const-string v4, "getting CACertificate : Mocana Service is not started"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    :cond_2b
    :goto_2b
    return-object v1

    :cond_2c
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->vpninterfacelist:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;

    iget-object v3, v3, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->findUid()I

    move-result v4

    invoke-interface {v3, p2, v4}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->getCACertificate(Ljava/lang/String;I)Landroid/app/enterprise/CertificateInfo;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_40} :catch_41

    goto :goto_2b

    :catch_41
    move-exception v0

    sget-object v3, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getting CACertificate : Failure at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    goto :goto_2b

    :cond_60
    const/4 v3, 0x0

    :try_start_61
    invoke-virtual {v1, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_69} :catch_41

    goto :goto_2b
.end method

.method public getClientCertificates(Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/CertificateInfo;",
            ">;>;"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->enforceEnterpriseVpnPermission()I

    new-instance v1, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v1}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    :try_start_9
    const-string v3, "anyconnect"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    iget-object v3, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->vpninterfacelist:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;

    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;->getPreparedCiscoInterface()Landroid/app/enterprise/IEnterpriseVpnInterface;

    move-result-object v3

    invoke-interface {v3}, Landroid/app/enterprise/IEnterpriseVpnInterface;->getCertificates()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    :goto_23
    return-object v1

    :cond_24
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_2d} :catch_2e

    goto :goto_23

    :catch_2e
    move-exception v0

    sget-object v3, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getting client certificate : Failure at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    goto :goto_23
.end method

.method public declared-synchronized getEnterpriseVpnConnection(Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Landroid/app/enterprise/EnterpriseVpnConnectionBase;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    monitor-enter p0

    :try_start_2
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->enforceEnterpriseVpnPermission()I

    new-instance v1, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v1}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-virtual {v1, v3, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_13
    .catchall {:try_start_2 .. :try_end_13} :catchall_88

    if-eqz p1, :cond_31

    if-eqz p2, :cond_31

    :try_start_17
    const-string v3, "anyconnect"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    iget-object v3, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->vpninterfacelist:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;

    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;->getPreparedCiscoInterface()Landroid/app/enterprise/IEnterpriseVpnInterface;

    move-result-object v3

    invoke-interface {v3, p2}, Landroid/app/enterprise/IEnterpriseVpnInterface;->getConnection(Ljava/lang/String;)Landroid/app/enterprise/EnterpriseVpnConnection;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_31
    .catchall {:try_start_17 .. :try_end_31} :catchall_88
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_31} :catch_5f

    :cond_31
    :goto_31
    monitor-exit p0

    return-object v1

    :cond_33
    :try_start_33
    const-string v3, "key_vpn"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7e

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->getMocanaVPNinterface()Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    move-result-object v3

    if-nez v3, :cond_4a

    sget-object v3, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    const-string v4, "getting vpn connection : Mocana Service is not started"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    goto :goto_31

    :cond_4a
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->vpninterfacelist:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;

    iget-object v3, v3, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->findUid()I

    move-result v4

    invoke-interface {v3, p2, v4}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->getConnection(Ljava/lang/String;I)Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_5e
    .catchall {:try_start_33 .. :try_end_5e} :catchall_88
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_5e} :catch_5f

    goto :goto_31

    :catch_5f
    move-exception v0

    :try_start_60
    sget-object v3, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getting vpn connection : Failure at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7c
    .catchall {:try_start_60 .. :try_end_7c} :catchall_88

    move-object v1, v2

    goto :goto_31

    :cond_7e
    const/4 v3, 0x0

    :try_start_7f
    invoke-virtual {v1, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_87
    .catchall {:try_start_7f .. :try_end_87} :catchall_88
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_87} :catch_5f

    goto :goto_31

    :catchall_88
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public getErrorString(Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->enforceEnterpriseVpnPermission()I

    new-instance v1, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v1}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    :try_start_9
    const-string v3, "key_vpn"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_54

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->getMocanaVPNinterface()Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    move-result-object v3

    if-nez v3, :cond_20

    sget-object v3, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    const-string v4, "getting vpn error string : Mocana Service is not started"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    :goto_1f
    return-object v1

    :cond_20
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->vpninterfacelist:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;

    iget-object v3, v3, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->findUid()I

    move-result v4

    invoke-interface {v3, p2, v4}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->getErrorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_34} :catch_35

    goto :goto_1f

    :catch_35
    move-exception v0

    sget-object v3, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getting vpn error string : Failure at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    goto :goto_1f

    :cond_54
    const/4 v3, 0x0

    :try_start_55
    invoke-virtual {v1, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_5d} :catch_35

    goto :goto_1f
.end method

.method public getForwardRoutes(Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->enforceEnterpriseVpnPermission()I

    new-instance v1, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v1}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    const/4 v3, 0x2

    invoke-virtual {v1, v4, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    if-eqz p1, :cond_2b

    if-eqz p2, :cond_2b

    :try_start_15
    const-string v3, "key_vpn"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_60

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->getMocanaVPNinterface()Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    move-result-object v3

    if-nez v3, :cond_2c

    sget-object v3, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    const-string v4, "getting forward route : Mocana Service is not started"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    :cond_2b
    :goto_2b
    return-object v1

    :cond_2c
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->vpninterfacelist:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;

    iget-object v3, v3, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->findUid()I

    move-result v4

    invoke-interface {v3, p2, v4}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->getForwardRoutes(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_40} :catch_41

    goto :goto_2b

    :catch_41
    move-exception v0

    sget-object v3, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getting forward route : Failure at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    goto :goto_2b

    :cond_60
    const/4 v3, 0x0

    :try_start_61
    invoke-virtual {v1, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_69} :catch_41

    goto :goto_2b
.end method

.method public getState(Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->enforceEnterpriseVpnPermission()I

    new-instance v1, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v1}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    :try_start_9
    const-string v3, "key_vpn"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_54

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->getMocanaVPNinterface()Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    move-result-object v3

    if-nez v3, :cond_20

    sget-object v3, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    const-string v4, "getting vpn state : Mocana Service is not started"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    :goto_1f
    return-object v1

    :cond_20
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->vpninterfacelist:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;

    iget-object v3, v3, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->findUid()I

    move-result v4

    invoke-interface {v3, p2, v4}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->getState(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_34} :catch_35

    goto :goto_1f

    :catch_35
    move-exception v0

    sget-object v3, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getting vpn state : Failure at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    goto :goto_1f

    :cond_54
    const/4 v3, 0x0

    :try_start_55
    invoke-virtual {v1, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_5d} :catch_35

    goto :goto_1f
.end method

.method public getUserCertificate(Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Landroid/app/enterprise/CertificateInfo;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->enforceEnterpriseVpnPermission()I

    new-instance v1, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v1}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    const/4 v3, 0x2

    invoke-virtual {v1, v4, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    if-eqz p1, :cond_2b

    if-eqz p2, :cond_2b

    :try_start_15
    const-string v3, "key_vpn"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_60

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->getMocanaVPNinterface()Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    move-result-object v3

    if-nez v3, :cond_2c

    sget-object v3, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    const-string v4, "getting user certificate : Mocana Service is not started"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    :cond_2b
    :goto_2b
    return-object v1

    :cond_2c
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->vpninterfacelist:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;

    iget-object v3, v3, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->findUid()I

    move-result v4

    invoke-interface {v3, p2, v4}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->getUserCertificate(Ljava/lang/String;I)Landroid/app/enterprise/CertificateInfo;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_40} :catch_41

    goto :goto_2b

    :catch_41
    move-exception v0

    sget-object v3, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getting user certificate : Failure at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    goto :goto_2b

    :cond_60
    const/4 v3, 0x0

    :try_start_61
    invoke-virtual {v1, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_69} :catch_41

    goto :goto_2b
.end method

.method public getVpnModeOfOperation()Landroid/app/enterprise/EnterpriseResponseData;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->enforceEnterpriseVpnPermission()I

    new-instance v1, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v1}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    const/4 v2, 0x1

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    :try_start_15
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->vpninterfacelist:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;

    iget-object v2, v2, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    if-eqz v2, :cond_2f

    iget-object v2, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->vpninterfacelist:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;

    iget-object v2, v2, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    invoke-interface {v2}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->getFIPSMode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_2f} :catch_30

    :cond_2f
    :goto_2f
    return-object v1

    :catch_30
    move-exception v0

    sget-object v2, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getting vpn mode : Failure at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_2f
.end method

.method public installClientCertificate(Ljava/lang/String;[BLjava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->enforceEnterpriseVpnPermission()I

    new-instance v1, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v1}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    :try_start_8
    const-string v2, "anyconnect"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    iget-object v2, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->vpninterfacelist:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;

    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;->getPreparedCiscoInterface()Landroid/app/enterprise/IEnterpriseVpnInterface;

    move-result-object v2

    invoke-interface {v2, p2, p3}, Landroid/app/enterprise/IEnterpriseVpnInterface;->installCertificate([BLjava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    :goto_26
    return-object v1

    :cond_27
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_34} :catch_35

    goto :goto_26

    :catch_35
    move-exception v0

    sget-object v2, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "install to client certificate : Failure at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_26
.end method

.method public isDefaultRouteEnabled(Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->enforceEnterpriseVpnPermission()I

    new-instance v2, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v2}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    if-eqz p1, :cond_25

    if-eqz p2, :cond_25

    :try_start_f
    const-string v6, "key_vpn"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_62

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->getMocanaVPNinterface()Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    move-result-object v6

    if-nez v6, :cond_26

    sget-object v4, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    const-string v5, "check to default route enabled : Mocana Service is not started"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    :cond_25
    :goto_25
    return-object v2

    :cond_26
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->vpninterfacelist:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;

    iget-object v6, v6, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->findUid()I

    move-result v7

    invoke-interface {v6, p2, v7}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->isDefaultRouteEnabled(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_60

    :goto_34
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_40} :catch_41

    goto :goto_25

    :catch_41
    move-exception v0

    sget-object v4, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "check to default route enabled : Failure at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    goto :goto_25

    :cond_60
    move v4, v5

    goto :goto_34

    :cond_62
    const/4 v4, 0x0

    :try_start_63
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_6f} :catch_41

    goto :goto_25
.end method

.method public notifyContainerAppLaunch(I)V
    .registers 8

    const/4 v5, 0x0

    sget-object v3, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    const-string v4, "notify when container app launch : executing from proxies - Handle in thread for better launch time"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->getLooperThread()Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$LooperThread;

    move-result-object v3

    if-eqz v3, :cond_2d

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->enforceEnterpriseVpnPermission()I

    move-result v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v3, "uid"

    invoke-virtual {v1, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v3, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->mLooperThread:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$LooperThread;

    iget-object v3, v3, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$LooperThread;->mHandler:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;

    const/4 v4, 0x7

    invoke-static {v3, v4, v5, v5, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->mLooperThread:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$LooperThread;

    iget-object v3, v3, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$LooperThread;->mHandler:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;

    invoke-virtual {v3, v2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_2c
    :goto_2c
    return-void

    :cond_2d
    sget-boolean v3, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->DBG:Z

    if-eqz v3, :cond_2c

    sget-object v3, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    const-string v4, "notify when container app launch : mLooperThread is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c
.end method

.method public onAdminAdded(I)V
    .registers 8

    const/4 v5, 0x0

    sget-object v2, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    const-string v3, "admin add  : "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v2, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->DBG:Z

    if-eqz v2, :cond_24

    sget-object v2, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "admin add  : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->insertFipsModeInDatabase(I)Z

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->bindAnyconnectVpnInterface()V

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->getLooperThread()Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$LooperThread;

    move-result-object v2

    if-eqz v2, :cond_47

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v2, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->mLooperThread:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$LooperThread;

    iget-object v2, v2, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$LooperThread;->mHandler:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;

    const/16 v3, 0x8

    invoke-static {v2, v3, v5, v5, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->mLooperThread:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$LooperThread;

    iget-object v2, v2, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$LooperThread;->mHandler:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$EnterpriseVpnHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_46
    :goto_46
    return-void

    :cond_47
    sget-boolean v2, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->DBG:Z

    if-eqz v2, :cond_46

    sget-object v2, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    const-string v3, "added admin : mLooperThread is null...when AdminAdded"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_46
.end method

.method public onAdminRemoved(I)V
    .registers 5

    sget-boolean v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->DBG:Z

    if-eqz v0, :cond_1c

    sget-object v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "admin remove : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->updateVpnModeAfterAdminRemoval()V

    return-void
.end method

.method public onContainerCreation(II)V
    .registers 6

    sget-object v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "container creation("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onContainerRemoved(II)V
    .registers 6

    sget-object v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "container remove("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 5

    sget-boolean v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->DBG:Z

    if-eqz v0, :cond_1c

    sget-object v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pre admin remove : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    const-string v0, "android.permission.sec.MDM_ENTERPRISE_VPN"

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->checkIfAdminHasVpnPermission(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_43

    sget-boolean v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->DBG:Z

    if-eqz v0, :cond_40

    sget-object v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Admin has VPN Permission : Pre admin remove "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_40
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->stopVpnConnectionAfterAdminRemoval(I)V

    :cond_43
    return-void
.end method

.method public onPreContainerRemoval(II)V
    .registers 6

    sget-object v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pre container remove("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public declared-synchronized removeEnterpriseVpnConnection(Ljava/lang/String;Ljava/lang/String;Lcom/mocana/vpn/android/velo/IEnterpriseStatusCallback;)Landroid/app/enterprise/EnterpriseResponseData;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/mocana/vpn/android/velo/IEnterpriseStatusCallback;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->enforceEnterpriseVpnPermission()I

    new-instance v2, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v2}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    const/4 v4, 0x1

    const/4 v5, 0x2

    invoke-virtual {v2, v4, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_127

    if-eqz p1, :cond_38

    if-eqz p2, :cond_38

    :try_start_1a
    const-string v4, "anyconnect"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3a

    iget-object v4, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->vpninterfacelist:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;

    invoke-virtual {v4}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;->getPreparedCiscoInterface()Landroid/app/enterprise/IEnterpriseVpnInterface;

    move-result-object v4

    invoke-interface {v4, p2}, Landroid/app/enterprise/IEnterpriseVpnInterface;->removeConnection(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_38
    .catchall {:try_start_1a .. :try_end_38} :catchall_127
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_38} :catch_108

    :cond_38
    :goto_38
    monitor-exit p0

    return-object v2

    :cond_3a
    :try_start_3a
    const-string v4, "key_vpn"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12a

    sget-object v4, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "remove vpn connection : is called. type = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , name = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->getMocanaVPNinterface()Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    move-result-object v4

    if-nez v4, :cond_73

    sget-object v4, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    const-string v5, "remove vpn connection : Mocana Service is not started"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    goto :goto_38

    :cond_73
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->vpninterfacelist:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;

    iget-object v4, v4, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->findUid()I

    move-result v5

    invoke-interface {v4, p2, v5}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->getState(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "First status of remove vpn connection is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_38

    const-string v4, "FAILED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e9

    sget-object v4, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed remove vpn connection : Status Check is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->vpninterfacelist:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;

    iget-object v6, v6, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->findUid()I

    move-result v7

    invoke-interface {v6, p2, v7}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->getState(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->vpninterfacelist:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;

    iget-object v4, v4, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->findUid()I

    move-result v5

    invoke-interface {v4, p2, v5}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->getErrorString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed remove vpn connection : Error Check is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e9
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->vpninterfacelist:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;

    iget-object v4, v4, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    new-instance v5, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnCallBack;

    invoke-direct {v5, p0, p3}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnCallBack;-><init>(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;Lcom/mocana/vpn/android/velo/IEnterpriseStatusCallback;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->findUid()I

    move-result v6

    invoke-interface {v4, p2, v5, v6}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->removeConnection(Ljava/lang/String;Lcom/mocana/vpn/android/velo/IEnterpriseStatusCallback;I)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_106
    .catchall {:try_start_3a .. :try_end_106} :catchall_127
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_106} :catch_108

    goto/16 :goto_38

    :catch_108
    move-exception v0

    :try_start_109
    sget-object v4, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "remove vpn connection : Failure at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_125
    .catchall {:try_start_109 .. :try_end_125} :catchall_127

    goto/16 :goto_38

    :catchall_127
    move-exception v4

    monitor-exit p0

    throw v4

    :cond_12a
    const/4 v4, 0x0

    :try_start_12b
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_137
    .catchall {:try_start_12b .. :try_end_137} :catchall_127
    .catch Ljava/lang/Exception; {:try_start_12b .. :try_end_137} :catch_108

    goto/16 :goto_38
.end method

.method public removeVpnForApplication(ILjava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const/4 v7, 0x4

    const/4 v5, 0x0

    const/4 v10, 0x1

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->enforceEnterpriseVpnPermission()I

    move-result v0

    new-instance v3, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v3}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    const/4 v4, 0x0

    if-eqz p2, :cond_89

    :try_start_16
    iget-object v5, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "EnterpriseVpn"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "applicationInfo"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object p2, v8, v9

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    sget-object v5, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "remove to package : DB delete: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_61

    iget-object v5, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->packageNameVpnMap:Ljava/util/HashMap;

    invoke-virtual {v5, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnState;

    if-eqz v2, :cond_53

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->removeFromHashMapByPackageName(Ljava/lang/String;)V

    :cond_53
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    :goto_60
    return-object v3

    :cond_61
    const/4 v5, 0x1

    const/4 v6, 0x4

    invoke-virtual {v3, v5, v6}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_66} :catch_67

    goto :goto_60

    :catch_67
    move-exception v1

    sget-object v5, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "remove to package : Exception occured for removing vpn, package map:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x3

    invoke-virtual {v3, v10, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto :goto_60

    :cond_89
    sget-object v5, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    const-string v6, "remove to package : Error occured for removing vpn, package map."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3, v10, v7}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto :goto_60
.end method

.method public setCACertificate(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[B",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->enforceEnterpriseVpnPermission()I

    const/4 v2, 0x0

    new-instance v1, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v1}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    const/4 v4, 0x2

    invoke-virtual {v1, v5, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    if-eqz p1, :cond_31

    if-eqz p2, :cond_31

    :try_start_1b
    const-string v4, "key_vpn"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6f

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->getMocanaVPNinterface()Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    move-result-object v4

    if-nez v4, :cond_32

    sget-object v4, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    const-string v5, "setting CACertificate : Mocana Service is not started"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v3

    :cond_31
    :goto_31
    return-object v1

    :cond_32
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->vpninterfacelist:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;

    iget-object v4, v4, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->findUid()I

    move-result v5

    invoke-interface {v4, p2, p3, p4, v5}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->setCACertificate(Ljava/lang/String;[BLjava/lang/String;I)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    if-eqz v2, :cond_31

    invoke-direct {p0, p2, p3, p4}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->updateCACertificateDetailsInDatabase(Ljava/lang/String;[BLjava/lang/String;)V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_4f} :catch_50

    goto :goto_31

    :catch_50
    move-exception v0

    sget-object v4, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setting CACertificate : Failure at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v3

    goto :goto_31

    :cond_6f
    const/4 v4, 0x0

    :try_start_70
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_7c} :catch_50

    goto :goto_31
.end method

.method public setDnsToVpn(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v1, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->profileNameVpnMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;

    if-eqz v0, :cond_12

    invoke-virtual {v0, p2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;->setDnsList(Ljava/util/List;)V

    invoke-virtual {v0, p3}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$ProfileNameVpnEntry;->setSearchDomainList(Ljava/util/List;)V

    :goto_10
    const/4 v1, 0x1

    return v1

    :cond_12
    sget-object v1, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    const-string v2, "set dns  : vpn entry is returned null value"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10
.end method

.method public declared-synchronized setEnterprisePremiumVpnConnection(Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->enforceEnterpriseVpnPermission()I

    move-result v0

    const/4 v5, 0x0

    new-instance v6, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v6}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    const/4 v9, 0x1

    const/4 v10, 0x2

    invoke-virtual {v6, v9, v10}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_d9

    if-eqz p1, :cond_14d

    :try_start_1a
    iget-object v9, p1, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->type:Ljava/lang/String;

    const-string v10, "key_vpn"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_14d

    iget-object v9, p1, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->name:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    const/16 v10, 0xf

    if-gt v9, v10, :cond_34

    iget-object v9, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->vpninterfacelist:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;

    iget-object v9, v9, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;
    :try_end_32
    .catchall {:try_start_1a .. :try_end_32} :catchall_d9
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_32} :catch_be

    if-nez v9, :cond_36

    :cond_34
    :goto_34
    monitor-exit p0

    return-object v6

    :cond_36
    :try_start_36
    iget-object v9, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->vpninterfacelist:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;

    iget-object v9, v9, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->findUid()I

    move-result v10

    invoke-interface {v9, p2, v10}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->getState(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_45

    const/4 p2, 0x0

    :cond_45
    sget-object v9, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setting premium vpn connection : starting old name is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " evpn.name is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p1, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " evpn.host is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p1, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->host:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_a3

    iget-object v9, p1, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->name:Ljava/lang/String;

    invoke-virtual {p2, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_dc

    iget-object v9, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->vpninterfacelist:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;

    iget-object v9, v9, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->findUid()I

    move-result v10

    invoke-interface {v9, p2, v10}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->getState(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    const-string v9, "CONNECTING"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_34

    const-string v9, "CONNECTED"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_34

    const-string v9, "DISCONNECTING"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_34

    :cond_a3
    const-string v9, "\\s"

    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    iget-object v9, p1, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->name:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_e6

    sget-object v9, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    const-string v10, "setEnterprisePremiumVpnConnection : Profile name contains illegal characters"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_bc
    .catchall {:try_start_36 .. :try_end_bc} :catchall_d9
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_bc} :catch_be

    goto/16 :goto_34

    :catch_be
    move-exception v1

    :try_start_bf
    sget-object v9, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setting premium vpn connection : Error at\n "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d7
    .catchall {:try_start_bf .. :try_end_d7} :catchall_d9

    goto/16 :goto_34

    :catchall_d9
    move-exception v9

    monitor-exit p0

    throw v9

    :cond_dc
    :try_start_dc
    iget-object v9, p1, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->name:Ljava/lang/String;

    invoke-virtual {p2, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_a3

    goto/16 :goto_34

    :cond_e6
    sget-object v9, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setting premium vpn connection : starting after removal  old name is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " evpn.name is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p1, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " evpn.host is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p1, Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;->host:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->vpninterfacelist:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;

    iget-object v9, v9, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->findUid()I

    move-result v10

    invoke-interface {v9, p1, p2, v10}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->createConnection(Lcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_127

    invoke-virtual {p0, v0, p1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->addVpnProfileToDatabase(ILcom/sec/enterprise/knox/EnterprisePremiumVpnConnection;)V

    :cond_127
    sget-object v9, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setting premium vpn connection : return value is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v6, v9, v10}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto/16 :goto_34

    :cond_14d
    if-eqz p1, :cond_34

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    const/4 v9, 0x1

    const/4 v10, 0x1

    invoke-virtual {v6, v9, v10}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_15c
    .catchall {:try_start_dc .. :try_end_15c} :catchall_d9
    .catch Ljava/lang/Exception; {:try_start_dc .. :try_end_15c} :catch_be

    goto/16 :goto_34
.end method

.method public declared-synchronized setEnterpriseVpnConnection(Landroid/app/enterprise/EnterpriseVpnConnection;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/EnterpriseVpnConnection;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->enforceEnterpriseVpnPermission()I

    const/4 v1, 0x0

    new-instance v2, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v2}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_63

    if-eqz p1, :cond_3b

    :try_start_19
    iget-object v3, p1, Landroid/app/enterprise/EnterpriseVpnConnection;->type:Ljava/lang/String;

    const-string v4, "anyconnect"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3b

    iget-object v3, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->vpninterfacelist:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;

    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;->getPreparedCiscoInterface()Landroid/app/enterprise/IEnterpriseVpnInterface;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/app/enterprise/IEnterpriseVpnInterface;->createConnection(Landroid/app/enterprise/EnterpriseVpnConnection;Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_39
    .catchall {:try_start_19 .. :try_end_39} :catchall_63
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_39} :catch_49

    :goto_39
    monitor-exit p0

    return-object v2

    :cond_3b
    const/4 v3, 0x0

    :try_start_3c
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_48
    .catchall {:try_start_3c .. :try_end_48} :catchall_63
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_48} :catch_49

    goto :goto_39

    :catch_49
    move-exception v0

    :try_start_4a
    sget-object v3, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setting enterprise vpn connection "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_62
    .catchall {:try_start_4a .. :try_end_62} :catchall_63

    goto :goto_39

    :catchall_63
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public setForwardRoutes(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Landroid/app/enterprise/EnterpriseResponseData;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->enforceEnterpriseVpnPermission()I

    new-instance v1, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v1}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    const/4 v3, 0x2

    invoke-virtual {v1, v4, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    if-eqz p1, :cond_30

    if-eqz p2, :cond_30

    :try_start_1a
    const-string v3, "key_vpn"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_69

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->getMocanaVPNinterface()Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    move-result-object v3

    if-nez v3, :cond_31

    sget-object v3, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    const-string v4, "setting forward route : Mocana Service is not started"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    :cond_30
    :goto_30
    return-object v1

    :cond_31
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->vpninterfacelist:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;

    iget-object v3, v3, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->findUid()I

    move-result v4

    invoke-interface {v3, p2, p3, v4}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->setForwardRoutes(Ljava/lang/String;Ljava/util/List;I)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_49} :catch_4a

    goto :goto_30

    :catch_4a
    move-exception v0

    sget-object v3, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setting forward route : Failure at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    goto :goto_30

    :cond_69
    const/4 v3, 0x0

    :try_start_6a
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_76} :catch_4a

    goto :goto_30
.end method

.method public setUserCertificate(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[B",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->enforceEnterpriseVpnPermission()I

    const/4 v2, 0x0

    new-instance v1, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v1}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    const/4 v4, 0x2

    invoke-virtual {v1, v5, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    if-eqz p1, :cond_31

    if-eqz p2, :cond_31

    :try_start_1b
    const-string v4, "key_vpn"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6f

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->getMocanaVPNinterface()Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    move-result-object v4

    if-nez v4, :cond_32

    sget-object v4, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    const-string v5, "setting user certificate : Mocana Service is not started"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v3

    :cond_31
    :goto_31
    return-object v1

    :cond_32
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->vpninterfacelist:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;

    iget-object v4, v4, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->findUid()I

    move-result v5

    invoke-interface {v4, p2, p3, p4, v5}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->setUserCertificate(Ljava/lang/String;[BLjava/lang/String;I)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    if-eqz v2, :cond_31

    invoke-direct {p0, p2, p3, p4}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->updateUserCertificateDetailsToDatabase(Ljava/lang/String;[BLjava/lang/String;)V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_4f} :catch_50

    goto :goto_31

    :catch_50
    move-exception v0

    sget-object v4, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setting user certificate : Failure at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v3

    goto :goto_31

    :cond_6f
    const/4 v4, 0x0

    :try_start_70
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_7c} :catch_50

    goto :goto_31
.end method

.method public setVpnFrameworkSystemProperty(Ljava/lang/String;)V
    .registers 3

    const-string v0, "net.vpn.framework"

    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized setVpnModeOfOperation(Z)Landroid/app/enterprise/EnterpriseResponseData;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const/4 v10, 0x1

    monitor-enter p0

    :try_start_2
    new-instance v4, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v4}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    const/4 v7, 0x1

    const/4 v8, 0x3

    invoke-virtual {v4, v7, v8}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->enforceEnterpriseVpnPermission()I
    :try_end_17
    .catchall {:try_start_2 .. :try_end_17} :catchall_a2

    move-result v0

    :try_start_18
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->getMocanaVPNinterface()Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    move-result-object v7

    if-nez v7, :cond_28

    sget-object v7, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    const-string v8, "setting vpn mode : Mocana Service is not started"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_25
    .catchall {:try_start_18 .. :try_end_25} :catchall_a2
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_25} :catch_84

    const/4 v4, 0x0

    :cond_26
    :goto_26
    monitor-exit p0

    return-object v4

    :cond_28
    :try_start_28
    invoke-direct {p0, v0, p1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->updateFipsModeInDatabase(IZ)Z

    move-result v5

    sget-object v7, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setting vpn mode : success is"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_26

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->checkIfAnyAdminHasFipsMode()Z

    move-result v1

    sget-boolean v7, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->DBG:Z

    if-eqz v7, :cond_66

    sget-object v7, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setting vpn mode : check admin has Fips is"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_66
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->vpninterfacelist:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;

    iget-object v7, v7, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    invoke-interface {v7}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->getFIPSMode()I

    move-result v2

    if-ne p1, v10, :cond_72

    if-eq v2, v10, :cond_76

    :cond_72
    if-nez p1, :cond_a5

    if-nez v2, :cond_a5

    :cond_76
    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_83
    .catchall {:try_start_28 .. :try_end_83} :catchall_a2
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_83} :catch_84

    goto :goto_26

    :catch_84
    move-exception v3

    :try_start_85
    sget-object v7, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setting vpn mode : Exception : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a1
    .catchall {:try_start_85 .. :try_end_a1} :catchall_a2

    goto :goto_26

    :catchall_a2
    move-exception v7

    monitor-exit p0

    throw v7

    :cond_a5
    if-ne p1, v10, :cond_a9

    if-eqz v2, :cond_ad

    :cond_a9
    if-nez p1, :cond_26

    if-ne v2, v10, :cond_26

    :cond_ad
    if-nez p1, :cond_b1

    if-eq v1, v10, :cond_26

    :cond_b1
    :try_start_b1
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->switchVpnMode()Z

    move-result v6

    sget-boolean v7, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->DBG:Z

    if-eqz v7, :cond_d1

    sget-object v7, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setting vpn mode : switchSuccess is"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d1
    if-eqz v6, :cond_26

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_e0
    .catchall {:try_start_b1 .. :try_end_e0} :catchall_a2
    .catch Ljava/lang/Exception; {:try_start_b1 .. :try_end_e0} :catch_84

    goto/16 :goto_26
.end method

.method public startConnection(Ljava/lang/String;Ljava/lang/String;Lcom/mocana/vpn/android/velo/IEnterpriseStatusCallback;)Landroid/app/enterprise/EnterpriseResponseData;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/mocana/vpn/android/velo/IEnterpriseStatusCallback;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v5, 0x1

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->enforceEnterpriseVpnPermission()I

    new-instance v2, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v2}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    :try_start_a
    const-string v4, "key_vpn"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6d

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->getMocanaVPNinterface()Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    move-result-object v4

    if-nez v4, :cond_21

    sget-object v4, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    const-string v5, "starting vpn connection : Mocana Service is not started"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    :goto_20
    return-object v2

    :cond_21
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->checkIfProfileHasDefaultRouteEnabled(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v5, :cond_54

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    const/4 v4, 0x1

    const/4 v5, 0x3

    invoke-virtual {v2, v4, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_34} :catch_35

    goto :goto_20

    :catch_35
    move-exception v1

    sget-object v4, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "starting vpn connection : Failure at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    goto :goto_20

    :cond_54
    :try_start_54
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->vpninterfacelist:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;

    iget-object v4, v4, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->findUid()I

    move-result v5

    invoke-interface {v4, p2, p3, v5}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->startConnection(Ljava/lang/String;Lcom/mocana/vpn/android/velo/IEnterpriseStatusCallback;I)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto :goto_20

    :cond_6d
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_7a} :catch_35

    goto :goto_20
.end method

.method public stopConnection(Ljava/lang/String;Ljava/lang/String;Lcom/mocana/vpn/android/velo/IEnterpriseStatusCallback;)Landroid/app/enterprise/EnterpriseResponseData;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/mocana/vpn/android/velo/IEnterpriseStatusCallback;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v5, 0x1

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->enforceEnterpriseVpnPermission()I

    new-instance v2, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v2}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    :try_start_a
    const-string v4, "key_vpn"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6d

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->getMocanaVPNinterface()Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    move-result-object v4

    if-nez v4, :cond_21

    sget-object v4, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    const-string v5, "stopping vpn connection : Mocana Service is not started"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    :goto_20
    return-object v2

    :cond_21
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->checkIfProfileHasDefaultRouteEnabled(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v5, :cond_54

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    const/4 v4, 0x1

    const/4 v5, 0x3

    invoke-virtual {v2, v4, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_34} :catch_35

    goto :goto_20

    :catch_35
    move-exception v1

    sget-object v4, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "stopping vpn connection : Failure at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    goto :goto_20

    :cond_54
    :try_start_54
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->vpninterfacelist:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;

    iget-object v4, v4, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->findUid()I

    move-result v5

    invoke-interface {v4, p2, p3, v5}, Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;->stopConnection(Ljava/lang/String;Lcom/mocana/vpn/android/velo/IEnterpriseStatusCallback;I)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto :goto_20

    :cond_6d
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_7a} :catch_35

    goto :goto_20
.end method

.method public systemReady()V
    .registers 1

    return-void
.end method
