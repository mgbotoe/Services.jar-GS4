.class public Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
.super Landroid/app/enterprise/IEnterpriseDeviceManager$Stub;
.source "EnterpriseDeviceManagerService.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseContainerSubscriber;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/EnterpriseDeviceManagerService$InternalHandler;,
        Lcom/android/server/enterprise/EnterpriseDeviceManagerService$MyPackageMonitor;
    }
.end annotation


# static fields
.field private static final ACTION_LICENSE_EXPIRY_CHECK_NOTIFICATION:Ljava/lang/String; = "com.android.server.enterprise.ACTION_LICENSE_EXPIRY_CHECK_NOTIFICATION"

.field private static final EXCLUDED_ADMINS:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final LICENSE_EXPIRATION_GRACE_PERIOD:J = 0x9a7ec800L

.field private static final SC_PIN_SERVICE_PACKAGE:Ljava/lang/String; = "com.sec.smartcard.pinservice"

.field private static final SELF_UPDATE_ADMIN_APK_FILE_DIR:Ljava/lang/String; = "/data/app/selfUpdateApks"

.field private static final SELF_UPDATE_ADMIN_APK_FILE_PATH:Ljava/lang/String; = "/data/app/selfUpdateApks/"

.field private static final SELF_UPDATE_ADMIN_COMPONENT_KEY:Ljava/lang/String; = "self_update_admin_component"

.field private static final SELF_UPDATE_ADMIN_CONF_FILE_PATH:Ljava/lang/String; = "/data/system/selfUpdateAdmin.conf"

.field private static final SELF_UPDATE_ADMIN_SEPARATOR:Ljava/lang/String; = ";"

.field private static final SETTINGS_PACKAGE_NAME:Ljava/lang/String; = "android.uid.system:1000"

.field private static final SILENT_ACTIVATION_PERMISION:Ljava/lang/String; = "com.sec.enterprise.mdm.permission.MDM_SILENT_ACTIVATION"

.field private static final SYSTEM_PACKAGE_NAME:Ljava/lang/String; = "android"

.field private static final TAG:Ljava/lang/String; = "EnterpriseDeviceManagerService"

.field private static mInstance:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

.field private static mInternalHandler:Landroid/os/Handler;

.field private static mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

.field private static mPolicyServices:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/enterprise/EnterpriseServiceCallback;",
            ">;"
        }
    .end annotation
.end field

.field private static mSelfUpdateAdminComponent:Landroid/content/ComponentName;

.field private static mServiceAdditionCondition:Landroid/os/ConditionVariable;

.field private static mServicesAdded:Z


# instance fields
.field final mAdminList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/enterprise/EnterpriseDeviceAdminInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mAdminMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/app/enterprise/EnterpriseDeviceAdminInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mContext:Landroid/content/Context;

.field final mDPM:Landroid/app/admin/DevicePolicyManager;

.field final mDPMS:Landroid/app/admin/IDevicePolicyManager;

.field mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mFirstInitializedPolicyServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mLMS:Lcom/android/server/enterprise/log/LogManagerService;

.field final mMonitor:Lcom/android/server/enterprise/EnterpriseDeviceManagerService$MyPackageMonitor;

.field final mPMS:Landroid/content/pm/IPackageManager;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->EXCLUDED_ADMINS:Ljava/util/List;

    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->EXCLUDED_ADMINS:Ljava/util/List;

    const-string v1, "com.android.email"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->EXCLUDED_ADMINS:Ljava/util/List;

    const-string v1, "com.android.exchange"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->EXCLUDED_ADMINS:Ljava/util/List;

    const-string v1, "com.sec.esdk.elm"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mServiceAdditionCondition:Landroid/os/ConditionVariable;

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mSelfUpdateAdminComponent:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/IPackageManager;Landroid/app/admin/IDevicePolicyManager;)V
    .registers 10

    const/4 v5, 0x1

    invoke-direct {p0}, Landroid/app/enterprise/IEnterpriseDeviceManager$Stub;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mFirstInitializedPolicyServices:Ljava/util/List;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminMap:Ljava/util/HashMap;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminList:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$1;

    invoke-direct {v3, p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$1;-><init>(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;)V

    iput-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    sput-object p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mInstance:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    new-instance v3, Lcom/android/server/enterprise/log/LogManagerService;

    invoke-direct {v3, p1, p0}, Lcom/android/server/enterprise/log/LogManagerService;-><init>(Landroid/content/Context;Lcom/android/server/enterprise/EnterpriseDeviceManagerService;)V

    iput-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mLMS:Lcom/android/server/enterprise/log/LogManagerService;

    const-string v3, "log_manager_service"

    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mLMS:Lcom/android/server/enterprise/log/LogManagerService;

    invoke-static {v3, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    iput-object p2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPMS:Landroid/content/pm/IPackageManager;

    iput-object p1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    const-string v3, "device_policy"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/DevicePolicyManager;

    iput-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iput-object p3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mDPMS:Landroid/app/admin/IDevicePolicyManager;

    new-instance v3, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$MyPackageMonitor;

    invoke-direct {v3, p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$MyPackageMonitor;-><init>(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;)V

    iput-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mMonitor:Lcom/android/server/enterprise/EnterpriseDeviceManagerService$MyPackageMonitor;

    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mMonitor:Lcom/android/server/enterprise/EnterpriseDeviceManagerService$MyPackageMonitor;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4, v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$MyPackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    move-result-object v3

    sput-object v3, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->handleDowngrade()V

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "com.android.server.enterprise.ACTION_LICENSE_EXPIRY_CHECK_NOTIFICATION"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v3, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isFirmwareChanged()Z

    move-result v3

    if-eqz v3, :cond_8c

    const-string v3, "EnterpriseDeviceManagerService"

    const-string v4, "handleUpgrade: Checking Upgrade..."

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->handleFirmwareUpgrade()V

    invoke-direct {p0, v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->sendMigrationIntent(Z)V

    :cond_8c
    new-instance v2, Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPMS:Landroid/content/pm/IPackageManager;

    invoke-direct {v2, v3, v4}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;-><init>(Landroid/content/Context;Landroid/content/pm/IPackageManager;)V

    const-string v4, "enterprise_license_policy"

    move-object v3, v2

    check-cast v3, Landroid/os/IBinder;

    invoke-static {v4, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    sget-object v3, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string v4, "enterprise_license_policy"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mFirstInitializedPolicyServices:Ljava/util/List;

    const-string v4, "enterprise_license_policy"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/android/server/enterprise/license/LicenseLogService;

    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/enterprise/license/LicenseLogService;-><init>(Landroid/content/Context;)V

    const-string v4, "license_log_service"

    move-object v3, v2

    check-cast v3, Landroid/os/IBinder;

    invoke-static {v4, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    sget-object v3, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string v4, "license_log_service"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mFirstInitializedPolicyServices:Ljava/util/List;

    const-string v4, "license_log_service"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/android/server/enterprise/application/ApplicationPolicy;

    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/enterprise/application/ApplicationPolicy;-><init>(Landroid/content/Context;)V

    const-string v4, "application_policy"

    move-object v3, v2

    check-cast v3, Landroid/os/IBinder;

    invoke-static {v4, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    sget-object v3, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string v4, "application_policy"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mFirstInitializedPolicyServices:Ljava/util/List;

    const-string v4, "application_policy"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "application_policy"

    invoke-static {v3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/application/ApplicationPolicy;

    new-instance v2, Lcom/android/server/enterprise/wifi/WifiPolicy;

    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;-><init>(Landroid/content/Context;Lcom/android/server/enterprise/application/ApplicationPolicy;)V

    const-string v4, "wifi_policy"

    move-object v3, v2

    check-cast v3, Landroid/os/IBinder;

    invoke-static {v4, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    sget-object v3, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string v4, "wifi_policy"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mFirstInitializedPolicyServices:Ljava/util/List;

    const-string v4, "wifi_policy"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;-><init>(Landroid/content/Context;)V

    const-string v4, "phone_restriction_policy"

    move-object v3, v2

    check-cast v3, Landroid/os/IBinder;

    invoke-static {v4, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    sget-object v3, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string v4, "phone_restriction_policy"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mFirstInitializedPolicyServices:Ljava/util/List;

    const-string v4, "phone_restriction_policy"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;

    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;-><init>(Landroid/content/Context;)V

    const-string v4, "remoteinjection"

    move-object v3, v2

    check-cast v3, Landroid/os/IBinder;

    invoke-static {v4, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    sget-object v3, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string v4, "remoteinjection"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mFirstInitializedPolicyServices:Ljava/util/List;

    const-string v4, "remoteinjection"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isMdmAdminPresent()Z

    move-result v3

    if-eqz v3, :cond_14d

    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->addServices()V

    :cond_14d
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;Landroid/content/ComponentName;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->removeActiveAdminDelayed(Landroid/content/ComponentName;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;Landroid/content/ComponentName;)Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->findAdmin(Landroid/content/ComponentName;)Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->initServices()V

    return-void
.end method

.method static synthetic access$1100()Landroid/os/ConditionVariable;
    .registers 1

    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mServiceAdditionCondition:Landroid/os/ConditionVariable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;Landroid/app/enterprise/EnterpriseDeviceAdminInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->setLicenseExpiryTime(Landroid/app/enterprise/EnterpriseDeviceAdminInfo;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;I)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->verifyEnterprisePayload(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->runAdminUpdate()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->handleLicenseExpiryCheckNotification()V

    return-void
.end method

.method static synthetic access$600()Landroid/os/Handler;
    .registers 1

    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mInternalHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->selfUpdate()V

    return-void
.end method

.method static synthetic access$800()Landroid/content/ComponentName;
    .registers 1

    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mSelfUpdateAdminComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic access$802(Landroid/content/ComponentName;)Landroid/content/ComponentName;
    .registers 1

    sput-object p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mSelfUpdateAdminComponent:Landroid/content/ComponentName;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->addServices()V

    return-void
.end method

.method private activateAdmin(Landroid/content/ComponentName;Z)V
    .registers 16

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->findAdmin(Landroid/content/ComponentName;)Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    move-result-object v0

    if-nez v0, :cond_1f

    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Bad admin: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_1f
    :try_start_1f
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v9

    if-eqz v9, :cond_3a

    const-string v9, "TAEBONG"

    const-string v10, "EDM Service"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mDPMS:Landroid/app/admin/IDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v10

    invoke-interface {v9, p1, p2, v10}, Landroid/app/admin/IDevicePolicyManager;->setActiveAdmin(Landroid/content/ComponentName;ZI)V
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_35} :catch_36

    :goto_35
    return-void

    :catch_36
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_3a
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->usesMDMPolicy()Z

    move-result v9

    if-eqz v9, :cond_4f

    sget-object v9, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->EXCLUDED_ADMINS:Ljava/util/List;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4f

    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->checkServices()V

    :cond_4f
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->setLicenseExpiryTime(Landroid/app/enterprise/EnterpriseDeviceAdminInfo;)V

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v9

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    monitor-enter p0

    :try_start_5f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_62
    .catchall {:try_start_5f .. :try_end_62} :catchall_88

    move-result-wide v4

    const/4 v7, 0x1

    if-nez p2, :cond_8b

    :try_start_66
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getActiveAdminLocked(Landroid/content/ComponentName;)Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    move-result-object v9

    if-eqz v9, :cond_8b

    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Admin is already added"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_74
    .catchall {:try_start_66 .. :try_end_74} :catchall_c2
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_74} :catch_74

    :catch_74
    move-exception v2

    :try_start_75
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_78
    .catchall {:try_start_75 .. :try_end_78} :catchall_c2

    :try_start_78
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_7b
    sget-object v9, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mInternalHandler:Landroid/os/Handler;

    const/4 v10, 0x1

    const/4 v11, -0x1

    invoke-virtual {v9, v10, v8, v11}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/Message;->sendToTarget()V

    monitor-exit p0

    goto :goto_35

    :catchall_88
    move-exception v9

    monitor-exit p0
    :try_end_8a
    .catchall {:try_start_78 .. :try_end_8a} :catchall_88

    throw v9

    :cond_8b
    if-nez p2, :cond_aa

    :try_start_8d
    iget-object v9, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminMap:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v9, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v9, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-static {v8}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getContainerId(I)I

    move-result v12

    invoke-virtual {v9, v8, v10, v11, v12}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->addorUpdateAdmin(ILjava/lang/String;ZI)Z

    move-result v7

    :cond_aa
    if-nez v7, :cond_c7

    iget-object v9, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v9, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminMap:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Unable to activate admin"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_c2
    .catchall {:try_start_8d .. :try_end_c2} :catchall_c2
    .catch Ljava/lang/Exception; {:try_start_8d .. :try_end_c2} :catch_74

    :catchall_c2
    move-exception v9

    :try_start_c3
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v9
    :try_end_c7
    .catchall {:try_start_c3 .. :try_end_c7} :catchall_88

    :cond_c7
    :try_start_c7
    sget-object v9, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_d1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_e7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/enterprise/EnterpriseServiceCallback;

    invoke-interface {v9, v8}, Lcom/android/server/enterprise/EnterpriseServiceCallback;->onAdminAdded(I)V

    goto :goto_d1

    :cond_e7
    iget-object v9, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mDPMS:Landroid/app/admin/IDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v10

    invoke-interface {v9, p1, p2, v10}, Landroid/app/admin/IDevicePolicyManager;->setActiveAdmin(Landroid/content/ComponentName;ZI)V

    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->setLicenseExpirationAlarmLocked()V
    :try_end_f3
    .catchall {:try_start_c7 .. :try_end_f3} :catchall_c2
    .catch Ljava/lang/Exception; {:try_start_c7 .. :try_end_f3} :catch_74

    :try_start_f3
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_f6
    .catchall {:try_start_f3 .. :try_end_f6} :catchall_88

    goto :goto_7b
.end method

.method private addServices()V
    .registers 12

    const-string v8, "EnterpriseDeviceManagerService"

    const-string v9, "Adding Services..."

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_7
    new-instance v5, Lcom/android/server/enterprise/device/DeviceInfo;

    iget-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v5, v8}, Lcom/android/server/enterprise/device/DeviceInfo;-><init>(Landroid/content/Context;)V

    const-string v9, "device_info"

    move-object v0, v5

    check-cast v0, Landroid/os/IBinder;

    move-object v8, v0

    invoke-static {v9, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    sget-object v8, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string v9, "device_info"

    invoke-interface {v8, v9, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/android/server/enterprise/auditlog/AuditLogService;

    iget-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v5, v8}, Lcom/android/server/enterprise/auditlog/AuditLogService;-><init>(Landroid/content/Context;)V

    const-string v9, "auditlog"

    move-object v0, v5

    check-cast v0, Landroid/os/IBinder;

    move-object v8, v0

    invoke-static {v9, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    sget-object v8, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string v9, "auditlog"

    invoke-interface {v8, v9, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/android/server/enterprise/seandroid/SEAndroidService;

    iget-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v5, v8}, Lcom/android/server/enterprise/seandroid/SEAndroidService;-><init>(Landroid/content/Context;)V

    const-string v9, "seandroid_policy"

    move-object v0, v5

    check-cast v0, Landroid/os/IBinder;

    move-object v8, v0

    invoke-static {v9, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    sget-object v8, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string v9, "seandroid_policy"

    invoke-interface {v8, v9, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;

    iget-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v5, v8}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;-><init>(Landroid/content/Context;)V

    const-string v9, "eas_account_policy"

    move-object v0, v5

    check-cast v0, Landroid/os/IBinder;

    move-object v8, v0

    invoke-static {v9, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    sget-object v8, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string v9, "eas_account_policy"

    invoke-interface {v8, v9, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/android/server/enterprise/email/EmailAccountPolicy;

    iget-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v5, v8}, Lcom/android/server/enterprise/email/EmailAccountPolicy;-><init>(Landroid/content/Context;)V

    const-string v9, "email_account_policy"

    move-object v0, v5

    check-cast v0, Landroid/os/IBinder;

    move-object v8, v0

    invoke-static {v9, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    sget-object v8, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string v9, "email_account_policy"

    invoke-interface {v8, v9, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/android/server/enterprise/location/LocationPolicy;

    iget-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v5, v8}, Lcom/android/server/enterprise/location/LocationPolicy;-><init>(Landroid/content/Context;)V

    const-string v9, "location_policy"

    move-object v0, v5

    check-cast v0, Landroid/os/IBinder;

    move-object v8, v0

    invoke-static {v9, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    sget-object v8, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string v9, "location_policy"

    invoke-interface {v8, v9, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/android/server/enterprise/general/MiscPolicy;

    iget-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v5, v8}, Lcom/android/server/enterprise/general/MiscPolicy;-><init>(Landroid/content/Context;)V

    const-string v9, "misc_policy"

    move-object v0, v5

    check-cast v0, Landroid/os/IBinder;

    move-object v8, v0

    invoke-static {v9, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    sget-object v8, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string v9, "misc_policy"

    invoke-interface {v8, v9, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;

    iget-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v5, v8}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;-><init>(Landroid/content/Context;)V

    const-string v9, "vpn_policy"

    move-object v0, v5

    check-cast v0, Landroid/os/IBinder;

    move-object v8, v0

    invoke-static {v9, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    sget-object v8, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string v9, "vpn_policy"

    invoke-interface {v8, v9, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "application_policy"

    invoke-static {v8}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/application/ApplicationPolicy;

    const-string v8, "vpn_policy"

    invoke-static {v8}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;

    new-instance v5, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    iget-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v5, v8, v1, v7}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;-><init>(Landroid/content/Context;Lcom/android/server/enterprise/application/ApplicationPolicy;Lcom/android/server/enterprise/vpn/VpnInfoPolicy;)V

    const-string v9, "restriction_policy"

    move-object v0, v5

    check-cast v0, Landroid/os/IBinder;

    move-object v8, v0

    invoke-static {v9, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    sget-object v8, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string v9, "restriction_policy"

    invoke-interface {v8, v9, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/android/server/enterprise/security/PasswordPolicy;

    iget-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v5, v8}, Lcom/android/server/enterprise/security/PasswordPolicy;-><init>(Landroid/content/Context;)V

    const-string v9, "password_policy"

    move-object v0, v5

    check-cast v0, Landroid/os/IBinder;

    move-object v8, v0

    invoke-static {v9, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    sget-object v8, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string v9, "password_policy"

    invoke-interface {v8, v9, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/android/server/enterprise/security/SecurityPolicy;

    iget-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v5, v8}, Lcom/android/server/enterprise/security/SecurityPolicy;-><init>(Landroid/content/Context;)V

    const-string v9, "security_policy"

    move-object v0, v5

    check-cast v0, Landroid/os/IBinder;

    move-object v8, v0

    invoke-static {v9, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    sget-object v8, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string v9, "security_policy"

    invoke-interface {v8, v9, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/android/server/enterprise/restriction/RoamingPolicy;

    iget-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v5, v8}, Lcom/android/server/enterprise/restriction/RoamingPolicy;-><init>(Landroid/content/Context;)V

    const-string v9, "roaming_policy"

    move-object v0, v5

    check-cast v0, Landroid/os/IBinder;

    move-object v8, v0

    invoke-static {v9, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    sget-object v8, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string v9, "roaming_policy"

    invoke-interface {v8, v9, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    iget-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v5, v8}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;-><init>(Landroid/content/Context;)V

    const-string v9, "bluetooth_policy"

    move-object v0, v5

    check-cast v0, Landroid/os/IBinder;

    move-object v8, v0

    invoke-static {v9, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    sget-object v8, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string v9, "bluetooth_policy"

    invoke-interface {v8, v9, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/android/server/enterprise/email/EmailPolicy;

    iget-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v5, v8}, Lcom/android/server/enterprise/email/EmailPolicy;-><init>(Landroid/content/Context;)V

    const-string v9, "email_policy"

    move-object v0, v5

    check-cast v0, Landroid/os/IBinder;

    move-object v8, v0

    invoke-static {v9, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    sget-object v8, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string v9, "email_policy"

    invoke-interface {v8, v9, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/android/server/enterprise/firewall/FirewallPolicy;

    iget-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v5, v8}, Lcom/android/server/enterprise/firewall/FirewallPolicy;-><init>(Landroid/content/Context;)V

    const-string v9, "firewall_policy"

    move-object v0, v5

    check-cast v0, Landroid/os/IBinder;

    move-object v8, v0

    invoke-static {v9, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    sget-object v8, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string v9, "firewall_policy"

    invoke-interface {v8, v9, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    iget-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v5, v8}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;-><init>(Landroid/content/Context;)V

    const-string v9, "enterprise_vpn_policy"

    move-object v0, v5

    check-cast v0, Landroid/os/IBinder;

    move-object v8, v0

    invoke-static {v9, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    sget-object v8, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string v9, "enterprise_vpn_policy"

    invoke-interface {v8, v9, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;

    iget-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v5, v8}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;-><init>(Landroid/content/Context;)V

    const-string v9, "generic_vpn_policy"

    move-object v0, v5

    check-cast v0, Landroid/os/IBinder;

    move-object v8, v0

    invoke-static {v9, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    sget-object v8, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string v9, "generic_vpn_policy"

    invoke-interface {v8, v9, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;

    iget-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v5, v8}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;-><init>(Landroid/content/Context;)V

    const-string v9, "enterprise_sso_policy"

    move-object v0, v5

    check-cast v0, Landroid/os/IBinder;

    move-object v8, v0

    invoke-static {v9, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    sget-object v8, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string v9, "enterprise_sso_policy"

    invoke-interface {v8, v9, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;

    iget-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v8}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, p0}, Lcom/android/server/enterprise/container/EnterpriseContainerPolicy;->setSubscriber(Lcom/android/server/enterprise/EnterpriseContainerSubscriber;)V

    const-string v8, "enterprise_container_policy"

    invoke-static {v8, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    sget-object v8, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string v9, "enterprise_container_policy"

    invoke-interface {v8, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    iget-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v5, v8}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;-><init>(Landroid/content/Context;)V

    const-string v9, "enterprise_isl_policy"

    move-object v0, v5

    check-cast v0, Landroid/os/IBinder;

    move-object v8, v0

    invoke-static {v9, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    sget-object v8, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string v9, "enterprise_isl_policy"

    invoke-interface {v8, v9, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/android/server/enterprise/certificate/CertificatePolicy;

    iget-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v5, v8}, Lcom/android/server/enterprise/certificate/CertificatePolicy;-><init>(Landroid/content/Context;)V

    const-string v9, "certificate_policy"

    move-object v0, v5

    check-cast v0, Landroid/os/IBinder;

    move-object v8, v0

    invoke-static {v9, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    sget-object v8, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string v9, "certificate_policy"

    invoke-interface {v8, v9, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;

    iget-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v5, v8}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;-><init>(Landroid/content/Context;)V

    const-string v9, "apn_settings_policy"

    move-object v0, v5

    check-cast v0, Landroid/os/IBinder;

    move-object v8, v0

    invoke-static {v9, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    sget-object v8, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string v9, "apn_settings_policy"

    invoke-interface {v8, v9, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/android/server/enterprise/browser/BrowserPolicy;

    iget-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v5, v8}, Lcom/android/server/enterprise/browser/BrowserPolicy;-><init>(Landroid/content/Context;)V

    const-string v9, "browser_policy"

    move-object v0, v5

    check-cast v0, Landroid/os/IBinder;

    move-object v8, v0

    invoke-static {v9, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    sget-object v8, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string v9, "browser_policy"

    invoke-interface {v8, v9, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/android/server/enterprise/datetime/DateTimePolicy;

    iget-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v5, v8}, Lcom/android/server/enterprise/datetime/DateTimePolicy;-><init>(Landroid/content/Context;)V

    const-string v9, "date_time_policy"

    move-object v0, v5

    check-cast v0, Landroid/os/IBinder;

    move-object v8, v0

    invoke-static {v9, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    sget-object v8, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string v9, "date_time_policy"

    invoke-interface {v8, v9, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/android/server/enterprise/kioskmode/KioskModeService;

    iget-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v5, v8, v1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;-><init>(Landroid/content/Context;Lcom/android/server/enterprise/application/ApplicationPolicy;)V

    const-string v9, "kioskmode"

    move-object v0, v5

    check-cast v0, Landroid/os/IBinder;

    move-object v8, v0

    invoke-static {v9, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    sget-object v8, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string v9, "kioskmode"

    invoke-interface {v8, v9, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;

    iget-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v5, v8}, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;-><init>(Landroid/content/Context;)V

    const-string v9, "apppermission_control_policy"

    move-object v0, v5

    check-cast v0, Landroid/os/IBinder;

    move-object v8, v0

    invoke-static {v9, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    sget-object v8, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string v9, "apppermission_control_policy"

    invoke-interface {v8, v9, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "edm_proxy"

    new-instance v9, Lcom/android/server/enterprise/EDMProxyService;

    invoke-direct {v9}, Lcom/android/server/enterprise/EDMProxyService;-><init>()V

    invoke-static {v8, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    new-instance v5, Lcom/android/server/enterprise/email/LDAPAccountPolicy;

    iget-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v5, v8}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;-><init>(Landroid/content/Context;)V

    const-string v9, "ldap_account_policy"

    move-object v0, v5

    check-cast v0, Landroid/os/IBinder;

    move-object v8, v0

    invoke-static {v9, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    sget-object v8, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string v9, "ldap_account_policy"

    invoke-interface {v8, v9, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/android/server/enterprise/lso/LSOService;

    iget-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v5, v8}, Lcom/android/server/enterprise/lso/LSOService;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/server/enterprise/lso/LSOService;->getServiceName()Ljava/lang/String;

    move-result-object v9

    move-object v0, v5

    check-cast v0, Landroid/os/IBinder;

    move-object v8, v0

    invoke-static {v9, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    sget-object v8, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    invoke-static {}, Lcom/android/server/enterprise/lso/LSOService;->getServiceName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/android/server/enterprise/geofencing/GeofenceService;

    iget-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v5, v8}, Lcom/android/server/enterprise/geofencing/GeofenceService;-><init>(Landroid/content/Context;)V

    const-string v9, "geofencing"

    move-object v0, v5

    check-cast v0, Landroid/os/IBinder;

    move-object v8, v0

    invoke-static {v9, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    sget-object v8, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string v9, "geofencing"

    invoke-interface {v8, v9, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/android/server/enterprise/security/DeviceAccountPolicy;

    iget-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v5, v8}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;-><init>(Landroid/content/Context;)V

    const-string v9, "device_account_policy"

    move-object v0, v5

    check-cast v0, Landroid/os/IBinder;

    move-object v8, v0

    invoke-static {v9, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    sget-object v8, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string v9, "device_account_policy"

    invoke-interface {v8, v9, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;

    iget-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v5, v8}, Lcom/android/server/enterprise/dualsim/DualSimPolicyService;-><init>(Landroid/content/Context;)V

    const-string v9, "dualsim_policy"

    move-object v0, v5

    check-cast v0, Landroid/os/IBinder;

    move-object v8, v0

    invoke-static {v9, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    sget-object v8, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string v9, "dualsim_policy"

    invoke-interface {v8, v9, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;

    iget-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v5, v8}, Lcom/android/server/enterprise/smartcard/SmartCardEmailPolicy;-><init>(Landroid/content/Context;)V

    const-string v9, "smartcard_email_policy"

    move-object v0, v5

    check-cast v0, Landroid/os/IBinder;

    move-object v8, v0

    invoke-static {v9, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    sget-object v8, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string v9, "smartcard_email_policy"

    invoke-interface {v8, v9, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;

    iget-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v5, v8}, Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;-><init>(Landroid/content/Context;)V

    const-string v9, "smartcard_vpn_policy"

    move-object v0, v5

    check-cast v0, Landroid/os/IBinder;

    move-object v8, v0

    invoke-static {v9, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    sget-object v8, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string v9, "smartcard_vpn_policy"

    invoke-interface {v8, v9, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;

    iget-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v5, v8}, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;-><init>(Landroid/content/Context;)V

    const-string v9, "smartcard_browser_policy"

    move-object v0, v5

    check-cast v0, Landroid/os/IBinder;

    move-object v8, v0

    invoke-static {v9, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    sget-object v8, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string v9, "smartcard_browser_policy"

    invoke-interface {v8, v9, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;

    iget-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v5, v8}, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;-><init>(Landroid/content/Context;)V

    const-string v9, "smartcard_lockscreen_policy"

    move-object v0, v5

    check-cast v0, Landroid/os/IBinder;

    move-object v8, v0

    invoke-static {v9, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    sget-object v8, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string v9, "smartcard_lockscreen_policy"

    invoke-interface {v8, v9, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;

    iget-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v5, v8}, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;-><init>(Landroid/content/Context;)V

    const-string v9, "bluetooth_secure_mode_policy"

    move-object v0, v5

    check-cast v0, Landroid/os/IBinder;

    move-object v8, v0

    invoke-static {v9, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    sget-object v8, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string v9, "bluetooth_secure_mode_policy"

    invoke-interface {v8, v9, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x1

    :goto_361
    const/4 v8, 0x3

    if-gt v4, v8, :cond_39f

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sec.clipboard"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v8, Lcom/android/server/ClipboardService;

    iget-object v9, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Lcom/android/server/ClipboardService;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sec.clipboardEx"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_361

    :cond_39f
    new-instance v5, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;

    iget-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v5, v8}, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;-><init>(Landroid/content/Context;)V

    const-string v9, "multi_user_manager_service"

    move-object v0, v5

    check-cast v0, Landroid/os/IBinder;

    move-object v8, v0

    invoke-static {v9, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    sget-object v8, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    const-string v9, "multi_user_manager_service"

    invoke-interface {v8, v9, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3b6
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_3b6} :catch_3ba

    :goto_3b6
    const/4 v8, 0x1

    sput-boolean v8, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mServicesAdded:Z

    return-void

    :catch_3ba
    move-exception v3

    const-string v8, "EnterpriseDeviceManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failure creating Policy services"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3b6
.end method

.method private checkAdminExistsInELMDB(Ljava/lang/String;)Z
    .registers 14

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    :try_start_4
    const-string v9, "enterprise_license_policy"

    invoke-static {v9}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    if-eqz v8, :cond_44

    invoke-virtual {v8}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getAllLicenseInfo()[Landroid/app/enterprise/license/LicenseInfo;

    move-result-object v7

    move-object v0, v7

    array-length v6, v0

    const/4 v2, 0x0

    :goto_15
    if-ge v2, v6, :cond_44

    aget-object v5, v0, v2

    invoke-virtual {v5}, Landroid/app/enterprise/license/LicenseInfo;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_20
    .catchall {:try_start_4 .. :try_end_20} :catchall_49
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_20} :catch_2b

    move-result v9

    if-eqz v9, :cond_28

    const/4 v9, 0x1

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_27
    return v9

    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :catch_2b
    move-exception v1

    :try_start_2c
    const-string v9, "EnterpriseDeviceManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "checkAdminExistsInELMDB Ex: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_44
    .catchall {:try_start_2c .. :try_end_44} :catchall_49

    :cond_44
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v9, 0x0

    goto :goto_27

    :catchall_49
    move-exception v9

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v9
.end method

.method private checkIfMigrationNeeded(Landroid/database/sqlite/SQLiteDatabase;)Z
    .registers 5

    const/4 v0, 0x1

    const-string v1, "DmAppInfo"

    invoke-static {p1, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "camera_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "microphone_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "bluetooth_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "roaming_wap_push_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "roaming_data_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "roaming_auto_sync_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_9

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xa

    if-le v1, v2, :cond_b8

    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "usb_tether_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_tether_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "usb_debugging_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "bluetooth_tether_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_capture_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_9

    :cond_b8
    const/4 v0, 0x0

    goto/16 :goto_9
.end method

.method private compareSystemSignature([Landroid/content/pm/Signature;)Z
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v7, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPMS:Landroid/content/pm/IPackageManager;

    const-string v8, "android"

    const/16 v9, 0x40

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v10

    invoke-interface {v7, v8, v9, v10}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v3

    if-nez v3, :cond_17

    const-string v7, "EnterpriseDeviceManagerService"

    const-string v8, "Could not Read package info"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_17
    if-eqz v3, :cond_4c

    iget-object v7, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v7, :cond_4c

    if-eqz p1, :cond_4c

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iget-object v0, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_28
    if-ge v1, v2, :cond_32

    aget-object v6, v0, v1

    invoke-virtual {v4, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    :cond_32
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    move-object v0, p1

    array-length v2, v0

    const/4 v1, 0x0

    :goto_3a
    if-ge v1, v2, :cond_44

    aget-object v6, v0, v1

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_3a

    :cond_44
    invoke-virtual {v4, v5}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4c

    const/4 v7, 0x1

    :goto_4b
    return v7

    :cond_4c
    const/4 v7, 0x0

    goto :goto_4b
.end method

.method private extractLicenseExpiryTime(Ljava/lang/String;)J
    .registers 6

    invoke-static {p1}, Lcom/android/server/enterprise/PayloadVerifier;->extractLicense(Ljava/lang/String;)[B

    move-result-object v0

    array-length v2, v0

    if-lez v2, :cond_19

    new-instance v1, Lcom/android/server/enterprise/LicenseXmlReader;

    invoke-direct {v1}, Lcom/android/server/enterprise/LicenseXmlReader;-><init>()V

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/LicenseXmlReader;->readXmlData(Ljava/io/InputStream;)V

    invoke-virtual {v1}, Lcom/android/server/enterprise/LicenseXmlReader;->getExpiryTime()J

    move-result-wide v2

    :goto_18
    return-wide v2

    :cond_19
    const-wide/16 v2, 0x0

    goto :goto_18
.end method

.method private findAdmin(Landroid/content/ComponentName;)Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v5, 0x0

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v2, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1d

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_36

    :cond_1d
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown admin: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_36
    :try_start_36
    new-instance v4, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    iget-object v6, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    invoke-direct {v4, v6, v3}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    :try_end_44
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_36 .. :try_end_44} :catch_46
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_44} :catch_49

    move-object v3, v4

    :goto_45
    return-object v3

    :catch_46
    move-exception v0

    move-object v3, v5

    goto :goto_45

    :catch_49
    move-exception v0

    move-object v3, v5

    goto :goto_45
.end method

.method private getActiveAdminLocked(Landroid/content/ComponentName;)Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    .registers 5

    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :goto_1c
    return-object v0

    :cond_1d
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method static getContainerId(I)I
    .registers 2

    invoke-static {p0}, Lcom/sec/enterprise/knox/EnterpriseContainerManager;->getContainerId(I)I

    move-result v0

    return v0
.end method

.method public static getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .registers 1

    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mInstance:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    return-object v0
.end method

.method private getLicenseExpirationLocked(Landroid/content/ComponentName;)J
    .registers 13

    const-wide/16 v7, 0x0

    if-eqz p1, :cond_f

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getActiveAdminLocked(Landroid/content/ComponentName;)Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getLicenseExpiry()J

    move-result-wide v7

    :cond_e
    :goto_e
    return-wide v7

    :cond_f
    const-wide/16 v5, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v9, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_1c
    if-ge v2, v0, :cond_4a

    iget-object v9, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getLicenseExpiry()J

    move-result-wide v9

    cmp-long v9, v9, v3

    if-gez v9, :cond_31

    :cond_2e
    :goto_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    :cond_31
    cmp-long v9, v5, v7

    if-eqz v9, :cond_45

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getLicenseExpiry()J

    move-result-wide v9

    cmp-long v9, v9, v7

    if-eqz v9, :cond_2e

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getLicenseExpiry()J

    move-result-wide v9

    cmp-long v9, v5, v9

    if-lez v9, :cond_2e

    :cond_45
    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getLicenseExpiry()J

    move-result-wide v5

    goto :goto_2e

    :cond_4a
    move-wide v7, v5

    goto :goto_e
.end method

.method public static final getPolicyService(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private handleDowngrade()V
    .registers 9

    const/4 v7, 0x0

    const-string v4, "EnterpriseDeviceManagerService"

    const-string v5, "handleDowngrade: Checking Downgrade..."

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    const-string v2, "enterprise.db"

    :try_start_b
    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v2, v5, v6}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_12} :catch_43

    move-result-object v1

    :goto_13
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v3

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v4, 0x7

    if-le v3, v4, :cond_42

    const-string v4, "EnterpriseDeviceManagerService"

    const-string v5, "Current Platform Version is older than the previous DB version"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "EnterpriseDeviceManagerService"

    const-string v5, "Deleting EDM Databases - enterprise.db and dmapprmgr.db"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/io/File;

    const-string v5, "/data/system/enterprise.db"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    new-instance v4, Ljava/io/File;

    const-string v5, "/data/system/dmappmgr.db"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    invoke-direct {p0, v7}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->sendMigrationIntent(Z)V

    :cond_42
    return-void

    :catch_43
    move-exception v0

    const-string v4, "EnterpriseDeviceManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "could not open or create databse"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13
.end method

.method private handleLicenseExpiryCheckNotification()V
    .registers 11

    monitor-enter p0

    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_f

    monitor-exit p0

    :goto_e
    return-void

    :cond_f
    const/4 v2, 0x0

    :goto_10
    if-ge v2, v0, :cond_54

    iget-object v6, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getLicenseExpiry()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_51

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getLicenseExpiry()J

    move-result-wide v6

    const-wide v8, 0x9a7ec800L

    sub-long/2addr v6, v8

    cmp-long v6, v4, v6

    if-ltz v6, :cond_51

    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.sec.ENTERPRISE_LICENSE_EXPIRING"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "licenseExpirationTime"

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getLicenseExpiry()J

    move-result-wide v7

    invoke-virtual {v3, v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const/4 v6, 0x0

    invoke-direct {p0, v1, v3, v6}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->sendAdminNotificationLocked(Landroid/app/enterprise/EnterpriseDeviceAdminInfo;Landroid/content/Intent;Landroid/content/BroadcastReceiver;)V

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getLicenseExpiry()J

    move-result-wide v6

    cmp-long v6, v4, v6

    if-ltz v6, :cond_51

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->revokeMdmPermissions(Landroid/app/enterprise/EnterpriseDeviceAdminInfo;)V

    :cond_51
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_54
    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->setLicenseExpirationAlarmLocked()V

    monitor-exit p0

    goto :goto_e

    :catchall_59
    move-exception v6

    monitor-exit p0
    :try_end_5b
    .catchall {:try_start_1 .. :try_end_5b} :catchall_59

    throw v6
.end method

.method private initServices()V
    .registers 5

    sget-object v2, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mFirstInitializedPolicyServices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/EnterpriseServiceCallback;

    invoke-interface {v2}, Lcom/android/server/enterprise/EnterpriseServiceCallback;->systemReady()V

    goto :goto_a

    :cond_2c
    return-void
.end method

.method private isFirmwareChanged()Z
    .registers 5

    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getPlatformVersion()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ro.build.fingerprint"

    const-string v3, "unknown"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "unknown"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/4 v1, 0x0

    :cond_17
    if-eqz v0, :cond_21

    if-eqz v1, :cond_28

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_28

    :cond_21
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v2, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->setPlatformVersion(Ljava/lang/String;)Z

    const/4 v2, 0x1

    :goto_27
    return v2

    :cond_28
    const/4 v2, 0x0

    goto :goto_27
.end method

.method private isMdmAdminPresent()Z
    .registers 11

    const/4 v7, 0x1

    :try_start_1
    iget-object v6, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminUidList()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v6, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v6, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getComponentNameForUid(I)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_b

    sget-object v6, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->EXCLUDED_ADMINS:Ljava/util/List;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->findAdmin(Landroid/content/ComponentName;)Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->usesMDMPolicy()Z

    move-result v6

    if-eqz v6, :cond_42

    const-string v6, "EnterpriseDeviceManagerService"

    const-string v8, "MDM Admin Found"

    invoke-static {v6, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v7

    :goto_41
    return v6

    :cond_42
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_b

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_b

    const-string v6, "EnterpriseDeviceManagerService"

    const-string v8, "MDM Admin Found"

    invoke-static {v6, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v7

    goto :goto_41

    :cond_5b
    const-string v6, "EnterpriseDeviceManagerService"

    const-string v8, "MDM Admin Not Found"

    invoke-static {v6, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_62} :catch_64

    const/4 v6, 0x0

    goto :goto_41

    :catch_64
    move-exception v1

    const-string v6, "EnterpriseDeviceManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isMdmAdminPresent EX"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v7

    goto :goto_41
.end method

.method private static isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .registers 7

    const/4 v1, 0x0

    if-eqz p0, :cond_2c

    if-eqz p1, :cond_2c

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2c

    :try_start_f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT 1 FROM "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " WHERE 1=0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_2b} :catch_2d

    const/4 v1, 0x1

    :cond_2c
    :goto_2c
    return v1

    :catch_2d
    move-exception v0

    const/4 v1, 0x0

    const-string v2, "EnterpriseDeviceManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isTableExists EX: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2c
.end method

.method private loadActiveAdmins()V
    .registers 16

    monitor-enter p0

    :try_start_1
    const-string v11, "EnterpriseDeviceManagerService"

    const-string v12, "loadActiveAdmins"

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v11}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminUidList()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_12
    :goto_12
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_15e

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v11, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v11, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getComponentNameForUid(I)Landroid/content/ComponentName;
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_86

    move-result-object v2

    if-eqz v2, :cond_12

    :try_start_2a
    invoke-direct {p0, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->findAdmin(Landroid/content/ComponentName;)Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    move-result-object v0

    if-eqz v0, :cond_133

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->setLicenseExpiryTime(Landroid/app/enterprise/EnterpriseDeviceAdminInfo;)V

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v11

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v11, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v11, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-ne v3, v8, :cond_89

    iget-object v11, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v11, v2}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v11

    if-nez v11, :cond_12

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->removeActiveAdminDelayed(Landroid/content/ComponentName;)V

    const-string v11, "EnterpriseDeviceManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Admin invalid on DPM, removing from EDM:   "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", uid: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_80
    .catchall {:try_start_2a .. :try_end_80} :catchall_86
    .catch Ljava/lang/RuntimeException; {:try_start_2a .. :try_end_80} :catch_81

    goto :goto_12

    :catch_81
    move-exception v5

    :try_start_82
    invoke-virtual {v5}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_12

    :catchall_86
    move-exception v11

    monitor-exit p0
    :try_end_88
    .catchall {:try_start_82 .. :try_end_88} :catchall_86

    throw v11

    :cond_89
    :try_start_89
    iget-object v11, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v12, "ADMIN_INFO"

    const-string v13, "adminUid"

    invoke-virtual {v11, v8, v12, v13, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_fc

    const-string v11, "EnterpriseDeviceManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Admin "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", updated with new currentUid: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", old storedUid: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v11, v2}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v11

    if-nez v11, :cond_12

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->removeActiveAdminDelayed(Landroid/content/ComponentName;)V

    const-string v11, "EnterpriseDeviceManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Admin invalid on DPM, removing from EDM: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", uid: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_12

    :cond_fc
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v11

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput v8, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->removeActiveAdminDelayed(Landroid/content/ComponentName;)V

    const-string v11, "EnterpriseDeviceManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Failed   updating uid, removed: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", uid: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_12

    :cond_133
    invoke-direct {p0, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->removeActiveAdminDelayed(Landroid/content/ComponentName;)V

    const-string v11, "EnterpriseDeviceManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Admin loaded null,   removed: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", uid: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_15c
    .catchall {:try_start_89 .. :try_end_15c} :catchall_86
    .catch Ljava/lang/RuntimeException; {:try_start_89 .. :try_end_15c} :catch_81

    goto/16 :goto_12

    :cond_15e
    :try_start_15e
    iget-object v11, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v11}, Landroid/app/admin/DevicePolicyManager;->getActiveAdmins()Ljava/util/List;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getActiveAdmins()Ljava/util/List;

    move-result-object v6

    if-eqz v4, :cond_1ca

    if-nez v6, :cond_171

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    :cond_171
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_175
    :goto_175
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1ca

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    invoke-interface {v6, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_175

    const-string v11, "EnterpriseDeviceManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Adding missing admin to EDM : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->findAdmin(Landroid/content/ComponentName;)Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    move-result-object v0

    if-eqz v0, :cond_175

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v11

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v11, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminMap:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v11, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v11, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    invoke-static {v9}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getContainerId(I)I

    move-result v14

    invoke-virtual {v11, v9, v12, v13, v14}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->addAdmin(ILjava/lang/String;ZI)Z

    goto :goto_175

    :cond_1ca
    monitor-exit p0
    :try_end_1cb
    .catchall {:try_start_15e .. :try_end_1cb} :catchall_86

    return-void
.end method

.method private migrateFromV1()V
    .registers 25

    const/4 v11, 0x0

    :try_start_1
    const-string v20, "EnterpriseDeviceManagerService"

    const-string v21, "Check for migration from 1.0"

    invoke-static/range {v20 .. v21}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v20, v0

    const/16 v21, -0x1

    const-string v22, "MDM1.0To2.1MigrationChecked"

    invoke-virtual/range {v20 .. v22}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_31

    const-string v20, "true"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_31

    const-string v20, "EnterpriseDeviceManagerService"

    const-string v21, "Migration from 1.0 already done"

    invoke-static/range {v20 .. v21}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_28a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2b} :catch_90

    if-eqz v11, :cond_30

    :goto_2d
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_30
    :goto_30
    return-void

    :cond_31
    :try_start_31
    const-string v12, "dmappmgr.db"
    :try_end_33
    .catchall {:try_start_31 .. :try_end_33} :catchall_28a
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_33} :catch_90

    :try_start_33
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v12, v1, v2}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_46
    .catchall {:try_start_33 .. :try_end_46} :catchall_28a
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_46} :catch_74

    move-result-object v11

    :goto_47
    :try_start_47
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->checkIfMigrationNeeded(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v20

    if-nez v20, :cond_ca

    const-string v20, "EnterpriseDeviceManagerService"

    const-string v21, "No need to migrate"

    invoke-static/range {v20 .. v21}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->sendMigrationIntent(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v20, v0

    const/16 v21, -0x1

    const-string v22, "MDM1.0To2.1MigrationChecked"

    const-string v23, "true"

    invoke-virtual/range {v20 .. v23}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(ILjava/lang/String;Ljava/lang/String;)Z

    if-eqz v11, :cond_30

    goto :goto_2d

    :catch_74
    move-exception v13

    const-string v20, "EnterpriseDeviceManagerService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "create or open dmappmgr EX: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8f
    .catchall {:try_start_47 .. :try_end_8f} :catchall_28a
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_8f} :catch_90

    goto :goto_47

    :catch_90
    move-exception v13

    :try_start_91
    const-string v20, "EnterpriseDeviceManagerService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Migration v1 to v2.1 EX: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->sendMigrationIntent(Z)V
    :try_end_b4
    .catchall {:try_start_91 .. :try_end_b4} :catchall_28a

    if-eqz v11, :cond_b9

    :goto_b6
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_b9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v20, v0

    const/16 v21, -0x1

    const-string v22, "MDM1.0To2.1MigrationChecked"

    const-string v23, "true"

    invoke-virtual/range {v20 .. v23}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(ILjava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_30

    :cond_ca
    :try_start_ca
    const-string v20, "EnterpriseDeviceManagerService"

    const-string v21, "migrateFromV1"

    invoke-static/range {v20 .. v21}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v20

    new-instance v21, Landroid/content/Intent;

    const-string v22, "android.app.action.DEVICE_ADMIN_ENABLED"

    invoke-direct/range {v21 .. v22}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v22, 0x80

    invoke-virtual/range {v20 .. v22}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v8

    if-nez v8, :cond_189

    const/4 v10, 0x0

    :goto_eb
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mDPM:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/app/admin/DevicePolicyManager;->getActiveAdmins()Ljava/util/List;

    move-result-object v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/16 v16, 0x0

    :goto_fc
    move/from16 v0, v16

    if-ge v0, v10, :cond_18f

    move/from16 v0, v16

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/pm/ResolveInfo;

    new-instance v9, Landroid/content/ComponentName;

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v9, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_185

    const-string v20, "EnterpriseDeviceManagerService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Active Admin : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v14, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-direct {v14, v0, v1}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V

    invoke-virtual {v14}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->parseRequestedPermissions()Ljava/util/List;

    move-result-object v20

    if-eqz v20, :cond_185

    invoke-virtual {v14}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->parseRequestedPermissions()Ljava/util/List;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v20

    if-lez v20, :cond_185

    const-string v20, "EnterpriseDeviceManagerService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Enterprise Admin : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_185
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_fc

    :cond_189
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    goto/16 :goto_eb

    :cond_18f
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v20

    if-nez v20, :cond_1b1

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->sendMigrationIntent(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v20, v0

    const/16 v21, -0x1

    const-string v22, "MDM1.0To2.1MigrationChecked"

    const-string v23, "true"

    invoke-virtual/range {v20 .. v23}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(ILjava/lang/String;Ljava/lang/String;)Z

    if-eqz v11, :cond_30

    goto/16 :goto_2d

    :cond_1b1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_1d9

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->sendMigrationIntent(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v20, v0

    const/16 v21, -0x1

    const-string v22, "MDM1.0To2.1MigrationChecked"

    const-string v23, "true"

    invoke-virtual/range {v20 .. v23}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(ILjava/lang/String;Ljava/lang/String;)Z

    if-eqz v11, :cond_30

    goto/16 :goto_2d

    :cond_1d9
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_261

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    invoke-virtual {v7}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v20

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v19, v0

    const-string v20, "EnterpriseDeviceManagerService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Start migration for : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v7}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v20, v0

    invoke-virtual {v7}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x1

    invoke-static/range {v19 .. v19}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getContainerId(I)I

    move-result v23

    move-object/from16 v0, v20

    move/from16 v1, v19

    move-object/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->addorUpdateAdmin(ILjava/lang/String;ZI)Z
    :try_end_24a
    .catchall {:try_start_ca .. :try_end_24a} :catchall_28a
    .catch Ljava/lang/Exception; {:try_start_ca .. :try_end_24a} :catch_90

    :try_start_24a
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->migrateFromV1Setting(I)Z

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v11, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->migrateFromV1DmAppInfo(Landroid/database/sqlite/SQLiteDatabase;I)Z

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->sendMigrationIntent(Z)V
    :try_end_261
    .catchall {:try_start_24a .. :try_end_261} :catchall_28a
    .catch Ljava/lang/Exception; {:try_start_24a .. :try_end_261} :catch_265

    :cond_261
    :goto_261
    if-eqz v11, :cond_b9

    goto/16 :goto_b6

    :catch_265
    move-exception v15

    :try_start_266
    const-string v20, "EnterpriseDeviceManagerService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Setting Migration EX: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->sendMigrationIntent(Z)V
    :try_end_289
    .catchall {:try_start_266 .. :try_end_289} :catchall_28a
    .catch Ljava/lang/Exception; {:try_start_266 .. :try_end_289} :catch_90

    goto :goto_261

    :catchall_28a
    move-exception v20

    if-eqz v11, :cond_290

    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_290
    throw v20
.end method

.method private migrateFromV1DmAppInfo(Landroid/database/sqlite/SQLiteDatabase;I)Z
    .registers 19

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v2, "DmAppInfo"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    :goto_11
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_8d

    const-string v1, "pkgname"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const-string v1, "installcount"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    const-string v1, "uninstallcount"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    const-string v1, "controlstate"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "packageName"

    invoke-virtual {v11, v1, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "adminUid"

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "applicationInstallationCount"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "applicationUninstallationCount"

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v10, 0x0

    const/4 v1, 0x1

    and-int/lit8 v2, v14, 0x1

    if-ne v1, v2, :cond_6c

    or-int/lit8 v10, v10, 0x2

    :cond_6c
    const/4 v1, 0x4

    and-int/lit8 v2, v14, 0x4

    if-ne v1, v2, :cond_73

    or-int/lit8 v10, v10, 0x1

    :cond_73
    const/4 v1, 0x2

    and-int/lit8 v2, v14, 0x2

    if-ne v1, v2, :cond_7a

    or-int/lit8 v10, v10, 0x4

    :cond_7a
    const-string v1, "controlState"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "APPLICATION"

    invoke-virtual {v1, v2, v11}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    goto :goto_11

    :cond_8d
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    const-string v1, "DROP TABLE DmAppInfo;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v1, 0x1

    return v1
.end method

.method private migrateFromV1Setting(I)Z
    .registers 10

    const/16 v7, 0xa

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "camera_enabled"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "RESTRICTION"

    const-string v6, "cameraEnabled"

    if-ne v0, v2, :cond_1b1

    move v1, v2

    :goto_19
    invoke-virtual {v4, p1, v5, v6, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "microphone_enabled"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "RESTRICTION"

    const-string v6, "microphoneEnabled"

    if-ne v0, v2, :cond_1b4

    move v1, v2

    :goto_31
    invoke-virtual {v4, p1, v5, v6, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "wifi_enabled"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "WIFI"

    const-string v6, "allowWifi"

    if-ne v0, v2, :cond_1b7

    move v1, v2

    :goto_49
    invoke-virtual {v4, p1, v5, v6, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "bluetooth_enabled"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "BLUETOOTH"

    const-string v6, "bluetoothEnabled"

    if-ne v0, v2, :cond_1ba

    move v1, v2

    :goto_61
    invoke-virtual {v4, p1, v5, v6, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "roaming_wap_push_enabled"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "ROAMING"

    const-string v6, "roamingPushEnabled"

    if-ne v0, v2, :cond_1bd

    move v1, v2

    :goto_79
    invoke-virtual {v4, p1, v5, v6, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "roaming_data_enabled"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "ROAMING"

    const-string v6, "roamingDataEnabled"

    if-ne v0, v2, :cond_1c0

    move v1, v2

    :goto_91
    invoke-virtual {v4, p1, v5, v6, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "roaming_auto_sync_enabled"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "ROAMING"

    const-string v6, "roamingSyncEnabled"

    if-ne v0, v2, :cond_1c3

    move v1, v2

    :goto_a9
    invoke-virtual {v4, p1, v5, v6, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v1, v7, :cond_128

    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "usb_tether_enabled"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "RESTRICTION"

    const-string v6, "usbTetheringEnabled"

    if-ne v0, v2, :cond_1c6

    move v1, v2

    :goto_c5
    invoke-virtual {v4, p1, v5, v6, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "wifi_tether_enabled"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "RESTRICTION"

    const-string v6, "wifiTetheringEnabled"

    if-ne v0, v2, :cond_1c9

    move v1, v2

    :goto_dd
    invoke-virtual {v4, p1, v5, v6, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "usb_debugging_enabled"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "RESTRICTION"

    const-string v6, "usbDebuggingEnabled"

    if-ne v0, v2, :cond_1cc

    move v1, v2

    :goto_f5
    invoke-virtual {v4, p1, v5, v6, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "bluetooth_tether_enabled"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "RESTRICTION"

    const-string v6, "bluetoothTetheringEnabled"

    if-ne v0, v2, :cond_1cf

    move v1, v2

    :goto_10d
    invoke-virtual {v4, p1, v5, v6, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "screen_capture_enabled"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "RESTRICTION"

    const-string v5, "screenCaptureEnabled"

    if-ne v0, v2, :cond_125

    move v3, v2

    :cond_125
    invoke-virtual {v1, p1, v4, v5, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    :cond_128
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "camera_enabled"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "microphone_enabled"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "wifi_enabled"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "bluetooth_enabled"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "roaming_wap_push_enabled"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "roaming_data_enabled"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "roaming_auto_sync_enabled"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v1, v7, :cond_1b0

    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "usb_tether_enabled"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "wifi_tether_enabled"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "usb_debugging_enabled"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "bluetooth_tether_enabled"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "screen_capture_enabled"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1b0
    return v2

    :cond_1b1
    move v1, v3

    goto/16 :goto_19

    :cond_1b4
    move v1, v3

    goto/16 :goto_31

    :cond_1b7
    move v1, v3

    goto/16 :goto_49

    :cond_1ba
    move v1, v3

    goto/16 :goto_61

    :cond_1bd
    move v1, v3

    goto/16 :goto_79

    :cond_1c0
    move v1, v3

    goto/16 :goto_91

    :cond_1c3
    move v1, v3

    goto/16 :goto_a9

    :cond_1c6
    move v1, v3

    goto/16 :goto_c5

    :cond_1c9
    move v1, v3

    goto/16 :goto_dd

    :cond_1cc
    move v1, v3

    goto/16 :goto_f5

    :cond_1cf
    move v1, v3

    goto/16 :goto_10d
.end method

.method private removeActiveAdminDelayed(Landroid/content/ComponentName;)V
    .registers 13

    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getActiveAdminLocked(Landroid/content/ComponentName;)Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    move-result-object v0

    if-nez v0, :cond_9

    monitor-exit p0

    :goto_8
    return-void

    :cond_9
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    if-eq v7, v8, :cond_20

    iget-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    const-string v9, "android.permission.BIND_DEVICE_ADMIN"

    const-string v10, "Only system or itself can remove an EDM admin"

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_20
    iget-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v8, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->canRemoveAdmin(I)Z

    move-result v1

    if-nez v1, :cond_2d

    monitor-exit p0

    goto :goto_8

    :catchall_2a
    move-exception v8

    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_2a

    throw v8

    :cond_2d
    :try_start_2d
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    sget-object v8, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;
    :try_end_47
    .catchall {:try_start_2d .. :try_end_47} :catchall_2a

    :try_start_47
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/enterprise/EnterpriseServiceCallback;

    invoke-interface {v8, v7}, Lcom/android/server/enterprise/EnterpriseServiceCallback;->onPreAdminRemoval(I)V
    :try_end_50
    .catchall {:try_start_47 .. :try_end_50} :catchall_2a
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_50} :catch_51

    goto :goto_3b

    :catch_51
    move-exception v2

    :try_start_52
    const-string v8, "EnterpriseDeviceManagerService"

    const-string v9, "removeActiveAdminDelayed Ex1:"

    invoke-static {v8, v9, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3b

    :cond_5a
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getReceiver()Landroid/content/pm/ResolveInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-static {v8}, Lcom/android/server/enterprise/PayloadVerifier;->removeStoredPublicKeyPath(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminMap:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v8, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->removeAdminFromDatabase(I)Z

    sget-object v8, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_84
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;
    :try_end_90
    .catchall {:try_start_52 .. :try_end_90} :catchall_2a

    :try_start_90
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/enterprise/EnterpriseServiceCallback;

    invoke-interface {v8, v7}, Lcom/android/server/enterprise/EnterpriseServiceCallback;->onAdminRemoved(I)V
    :try_end_99
    .catchall {:try_start_90 .. :try_end_99} :catchall_2a
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_99} :catch_9a

    goto :goto_84

    :catch_9a
    move-exception v2

    :try_start_9b
    const-string v8, "EnterpriseDeviceManagerService"

    const-string v9, "removeActiveAdminDelayed Ex2:"

    invoke-static {v8, v9, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_84

    :cond_a3
    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->setLicenseExpirationAlarmLocked()V

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit p0
    :try_end_aa
    .catchall {:try_start_9b .. :try_end_aa} :catchall_2a

    goto/16 :goto_8
.end method

.method private revokeMdmPermissions(Landroid/app/enterprise/EnterpriseDeviceAdminInfo;)V
    .registers 6

    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPMS:Landroid/content/pm/IPackageManager;

    invoke-virtual {p1}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getReceiver()Landroid/content/pm/ResolveInfo;

    move-result-object v2

    invoke-virtual {p1}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getRequestedPermissions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/pm/IPackageManager;->revokeExternalPermissions(Landroid/content/pm/ResolveInfo;Ljava/util/List;)I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    :goto_d
    return-void

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_d
.end method

.method private runAdminUpdate()V
    .registers 3

    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mInternalHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$2;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$2;-><init>(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private declared-synchronized selfUpdate()V
    .registers 14

    monitor-enter p0

    :try_start_1
    sget-object v9, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mSelfUpdateAdminComponent:Landroid/content/ComponentName;

    if-eqz v9, :cond_e

    const-string v9, "EnterpriseDeviceManagerService"

    const-string v10, "selfUpdate in progress"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_36
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_2a

    :cond_c
    :goto_c
    monitor-exit p0

    return-void

    :cond_e
    :try_start_e
    const-string v9, "self_update_admin_component"

    const-string v10, "/data/system/selfUpdateAdmin.conf"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/utils/Utils;->readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_39

    const-string v9, "EnterpriseDeviceManagerService"

    const-string v10, "nothing to selfUpdate"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v9, Ljava/io/File;

    const-string v10, "/data/app/selfUpdateApks"

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->delete()Z
    :try_end_29
    .catchall {:try_start_e .. :try_end_29} :catchall_36
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_29} :catch_2a

    goto :goto_c

    :catch_2a
    move-exception v7

    :try_start_2b
    const-string v9, "EnterpriseDeviceManagerService"

    const-string v10, "Upgrade Admin Ex: "

    invoke-static {v9, v10, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_35
    .catchall {:try_start_2b .. :try_end_35} :catchall_36

    goto :goto_c

    :catchall_36
    move-exception v9

    monitor-exit p0

    throw v9

    :cond_39
    :try_start_39
    const-string v9, ";"

    invoke-virtual {v4, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v9, 0x0

    aget-object v5, v1, v9

    if-eqz v5, :cond_c

    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_c

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "/data/app/selfUpdateApks/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".apk"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v9

    if-eqz v9, :cond_78

    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v9

    if-nez v9, :cond_80

    :cond_78
    const-string v9, "EnterpriseDeviceManagerService"

    const-string v10, "Cannot read or is not a file : /data/app/selfUpdateApks/"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    :cond_80
    sput-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mSelfUpdateAdminComponent:Landroid/content/ComponentName;
    :try_end_82
    .catchall {:try_start_39 .. :try_end_82} :catchall_36
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_82} :catch_2a

    :try_start_82
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->removeActiveAdmin(Landroid/content/ComponentName;)V

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->removeActiveAdminDelayed(Landroid/content/ComponentName;)V
    :try_end_88
    .catchall {:try_start_82 .. :try_end_88} :catchall_36
    .catch Ljava/lang/IllegalArgumentException; {:try_start_82 .. :try_end_88} :catch_e3
    .catch Ljava/lang/IllegalStateException; {:try_start_82 .. :try_end_88} :catch_e1
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_88} :catch_2a

    :goto_88
    :try_start_88
    iget-object v9, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v9, v0}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z
    :try_end_8d
    .catchall {:try_start_88 .. :try_end_8d} :catchall_36
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_8d} :catch_2a

    move-result v9

    if-eqz v9, :cond_9f

    :try_start_90
    const-string v9, "EnterpriseDeviceManagerService"

    const-string v10, "Waiting..."

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v9, 0x1388

    invoke-virtual {p0, v9, v10}, Ljava/lang/Object;->wait(J)V
    :try_end_9c
    .catchall {:try_start_90 .. :try_end_9c} :catchall_36
    .catch Ljava/lang/InterruptedException; {:try_start_90 .. :try_end_9c} :catch_9d
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_9c} :catch_2a

    goto :goto_88

    :catch_9d
    move-exception v9

    goto :goto_88

    :cond_9f
    :try_start_9f
    const-string v9, "EnterpriseDeviceManagerService"

    const-string v10, "Finished Waiting."

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "application_policy"

    invoke-static {v9}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/application/ApplicationPolicy;

    const-string v9, "EnterpriseDeviceManagerService"

    const-string v10, "Uninstall of old apk"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, -0x1

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v3, v9, v10, v11}, Lcom/android/server/enterprise/application/ApplicationPolicy;->uninstallApplicationBySystem(ILjava/lang/String;Z)Z

    const-string v9, "EnterpriseDeviceManagerService"

    const-string v10, "Install of new apk"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v9}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v9

    new-instance v10, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$3;

    invoke-direct {v10, p0, v1, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$3;-><init>(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;[Ljava/lang/String;Ljava/io/File;)V

    const/16 v11, 0x10

    const/4 v12, 0x0

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/content/pm/PackageManager;->installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V
    :try_end_df
    .catchall {:try_start_9f .. :try_end_df} :catchall_36
    .catch Ljava/lang/Exception; {:try_start_9f .. :try_end_df} :catch_2a

    goto/16 :goto_c

    :catch_e1
    move-exception v9

    goto :goto_88

    :catch_e3
    move-exception v9

    goto :goto_88
.end method

.method private sendAdminNotificationLocked(Landroid/app/enterprise/EnterpriseDeviceAdminInfo;Landroid/content/Intent;Landroid/content/BroadcastReceiver;)V
    .registers 12

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p3, :cond_17

    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mInternalHandler:Landroid/os/Handler;

    const/4 v5, -0x1

    move-object v1, p2

    move-object v3, p3

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    :goto_16
    return-void

    :cond_17
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_16
.end method

.method private sendMigrationIntent(Z)V
    .registers 6

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.sec.ENTERPRISE_MIGRATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "currentVersion"

    new-instance v2, Landroid/app/enterprise/EnterpriseDeviceManager;

    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/enterprise/EnterpriseDeviceManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->getEnterpriseSdkVer()Landroid/app/enterprise/EnterpriseDeviceManager$EnterpriseSdkVersion;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/enterprise/EnterpriseDeviceManager$EnterpriseSdkVersion;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "migrationResult"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-void
.end method

.method private setLicenseExpirationAlarmLocked()V
    .registers 20

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getLicenseExpirationLocked(Landroid/content/ComponentName;)J

    move-result-wide v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v11, v6, v8

    const-wide/16 v15, 0x0

    cmp-long v15, v6, v15

    if-nez v15, :cond_4a

    const-wide/16 v3, 0x0

    :goto_15
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v13

    :try_start_19
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    const-string v16, "alarm"

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AlarmManager;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    const v16, -0x21524111

    new-instance v17, Landroid/content/Intent;

    const-string v18, "com.android.server.enterprise.ACTION_LICENSE_EXPIRY_CHECK_NOTIFICATION"

    invoke-direct/range {v17 .. v18}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v18, 0x4800

    invoke-static/range {v15 .. v18}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const-wide/16 v15, 0x0

    cmp-long v15, v3, v15

    if-eqz v15, :cond_46

    const/4 v15, 0x1

    invoke-virtual {v5, v15, v3, v4, v10}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_46
    .catchall {:try_start_19 .. :try_end_46} :catchall_67

    :cond_46
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_4a
    const-wide/16 v15, 0x0

    cmp-long v15, v11, v15

    if-gtz v15, :cond_56

    const-wide/32 v15, 0x5265c00

    add-long v3, v8, v15

    goto :goto_15

    :cond_56
    const-wide/32 v15, 0x5265c00

    rem-long v1, v11, v15

    const-wide/16 v15, 0x0

    cmp-long v15, v1, v15

    if-nez v15, :cond_64

    const-wide/32 v1, 0x5265c00

    :cond_64
    add-long v3, v8, v1

    goto :goto_15

    :catchall_67
    move-exception v15

    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v15
.end method

.method private setLicenseExpiryTime(Landroid/app/enterprise/EnterpriseDeviceAdminInfo;)V
    .registers 4

    invoke-virtual {p1}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->extractLicenseExpiryTime(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->setLicenseExpiry(J)V

    return-void
.end method

.method private verifyEnterprisePayload(I)Z
    .registers 16

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_7
    iget-object v10, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    if-nez v0, :cond_4c

    new-instance v8, Ljava/lang/SecurityException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "No active admin owned by uid"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_2e
    .catchall {:try_start_7 .. :try_end_2e} :catchall_cd
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_2e} :catch_2e

    :catch_2e
    move-exception v1

    :try_start_2f
    const-string v8, "EnterpriseDeviceManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "could not retrieve admin info"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_47
    .catchall {:try_start_2f .. :try_end_47} :catchall_cd

    :goto_47
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v8, v4

    :goto_4b
    return v8

    :cond_4c
    :try_start_4c
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getLicenseExpiry()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-lez v10, :cond_85

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getLicenseExpiry()J

    move-result-wide v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    cmp-long v10, v10, v12

    if-gez v10, :cond_85

    const-string v9, "EnterpriseDeviceManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "License Expired for admin "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->revokeMdmPermissions(Landroid/app/enterprise/EnterpriseDeviceAdminInfo;)V
    :try_end_81
    .catchall {:try_start_4c .. :try_end_81} :catchall_cd
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_81} :catch_2e

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_4b

    :cond_85
    :try_start_85
    iget-object v10, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPMS:Landroid/content/pm/IPackageManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getReceiver()Landroid/content/pm/ResolveInfo;

    move-result-object v11

    invoke-interface {v10, v11}, Landroid/content/pm/IPackageManager;->verifyGrantExternalPermissions(Landroid/content/pm/ResolveInfo;)I

    move-result v5

    const-string v11, "EnterpriseDeviceManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Payload Verified : "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    if-nez v5, :cond_d2

    move v10, v9

    :goto_9f
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v5, :cond_d4

    move v4, v9

    :goto_ad
    iget-object v10, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x40

    invoke-virtual {v10, v11, v12}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    iget-object v10, v6, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-direct {p0, v10}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->compareSystemSignature([Landroid/content/pm/Signature;)Z

    move-result v7

    if-nez v7, :cond_c7

    if-eqz v4, :cond_c8

    :cond_c7
    move v8, v9

    :cond_c8
    invoke-virtual {v0, v8}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->setAuthorized(Z)V
    :try_end_cb
    .catchall {:try_start_85 .. :try_end_cb} :catchall_cd
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_cb} :catch_2e

    goto/16 :goto_47

    :catchall_cd
    move-exception v8

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v8

    :cond_d2
    move v10, v8

    goto :goto_9f

    :cond_d4
    move v4, v8

    goto :goto_ad
.end method


# virtual methods
.method public checkServices()V
    .registers 3

    sget-boolean v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mServicesAdded:Z

    if-nez v0, :cond_13

    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mInternalHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$4;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$4;-><init>(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mServiceAdditionCondition:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    :cond_13
    return-void
.end method

.method public createSmardCardDirectory(Ljava/lang/String;II)Z
    .registers 19

    const/4 v11, 0x0

    :try_start_1
    iget-object v12, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPMS:Landroid/content/pm/IPackageManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v13

    invoke-interface {v12, v13}, Landroid/content/pm/IPackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_15

    const-string v12, "com.sec.smartcard.pinservice"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_20

    :cond_15
    new-instance v12, Ljava/lang/SecurityException;

    const-string v13, "Not allowed only SC purpose"

    invoke-direct {v12, v13}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1d} :catch_1d

    :catch_1d
    move-exception v6

    const/4 v12, 0x0

    :goto_1f
    return v12

    :cond_20
    if-ltz p3, :cond_2f

    const/16 v12, 0x309

    move/from16 v0, p3

    if-gt v0, v12, :cond_2f

    rem-int/lit8 v12, p3, 0xa

    and-int/lit8 v12, v12, 0x2

    const/4 v13, 0x2

    if-ne v12, v13, :cond_4b

    :cond_2f
    const-string v12, "EnterpriseDeviceManagerService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Invalid Permission - %d"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v12, 0x0

    goto :goto_1f

    :cond_4b
    :try_start_4b
    monitor-enter p0
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_4c} :catch_b6
    .catch Ljava/lang/InterruptedException; {:try_start_4b .. :try_end_4c} :catch_bf
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_4c} :catch_c8

    :try_start_4c
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "setprop ctl.start createsystemfile:0,"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const-string v12, " "

    invoke-virtual {v2, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    array-length v8, v1

    const/4 v7, 0x0

    :goto_87
    if-ge v7, v8, :cond_91

    aget-object v3, v1, v7

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_87

    :cond_91
    new-instance v12, Ljava/lang/ProcessBuilder;

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/String;

    invoke-direct {v12, v13}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    invoke-virtual {v12, v5}, Ljava/lang/ProcessBuilder;->command(Ljava/util/List;)Ljava/lang/ProcessBuilder;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Process;->waitFor()I

    const-wide/16 v12, 0x3e8

    invoke-virtual {p0, v12, v13}, Ljava/lang/Object;->wait(J)V

    const/4 v11, 0x1

    monitor-exit p0

    :goto_b0
    move v12, v11

    goto/16 :goto_1f

    :catchall_b3
    move-exception v12

    monitor-exit p0
    :try_end_b5
    .catchall {:try_start_4c .. :try_end_b5} :catchall_b3

    :try_start_b5
    throw v12
    :try_end_b6
    .catch Ljava/io/IOException; {:try_start_b5 .. :try_end_b6} :catch_b6
    .catch Ljava/lang/InterruptedException; {:try_start_b5 .. :try_end_b6} :catch_bf
    .catch Ljava/lang/Exception; {:try_start_b5 .. :try_end_b6} :catch_c8

    :catch_b6
    move-exception v6

    const-string v12, "EnterpriseDeviceManagerService"

    const-string v13, "IOException createsystemfile command failed "

    invoke-static {v12, v13, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b0

    :catch_bf
    move-exception v6

    const-string v12, "EnterpriseDeviceManagerService"

    const-string v13, "InterruptedException createsystemfile command failed "

    invoke-static {v12, v13, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b0

    :catch_c8
    move-exception v6

    const-string v12, "EnterpriseDeviceManagerService"

    const-string v13, "Failed at createSmardCardDirectory API "

    invoke-static {v12, v13, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b0
.end method

.method public enforceActiveAdminPermission(Ljava/lang/String;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    iget-object v6, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0x3e8

    if-eq v5, v6, :cond_1d

    if-eqz v1, :cond_1e

    const-string v6, "android.uid.system:1000"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1e

    :cond_1d
    :goto_1d
    return-void

    :cond_1e
    iget-object v6, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminMap:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    if-nez v0, :cond_45

    new-instance v3, Ljava/lang/SecurityException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No active admin owned by uid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_45
    const/4 v4, 0x0

    if-eqz p1, :cond_52

    :try_start_48
    iget-object v6, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6, p1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_52

    or-int/lit8 v4, v4, 0x1

    :cond_52
    const-string v6, "EnterpriseDeviceManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "is permission granted: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_6a} :catch_85

    :goto_6a
    if-nez v4, :cond_8e

    new-instance v6, Ljava/lang/SecurityException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Admin  does not have "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    :catch_85
    move-exception v2

    const-string v6, "EnterpriseDeviceManagerService"

    const-string v7, "could not check calling permission"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6a

    :cond_8e
    const-string v6, "EnterpriseDeviceManagerService"

    const-string v7, "enforceActiveAdminDualPermission >>>"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1d
.end method

.method public getActiveAdminComponent()Landroid/content/ComponentName;
    .registers 4

    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminMap:Ljava/util/HashMap;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    :goto_16
    return-object v1

    :cond_17
    const/4 v1, 0x0

    goto :goto_16
.end method

.method public getActiveAdmins()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_c

    const/4 v2, 0x0

    monitor-exit p0

    :goto_b
    return-object v2

    :cond_c
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_12
    if-ge v1, v0, :cond_26

    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    invoke-virtual {v3}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_26
    monitor-exit p0

    goto :goto_b

    :catchall_28
    move-exception v3

    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_28

    throw v3
.end method

.method public getActiveSamsungAuthorizedAdmin(I)Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    .registers 5

    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->isAuthorized()Z

    move-result v1

    if-eqz v1, :cond_15

    :goto_14
    return-object v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public getAdminRemovable(Ljava/lang/String;)Z
    .registers 7

    const/4 v0, -0x1

    if-nez p1, :cond_e

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    :goto_7
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v3, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->canRemoveAdmin(I)Z

    move-result v2

    :goto_d
    return v2

    :cond_e
    :try_start_e
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v0, v3, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_1c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_e .. :try_end_1c} :catch_1d

    goto :goto_7

    :catch_1d
    move-exception v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/4 v2, 0x0

    goto :goto_d
.end method

.method public getRemoveWarning(Landroid/content/ComponentName;Landroid/os/RemoteCallback;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mDPMS:Landroid/app/admin/IDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-interface {v0, p1, p2, v1}, Landroid/app/admin/IDevicePolicyManager;->getRemoveWarning(Landroid/content/ComponentName;Landroid/os/RemoteCallback;I)V

    return-void
.end method

.method public hasAnyActiveAdmin()Z
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminMap:Ljava/util/HashMap;

    if-nez v1, :cond_6

    :cond_5
    :goto_5
    return v0

    :cond_6
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method

.method public hasGrantedPolicy(Landroid/content/ComponentName;I)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/16 v1, 0x1b

    if-ge p2, v1, :cond_f

    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mDPMS:Landroid/app/admin/IDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Landroid/app/admin/IDevicePolicyManager;->hasGrantedPolicy(Landroid/content/ComponentName;II)Z

    move-result v1

    :goto_e
    return v1

    :cond_f
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getActiveAdminLocked(Landroid/content/ComponentName;)Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    move-result-object v0

    if-nez v0, :cond_2e

    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No active admin "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2e
    invoke-virtual {v0, p2}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->usesPolicy(I)Z

    move-result v1

    goto :goto_e
.end method

.method public isAdminActive(Landroid/content/ComponentName;)Z
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getActiveAdminLocked(Landroid/content/ComponentName;)Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_8
    monitor-exit p0

    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_8

    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw v0
.end method

.method public isAdminRemovable(Landroid/content/ComponentName;)Z
    .registers 8

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    if-eqz v3, :cond_8

    const/4 v1, 0x1

    :goto_7
    return v1

    :cond_8
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->findAdmin(Landroid/content/ComponentName;)Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    move-result-object v0

    if-nez v0, :cond_27

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad admin: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_27
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v3, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->canRemoveAdmin(I)Z

    move-result v1

    const-string v3, "EnterpriseDeviceManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isAdminRemovable : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7
.end method

.method public onContainerCreation(II)V
    .registers 11

    const-string v5, "EnterpriseDeviceManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EnterpriseDeviceManagerService.onContainerCreation("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_32
    :goto_32
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_56

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v5, v0, Lcom/android/server/enterprise/EnterpriseContainerSubscriber;

    if-eqz v5, :cond_32

    move-object v4, v0

    check-cast v4, Lcom/android/server/enterprise/EnterpriseContainerSubscriber;

    :try_start_49
    invoke-interface {v4, p1, p2}, Lcom/android/server/enterprise/EnterpriseContainerSubscriber;->onContainerCreation(II)V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_4c} :catch_4d

    goto :goto_32

    :catch_4d
    move-exception v1

    const-string v5, "EnterpriseDeviceManagerService"

    const-string v6, "Handled Exception in onContainerCreation"

    invoke-static {v5, v6, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_32

    :cond_56
    return-void
.end method

.method public onContainerRemoved(II)V
    .registers 11

    const-string v5, "EnterpriseDeviceManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EnterpriseDeviceManagerService.onContainerRemoved("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_32
    :goto_32
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_56

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v5, v0, Lcom/android/server/enterprise/EnterpriseContainerSubscriber;

    if-eqz v5, :cond_32

    move-object v4, v0

    check-cast v4, Lcom/android/server/enterprise/EnterpriseContainerSubscriber;

    :try_start_49
    invoke-interface {v4, p1, p2}, Lcom/android/server/enterprise/EnterpriseContainerSubscriber;->onContainerRemoved(II)V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_4c} :catch_4d

    goto :goto_32

    :catch_4d
    move-exception v1

    const-string v5, "EnterpriseDeviceManagerService"

    const-string v6, "Handled Exception in onContainerRemoved"

    invoke-static {v5, v6, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_32

    :cond_56
    return-void
.end method

.method public onPreContainerRemoval(II)V
    .registers 11

    const-string v5, "EnterpriseDeviceManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EnterpriseDeviceManagerService.onPreContainerRemoval("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_32
    :goto_32
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_56

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v5, v0, Lcom/android/server/enterprise/EnterpriseContainerSubscriber;

    if-eqz v5, :cond_32

    move-object v4, v0

    check-cast v4, Lcom/android/server/enterprise/EnterpriseContainerSubscriber;

    :try_start_49
    invoke-interface {v4, p1, p2}, Lcom/android/server/enterprise/EnterpriseContainerSubscriber;->onPreContainerRemoval(II)V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_4c} :catch_4d

    goto :goto_32

    :catch_4d
    move-exception v1

    const-string v5, "EnterpriseDeviceManagerService"

    const-string v6, "Handled Exception in onPreContainerRemoval"

    invoke-static {v5, v6, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_32

    :cond_56
    return-void
.end method

.method public packageHasActiveAdmins(Ljava/lang/String;)Z
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_26

    iget-object v2, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    invoke-virtual {v2}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    const/4 v2, 0x1

    monitor-exit p0

    :goto_22
    return v2

    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_26
    const/4 v2, 0x0

    monitor-exit p0

    goto :goto_22

    :catchall_29
    move-exception v2

    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_29

    throw v2
.end method

.method public removeActiveAdmin(Landroid/content/ComponentName;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v1, "EnterpriseDeviceManagerService"

    const-string v2, "removeActiveAdmin"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_7
    iget-object v1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mDPMS:Landroid/app/admin/IDevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-interface {v1, p1, v2}, Landroid/app/admin/IDevicePolicyManager;->removeActiveAdmin(Landroid/content/ComponentName;I)V
    :try_end_10
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_10} :catch_11

    :goto_10
    return-void

    :catch_11
    move-exception v0

    const-string v1, "EnterpriseDeviceManagerService"

    const-string v2, "could not remove activie admin , permisson not granted"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10
.end method

.method public removeActiveAdminFromDpm(Landroid/content/ComponentName;)V
    .registers 4

    const-string v0, "EnterpriseDeviceManagerService"

    const-string v1, "removeActiveAdminFromDpm"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mInternalHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public removeSmardCardDirectory(Ljava/lang/String;)Z
    .registers 16

    const/4 v11, 0x0

    const/4 v10, 0x0

    :try_start_2
    iget-object v12, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPMS:Landroid/content/pm/IPackageManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v13

    invoke-interface {v12, v13}, Landroid/content/pm/IPackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_16

    const-string v12, "com.sec.smartcard.pinservice"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_20

    :cond_16
    new-instance v12, Ljava/lang/SecurityException;

    const-string v13, "Not allowed only SC purpose"

    invoke-direct {v12, v13}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_1e} :catch_1e

    :catch_1e
    move-exception v5

    :goto_1f
    return v11

    :cond_20
    :try_start_20
    monitor-enter p0
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_21} :catch_70
    .catch Ljava/lang/InterruptedException; {:try_start_20 .. :try_end_21} :catch_79
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_21} :catch_82

    :try_start_21
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "setprop ctl.start createsystemfile:1,"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const-string v11, " "

    invoke-virtual {v1, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    array-length v7, v0

    const/4 v6, 0x0

    :goto_42
    if-ge v6, v7, :cond_4c

    aget-object v2, v0, v6

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_42

    :cond_4c
    new-instance v11, Ljava/lang/ProcessBuilder;

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/String;

    invoke-direct {v11, v12}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    invoke-virtual {v11, v4}, Ljava/lang/ProcessBuilder;->command(Ljava/util/List;)Ljava/lang/ProcessBuilder;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Process;->waitFor()I

    const-wide/16 v11, 0x3e8

    invoke-virtual {p0, v11, v12}, Ljava/lang/Object;->wait(J)V

    const/4 v10, 0x1

    monitor-exit p0

    :goto_6b
    move v11, v10

    goto :goto_1f

    :catchall_6d
    move-exception v11

    monitor-exit p0
    :try_end_6f
    .catchall {:try_start_21 .. :try_end_6f} :catchall_6d

    :try_start_6f
    throw v11
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_70} :catch_70
    .catch Ljava/lang/InterruptedException; {:try_start_6f .. :try_end_70} :catch_79
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_70} :catch_82

    :catch_70
    move-exception v5

    const-string v11, "EnterpriseDeviceManagerService"

    const-string v12, "IOException createsystemfile command failed "

    invoke-static {v11, v12, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6b

    :catch_79
    move-exception v5

    const-string v11, "EnterpriseDeviceManagerService"

    const-string v12, "InterruptedException createsystemfile command failed "

    invoke-static {v11, v12, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6b

    :catch_82
    move-exception v5

    const-string v11, "EnterpriseDeviceManagerService"

    const-string v12, "Failed at removeSmardCardDirectory API "

    invoke-static {v11, v12, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6b
.end method

.method public declared-synchronized selfUpdateAdmin(Ljava/lang/String;)I
    .registers 16

    const/4 v2, 0x0

    const/4 v9, -0x3

    const/4 v10, -0x1

    monitor-enter p0

    :try_start_4
    const-string v11, "EnterpriseDeviceManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "apkFilePath : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getActiveAdminComponent()Landroid/content/ComponentName;
    :try_end_1f
    .catchall {:try_start_4 .. :try_end_1f} :catchall_15d

    move-result-object v0

    if-nez v0, :cond_25

    const/4 v9, -0x2

    :goto_23
    monitor-exit p0

    return v9

    :cond_25
    if-nez p1, :cond_37

    :cond_27
    :goto_27
    if-eqz v2, :cond_35

    :try_start_29
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    const-string v12, ".apk"

    invoke-virtual {v11, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    :try_end_32
    .catchall {:try_start_29 .. :try_end_32} :catchall_160
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_32} :catch_14e

    move-result v11

    if-nez v11, :cond_43

    :cond_35
    move-object p1, v2

    goto :goto_23

    :cond_37
    :try_start_37
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I
    :try_end_3e
    .catchall {:try_start_37 .. :try_end_3e} :catchall_15d

    move-result v11

    if-lez v11, :cond_27

    move-object v2, p1

    goto :goto_27

    :cond_43
    :try_start_43
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v11

    if-eqz v11, :cond_54

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v11

    if-nez v11, :cond_6e

    :cond_54
    const-string v11, "EnterpriseDeviceManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Cannot read or is not a file : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object p1, v2

    goto :goto_23

    :cond_6e
    sget-object v11, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v11

    invoke-static {v11}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getPackageInfo(Landroid/net/Uri;)Landroid/content/pm/PackageParser$Package;

    move-result-object v7

    if-nez v7, :cond_7c

    move-object p1, v2

    goto :goto_23

    :cond_7c
    iget-object v9, v7, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8b

    const/4 v9, -0x4

    move-object p1, v2

    goto :goto_23

    :cond_8b
    iget-object v9, v7, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    invoke-direct {p0, v9}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->compareSystemSignature([Landroid/content/pm/Signature;)Z

    move-result v9

    if-nez v9, :cond_a7

    iget-object v9, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2, v9}, Lcom/android/server/enterprise/PayloadVerifier;->verify(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_a7

    iget-object v9, v7, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->checkAdminExistsInELMDB(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_a7

    const/4 v9, -0x5

    move-object p1, v2

    goto/16 :goto_23

    :cond_a7
    const-string v9, "self_update_admin_component"

    const-string v11, "/data/system/selfUpdateAdmin.conf"

    invoke-static {v9, v11}, Lcom/android/server/enterprise/utils/Utils;->readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x0

    if-nez v3, :cond_10e

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v8

    :cond_b6
    :goto_b6
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "/data/app/selfUpdateApks/"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ".apk"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v4, :cond_13c

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_fa

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    const/16 v11, 0x1ed

    const/4 v12, -0x1

    const/4 v13, -0x1

    invoke-static {v9, v11, v12, v13}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    :cond_fa
    const-string v9, "self_update_admin_component"

    const-string v11, "/data/system/selfUpdateAdmin.conf"

    invoke-static {v9, v8, v11}, Lcom/android/server/enterprise/utils/Utils;->writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_10a

    invoke-static {v1, v4}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v9

    if-nez v9, :cond_140

    :cond_10a
    move-object p1, v2

    move v9, v10

    goto/16 :goto_23

    :cond_10e
    const-string v9, "EnterpriseDeviceManagerService"

    const-string v11, "Upgrade Admin Pending"

    invoke-static {v9, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_b6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ";"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_b6

    :cond_13c
    move-object p1, v2

    move v9, v10

    goto/16 :goto_23

    :cond_140
    const/16 v9, 0x1a4

    const/4 v11, -0x1

    const/4 v12, -0x1

    invoke-static {v5, v9, v11, v12}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->runAdminUpdate()V
    :try_end_14a
    .catchall {:try_start_43 .. :try_end_14a} :catchall_160
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_14a} :catch_14e

    const/4 v9, 0x0

    move-object p1, v2

    goto/16 :goto_23

    :catch_14e
    move-exception v6

    :try_start_14f
    const-string v9, "EnterpriseDeviceManagerService"

    const-string v11, "Upgrade Admin Ex: "

    invoke-static {v9, v11, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_159
    .catchall {:try_start_14f .. :try_end_159} :catchall_160

    move-object p1, v2

    move v9, v10

    goto/16 :goto_23

    :catchall_15d
    move-exception v9

    :goto_15e
    monitor-exit p0

    throw v9

    :catchall_160
    move-exception v9

    move-object p1, v2

    goto :goto_15e
.end method

.method public setActiveAdmin(Landroid/content/ComponentName;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BIND_DEVICE_ADMIN"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->activateAdmin(Landroid/content/ComponentName;Z)V

    return-void
.end method

.method public setActiveAdminSilent(Landroid/content/ComponentName;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.enterprise.mdm.permission.MDM_SILENT_ACTIVATION"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->activateAdmin(Landroid/content/ComponentName;Z)V

    return-void
.end method

.method public setAdminRemovable(ZLjava/lang/String;)Z
    .registers 9

    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.sec.ENTERPRISE_DEVICE_ADMIN"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    if-nez p2, :cond_23

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    :goto_f
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_3c

    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Admin is not active"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_23
    :try_start_23
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v3, p2, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v0, v3, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_31
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_23 .. :try_end_31} :catch_32

    goto :goto_f

    :catch_32
    move-exception v1

    const-string v3, "EnterpriseDeviceManagerService"

    const-string v4, "Can\'t found packageName"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_3b
    return v2

    :cond_3c
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "ADMIN_INFO"

    const-string v5, "canRemove"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    goto :goto_3b
.end method

.method public setB2BMode(Z)I
    .registers 3

    const-string v0, "unconstrained_apps"

    invoke-static {v0, p1}, Landroid/os/SELinux;->setBooleanValue(Ljava/lang/String;Z)Z

    const-string v0, "unconstrained_apps"

    invoke-static {v0}, Landroid/os/SELinux;->getBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-ne v0, p1, :cond_f

    const/4 v0, 0x0

    :goto_e
    return v0

    :cond_f
    const/4 v0, -0x1

    goto :goto_e
.end method

.method public systemReady()V
    .registers 8

    const-string v4, "EnterpriseDeviceManagerService"

    const-string v5, "systemReady"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/enterprise/utils/EDMNativeHelper;->initService(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/enterprise/UiReceiver;->initUiReceiver(Landroid/content/Context;)V

    new-instance v4, Lcom/android/server/enterprise/email/AccountsReceiver;

    iget-object v5, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/server/enterprise/email/AccountsReceiver;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/os/HandlerThread;

    const-string v4, "InternalHandlerThread"

    const/16 v5, 0xa

    invoke-direct {v3, v4, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    new-instance v4, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$InternalHandler;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$InternalHandler;-><init>(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;Landroid/os/Looper;)V

    sput-object v4, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mInternalHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->migrateFromV1()V

    invoke-direct {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->loadActiveAdmins()V

    iget-object v4, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_59

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->verifyEnterprisePayload(I)Z

    goto :goto_3f

    :cond_59
    sget-object v4, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPolicyServices:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_63
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_79

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/enterprise/EnterpriseServiceCallback;

    invoke-interface {v4}, Lcom/android/server/enterprise/EnterpriseServiceCallback;->systemReady()V

    goto :goto_63

    :cond_79
    const-string v4, "sec_analytics"

    new-instance v5, Lcom/android/server/analytics/data/collection/DataCollectionService;

    iget-object v6, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/android/server/analytics/data/collection/DataCollectionService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public final updateAdminPermissions()V
    .registers 6

    const-string v3, "EnterpriseDeviceManagerService"

    const-string v4, "updateAdminPermissions"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_7
    iget-object v3, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_30

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->verifyEnterprisePayload(I)Z
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_2a} :catch_2b

    goto :goto_11

    :catch_2b
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2f
    return-void

    :cond_30
    :try_start_30
    invoke-static {}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->updateAdminPermissions()V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_33} :catch_2b

    goto :goto_2f
.end method
