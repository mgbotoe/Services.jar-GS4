.class public Lcom/android/server/DevicePolicyManagerService;
.super Landroid/app/admin/IDevicePolicyManager$Stub;
.source "DevicePolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/DevicePolicyManagerService$DeviceOwner;,
        Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;,
        Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    }
.end annotation


# static fields
.field protected static final ACTION_EXPIRED_PASSWORD_NOTIFICATION:Ljava/lang/String; = "com.android.server.ACTION_EXPIRED_PASSWORD_NOTIFICATION"

.field private static final DBG:Z = false

.field private static final DEVICE_POLICIES_BACKUP_XML:Ljava/lang/String; = "device_policies_backup.xml"

.field private static final DEVICE_POLICIES_XML:Ljava/lang/String; = "device_policies.xml"

.field private static final EXPIRATION_GRACE_PERIOD_MS:J = 0x19bfcc00L

.field private static final EXTERNAL_STORAGE_PATH:Ljava/lang/String; = "/storage/extSdCard"

.field private static final MS_PER_DAY:J = 0x5265c00L

.field private static final REQUEST_EXPIRE_PASSWORD:I = 0x15c3

.field public static final SYSTEM_PROP_DISABLE_CAMERA:Ljava/lang/String; = "sys.secpolicy.camera.disabled"

.field private static final TAG:Ljava/lang/String; = "DevicePolicyManagerService"

.field private static final is3LMAllowed:Z

.field private static mHM:Landroid/content/IHarmonyEAS;

.field private static mStorageManager:Landroid/os/storage/StorageManager;


# instance fields
.field private allowLock:Ljava/lang/Object;

.field private mCheckLoadSettingsLocked:Z

.field final mContext:Landroid/content/Context;

.field private mDeviceOwner:Lcom/android/server/DevicePolicyManagerService$DeviceOwner;

.field mHandler:Landroid/os/Handler;

.field mIPowerManager:Landroid/os/IPowerManager;

.field mIWindowManager:Landroid/view/IWindowManager;

.field mNotifyChanges:Z

.field mReceiver:Landroid/content/BroadcastReceiver;

.field final mUserData:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;",
            ">;"
        }
    .end annotation
.end field

.field final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/DevicePolicyManagerService;->mStorageManager:Landroid/os/storage/StorageManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 8

    const/4 v4, 0x0

    const/4 v2, 0x1

    invoke-direct {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;-><init>()V

    iput-boolean v2, p0, Lcom/android/server/DevicePolicyManagerService;->mNotifyChanges:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/DevicePolicyManagerService;->mCheckLoadSettingsLocked:Z

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/DevicePolicyManagerService;->mUserData:Landroid/util/SparseArray;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/DevicePolicyManagerService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/DevicePolicyManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/DevicePolicyManagerService$1;-><init>(Lcom/android/server/DevicePolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/DevicePolicyManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/DevicePolicyManagerService;->allowLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const-string v1, "DPM"

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DevicePolicyManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.android.server.ACTION_EXPIRED_PASSWORD_NOTIFICATION"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.USER_STARTED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/DevicePolicyManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v5, p0, Lcom/android/server/DevicePolicyManagerService;->mHandler:Landroid/os/Handler;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "package"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/DevicePolicyManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v5, p0, Lcom/android/server/DevicePolicyManagerService;->mHandler:Landroid/os/Handler;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/DevicePolicyManagerService;Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->handlePasswordExpirationNotification(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/DevicePolicyManagerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->handlePackagesChanged(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/DevicePolicyManagerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->resetAppPolicies(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/DevicePolicyManagerService;Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->resetGlobalProxyLocked(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/DevicePolicyManagerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V

    return-void
.end method

.method private enableIfNecessary(Ljava/lang/String;I)V
    .registers 10

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const v1, 0x8000

    invoke-interface {v0, p1, v1, p2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget v1, v6, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_19

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v5, "DevicePolicyManager"

    move-object v1, p1

    move v4, p2

    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_19} :catch_1a

    :cond_19
    :goto_19
    return-void

    :catch_1a
    move-exception v1

    goto :goto_19
.end method

.method private enforceCrossUserPermission(I)V
    .registers 6

    if-gez p1, :cond_1b

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid userId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1b
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-ne p1, v1, :cond_26

    :cond_25
    :goto_25
    return-void

    :cond_26
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_25

    if-eqz v0, :cond_25

    iget-object v1, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const-string v3, "Must be system or have INTERACT_ACROSS_USERS_FULL permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_25
.end method

.method private formatExternSdCard()V
    .registers 9

    const-string v5, "DevicePolicyManagerService"

    const-string v6, "formatExternSdCard() called"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Lcom/android/server/DevicePolicyManagerService;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v5}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v0

    array-length v3, v0

    const/4 v1, 0x0

    :goto_f
    if-ge v1, v3, :cond_60

    aget-object v4, v0, v1

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v5

    if-nez v5, :cond_5d

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v5

    if-eqz v5, :cond_5d

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "/storage/extSdCard"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5d

    const-string v5, "DevicePolicyManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Sending FORMAT_ONLY for  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.android.internal.os.storage.FORMAT_ONLY"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/android/internal/os/storage/ExternalStorageFormatter;->COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v5, "storage_volume"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_5d
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_60
    return-void
.end method

.method private getEncryptionStatus()I
    .registers 4

    const-string v1, "ro.crypto.state"

    const-string v2, "unencrypted"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "encrypted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, 0x3

    :goto_11
    return v1

    :cond_12
    const-string v1, "unsupported"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    const/4 v1, 0x0

    goto :goto_11

    :cond_1c
    const/4 v1, 0x1

    goto :goto_11
.end method

.method private getHarmonyEAS()Landroid/content/IHarmonyEAS;
    .registers 3

    sget-object v1, Lcom/android/server/DevicePolicyManagerService;->mHM:Landroid/content/IHarmonyEAS;

    if-nez v1, :cond_10

    const-string v1, "harmony_eas_service"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/IHarmonyEAS$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IHarmonyEAS;

    move-result-object v1

    sput-object v1, Lcom/android/server/DevicePolicyManagerService;->mHM:Landroid/content/IHarmonyEAS;

    :cond_10
    sget-object v1, Lcom/android/server/DevicePolicyManagerService;->mHM:Landroid/content/IHarmonyEAS;

    return-object v1
.end method

.method private getIPowerManager()Landroid/os/IPowerManager;
    .registers 3

    iget-object v1, p0, Lcom/android/server/DevicePolicyManagerService;->mIPowerManager:Landroid/os/IPowerManager;

    if-nez v1, :cond_10

    const-string v1, "power"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/DevicePolicyManagerService;->mIPowerManager:Landroid/os/IPowerManager;

    :cond_10
    iget-object v1, p0, Lcom/android/server/DevicePolicyManagerService;->mIPowerManager:Landroid/os/IPowerManager;

    return-object v1
.end method

.method private getPasswordExpirationLocked(Landroid/content/ComponentName;I)J
    .registers 13

    const-wide/16 v6, 0x0

    if-eqz p1, :cond_d

    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    if-eqz v1, :cond_c

    iget-wide v6, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    :cond_c
    :goto_c
    return-wide v6

    :cond_d
    const-wide/16 v4, 0x0

    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    iget-object v8, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_1a
    if-ge v2, v0, :cond_39

    iget-object v8, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    cmp-long v8, v4, v6

    if-eqz v8, :cond_34

    iget-wide v8, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    cmp-long v8, v8, v6

    if-eqz v8, :cond_36

    iget-wide v8, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    cmp-long v8, v4, v8

    if-lez v8, :cond_36

    :cond_34
    iget-wide v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    :cond_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    :cond_39
    move-wide v6, v4

    goto :goto_c
.end method

.method private getWindowManager()Landroid/view/IWindowManager;
    .registers 3

    iget-object v1, p0, Lcom/android/server/DevicePolicyManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    if-nez v1, :cond_10

    const-string v1, "window"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/DevicePolicyManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    :cond_10
    iget-object v1, p0, Lcom/android/server/DevicePolicyManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    return-object v1
.end method

.method private handlePackagesChanged(I)V
    .registers 9

    const/4 v4, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    iget-object v5, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    :goto_11
    if-ltz v1, :cond_51

    iget-object v5, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    :try_start_1b
    iget-object v5, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v5}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v2, v5, v6, p1}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v5

    if-eqz v5, :cond_35

    iget-object v5, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v5}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v2, v5, v6, p1}, Landroid/content/pm/IPackageManager;->getReceiverInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v5

    if-nez v5, :cond_4e

    :cond_35
    const/4 v4, 0x1

    iget-object v5, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v5, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    iget-object v6, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v6}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v3}, Lcom/android/server/DevicePolicyManagerService;->validatePasswordOwnerLocked(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V

    iget v5, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mUserHandle:I

    invoke-direct {p0, v5}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V
    :try_end_4e
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_4e} :catch_5f

    :cond_4e
    :goto_4e
    add-int/lit8 v1, v1, -0x1

    goto :goto_11

    :cond_51
    if-eqz v4, :cond_5e

    invoke-virtual {p0, v3}, Lcom/android/server/DevicePolicyManagerService;->validatePasswordOwnerLocked(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V

    invoke-virtual {p0, v3}, Lcom/android/server/DevicePolicyManagerService;->syncDeviceCapabilitiesLocked(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V

    iget v5, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mUserHandle:I

    invoke-direct {p0, v5}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V

    :cond_5e
    return-void

    :catch_5f
    move-exception v5

    goto :goto_4e
.end method

.method private handlePasswordExpirationNotification(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V
    .registers 14

    const-wide/16 v10, 0x0

    monitor-enter p0

    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, p1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_11

    monitor-exit p0

    :goto_10
    return-void

    :cond_11
    const/4 v2, 0x0

    :goto_12
    if-ge v2, v0, :cond_61

    iget-object v6, p1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    iget-object v6, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    const/4 v7, 0x6

    invoke-virtual {v6, v7}, Landroid/app/admin/DeviceAdminInfo;->usesPolicy(I)Z

    move-result v6

    if-eqz v6, :cond_5e

    iget-wide v6, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationTimeout:J

    cmp-long v6, v6, v10

    if-lez v6, :cond_5e

    iget-wide v6, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    cmp-long v6, v6, v10

    if-lez v6, :cond_5e

    iget-wide v6, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    const-wide/32 v8, 0x19bfcc00

    sub-long/2addr v6, v8

    cmp-long v6, v4, v6

    if-ltz v6, :cond_5e

    const-string v6, "android.app.action.ACTION_PASSWORD_EXPIRING"

    invoke-virtual {p0, v1, v6}, Lcom/android/server/DevicePolicyManagerService;->sendAdminCommandLocked(Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;Ljava/lang/String;)V

    new-instance v3, Landroid/content/Intent;

    const-string v6, "com.android.server.MDM_PASSWORD_EXPIRING_NOTIFICATION"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "pkgName"

    iget-object v7, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v7}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "expiration"

    iget-wide v7, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    invoke-virtual {v3, v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_5e
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_61
    iget-object v6, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v6, p1}, Lcom/android/server/DevicePolicyManagerService;->setExpirationAlarmCheckLocked(Landroid/content/Context;Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V

    monitor-exit p0

    goto :goto_10

    :catchall_68
    move-exception v6

    monitor-exit p0
    :try_end_6a
    .catchall {:try_start_3 .. :try_end_6a} :catchall_68

    throw v6
.end method

.method private ifExternalSdPresent()Z
    .registers 5

    const-string v1, "DevicePolicyManagerService"

    const-string v2, "ifExternalSdPresent() called"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/server/DevicePolicyManagerService;->mStorageManager:Landroid/os/storage/StorageManager;

    const-string v2, "/storage/extSdCard"

    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DevicePolicyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "External SD card status is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_37

    const-string v1, "mounted_ro"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    :cond_37
    const/4 v1, 0x1

    :goto_38
    return v1

    :cond_39
    const/4 v1, 0x0

    goto :goto_38
.end method

.method private initialiseStorageManager()V
    .registers 3

    sget-object v0, Lcom/android/server/DevicePolicyManagerService;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "storage"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    sput-object v0, Lcom/android/server/DevicePolicyManagerService;->mStorageManager:Landroid/os/storage/StorageManager;

    :cond_10
    return-void
.end method

.method private isDeviceProvisioned()Z
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "device_provisioned"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_10

    const/4 v0, 0x1

    :cond_10
    return v0
.end method

.method private isEncryptionSupported()Z
    .registers 2

    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->getEncryptionStatus()I

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private isExtStorageEncrypted()Z
    .registers 3

    const-string v1, "vold.decrypt"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    const/4 v1, 0x1

    :goto_f
    return v1

    :cond_10
    const/4 v1, 0x0

    goto :goto_f
.end method

.method private loadSettingsLocked(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;I)Z
    .registers 25

    const/4 v13, 0x1

    invoke-static/range {p2 .. p2}, Lcom/android/server/DevicePolicyManagerService;->makeJournaledFile(I)Lcom/android/internal/util/JournaledFile;

    move-result-object v9

    const/4 v14, 0x0

    invoke-virtual {v9}, Lcom/android/internal/util/JournaledFile;->chooseForRead()Ljava/io/File;

    move-result-object v7

    :try_start_a
    new-instance v15, Ljava/io/FileInputStream;

    invoke-direct {v15, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_61e
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_f} :catch_6bc
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_f} :catch_6b9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_f} :catch_6b6
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_f} :catch_6b3
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_f} :catch_6b0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_a .. :try_end_f} :catch_6ad

    :try_start_f
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v12

    const/16 v19, 0x0

    move-object/from16 v0, v19

    invoke-interface {v12, v15, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    :cond_1a
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v17

    const/16 v19, 0x1

    move/from16 v0, v17

    move/from16 v1, v19

    if-eq v0, v1, :cond_2e

    const/16 v19, 0x2

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_1a

    :cond_2e
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v16

    const-string v19, "policies"

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3b
    .catchall {:try_start_f .. :try_end_3b} :catchall_6a9
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_3b} :catch_60
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_3b} :catch_190
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_f .. :try_end_3b} :catch_233
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_3b} :catch_2d6
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_3b} :catch_472
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_f .. :try_end_3b} :catch_501

    move-result v19

    if-nez v19, :cond_ce

    if-eqz v15, :cond_43

    :try_start_40
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_6a9
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_43} :catch_618
    .catch Ljava/lang/NullPointerException; {:try_start_40 .. :try_end_43} :catch_60
    .catch Ljava/lang/NumberFormatException; {:try_start_40 .. :try_end_43} :catch_190
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_40 .. :try_end_43} :catch_233
    .catch Ljava/io/FileNotFoundException; {:try_start_40 .. :try_end_43} :catch_2d6
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_40 .. :try_end_43} :catch_501

    :cond_43
    :goto_43
    :try_start_43
    new-instance v19, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Settings do not start with policies tag: found "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v19
    :try_end_60
    .catchall {:try_start_43 .. :try_end_60} :catchall_6a9
    .catch Ljava/lang/NullPointerException; {:try_start_43 .. :try_end_60} :catch_60
    .catch Ljava/lang/NumberFormatException; {:try_start_43 .. :try_end_60} :catch_190
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_43 .. :try_end_60} :catch_233
    .catch Ljava/io/FileNotFoundException; {:try_start_43 .. :try_end_60} :catch_2d6
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_60} :catch_472
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_43 .. :try_end_60} :catch_501

    :catch_60
    move-exception v6

    move-object v14, v15

    :goto_62
    const/4 v13, 0x0

    :try_start_63
    const-string v19, "DevicePolicyManagerService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "failed parsing "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_89
    .catchall {:try_start_63 .. :try_end_89} :catchall_61e

    if-nez v13, :cond_570

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/DevicePolicyManagerService;->mCheckLoadSettingsLocked:Z

    move/from16 v19, v0

    if-nez v19, :cond_570

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    add-int/lit8 v8, v19, -0x1

    :goto_9f
    if-ltz v8, :cond_570

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    iget-object v0, v4, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v8, v8, -0x1

    goto :goto_9f

    :cond_ce
    :try_start_ce
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v17

    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v11

    :cond_d6
    :goto_d6
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v17

    const/16 v19, 0x1

    move/from16 v0, v17

    move/from16 v1, v19

    if-eq v0, v1, :cond_664

    const/16 v19, 0x3

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_f2

    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v19

    move/from16 v0, v19

    if-le v0, v11, :cond_664

    :cond_f2
    const/16 v19, 0x3

    move/from16 v0, v17

    move/from16 v1, v19

    if-eq v0, v1, :cond_d6

    const/16 v19, 0x4

    move/from16 v0, v17

    move/from16 v1, v19

    if-eq v0, v1, :cond_d6

    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v16

    const-string v19, "admin"

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1fe

    const/16 v19, 0x0

    const-string v20, "name"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_11d
    .catchall {:try_start_ce .. :try_end_11d} :catchall_6a9
    .catch Ljava/lang/NullPointerException; {:try_start_ce .. :try_end_11d} :catch_60
    .catch Ljava/lang/NumberFormatException; {:try_start_ce .. :try_end_11d} :catch_190
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_ce .. :try_end_11d} :catch_233
    .catch Ljava/io/FileNotFoundException; {:try_start_ce .. :try_end_11d} :catch_2d6
    .catch Ljava/io/IOException; {:try_start_ce .. :try_end_11d} :catch_472
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_ce .. :try_end_11d} :catch_501

    move-result-object v10

    :try_start_11e
    invoke-static {v10}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/DevicePolicyManagerService;->findAdmin(Landroid/content/ComponentName;I)Landroid/app/admin/DeviceAdminInfo;

    move-result-object v5

    if-eqz v5, :cond_d6

    const/4 v3, 0x0

    new-instance v4, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    invoke-direct {v4, v5}, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;-><init>(Landroid/app/admin/DeviceAdminInfo;)V

    invoke-virtual {v4, v12}, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->readFromXml(Lorg/xmlpull/v1/XmlPullParser;)V

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    iget-object v0, v4, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    if-nez v3, :cond_d6

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    iget-object v0, v4, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_16d
    .catchall {:try_start_11e .. :try_end_16d} :catchall_6a9
    .catch Ljava/lang/RuntimeException; {:try_start_11e .. :try_end_16d} :catch_16f
    .catch Ljava/lang/NullPointerException; {:try_start_11e .. :try_end_16d} :catch_60
    .catch Ljava/lang/NumberFormatException; {:try_start_11e .. :try_end_16d} :catch_190
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_11e .. :try_end_16d} :catch_233
    .catch Ljava/io/FileNotFoundException; {:try_start_11e .. :try_end_16d} :catch_2d6
    .catch Ljava/io/IOException; {:try_start_11e .. :try_end_16d} :catch_472
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_11e .. :try_end_16d} :catch_501

    goto/16 :goto_d6

    :catch_16f
    move-exception v6

    :try_start_170
    const-string v19, "DevicePolicyManagerService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Failed loading admin "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_18e
    .catchall {:try_start_170 .. :try_end_18e} :catchall_6a9
    .catch Ljava/lang/NullPointerException; {:try_start_170 .. :try_end_18e} :catch_60
    .catch Ljava/lang/NumberFormatException; {:try_start_170 .. :try_end_18e} :catch_190
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_170 .. :try_end_18e} :catch_233
    .catch Ljava/io/FileNotFoundException; {:try_start_170 .. :try_end_18e} :catch_2d6
    .catch Ljava/io/IOException; {:try_start_170 .. :try_end_18e} :catch_472
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_170 .. :try_end_18e} :catch_501

    goto/16 :goto_d6

    :catch_190
    move-exception v6

    move-object v14, v15

    :goto_192
    const/4 v13, 0x0

    :try_start_193
    const-string v19, "DevicePolicyManagerService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "failed parsing "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b9
    .catchall {:try_start_193 .. :try_end_1b9} :catchall_61e

    if-nez v13, :cond_570

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/DevicePolicyManagerService;->mCheckLoadSettingsLocked:Z

    move/from16 v19, v0

    if-nez v19, :cond_570

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    add-int/lit8 v8, v19, -0x1

    :goto_1cf
    if-ltz v8, :cond_570

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    iget-object v0, v4, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v8, v8, -0x1

    goto :goto_1cf

    :cond_1fe
    :try_start_1fe
    const-string v19, "failed-password-attempts"

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2a1

    const/16 v19, 0x0

    const-string v20, "value"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_22e

    const/16 v19, 0x0

    const-string v20, "value"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mFailedPasswordAttempts:I

    :cond_22e
    invoke-static {v12}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_231
    .catchall {:try_start_1fe .. :try_end_231} :catchall_6a9
    .catch Ljava/lang/NullPointerException; {:try_start_1fe .. :try_end_231} :catch_60
    .catch Ljava/lang/NumberFormatException; {:try_start_1fe .. :try_end_231} :catch_190
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1fe .. :try_end_231} :catch_233
    .catch Ljava/io/FileNotFoundException; {:try_start_1fe .. :try_end_231} :catch_2d6
    .catch Ljava/io/IOException; {:try_start_1fe .. :try_end_231} :catch_472
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1fe .. :try_end_231} :catch_501

    goto/16 :goto_d6

    :catch_233
    move-exception v6

    move-object v14, v15

    :goto_235
    const/4 v13, 0x0

    :try_start_236
    const-string v19, "DevicePolicyManagerService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "failed parsing "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_25c
    .catchall {:try_start_236 .. :try_end_25c} :catchall_61e

    if-nez v13, :cond_570

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/DevicePolicyManagerService;->mCheckLoadSettingsLocked:Z

    move/from16 v19, v0

    if-nez v19, :cond_570

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    add-int/lit8 v8, v19, -0x1

    :goto_272
    if-ltz v8, :cond_570

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    iget-object v0, v4, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v8, v8, -0x1

    goto :goto_272

    :cond_2a1
    :try_start_2a1
    const-string v19, "password-owner"

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_31d

    const/16 v19, 0x0

    const-string v20, "value"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_2d1

    const/16 v19, 0x0

    const-string v20, "value"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    :cond_2d1
    invoke-static {v12}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_2d4
    .catchall {:try_start_2a1 .. :try_end_2d4} :catchall_6a9
    .catch Ljava/lang/NullPointerException; {:try_start_2a1 .. :try_end_2d4} :catch_60
    .catch Ljava/lang/NumberFormatException; {:try_start_2a1 .. :try_end_2d4} :catch_190
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2a1 .. :try_end_2d4} :catch_233
    .catch Ljava/io/FileNotFoundException; {:try_start_2a1 .. :try_end_2d4} :catch_2d6
    .catch Ljava/io/IOException; {:try_start_2a1 .. :try_end_2d4} :catch_472
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2a1 .. :try_end_2d4} :catch_501

    goto/16 :goto_d6

    :catch_2d6
    move-exception v19

    move-object v14, v15

    :goto_2d8
    if-nez v13, :cond_570

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/DevicePolicyManagerService;->mCheckLoadSettingsLocked:Z

    move/from16 v19, v0

    if-nez v19, :cond_570

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    add-int/lit8 v8, v19, -0x1

    :goto_2ee
    if-ltz v8, :cond_570

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    iget-object v0, v4, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v8, v8, -0x1

    goto :goto_2ee

    :cond_31d
    :try_start_31d
    const-string v19, "active-password"

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_4e0

    const/16 v19, 0x0

    const-string v20, "quality"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_34d

    const/16 v19, 0x0

    const-string v20, "quality"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordQuality:I

    :cond_34d
    const/16 v19, 0x0

    const-string v20, "length"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_371

    const/16 v19, 0x0

    const-string v20, "length"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLength:I

    :cond_371
    const/16 v19, 0x0

    const-string v20, "uppercase"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_395

    const/16 v19, 0x0

    const-string v20, "uppercase"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordUpperCase:I

    :cond_395
    const/16 v19, 0x0

    const-string v20, "lowercase"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_3b9

    const/16 v19, 0x0

    const-string v20, "lowercase"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLowerCase:I

    :cond_3b9
    const/16 v19, 0x0

    const-string v20, "letters"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_3dd

    const/16 v19, 0x0

    const-string v20, "letters"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLetters:I

    :cond_3dd
    const/16 v19, 0x0

    const-string v20, "numeric"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_401

    const/16 v19, 0x0

    const-string v20, "numeric"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNumeric:I

    :cond_401
    const/16 v19, 0x0

    const-string v20, "symbols"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_425

    const/16 v19, 0x0

    const-string v20, "symbols"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordSymbols:I

    :cond_425
    const/16 v19, 0x0

    const-string v20, "nonletter"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_449

    const/16 v19, 0x0

    const-string v20, "nonletter"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNonLetter:I

    :cond_449
    const/16 v19, 0x0

    const-string v20, "recoverable"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_46d

    const/16 v19, 0x0

    const-string v20, "recoverable"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordRecoverable:Z

    :cond_46d
    invoke-static {v12}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_470
    .catchall {:try_start_31d .. :try_end_470} :catchall_6a9
    .catch Ljava/lang/NullPointerException; {:try_start_31d .. :try_end_470} :catch_60
    .catch Ljava/lang/NumberFormatException; {:try_start_31d .. :try_end_470} :catch_190
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_31d .. :try_end_470} :catch_233
    .catch Ljava/io/FileNotFoundException; {:try_start_31d .. :try_end_470} :catch_2d6
    .catch Ljava/io/IOException; {:try_start_31d .. :try_end_470} :catch_472
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_31d .. :try_end_470} :catch_501

    goto/16 :goto_d6

    :catch_472
    move-exception v6

    move-object v14, v15

    :goto_474
    const/4 v13, 0x0

    :try_start_475
    const-string v19, "DevicePolicyManagerService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "failed parsing "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_49b
    .catchall {:try_start_475 .. :try_end_49b} :catchall_61e

    if-nez v13, :cond_570

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/DevicePolicyManagerService;->mCheckLoadSettingsLocked:Z

    move/from16 v19, v0

    if-nez v19, :cond_570

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    add-int/lit8 v8, v19, -0x1

    :goto_4b1
    if-ltz v8, :cond_570

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    iget-object v0, v4, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v8, v8, -0x1

    goto :goto_4b1

    :cond_4e0
    :try_start_4e0
    const-string v19, "DevicePolicyManagerService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Unknown tag: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v12}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_4ff
    .catchall {:try_start_4e0 .. :try_end_4ff} :catchall_6a9
    .catch Ljava/lang/NullPointerException; {:try_start_4e0 .. :try_end_4ff} :catch_60
    .catch Ljava/lang/NumberFormatException; {:try_start_4e0 .. :try_end_4ff} :catch_190
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4e0 .. :try_end_4ff} :catch_233
    .catch Ljava/io/FileNotFoundException; {:try_start_4e0 .. :try_end_4ff} :catch_2d6
    .catch Ljava/io/IOException; {:try_start_4e0 .. :try_end_4ff} :catch_472
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4e0 .. :try_end_4ff} :catch_501

    goto/16 :goto_d6

    :catch_501
    move-exception v6

    move-object v14, v15

    :goto_503
    const/4 v13, 0x0

    :try_start_504
    const-string v19, "DevicePolicyManagerService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "failed parsing "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_52a
    .catchall {:try_start_504 .. :try_end_52a} :catchall_61e

    if-nez v13, :cond_570

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/DevicePolicyManagerService;->mCheckLoadSettingsLocked:Z

    move/from16 v19, v0

    if-nez v19, :cond_570

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    add-int/lit8 v8, v19, -0x1

    :goto_540
    if-ltz v8, :cond_570

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    iget-object v0, v4, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v8, v8, -0x1

    goto :goto_540

    :cond_56f
    move-object v14, v15

    :cond_570
    if-eqz v14, :cond_575

    :try_start_572
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V
    :try_end_575
    .catch Ljava/io/IOException; {:try_start_572 .. :try_end_575} :catch_61b

    :cond_575
    :goto_575
    new-instance v18, Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-direct/range {v18 .. v19}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality()I

    move-result v19

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordQuality:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_604

    const-string v19, "DevicePolicyManagerService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Active password quality 0x"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordQuality:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " does not match actual quality 0x"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordQuality:I

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLength:I

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordUpperCase:I

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLowerCase:I

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLetters:I

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNumeric:I

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordSymbols:I

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNonLetter:I

    :cond_604
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/DevicePolicyManagerService;->validatePasswordOwnerLocked(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/DevicePolicyManagerService;->syncDeviceCapabilitiesLocked(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/DevicePolicyManagerService;->updateMaximumTimeToLockLocked(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/DevicePolicyManagerService;->initiateTempList(ILcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V

    return v13

    :cond_617
    throw v19

    :catch_618
    move-exception v19

    goto/16 :goto_43

    :catch_61b
    move-exception v19

    goto/16 :goto_575

    :catchall_61e
    move-exception v19

    :goto_61f
    if-nez v13, :cond_617

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/DevicePolicyManagerService;->mCheckLoadSettingsLocked:Z

    move/from16 v20, v0

    if-nez v20, :cond_617

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    add-int/lit8 v8, v20, -0x1

    :goto_635
    if-ltz v8, :cond_617

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    move-object/from16 v20, v0

    iget-object v0, v4, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v8, v8, -0x1

    goto :goto_635

    :cond_664
    if-nez v13, :cond_56f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/DevicePolicyManagerService;->mCheckLoadSettingsLocked:Z

    move/from16 v19, v0

    if-nez v19, :cond_56f

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    add-int/lit8 v8, v19, -0x1

    :goto_67a
    if-ltz v8, :cond_56f

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    iget-object v0, v4, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v8, v8, -0x1

    goto :goto_67a

    :catchall_6a9
    move-exception v19

    move-object v14, v15

    goto/16 :goto_61f

    :catch_6ad
    move-exception v6

    goto/16 :goto_503

    :catch_6b0
    move-exception v6

    goto/16 :goto_474

    :catch_6b3
    move-exception v19

    goto/16 :goto_2d8

    :catch_6b6
    move-exception v6

    goto/16 :goto_235

    :catch_6b9
    move-exception v6

    goto/16 :goto_192

    :catch_6bc
    move-exception v6

    goto/16 :goto_62
.end method

.method private lockNowUnchecked()V
    .registers 7

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_4
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->getIPowerManager()Landroid/os/IPowerManager;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v5, 0x1

    invoke-interface {v2, v3, v4, v5}, Landroid/os/IPowerManager;->goToSleep(JI)V

    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->getWindowManager()Landroid/view/IWindowManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/view/IWindowManager;->lockNow(Landroid/os/Bundle;)V
    :try_end_18
    .catchall {:try_start_4 .. :try_end_18} :catchall_1c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_18} :catch_21

    :goto_18
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1c
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    :catch_21
    move-exception v2

    goto :goto_18
.end method

.method private static makeJournaledFile(I)Lcom/android/internal/util/JournaledFile;
    .registers 7

    if-nez p0, :cond_27

    const-string v0, "/data/system/device_policies.xml"

    :goto_4
    new-instance v1, Lcom/android/internal/util/JournaledFile;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".tmp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Lcom/android/internal/util/JournaledFile;-><init>(Ljava/io/File;Ljava/io/File;)V

    return-object v1

    :cond_27
    new-instance v1, Ljava/io/File;

    invoke-static {p0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    const-string v3, "device_policies.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method private static moveFile(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 11

    const/4 v3, 0x1

    if-nez p2, :cond_48

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/data/system/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_16
    if-nez p2, :cond_56

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/data/system/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2b
    :try_start_2b
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_47

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_44

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    :cond_44
    invoke-virtual {v4, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_47} :catch_64

    :cond_47
    :goto_47
    return v3

    :cond_48
    new-instance v6, Ljava/io/File;

    invoke-static {p2}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v7

    invoke-direct {v6, v7, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_16

    :cond_56
    new-instance v6, Ljava/io/File;

    invoke-static {p2}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v7

    invoke-direct {v6, v7, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_2b

    :catch_64
    move-exception v2

    const/4 v3, 0x0

    const-string v6, "DevicePolicyManagerService"

    const-string v7, "moveFile() : Cannot move file"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_47
.end method

.method private removePackageFromHarmonyEAS(Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->getHarmonyEAS()Landroid/content/IHarmonyEAS;

    :try_start_3
    sget-object v0, Lcom/android/server/DevicePolicyManagerService;->mHM:Landroid/content/IHarmonyEAS;

    const/4 v1, -0x1

    invoke-interface {v0, p1, v1}, Landroid/content/IHarmonyEAS;->removeInstallationPackage(Ljava/lang/String;I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_9} :catch_a

    :goto_9
    return-void

    :catch_a
    move-exception v0

    goto :goto_9
.end method

.method private resetAppPolicies(I)V
    .registers 3

    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->manageBlockedApplications(I)V

    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->manageAllowThirdPartyApps(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/DevicePolicyManagerService;->handleAllowUnsignedApp(ZI)V

    return-void
.end method

.method private resetGlobalProxyLocked(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V
    .registers 7

    const/4 v4, 0x0

    iget-object v3, p1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v0, :cond_21

    iget-object v3, p1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    iget-boolean v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->specifiesGlobalProxy:Z

    if-eqz v3, :cond_1e

    iget-object v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->globalProxySpec:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->globalProxyExclusionList:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/android/server/DevicePolicyManagerService;->saveGlobalProxyLocked(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1d
    return-void

    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_21
    invoke-direct {p0, v4, v4}, Lcom/android/server/DevicePolicyManagerService;->saveGlobalProxyLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1d
.end method

.method private saveGlobalProxyLocked(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    const/4 v6, 0x1

    const/4 v5, 0x0

    if-nez p2, :cond_6

    const-string p2, ""

    :cond_6
    if-nez p1, :cond_a

    const-string p1, ""

    :cond_a
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v4, ":"

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x1f90

    array-length v4, v0

    if-le v4, v6, :cond_20

    const/4 v4, 0x1

    :try_start_1a
    aget-object v4, v0, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1f
    .catch Ljava/lang/NumberFormatException; {:try_start_1a .. :try_end_1f} :catch_4e

    move-result v2

    :cond_20
    :goto_20
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    :try_start_2b
    aget-object v4, v0, v4

    invoke-direct {p0, v4, v2, p2}, Lcom/android/server/DevicePolicyManagerService;->validate(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_30
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2b .. :try_end_30} :catch_42

    const-string v4, "global_http_proxy_host"

    aget-object v5, v0, v5

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v4, "global_http_proxy_port"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v4, "global_http_proxy_exclusion_list"

    invoke-static {v3, v4, p2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :goto_41
    return-void

    :catch_42
    move-exception v1

    const-string v4, "DevicePolicyManagerService"

    const-string v5, "Invalid proxy properties, ignoring."

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_41

    :catch_4e
    move-exception v4

    goto :goto_20
.end method

.method private saveSettingsLocked(I)V
    .registers 14

    const-string v9, "device_policies.xml"

    const-string v10, "device_policies_backup.xml"

    invoke-static {v9, v10, p1}, Lcom/android/server/DevicePolicyManagerService;->moveFile(Ljava/lang/String;Ljava/lang/String;I)Z

    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v6

    invoke-static {p1}, Lcom/android/server/DevicePolicyManagerService;->makeJournaledFile(I)Lcom/android/internal/util/JournaledFile;

    move-result-object v4

    const/4 v7, 0x0

    :try_start_10
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-virtual {v4}, Lcom/android/internal/util/JournaledFile;->chooseForWrite()Ljava/io/File;

    move-result-object v9

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_1a} :catch_156

    :try_start_1a
    new-instance v5, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v5}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    const-string v9, "utf-8"

    invoke-interface {v5, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-interface {v5, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const/4 v9, 0x0

    const-string v10, "policies"

    invoke-interface {v5, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v9, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x0

    :goto_3a
    if-ge v3, v0, :cond_68

    iget-object v9, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    if-eqz v1, :cond_65

    const/4 v9, 0x0

    const-string v10, "admin"

    invoke-interface {v5, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v9, 0x0

    const-string v10, "name"

    iget-object v11, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v11}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {v1, v5}, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    const/4 v9, 0x0

    const-string v10, "admin"

    invoke-interface {v5, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_65
    add-int/lit8 v3, v3, 0x1

    goto :goto_3a

    :cond_68
    iget v9, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    if-ltz v9, :cond_84

    const/4 v9, 0x0

    const-string v10, "password-owner"

    invoke-interface {v5, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v9, 0x0

    const-string v10, "value"

    iget v11, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v9, 0x0

    const-string v10, "password-owner"

    invoke-interface {v5, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_84
    iget v9, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mFailedPasswordAttempts:I

    if-eqz v9, :cond_a0

    const/4 v9, 0x0

    const-string v10, "failed-password-attempts"

    invoke-interface {v5, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v9, 0x0

    const-string v10, "value"

    iget v11, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mFailedPasswordAttempts:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v9, 0x0

    const-string v10, "failed-password-attempts"

    invoke-interface {v5, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_a0
    iget v9, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordQuality:I

    if-nez v9, :cond_c4

    iget v9, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLength:I

    if-nez v9, :cond_c4

    iget v9, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordUpperCase:I

    if-nez v9, :cond_c4

    iget v9, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLowerCase:I

    if-nez v9, :cond_c4

    iget v9, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLetters:I

    if-nez v9, :cond_c4

    iget v9, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNumeric:I

    if-nez v9, :cond_c4

    iget v9, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordSymbols:I

    if-nez v9, :cond_c4

    iget v9, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNonLetter:I

    if-nez v9, :cond_c4

    iget-boolean v9, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordRecoverable:Z

    if-eqz v9, :cond_13c

    :cond_c4
    const/4 v9, 0x0

    const-string v10, "active-password"

    invoke-interface {v5, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v9, 0x0

    const-string v10, "quality"

    iget v11, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordQuality:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v9, 0x0

    const-string v10, "length"

    iget v11, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLength:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v9, 0x0

    const-string v10, "uppercase"

    iget v11, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordUpperCase:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v9, 0x0

    const-string v10, "lowercase"

    iget v11, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLowerCase:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v9, 0x0

    const-string v10, "letters"

    iget v11, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLetters:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v9, 0x0

    const-string v10, "numeric"

    iget v11, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNumeric:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v9, 0x0

    const-string v10, "symbols"

    iget v11, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordSymbols:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v9, 0x0

    const-string v10, "nonletter"

    iget v11, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNonLetter:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v9, 0x0

    const-string v10, "recoverable"

    iget-boolean v11, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordRecoverable:Z

    invoke-static {v11}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v9, 0x0

    const-string v10, "active-password"

    invoke-interface {v5, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_13c
    const/4 v9, 0x0

    const-string v10, "policies"

    invoke-interface {v5, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    invoke-virtual {v8}, Ljava/io/FileOutputStream;->flush()V

    invoke-static {v8}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {v4}, Lcom/android/internal/util/JournaledFile;->commit()V

    invoke-direct {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->sendChangedNotification(I)V
    :try_end_154
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_154} :catch_162

    move-object v7, v8

    :goto_155
    return-void

    :catch_156
    move-exception v2

    :goto_157
    if-eqz v7, :cond_15c

    :try_start_159
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_15c
    .catch Ljava/io/IOException; {:try_start_159 .. :try_end_15c} :catch_160

    :cond_15c
    :goto_15c
    invoke-virtual {v4}, Lcom/android/internal/util/JournaledFile;->rollback()V

    goto :goto_155

    :catch_160
    move-exception v9

    goto :goto_15c

    :catch_162
    move-exception v2

    move-object v7, v8

    goto :goto_157
.end method

.method private sendChangedNotification(I)V
    .registers 6

    iget-boolean v3, p0, Lcom/android/server/DevicePolicyManagerService;->mNotifyChanges:Z

    if-nez v3, :cond_5

    :goto_4
    return-void

    :cond_5
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x4000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_15
    iget-object v3, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_1e

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_4

    :catchall_1e
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private setEncryptionRequested(Z)V
    .registers 2

    return-void
.end method

.method private updatePasswordExpirationsLocked(I)V
    .registers 14

    const-wide/16 v8, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v5

    iget-object v10, v5, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_38

    const/4 v4, 0x0

    :goto_f
    if-ge v4, v0, :cond_35

    iget-object v10, v5, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    iget-object v10, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    const/4 v11, 0x6

    invoke-virtual {v10, v11}, Landroid/app/admin/DeviceAdminInfo;->usesPolicy(I)Z

    move-result v10

    if-eqz v10, :cond_30

    iget-wide v6, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationTimeout:J

    cmp-long v10, v6, v8

    if-lez v10, :cond_33

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    add-long v2, v6, v10

    :goto_2e
    iput-wide v2, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    :cond_30
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    :cond_33
    move-wide v2, v8

    goto :goto_2e

    :cond_35
    invoke-direct {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V

    :cond_38
    return-void
.end method

.method private validate(Ljava/lang/String;ILjava/lang/String;)V
    .registers 5

    if-nez p1, :cond_4

    const-string p1, ""

    :cond_4
    if-nez p2, :cond_10

    const-string v0, ""

    :goto_8
    if-nez p3, :cond_c

    const-string p3, ""

    :cond_c
    invoke-static {p1, v0, p3}, Landroid/net/Proxy;->validate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_10
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method static validateQualityConstant(I)V
    .registers 4

    sparse-switch p0, :sswitch_data_22

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid quality constant: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_20
    return-void

    nop

    :sswitch_data_22
    .sparse-switch
        0x0 -> :sswitch_20
        0x8000 -> :sswitch_20
        0x9000 -> :sswitch_20
        0x10000 -> :sswitch_20
        0x20000 -> :sswitch_20
        0x40000 -> :sswitch_20
        0x50000 -> :sswitch_20
        0x60000 -> :sswitch_20
        0x80000 -> :sswitch_20
        0x90000 -> :sswitch_20
    .end sparse-switch
.end method

.method private wipeDeviceOrUserLocked(II)V
    .registers 5

    if-nez p2, :cond_6

    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->wipeDataLocked(I)V

    :goto_5
    return-void

    :cond_6
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->lockNowUnchecked()V

    iget-object v0, p0, Lcom/android/server/DevicePolicyManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/DevicePolicyManagerService$3;

    invoke-direct {v1, p0, p2}, Lcom/android/server/DevicePolicyManagerService$3;-><init>(Lcom/android/server/DevicePolicyManagerService;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_5
.end method

.method private wipeDeviceOrUserLocked(IILcom/android/server/DevicePolicyManagerService$ActiveAdmin;)V
    .registers 7

    const-string v0, "DevicePolicyManagerService"

    const-string v1, "Overloaded wipeDeviceOrUserLocked called"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_63

    const-string v0, "DevicePolicyManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Caller package name is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p3, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v2}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", value of flags is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p3, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v0}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.threelm.dm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5b

    iget-object v0, p3, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v0}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.nttdocomo.android.anmane"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5b

    iget-object v0, p3, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v0}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.nttdocomo.android.wipe"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5f

    :cond_5b
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->wipeDataLockedFor3LM(I)V

    :goto_5e
    return-void

    :cond_5f
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->wipeDataLocked(I)V

    goto :goto_5e

    :cond_63
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->lockNowUnchecked()V

    iget-object v0, p0, Lcom/android/server/DevicePolicyManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/DevicePolicyManagerService$4;

    invoke-direct {v1, p0, p2}, Lcom/android/server/DevicePolicyManagerService$4;-><init>(Lcom/android/server/DevicePolicyManagerService;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_5e
.end method


# virtual methods
.method public checkPassword(Landroid/content/ComponentName;Ljava/lang/String;I)Z
    .registers 11

    monitor-enter p0

    if-nez p1, :cond_e

    :try_start_3
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "ComponentName is null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    :catchall_b
    move-exception v5

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v5

    :cond_e
    const/16 v5, 0xa

    :try_start_10
    invoke-virtual {p0, p1, v5}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_17
    .catchall {:try_start_10 .. :try_end_17} :catchall_b

    move-result-wide v1

    :try_start_18
    new-instance v3, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v5, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v5}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getRecoveryPassword()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->checkPassword(Ljava/lang/String;)Z
    :try_end_26
    .catchall {:try_start_18 .. :try_end_26} :catchall_2c

    move-result v5

    :try_start_27
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit p0

    return v5

    :catchall_2c
    move-exception v5

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
    :try_end_31
    .catchall {:try_start_27 .. :try_end_31} :catchall_b
.end method

.method public deleteBackupFile(Ljava/lang/String;I)V
    .registers 7

    if-nez p2, :cond_24

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/system/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_15
    :try_start_15
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_23} :catch_32

    :cond_23
    :goto_23
    return-void

    :cond_24
    new-instance v2, Ljava/io/File;

    invoke-static {p2}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_15

    :catch_32
    move-exception v2

    goto :goto_23
.end method

.method disableThirdPartyApps(ZI)V
    .registers 18

    move/from16 v0, p2

    invoke-virtual {p0, v0}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v12

    iget-object v14, p0, Lcom/android/server/DevicePolicyManagerService;->allowLock:Ljava/lang/Object;

    monitor-enter v14

    if-eqz p1, :cond_44

    :try_start_b
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    #getter for: Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAllowListRecord:Ljava/util/HashSet;
    invoke-static {v12}, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->access$500(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_17
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3a

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z
    :try_end_26
    .catchall {:try_start_b .. :try_end_26} :catchall_41
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_26} :catch_36

    move-result v3

    if-nez v3, :cond_32

    const/4 v3, 0x2

    const/4 v4, 0x0

    :try_start_2b
    const-string v6, "DevicePolicyManager"

    move/from16 v5, p2

    invoke-interface/range {v1 .. v6}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_32
    .catchall {:try_start_2b .. :try_end_32} :catchall_41
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2b .. :try_end_32} :catch_3c
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_32} :catch_36

    :cond_32
    :goto_32
    :try_start_32
    invoke-interface {v11}, Ljava/util/Iterator;->remove()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_41
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_35} :catch_36

    goto :goto_17

    :catch_36
    move-exception v9

    :try_start_37
    invoke-virtual {v9}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_3a
    :goto_3a
    monitor-exit v14
    :try_end_3b
    .catchall {:try_start_37 .. :try_end_3b} :catchall_41

    return-void

    :catch_3c
    move-exception v9

    :try_start_3d
    invoke-direct {p0, v2}, Lcom/android/server/DevicePolicyManagerService;->removePackageFromHarmonyEAS(Ljava/lang/String;)V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_41
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_40} :catch_36

    goto :goto_32

    :catchall_41
    move-exception v3

    :try_start_42
    monitor-exit v14
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    throw v3

    :cond_44
    :try_start_44
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->getHarmonyEAS()Landroid/content/IHarmonyEAS;

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    sget-object v3, Lcom/android/server/DevicePolicyManagerService;->mHM:Landroid/content/IHarmonyEAS;

    if-eqz v3, :cond_3a

    sget-object v3, Lcom/android/server/DevicePolicyManagerService;->mHM:Landroid/content/IHarmonyEAS;

    move/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/content/IHarmonyEAS;->getThirdPartyApps(I)Ljava/util/List;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_5d
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3a

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;
    :try_end_69
    .catchall {:try_start_44 .. :try_end_69} :catchall_41
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_69} :catch_79

    const/4 v5, 0x2

    const/4 v6, 0x0

    :try_start_6b
    const-string v8, "DevicePolicyManager"

    move-object v3, v1

    move/from16 v7, p2

    invoke-interface/range {v3 .. v8}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_73
    .catchall {:try_start_6b .. :try_end_73} :catchall_41
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6b .. :try_end_73} :catch_74
    .catch Landroid/os/RemoteException; {:try_start_6b .. :try_end_73} :catch_79

    goto :goto_5d

    :catch_74
    move-exception v9

    :try_start_75
    invoke-direct {p0, v4}, Lcom/android/server/DevicePolicyManagerService;->removePackageFromHarmonyEAS(Ljava/lang/String;)V
    :try_end_78
    .catchall {:try_start_75 .. :try_end_78} :catchall_41
    .catch Landroid/os/RemoteException; {:try_start_75 .. :try_end_78} :catch_79

    goto :goto_5d

    :catch_79
    move-exception v9

    :try_start_7a
    invoke-virtual {v9}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_7d
    .catchall {:try_start_7a .. :try_end_7d} :catchall_41

    goto :goto_3a
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 13

    iget-object v7, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v8, "android.permission.DUMP"

    invoke-virtual {v7, v8}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_33

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Permission Denial: can\'t dump DevicePolicyManagerService from from pid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", uid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_32
    return-void

    :cond_33
    new-instance v3, Landroid/util/PrintWriterPrinter;

    invoke-direct {v3, p2}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    monitor-enter p0

    :try_start_39
    const-string v7, "Current Device Policy Manager state:"

    invoke-interface {v3, v7}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/DevicePolicyManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v6

    const/4 v5, 0x0

    :goto_45
    if-ge v5, v6, :cond_b3

    iget-object v7, p0, Lcom/android/server/DevicePolicyManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  Enabled Device Admins (User "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mUserHandle:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "):"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    iget-object v7, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_76
    if-ge v2, v0, :cond_a1

    iget-object v7, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    if-eqz v1, :cond_9e

    const-string v7, "  "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v7}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, ":"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v7, "    "

    invoke-virtual {v1, v7, p2}, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    :cond_9e
    add-int/lit8 v2, v2, 0x1

    goto :goto_76

    :cond_a1
    const-string v7, " "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v7, "  mPasswordOwner="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_45

    :cond_b3
    monitor-exit p0

    goto/16 :goto_32

    :catchall_b6
    move-exception v7

    monitor-exit p0
    :try_end_b8
    .catchall {:try_start_39 .. :try_end_b8} :catchall_b6

    throw v7
.end method

.method enableAllBlockedListApps(I)V
    .registers 11

    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v8

    #getter for: Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mBlockListRecordInRom:Ljava/util/HashSet;
    invoke-static {v8}, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->access$600(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    :goto_10
    :try_start_10
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_1c} :catch_2f

    :try_start_1c
    invoke-interface {v0, v1, p1}, Landroid/content/pm/IPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2b

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v5, "DevicePolicyManager"

    move v4, p1

    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_2b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1c .. :try_end_2b} :catch_34
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_2b} :catch_2f

    :cond_2b
    :goto_2b
    :try_start_2b
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_2e} :catch_2f

    goto :goto_10

    :catch_2f
    move-exception v6

    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_33
    return-void

    :catch_34
    move-exception v2

    goto :goto_2b
.end method

.method enableAllThirdPartyApps(I)V
    .registers 16

    const/4 v13, 0x2

    const/4 v6, 0x1

    iget-object v12, p0, Lcom/android/server/DevicePolicyManagerService;->allowLock:Ljava/lang/Object;

    monitor-enter v12

    :try_start_5
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->getHarmonyEAS()Landroid/content/IHarmonyEAS;

    sget-object v2, Lcom/android/server/DevicePolicyManagerService;->mHM:Landroid/content/IHarmonyEAS;

    if-eqz v2, :cond_51

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    sget-object v2, Lcom/android/server/DevicePolicyManagerService;->mHM:Landroid/content/IHarmonyEAS;

    invoke-interface {v2, p1}, Landroid/content/IHarmonyEAS;->getThirdPartyApps(I)Ljava/util/List;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {p0, v2, p1}, Lcom/android/server/DevicePolicyManagerService;->getAllowUnsignedApp(Landroid/content/ComponentName;I)Z

    move-result v2

    if-nez v2, :cond_56

    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->getHarmonyEAS()Landroid/content/IHarmonyEAS;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/content/IHarmonyEAS;->getUnknownSourcesPackages(I)Ljava/util/List;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2d
    :goto_2d
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_53

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_39
    .catchall {:try_start_5 .. :try_end_39} :catchall_7b
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_39} :catch_4d

    :try_start_39
    invoke-interface {v0, v1, p1}, Landroid/content/pm/IPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v6, :cond_2d

    const/4 v2, 0x2

    const/4 v3, 0x0

    const-string v5, "DevicePolicyManager"

    move v4, p1

    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_47
    .catchall {:try_start_39 .. :try_end_47} :catchall_7b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_39 .. :try_end_47} :catch_48
    .catch Landroid/os/RemoteException; {:try_start_39 .. :try_end_47} :catch_4d

    goto :goto_2d

    :catch_48
    move-exception v8

    :try_start_49
    invoke-direct {p0, v1}, Lcom/android/server/DevicePolicyManagerService;->removePackageFromHarmonyEAS(Ljava/lang/String;)V
    :try_end_4c
    .catchall {:try_start_49 .. :try_end_4c} :catchall_7b
    .catch Landroid/os/RemoteException; {:try_start_49 .. :try_end_4c} :catch_4d

    goto :goto_2d

    :catch_4d
    move-exception v8

    :try_start_4e
    invoke-virtual {v8}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_51
    monitor-exit v12
    :try_end_52
    .catchall {:try_start_4e .. :try_end_52} :catchall_7b

    return-void

    :cond_53
    :try_start_53
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    :cond_56
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_5a
    :goto_5a
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_51

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_66
    .catchall {:try_start_53 .. :try_end_66} :catchall_7b
    .catch Landroid/os/RemoteException; {:try_start_53 .. :try_end_66} :catch_4d

    :try_start_66
    invoke-interface {v0, v3, p1}, Landroid/content/pm/IPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v13, :cond_5a

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v7, "DevicePolicyManager"

    move-object v2, v0

    move v6, p1

    invoke-interface/range {v2 .. v7}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_75
    .catchall {:try_start_66 .. :try_end_75} :catchall_7b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_66 .. :try_end_75} :catch_76
    .catch Landroid/os/RemoteException; {:try_start_66 .. :try_end_75} :catch_4d

    goto :goto_5a

    :catch_76
    move-exception v8

    :try_start_77
    invoke-direct {p0, v3}, Lcom/android/server/DevicePolicyManagerService;->removePackageFromHarmonyEAS(Ljava/lang/String;)V
    :try_end_7a
    .catchall {:try_start_77 .. :try_end_7a} :catchall_7b
    .catch Landroid/os/RemoteException; {:try_start_77 .. :try_end_7a} :catch_4d

    goto :goto_5a

    :catchall_7b
    move-exception v2

    :try_start_7c
    monitor-exit v12
    :try_end_7d
    .catchall {:try_start_7c .. :try_end_7d} :catchall_7b

    throw v2
.end method

.method public findAdmin(Landroid/content/ComponentName;I)Landroid/app/admin/DeviceAdminInfo;
    .registers 10

    const/4 v5, 0x0

    invoke-direct {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v2, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const v4, 0x8080

    invoke-virtual {v3, v2, v4, p2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_21

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_3a

    :cond_21
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

    :cond_3a
    :try_start_3a
    new-instance v4, Landroid/app/admin/DeviceAdminInfo;

    iget-object v6, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    invoke-direct {v4, v6, v3}, Landroid/app/admin/DeviceAdminInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    :try_end_48
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3a .. :try_end_48} :catch_4a
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_48} :catch_6f

    move-object v3, v4

    :goto_49
    return-object v3

    :catch_4a
    move-exception v0

    const-string v3, "DevicePolicyManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad device admin requested for user="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ": "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v3, v5

    goto :goto_49

    :catch_6f
    move-exception v0

    const-string v3, "DevicePolicyManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad device admin requested for user="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ": "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v3, v5

    goto :goto_49
.end method

.method getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v4

    if-eqz p1, :cond_96

    iget-object v7, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    if-nez v1, :cond_31

    new-instance v7, Ljava/lang/SecurityException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No active admin "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_31
    invoke-virtual {v1}, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->getUid()I

    move-result v7

    if-eq v7, v2, :cond_5e

    new-instance v7, Ljava/lang/SecurityException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Admin "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is not owned by uid "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_5e
    const/4 v5, 0x0

    iget-object v7, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v7, p2}, Landroid/app/admin/DeviceAdminInfo;->usesPolicy(I)Z

    move-result v7

    if-nez v7, :cond_b5

    new-instance v7, Ljava/lang/SecurityException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Admin "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v9}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " did not specify uses-policy for: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v9, p2}, Landroid/app/admin/DeviceAdminInfo;->getTagForPolicy(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_96
    iget-object v7, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x0

    :goto_9d
    if-ge v3, v0, :cond_b9

    iget-object v7, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    invoke-virtual {v1}, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->getUid()I

    move-result v7

    if-ne v7, v2, :cond_b6

    iget-object v7, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v7, p2}, Landroid/app/admin/DeviceAdminInfo;->usesPolicy(I)Z

    move-result v7

    if-eqz v7, :cond_b6

    :cond_b5
    return-object v1

    :cond_b6
    add-int/lit8 v3, v3, 0x1

    goto :goto_9d

    :cond_b9
    new-instance v7, Ljava/lang/SecurityException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No active admin owned by uid "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " for policy #"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    .registers 6

    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    if-eqz v0, :cond_33

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v2}, Landroid/app/admin/DeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v2}, Landroid/app/admin/DeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    :goto_32
    return-object v0

    :cond_33
    const/4 v0, 0x0

    goto :goto_32
.end method

.method public getActiveAdmins(I)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    monitor-enter p0

    :try_start_4
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v2

    iget-object v4, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_13

    const/4 v3, 0x0

    monitor-exit p0

    :goto_12
    return-object v3

    :cond_13
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_19
    if-ge v1, v0, :cond_2f

    iget-object v4, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    iget-object v4, v4, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v4}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    :cond_2f
    monitor-exit p0

    goto :goto_12

    :catchall_31
    move-exception v4

    monitor-exit p0
    :try_end_33
    .catchall {:try_start_4 .. :try_end_33} :catchall_31

    throw v4
.end method

.method public getAllowAppListThirdParty(Landroid/content/ComponentName;I)Ljava/lang/String;
    .registers 12

    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    monitor-enter p0

    :try_start_b
    iget-object v7, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v2, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    const/4 v7, 0x1

    if-le v0, v7, :cond_17

    const/4 v5, 0x1

    :cond_17
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowThirdPartyList:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz v5, :cond_49

    const-string v7, ","

    :goto_3a
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1b

    :catchall_46
    move-exception v7

    monitor-exit p0
    :try_end_48
    .catchall {:try_start_b .. :try_end_48} :catchall_46

    throw v7

    :cond_49
    :try_start_49
    const-string v7, ""

    goto :goto_3a

    :cond_4c
    monitor-exit p0
    :try_end_4d
    .catchall {:try_start_49 .. :try_end_4d} :catchall_46

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method public getAllowBluetoothMode(Landroid/content/ComponentName;I)I
    .registers 16

    const/4 v11, 0x2

    monitor-enter p0

    const/4 v8, 0x2

    const/4 v9, 0x2

    if-eqz p1, :cond_12

    :try_start_6
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v2

    if-eqz v2, :cond_10

    iget v10, v2, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowBluetoothMode:I

    :goto_e
    monitor-exit p0

    :goto_f
    return v10

    :cond_10
    move v10, v8

    goto :goto_e

    :cond_12
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v7

    iget-object v10, v7, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v5, 0x0

    :goto_1e
    if-ge v5, v1, :cond_2f

    iget-object v10, v7, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    if-ne v9, v11, :cond_2c

    iget v9, v3, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowBluetoothMode:I

    :cond_2c
    add-int/lit8 v5, v5, 0x1

    goto :goto_1e

    :cond_2f
    if-eq v9, v11, :cond_4c

    const-string v10, "DevicePolicyManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getAllowBluetoothMode - value_root retunrs : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    move v10, v9

    goto :goto_f

    :cond_4c
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v6

    iget-object v10, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v4, 0x0

    :goto_57
    if-ge v4, v0, :cond_68

    iget-object v10, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    if-ne v8, v11, :cond_65

    iget v8, v2, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowBluetoothMode:I

    :cond_65
    add-int/lit8 v4, v4, 0x1

    goto :goto_57

    :cond_68
    const-string v10, "DevicePolicyManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getAllowBluetoothMode - value retunrs : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    move v10, v8

    goto :goto_f

    :catchall_83
    move-exception v10

    monitor-exit p0
    :try_end_85
    .catchall {:try_start_6 .. :try_end_85} :catchall_83

    throw v10
.end method

.method public getAllowBrowser(Landroid/content/ComponentName;I)Z
    .registers 9

    monitor-enter p0

    const/4 v4, 0x1

    if-eqz p1, :cond_10

    :try_start_4
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    if-eqz v1, :cond_e

    iget-boolean v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowBrowser:Z

    :goto_c
    monitor-exit p0

    :goto_d
    return v5

    :cond_e
    move v5, v4

    goto :goto_c

    :cond_10
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    iget-object v5, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_1b
    if-ge v2, v0, :cond_2d

    iget-object v5, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2a

    iget-boolean v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowBrowser:Z

    :cond_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    :cond_2d
    monitor-exit p0

    move v5, v4

    goto :goto_d

    :catchall_30
    move-exception v5

    monitor-exit p0
    :try_end_32
    .catchall {:try_start_4 .. :try_end_32} :catchall_30

    throw v5
.end method

.method public getAllowCamera(Landroid/content/ComponentName;I)Z
    .registers 4

    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getCameraDisabled(Landroid/content/ComponentName;I)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public getAllowDesktopSync(Landroid/content/ComponentName;I)Z
    .registers 15

    const/4 v11, 0x1

    monitor-enter p0

    const/4 v8, 0x1

    const/4 v9, 0x1

    if-eqz p1, :cond_12

    :try_start_6
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v2

    if-eqz v2, :cond_10

    iget-boolean v10, v2, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowDesktopSync:Z

    :goto_e
    monitor-exit p0

    :goto_f
    return v10

    :cond_10
    move v10, v8

    goto :goto_e

    :cond_12
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v7

    iget-object v10, v7, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v5, 0x0

    :goto_1e
    if-ge v5, v0, :cond_2f

    iget-object v10, v7, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    if-ne v9, v11, :cond_2c

    iget-boolean v9, v3, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowDesktopSync:Z

    :cond_2c
    add-int/lit8 v5, v5, 0x1

    goto :goto_1e

    :cond_2f
    if-nez v9, :cond_34

    monitor-exit p0

    move v10, v9

    goto :goto_f

    :cond_34
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v6

    iget-object v10, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v4, 0x0

    :goto_3f
    if-ge v4, v1, :cond_50

    iget-object v10, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    if-ne v8, v11, :cond_4d

    iget-boolean v8, v2, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowDesktopSync:Z

    :cond_4d
    add-int/lit8 v4, v4, 0x1

    goto :goto_3f

    :cond_50
    monitor-exit p0

    move v10, v8

    goto :goto_f

    :catchall_53
    move-exception v10

    monitor-exit p0
    :try_end_55
    .catchall {:try_start_6 .. :try_end_55} :catchall_53

    throw v10
.end method

.method public getAllowInternetSharing(Landroid/content/ComponentName;I)Z
    .registers 15

    const/4 v11, 0x1

    monitor-enter p0

    const/4 v8, 0x1

    const/4 v9, 0x1

    if-eqz p1, :cond_12

    :try_start_6
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v2

    if-eqz v2, :cond_10

    iget-boolean v10, v2, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowInternetSharing:Z

    :goto_e
    monitor-exit p0

    :goto_f
    return v10

    :cond_10
    move v10, v8

    goto :goto_e

    :cond_12
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v7

    iget-object v10, v7, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v5, 0x0

    :goto_1e
    if-ge v5, v0, :cond_2f

    iget-object v10, v7, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    if-ne v9, v11, :cond_2c

    iget-boolean v9, v3, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowInternetSharing:Z

    :cond_2c
    add-int/lit8 v5, v5, 0x1

    goto :goto_1e

    :cond_2f
    if-nez v9, :cond_34

    monitor-exit p0

    move v10, v9

    goto :goto_f

    :cond_34
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v6

    iget-object v10, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v4, 0x0

    :goto_3f
    if-ge v4, v1, :cond_50

    iget-object v10, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    if-ne v8, v11, :cond_4d

    iget-boolean v8, v2, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowInternetSharing:Z

    :cond_4d
    add-int/lit8 v4, v4, 0x1

    goto :goto_3f

    :cond_50
    monitor-exit p0

    move v10, v8

    goto :goto_f

    :catchall_53
    move-exception v10

    monitor-exit p0
    :try_end_55
    .catchall {:try_start_6 .. :try_end_55} :catchall_53

    throw v10
.end method

.method public getAllowIrDA(Landroid/content/ComponentName;I)Z
    .registers 9

    monitor-enter p0

    const/4 v4, 0x1

    if-eqz p1, :cond_10

    :try_start_4
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    if-eqz v1, :cond_e

    iget-boolean v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowIrDA:Z

    :goto_c
    monitor-exit p0

    :goto_d
    return v5

    :cond_e
    move v5, v4

    goto :goto_c

    :cond_10
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    iget-object v5, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_1b
    if-ge v2, v0, :cond_2d

    iget-object v5, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2a

    iget-boolean v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowIrDA:Z

    :cond_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    :cond_2d
    monitor-exit p0

    move v5, v4

    goto :goto_d

    :catchall_30
    move-exception v5

    monitor-exit p0
    :try_end_32
    .catchall {:try_start_4 .. :try_end_32} :catchall_30

    throw v5
.end method

.method public getAllowPOPIMAPEmail(Landroid/content/ComponentName;I)Z
    .registers 9

    monitor-enter p0

    const/4 v4, 0x1

    if-eqz p1, :cond_10

    :try_start_4
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    if-eqz v1, :cond_e

    iget-boolean v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowPOPIMAPEmail:Z

    :goto_c
    monitor-exit p0

    :goto_d
    return v5

    :cond_e
    move v5, v4

    goto :goto_c

    :cond_10
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    iget-object v5, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_1b
    if-ge v2, v0, :cond_2d

    iget-object v5, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2a

    iget-boolean v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowPOPIMAPEmail:Z

    :cond_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    :cond_2d
    monitor-exit p0

    move v5, v4

    goto :goto_d

    :catchall_30
    move-exception v5

    monitor-exit p0
    :try_end_32
    .catchall {:try_start_4 .. :try_end_32} :catchall_30

    throw v5
.end method

.method public getAllowStorageCard(Landroid/content/ComponentName;I)Z
    .registers 15

    const/4 v11, 0x1

    monitor-enter p0

    const/4 v8, 0x1

    const/4 v9, 0x1

    if-eqz p1, :cond_12

    :try_start_6
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v2

    if-eqz v2, :cond_10

    iget-boolean v10, v2, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowStorageCard:Z

    :goto_e
    monitor-exit p0

    :goto_f
    return v10

    :cond_10
    move v10, v8

    goto :goto_e

    :cond_12
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v7

    iget-object v10, v7, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v5, 0x0

    :goto_1e
    if-ge v5, v0, :cond_2f

    iget-object v10, v7, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    if-ne v9, v11, :cond_2c

    iget-boolean v9, v3, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowStorageCard:Z

    :cond_2c
    add-int/lit8 v5, v5, 0x1

    goto :goto_1e

    :cond_2f
    if-nez v9, :cond_34

    monitor-exit p0

    move v10, v9

    goto :goto_f

    :cond_34
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v6

    iget-object v10, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v4, 0x0

    :goto_3f
    if-ge v4, v1, :cond_50

    iget-object v10, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    if-ne v8, v11, :cond_4d

    iget-boolean v8, v2, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowStorageCard:Z

    :cond_4d
    add-int/lit8 v4, v4, 0x1

    goto :goto_3f

    :cond_50
    monitor-exit p0

    move v10, v8

    goto :goto_f

    :catchall_53
    move-exception v10

    monitor-exit p0
    :try_end_55
    .catchall {:try_start_6 .. :try_end_55} :catchall_53

    throw v10
.end method

.method public getAllowTextMessaging(Landroid/content/ComponentName;I)Z
    .registers 9

    monitor-enter p0

    const/4 v4, 0x1

    if-eqz p1, :cond_10

    :try_start_4
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    if-eqz v1, :cond_e

    iget-boolean v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowTextMessaging:Z

    :goto_c
    monitor-exit p0

    :goto_d
    return v5

    :cond_e
    move v5, v4

    goto :goto_c

    :cond_10
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    iget-object v5, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_1b
    if-ge v2, v0, :cond_2d

    iget-object v5, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2a

    iget-boolean v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowTextMessaging:Z

    :cond_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    :cond_2d
    monitor-exit p0

    move v5, v4

    goto :goto_d

    :catchall_30
    move-exception v5

    monitor-exit p0
    :try_end_32
    .catchall {:try_start_4 .. :try_end_32} :catchall_30

    throw v5
.end method

.method public getAllowUnsignedApp(Landroid/content/ComponentName;I)Z
    .registers 9

    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    iget-object v1, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    monitor-enter p0

    const/4 v4, 0x1

    if-eqz p1, :cond_16

    :try_start_a
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-boolean v5, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowUnsginedApp:Z

    :goto_12
    monitor-exit p0

    :goto_13
    return v5

    :cond_14
    move v5, v4

    goto :goto_12

    :cond_16
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1a
    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1a

    iget-boolean v4, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowUnsginedApp:Z

    goto :goto_1a

    :cond_2c
    monitor-exit p0

    move v5, v4

    goto :goto_13

    :catchall_2f
    move-exception v5

    monitor-exit p0
    :try_end_31
    .catchall {:try_start_a .. :try_end_31} :catchall_2f

    throw v5
.end method

.method public getAllowUnsignedInstallationPkg(Landroid/content/ComponentName;I)Z
    .registers 9

    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    iget-object v1, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    monitor-enter p0

    const/4 v4, 0x1

    if-eqz p1, :cond_16

    :try_start_a
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-boolean v5, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowUnsignedInstallationPkg:Z

    :goto_12
    monitor-exit p0

    :goto_13
    return v5

    :cond_14
    move v5, v4

    goto :goto_12

    :cond_16
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1a
    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1a

    iget-boolean v4, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowUnsignedInstallationPkg:Z

    goto :goto_1a

    :cond_2c
    monitor-exit p0

    move v5, v4

    goto :goto_13

    :catchall_2f
    move-exception v5

    monitor-exit p0
    :try_end_31
    .catchall {:try_start_a .. :try_end_31} :catchall_2f

    throw v5
.end method

.method public getAllowWifi(Landroid/content/ComponentName;I)Z
    .registers 15

    const/4 v11, 0x1

    monitor-enter p0

    const/4 v8, 0x1

    const/4 v9, 0x1

    if-eqz p1, :cond_12

    :try_start_6
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v2

    if-eqz v2, :cond_10

    iget-boolean v10, v2, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowWifi:Z

    :goto_e
    monitor-exit p0

    :goto_f
    return v10

    :cond_10
    move v10, v8

    goto :goto_e

    :cond_12
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v7

    iget-object v10, v7, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v5, 0x0

    :goto_1e
    if-ge v5, v0, :cond_2f

    iget-object v10, v7, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    if-ne v9, v11, :cond_2c

    iget-boolean v9, v3, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowWifi:Z

    :cond_2c
    add-int/lit8 v5, v5, 0x1

    goto :goto_1e

    :cond_2f
    if-nez v9, :cond_34

    monitor-exit p0

    move v10, v9

    goto :goto_f

    :cond_34
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v6

    iget-object v10, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v4, 0x0

    :goto_3f
    if-ge v4, v1, :cond_50

    iget-object v10, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    if-ne v8, v11, :cond_4d

    iget-boolean v8, v2, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowWifi:Z

    :cond_4d
    add-int/lit8 v4, v4, 0x1

    goto :goto_3f

    :cond_50
    monitor-exit p0

    move v10, v8

    goto :goto_f

    :catchall_53
    move-exception v10

    monitor-exit p0
    :try_end_55
    .catchall {:try_start_6 .. :try_end_55} :catchall_53

    throw v10
.end method

.method public getBlockListInRom(Landroid/content/ComponentName;I)Ljava/lang/String;
    .registers 12

    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v6

    iget-object v2, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    monitor-enter p0

    :try_start_d
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v7, 0x1

    if-le v0, v7, :cond_15

    const/4 v5, 0x1

    :cond_15
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_19
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->blockInRomList:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz v5, :cond_47

    const-string v7, ","

    :goto_38
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_19

    :catchall_44
    move-exception v7

    monitor-exit p0
    :try_end_46
    .catchall {:try_start_d .. :try_end_46} :catchall_44

    throw v7

    :cond_47
    :try_start_47
    const-string v7, ""

    goto :goto_38

    :cond_4a
    monitor-exit p0
    :try_end_4b
    .catchall {:try_start_47 .. :try_end_4b} :catchall_44

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method public getCameraDisabled(Landroid/content/ComponentName;I)Z
    .registers 14

    const/4 v8, 0x1

    const/4 v9, 0x0

    monitor-enter p0

    if-eqz p1, :cond_11

    :try_start_5
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v2

    if-eqz v2, :cond_f

    iget-boolean v8, v2, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->disableCamera:Z

    :goto_d
    monitor-exit p0

    :goto_e
    return v8

    :cond_f
    move v8, v9

    goto :goto_d

    :cond_11
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v7

    iget-object v10, v7, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v5, 0x0

    :goto_1d
    if-ge v5, v0, :cond_33

    iget-object v10, v7, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    iget-boolean v10, v3, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->disableCamera:Z

    if-eqz v10, :cond_30

    monitor-exit p0

    goto :goto_e

    :catchall_2d
    move-exception v8

    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_5 .. :try_end_2f} :catchall_2d

    throw v8

    :cond_30
    add-int/lit8 v5, v5, 0x1

    goto :goto_1d

    :cond_33
    :try_start_33
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v6

    iget-object v10, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v4, 0x0

    :goto_3e
    if-ge v4, v1, :cond_51

    iget-object v10, v6, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    iget-boolean v10, v2, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->disableCamera:Z

    if-eqz v10, :cond_4e

    monitor-exit p0

    goto :goto_e

    :cond_4e
    add-int/lit8 v4, v4, 0x1

    goto :goto_3e

    :cond_51
    monitor-exit p0
    :try_end_52
    .catchall {:try_start_33 .. :try_end_52} :catchall_2d

    move v8, v9

    goto :goto_e
.end method

.method public getCurrentFailedPasswordAttempts(I)I
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    monitor-enter p0

    :try_start_4
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v0

    iget v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mFailedPasswordAttempts:I

    monitor-exit p0

    return v0

    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_c

    throw v0
.end method

.method public getDeviceOwner()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/DevicePolicyManagerService$DeviceOwner;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/server/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/DevicePolicyManagerService$DeviceOwner;

    invoke-virtual {v0}, Lcom/android/server/DevicePolicyManagerService$DeviceOwner;->getPackageName()Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    :goto_c
    return-object v0

    :cond_d
    monitor-exit p0

    const/4 v0, 0x0

    goto :goto_c

    :catchall_10
    move-exception v0

    monitor-exit p0
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public getGlobalProxyAdmin(I)Landroid/content/ComponentName;
    .registers 7

    invoke-direct {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    monitor-enter p0

    const/4 v4, 0x0

    :try_start_5
    invoke-virtual {p0, v4}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    iget-object v4, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_10
    if-ge v2, v0, :cond_29

    iget-object v4, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    iget-boolean v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->specifiesGlobalProxy:Z

    if-eqz v4, :cond_26

    iget-object v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v4}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    monitor-exit p0

    :goto_25
    return-object v4

    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_29
    monitor-exit p0

    const/4 v4, 0x0

    goto :goto_25

    :catchall_2c
    move-exception v4

    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_5 .. :try_end_2e} :catchall_2c

    throw v4
.end method

.method public getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I
    .registers 9

    invoke-direct {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    monitor-enter p0

    if-eqz p1, :cond_12

    :try_start_6
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    if-eqz v1, :cond_10

    iget v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->disabledKeyguardFeatures:I

    :goto_e
    monitor-exit p0

    :goto_f
    return v4

    :cond_10
    const/4 v4, 0x0

    goto :goto_e

    :cond_12
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    iget-object v5, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v4, 0x0

    const/4 v2, 0x0

    :goto_1e
    if-ge v2, v0, :cond_2e

    iget-object v5, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    iget v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->disabledKeyguardFeatures:I

    or-int/2addr v4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    :cond_2e
    monitor-exit p0

    goto :goto_f

    :catchall_30
    move-exception v5

    monitor-exit p0
    :try_end_32
    .catchall {:try_start_6 .. :try_end_32} :catchall_30

    throw v5
.end method

.method public getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)I
    .registers 9

    invoke-direct {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    monitor-enter p0

    :try_start_4
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v4

    const/4 v2, 0x0

    if-eqz p1, :cond_17

    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    if-eqz v1, :cond_15

    iget v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maximumFailedPasswordsForWipe:I

    :goto_13
    monitor-exit p0

    :goto_14
    return v5

    :cond_15
    move v5, v2

    goto :goto_13

    :cond_17
    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x0

    :goto_1e
    if-ge v3, v0, :cond_3a

    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    if-nez v2, :cond_2f

    iget v2, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maximumFailedPasswordsForWipe:I

    :cond_2c
    :goto_2c
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    :cond_2f
    iget v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maximumFailedPasswordsForWipe:I

    if-eqz v5, :cond_2c

    iget v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maximumFailedPasswordsForWipe:I

    if-le v2, v5, :cond_2c

    iget v2, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maximumFailedPasswordsForWipe:I

    goto :goto_2c

    :cond_3a
    monitor-exit p0

    move v5, v2

    goto :goto_14

    :catchall_3d
    move-exception v5

    monitor-exit p0
    :try_end_3f
    .catchall {:try_start_4 .. :try_end_3f} :catchall_3d

    throw v5
.end method

.method public getMaximumTimeToLock(Landroid/content/ComponentName;I)J
    .registers 13

    const-wide/16 v8, 0x0

    invoke-direct {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    monitor-enter p0

    const-wide/16 v4, 0x0

    if-eqz p1, :cond_16

    :try_start_a
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    if-eqz v1, :cond_14

    iget-wide v6, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maximumTimeToUnlock:J

    :goto_12
    monitor-exit p0

    :goto_13
    return-wide v6

    :cond_14
    move-wide v6, v4

    goto :goto_12

    :cond_16
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    iget-object v6, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_21
    if-ge v2, v0, :cond_43

    iget-object v6, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    cmp-long v6, v4, v8

    if-nez v6, :cond_34

    iget-wide v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maximumTimeToUnlock:J

    :cond_31
    :goto_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    :cond_34
    iget-wide v6, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maximumTimeToUnlock:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_31

    iget-wide v6, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maximumTimeToUnlock:J

    cmp-long v6, v4, v6

    if-lez v6, :cond_31

    iget-wide v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maximumTimeToUnlock:J

    goto :goto_31

    :cond_43
    monitor-exit p0

    move-wide v6, v4

    goto :goto_13

    :catchall_46
    move-exception v6

    monitor-exit p0
    :try_end_48
    .catchall {:try_start_a .. :try_end_48} :catchall_46

    throw v6
.end method

.method public getPassword(Landroid/content/ComponentName;)Ljava/lang/String;
    .registers 3

    const-string v0, ""

    return-object v0
.end method

.method public getPasswordExpiration(Landroid/content/ComponentName;I)J
    .registers 5

    invoke-direct {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    monitor-enter p0

    :try_start_4
    invoke-direct {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getPasswordExpirationLocked(Landroid/content/ComponentName;I)J

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :catchall_a
    move-exception v0

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public getPasswordExpirationTimeout(Landroid/content/ComponentName;I)J
    .registers 13

    const-wide/16 v6, 0x0

    invoke-direct {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    monitor-enter p0

    if-eqz p1, :cond_14

    :try_start_8
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    if-eqz v1, :cond_12

    iget-wide v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationTimeout:J

    :goto_10
    monitor-exit p0

    :goto_11
    return-wide v4

    :cond_12
    move-wide v4, v6

    goto :goto_10

    :cond_14
    const-wide/16 v4, 0x0

    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    iget-object v8, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_21
    if-ge v2, v0, :cond_40

    iget-object v8, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    cmp-long v8, v4, v6

    if-eqz v8, :cond_3b

    iget-wide v8, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationTimeout:J

    cmp-long v8, v8, v6

    if-eqz v8, :cond_3d

    iget-wide v8, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationTimeout:J

    cmp-long v8, v4, v8

    if-lez v8, :cond_3d

    :cond_3b
    iget-wide v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationTimeout:J

    :cond_3d
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    :cond_40
    monitor-exit p0

    goto :goto_11

    :catchall_42
    move-exception v6

    monitor-exit p0
    :try_end_44
    .catchall {:try_start_8 .. :try_end_44} :catchall_42

    throw v6
.end method

.method public getPasswordHistoryLength(Landroid/content/ComponentName;I)I
    .registers 9

    invoke-direct {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    monitor-enter p0

    :try_start_4
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v4

    const/4 v3, 0x0

    if-eqz p1, :cond_17

    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    if-eqz v1, :cond_15

    iget v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordHistoryLength:I

    :goto_13
    monitor-exit p0

    :goto_14
    return v5

    :cond_15
    move v5, v3

    goto :goto_13

    :cond_17
    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_1e
    if-ge v2, v0, :cond_31

    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    iget v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordHistoryLength:I

    if-ge v3, v5, :cond_2e

    iget v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordHistoryLength:I

    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    :cond_31
    monitor-exit p0

    move v5, v3

    goto :goto_14

    :catchall_34
    move-exception v5

    monitor-exit p0
    :try_end_36
    .catchall {:try_start_4 .. :try_end_36} :catchall_34

    throw v5
.end method

.method public getPasswordMinimumLength(Landroid/content/ComponentName;I)I
    .registers 9

    invoke-direct {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    monitor-enter p0

    :try_start_4
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v4

    const/4 v3, 0x0

    if-eqz p1, :cond_17

    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    if-eqz v1, :cond_15

    iget v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLength:I

    :goto_13
    monitor-exit p0

    :goto_14
    return v5

    :cond_15
    move v5, v3

    goto :goto_13

    :cond_17
    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_1e
    if-ge v2, v0, :cond_31

    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    iget v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLength:I

    if-ge v3, v5, :cond_2e

    iget v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLength:I

    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    :cond_31
    monitor-exit p0

    move v5, v3

    goto :goto_14

    :catchall_34
    move-exception v5

    monitor-exit p0
    :try_end_36
    .catchall {:try_start_4 .. :try_end_36} :catchall_34

    throw v5
.end method

.method public getPasswordMinimumLetters(Landroid/content/ComponentName;I)I
    .registers 9

    invoke-direct {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    monitor-enter p0

    const/4 v3, 0x0

    if-eqz p1, :cond_13

    :try_start_7
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    if-eqz v1, :cond_11

    iget v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLetters:I

    :goto_f
    monitor-exit p0

    :goto_10
    return v5

    :cond_11
    move v5, v3

    goto :goto_f

    :cond_13
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v4

    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_1e
    if-ge v2, v0, :cond_31

    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    iget v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLetters:I

    if-ge v3, v5, :cond_2e

    iget v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLetters:I

    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    :cond_31
    monitor-exit p0

    move v5, v3

    goto :goto_10

    :catchall_34
    move-exception v5

    monitor-exit p0
    :try_end_36
    .catchall {:try_start_7 .. :try_end_36} :catchall_34

    throw v5
.end method

.method public getPasswordMinimumLowerCase(Landroid/content/ComponentName;I)I
    .registers 9

    invoke-direct {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    monitor-enter p0

    const/4 v3, 0x0

    if-eqz p1, :cond_13

    :try_start_7
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    if-eqz v1, :cond_11

    iget v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLowerCase:I

    :goto_f
    monitor-exit p0

    :goto_10
    return v5

    :cond_11
    move v5, v3

    goto :goto_f

    :cond_13
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v4

    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_1e
    if-ge v2, v0, :cond_31

    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    iget v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLowerCase:I

    if-ge v3, v5, :cond_2e

    iget v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLowerCase:I

    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    :cond_31
    monitor-exit p0

    move v5, v3

    goto :goto_10

    :catchall_34
    move-exception v5

    monitor-exit p0
    :try_end_36
    .catchall {:try_start_7 .. :try_end_36} :catchall_34

    throw v5
.end method

.method public getPasswordMinimumNonLetter(Landroid/content/ComponentName;I)I
    .registers 9

    invoke-direct {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    monitor-enter p0

    const/4 v3, 0x0

    if-eqz p1, :cond_13

    :try_start_7
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    if-eqz v1, :cond_11

    iget v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNonLetter:I

    :goto_f
    monitor-exit p0

    :goto_10
    return v5

    :cond_11
    move v5, v3

    goto :goto_f

    :cond_13
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v4

    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_1e
    if-ge v2, v0, :cond_31

    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    iget v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNonLetter:I

    if-ge v3, v5, :cond_2e

    iget v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNonLetter:I

    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    :cond_31
    monitor-exit p0

    move v5, v3

    goto :goto_10

    :catchall_34
    move-exception v5

    monitor-exit p0
    :try_end_36
    .catchall {:try_start_7 .. :try_end_36} :catchall_34

    throw v5
.end method

.method public getPasswordMinimumNumeric(Landroid/content/ComponentName;I)I
    .registers 9

    invoke-direct {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    monitor-enter p0

    const/4 v3, 0x0

    if-eqz p1, :cond_13

    :try_start_7
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    if-eqz v1, :cond_11

    iget v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNumeric:I

    :goto_f
    monitor-exit p0

    :goto_10
    return v5

    :cond_11
    move v5, v3

    goto :goto_f

    :cond_13
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v4

    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_1e
    if-ge v2, v0, :cond_31

    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    iget v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNumeric:I

    if-ge v3, v5, :cond_2e

    iget v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNumeric:I

    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    :cond_31
    monitor-exit p0

    move v5, v3

    goto :goto_10

    :catchall_34
    move-exception v5

    monitor-exit p0
    :try_end_36
    .catchall {:try_start_7 .. :try_end_36} :catchall_34

    throw v5
.end method

.method public getPasswordMinimumSymbols(Landroid/content/ComponentName;I)I
    .registers 9

    invoke-direct {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    monitor-enter p0

    const/4 v3, 0x0

    if-eqz p1, :cond_13

    :try_start_7
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    if-eqz v1, :cond_11

    iget v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordSymbols:I

    :goto_f
    monitor-exit p0

    :goto_10
    return v5

    :cond_11
    move v5, v3

    goto :goto_f

    :cond_13
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v4

    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_1e
    if-ge v2, v0, :cond_31

    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    iget v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordSymbols:I

    if-ge v3, v5, :cond_2e

    iget v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordSymbols:I

    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    :cond_31
    monitor-exit p0

    move v5, v3

    goto :goto_10

    :catchall_34
    move-exception v5

    monitor-exit p0
    :try_end_36
    .catchall {:try_start_7 .. :try_end_36} :catchall_34

    throw v5
.end method

.method public getPasswordMinimumUpperCase(Landroid/content/ComponentName;I)I
    .registers 9

    invoke-direct {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    monitor-enter p0

    const/4 v3, 0x0

    if-eqz p1, :cond_13

    :try_start_7
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    if-eqz v1, :cond_11

    iget v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordUpperCase:I

    :goto_f
    monitor-exit p0

    :goto_10
    return v5

    :cond_11
    move v5, v3

    goto :goto_f

    :cond_13
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v4

    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_1e
    if-ge v2, v0, :cond_31

    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    iget v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordUpperCase:I

    if-ge v3, v5, :cond_2e

    iget v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordUpperCase:I

    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    :cond_31
    monitor-exit p0

    move v5, v3

    goto :goto_10

    :catchall_34
    move-exception v5

    monitor-exit p0
    :try_end_36
    .catchall {:try_start_7 .. :try_end_36} :catchall_34

    throw v5
.end method

.method public getPasswordQuality(Landroid/content/ComponentName;I)I
    .registers 9

    invoke-direct {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    monitor-enter p0

    const/4 v3, 0x0

    :try_start_5
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v4

    if-eqz p1, :cond_17

    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    if-eqz v1, :cond_15

    iget v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordQuality:I

    :goto_13
    monitor-exit p0

    :goto_14
    return v5

    :cond_15
    move v5, v3

    goto :goto_13

    :cond_17
    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_1e
    if-ge v2, v0, :cond_31

    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    iget v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordQuality:I

    if-ge v3, v5, :cond_2e

    iget v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordQuality:I

    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    :cond_31
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getSamsungEncryptionStatus(Landroid/content/ComponentName;I)Z

    move-result v5

    if-eqz v5, :cond_3d

    const/high16 v5, 0x2

    if-ge v3, v5, :cond_3d

    const/high16 v3, 0x5

    :cond_3d
    monitor-exit p0

    move v5, v3

    goto :goto_14

    :catchall_40
    move-exception v5

    monitor-exit p0
    :try_end_42
    .catchall {:try_start_5 .. :try_end_42} :catchall_40

    throw v5
.end method

.method public getPasswordRecoverable(Landroid/content/ComponentName;I)Z
    .registers 9

    monitor-enter p0

    const/4 v4, 0x0

    if-eqz p1, :cond_10

    :try_start_4
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    if-eqz v1, :cond_e

    iget-boolean v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordRecoverable:Z

    :goto_c
    monitor-exit p0

    :goto_d
    return v5

    :cond_e
    move v5, v4

    goto :goto_c

    :cond_10
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    iget-object v5, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_1b
    if-ge v2, v0, :cond_2c

    iget-object v5, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    if-nez v4, :cond_29

    iget-boolean v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordRecoverable:Z

    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    :cond_2c
    monitor-exit p0

    move v5, v4

    goto :goto_d

    :catchall_2f
    move-exception v5

    monitor-exit p0
    :try_end_31
    .catchall {:try_start_4 .. :try_end_31} :catchall_2f

    throw v5
.end method

.method public getRemoveWarning(Landroid/content/ComponentName;Landroid/os/RemoteCallback;I)V
    .registers 14

    const/4 v3, 0x0

    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    iget-object v0, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BIND_DEVICE_ADMIN"

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    monitor-enter p0

    :try_start_c
    invoke-virtual {p0, p1, p3}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_3e

    move-result-object v9

    if-nez v9, :cond_18

    const/4 v0, 0x0

    :try_start_13
    invoke-virtual {p2, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_3e
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_16} :catch_41

    :goto_16
    :try_start_16
    monitor-exit p0

    :goto_17
    return-void

    :cond_18
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.app.action.DEVICE_ADMIN_DISABLE_REQUESTED"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, v9, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v0}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p3}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v3, 0x0

    new-instance v4, Lcom/android/server/DevicePolicyManagerService$5;

    invoke-direct {v4, p0, p2}, Lcom/android/server/DevicePolicyManagerService$5;-><init>(Lcom/android/server/DevicePolicyManagerService;Landroid/os/RemoteCallback;)V

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    monitor-exit p0

    goto :goto_17

    :catchall_3e
    move-exception v0

    monitor-exit p0
    :try_end_40
    .catchall {:try_start_16 .. :try_end_40} :catchall_3e

    throw v0

    :catch_41
    move-exception v0

    goto :goto_16
.end method

.method public getRequireStorageCardEncryption(Landroid/content/ComponentName;I)Z
    .registers 9

    monitor-enter p0

    const/4 v4, 0x0

    if-eqz p1, :cond_10

    :try_start_4
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    if-eqz v1, :cond_e

    iget-boolean v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->requireStorageCardEncryption:Z

    :goto_c
    monitor-exit p0

    :goto_d
    return v5

    :cond_e
    move v5, v4

    goto :goto_c

    :cond_10
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    iget-object v5, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_1b
    if-ge v2, v0, :cond_2c

    iget-object v5, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    if-nez v4, :cond_29

    iget-boolean v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->requireStorageCardEncryption:Z

    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    :cond_2c
    monitor-exit p0

    move v5, v4

    goto :goto_d

    :catchall_2f
    move-exception v5

    monitor-exit p0
    :try_end_31
    .catchall {:try_start_4 .. :try_end_31} :catchall_2f

    throw v5
.end method

.method public getSamsungEncryptionStatus(Landroid/content/ComponentName;I)Z
    .registers 7

    new-instance v0, Landroid/dirEncryption/DirEncryptionManager;

    iget-object v2, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/dirEncryption/DirEncryptionManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/dirEncryption/DirEncryptionManager;->getSDCardEncryptionPrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;

    move-result-object v1

    if-nez v1, :cond_12

    new-instance v1, Landroid/dirEncryption/SDCardEncryptionPolicies;

    invoke-direct {v1}, Landroid/dirEncryption/SDCardEncryptionPolicies;-><init>()V

    :cond_12
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getRequireStorageCardEncryption(Landroid/content/ComponentName;I)Z

    move-result v2

    if-nez v2, :cond_30

    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getStorageEncryption(Landroid/content/ComponentName;I)Z

    move-result v2

    if-nez v2, :cond_30

    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->getEncryptionStatus()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_30

    const/4 v2, 0x2

    iget v3, v1, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    if-ne v2, v3, :cond_32

    invoke-virtual {v0}, Landroid/dirEncryption/DirEncryptionManager;->getCurrentUserID()I

    move-result v2

    if-nez v2, :cond_32

    :cond_30
    const/4 v2, 0x1

    :goto_31
    return v2

    :cond_32
    const/4 v2, 0x0

    goto :goto_31
.end method

.method public getSimplePasswordEnabled(Landroid/content/ComponentName;I)Z
    .registers 9

    monitor-enter p0

    const/4 v4, 0x1

    if-eqz p1, :cond_10

    :try_start_4
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    if-eqz v1, :cond_e

    iget-boolean v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->simplePasswordEnabled:Z

    :goto_c
    monitor-exit p0

    :goto_d
    return v5

    :cond_e
    move v5, v4

    goto :goto_c

    :cond_10
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    iget-object v5, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_1b
    if-ge v2, v0, :cond_2d

    iget-object v5, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2a

    iget-boolean v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->simplePasswordEnabled:Z

    :cond_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    :cond_2d
    monitor-exit p0

    move v5, v4

    goto :goto_d

    :catchall_30
    move-exception v5

    monitor-exit p0
    :try_end_32
    .catchall {:try_start_4 .. :try_end_32} :catchall_30

    throw v5
.end method

.method public getStorageEncryption(Landroid/content/ComponentName;I)Z
    .registers 9

    const/4 v5, 0x0

    invoke-direct {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    monitor-enter p0

    if-eqz p1, :cond_13

    :try_start_7
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    if-eqz v1, :cond_11

    iget-boolean v4, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->encryptionRequested:Z

    :goto_f
    monitor-exit p0

    :goto_10
    return v4

    :cond_11
    move v4, v5

    goto :goto_f

    :cond_13
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    iget-object v4, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_1e
    if-ge v2, v0, :cond_35

    iget-object v4, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    iget-boolean v4, v4, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->encryptionRequested:Z

    if-eqz v4, :cond_32

    const/4 v4, 0x1

    monitor-exit p0

    goto :goto_10

    :catchall_2f
    move-exception v4

    monitor-exit p0
    :try_end_31
    .catchall {:try_start_7 .. :try_end_31} :catchall_2f

    throw v4

    :cond_32
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    :cond_35
    :try_start_35
    monitor-exit p0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_2f

    move v4, v5

    goto :goto_10
.end method

.method public getStorageEncryptionStatus(I)I
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->getEncryptionStatus()I

    move-result v0

    return v0
.end method

.method getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/DevicePolicyManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    if-nez v0, :cond_18

    new-instance v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    invoke-direct {v0, p1}, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;-><init>(I)V

    iget-object v1, p0, Lcom/android/server/DevicePolicyManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    invoke-direct {p0, v0, p1}, Lcom/android/server/DevicePolicyManagerService;->loadSettingsLocked(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;I)Z

    :cond_18
    monitor-exit p0

    return-object v0

    :catchall_1a
    move-exception v1

    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method handleAllowUnsignedApp(ZI)V
    .registers 17

    move/from16 v0, p2

    invoke-virtual {p0, v0}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v12

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    :try_start_f
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->getHarmonyEAS()Landroid/content/IHarmonyEAS;

    move-result-object v3

    move/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/content/IHarmonyEAS;->getUnknownSourcesPackages(I)Ljava/util/List;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/util/ArrayList;

    move-object v13, v0

    if-eqz p1, :cond_6c

    #getter for: Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAllowListRecord:Ljava/util/HashSet;
    invoke-static {v12}, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->access$500(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_68

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    :goto_34
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_68

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_40
    .catchall {:try_start_f .. :try_end_40} :catchall_a0
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_40} :catch_4f

    const/4 v3, 0x2

    const/4 v4, 0x0

    :try_start_42
    const-string v6, "DevicePolicyManager"

    move/from16 v5, p2

    invoke-interface/range {v1 .. v6}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_49
    .catchall {:try_start_42 .. :try_end_49} :catchall_a0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_42 .. :try_end_49} :catch_4a
    .catch Landroid/os/RemoteException; {:try_start_42 .. :try_end_49} :catch_4f

    goto :goto_34

    :catch_4a
    move-exception v7

    :try_start_4b
    invoke-direct {p0, v2}, Lcom/android/server/DevicePolicyManagerService;->removePackageFromHarmonyEAS(Ljava/lang/String;)V
    :try_end_4e
    .catchall {:try_start_4b .. :try_end_4e} :catchall_a0
    .catch Landroid/os/RemoteException; {:try_start_4b .. :try_end_4e} :catch_4f

    goto :goto_34

    :catch_4f
    move-exception v7

    :try_start_50
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " Exception +"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_68
    .catchall {:try_start_50 .. :try_end_68} :catchall_a0

    :cond_68
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_6c
    :try_start_6c
    #getter for: Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAllowListRecord:Ljava/util/HashSet;
    invoke-static {v12}, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->access$500(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashSet;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_68

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    :goto_7e
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_68

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_8a
    .catchall {:try_start_6c .. :try_end_8a} :catchall_a0
    .catch Landroid/os/RemoteException; {:try_start_6c .. :try_end_8a} :catch_4f

    :try_start_8a
    move/from16 v0, p2

    invoke-interface {v1, v2, v0}, Landroid/content/pm/IPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_9c

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v6, "DevicePolicyManager"

    move/from16 v5, p2

    invoke-interface/range {v1 .. v6}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_9c
    .catchall {:try_start_8a .. :try_end_9c} :catchall_a0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8a .. :try_end_9c} :catch_a5
    .catch Landroid/os/RemoteException; {:try_start_8a .. :try_end_9c} :catch_4f

    :cond_9c
    :goto_9c
    :try_start_9c
    invoke-interface {v11}, Ljava/util/Iterator;->remove()V
    :try_end_9f
    .catchall {:try_start_9c .. :try_end_9f} :catchall_a0
    .catch Landroid/os/RemoteException; {:try_start_9c .. :try_end_9f} :catch_4f

    goto :goto_7e

    :catchall_a0
    move-exception v3

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :catch_a5
    move-exception v7

    :try_start_a6
    invoke-direct {p0, v2}, Lcom/android/server/DevicePolicyManagerService;->removePackageFromHarmonyEAS(Ljava/lang/String;)V
    :try_end_a9
    .catchall {:try_start_a6 .. :try_end_a9} :catchall_a0
    .catch Landroid/os/RemoteException; {:try_start_a6 .. :try_end_a9} :catch_4f

    goto :goto_9c
.end method

.method public hasGrantedPolicy(Landroid/content/ComponentName;II)Z
    .registers 8

    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    monitor-enter p0

    :try_start_4
    invoke-virtual {p0, p1, p3}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    if-nez v0, :cond_26

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

    :catchall_23
    move-exception v1

    monitor-exit p0
    :try_end_25
    .catchall {:try_start_4 .. :try_end_25} :catchall_23

    throw v1

    :cond_26
    :try_start_26
    iget-object v1, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v1, p2}, Landroid/app/admin/DeviceAdminInfo;->usesPolicy(I)Z

    move-result v1

    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_26 .. :try_end_2d} :catchall_23

    return v1
.end method

.method initiateTempList(ILcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V
    .registers 14

    iget-object v1, p2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    #getter for: Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAllowListRecord:Ljava/util/HashSet;
    invoke-static {p2}, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->access$500(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)Ljava/util/HashSet;

    move-result-object v6

    #getter for: Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mBlockListRecordInRom:Ljava/util/HashSet;
    invoke-static {p2}, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->access$600(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)Ljava/util/HashSet;

    move-result-object v7

    invoke-virtual {v6}, Ljava/util/HashSet;->clear()V

    invoke-virtual {v7}, Ljava/util/HashSet;->clear()V

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v8

    :try_start_14
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_18
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    const-string v9, "com.android.email.SecurityPolicy$PolicyAdmin"

    iget-object v10, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v10}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_18

    iget-object v9, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowListRecord:Ljava/util/HashSet;

    invoke-virtual {v9}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    new-instance v2, Ljava/util/HashSet;

    iget-object v9, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowListRecord:Ljava/util/HashSet;

    invoke-virtual {v9}, Ljava/util/HashSet;->size()I

    move-result v9

    invoke-direct {v2, v9}, Ljava/util/HashSet;-><init>(I)V
    :try_end_47
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_47} :catch_89

    :goto_47
    :try_start_47
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_63

    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->getHarmonyEAS()Landroid/content/IHarmonyEAS;

    move-result-object v10

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v10, v9, p1}, Landroid/content/IHarmonyEAS;->getPackageNameFromHash(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_5e
    .catch Landroid/os/RemoteException; {:try_start_47 .. :try_end_5e} :catch_5f

    goto :goto_47

    :catch_5f
    move-exception v3

    :try_start_60
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_63
    const-string v9, ""

    invoke-virtual {v2, v9}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v6, v2}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    iget-object v9, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->blockListRecordInRom:Ljava/util/HashSet;

    invoke-virtual {v7, v9}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_74
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z
    :try_end_77
    .catch Landroid/os/RemoteException; {:try_start_60 .. :try_end_77} :catch_89

    move-result v9

    if-eqz v9, :cond_8d

    :try_start_7a
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v8, v9, p1}, Landroid/content/pm/IPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;I)I
    :try_end_83
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7a .. :try_end_83} :catch_84
    .catch Landroid/os/RemoteException; {:try_start_7a .. :try_end_83} :catch_89

    goto :goto_74

    :catch_84
    move-exception v3

    :try_start_85
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V
    :try_end_88
    .catch Landroid/os/RemoteException; {:try_start_85 .. :try_end_88} :catch_89

    goto :goto_74

    :catch_89
    move-exception v3

    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_8d
    return-void
.end method

.method public isActivePasswordSufficient(I)Z
    .registers 8

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    monitor-enter p0

    :try_start_6
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    iget v4, v1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordQuality:I

    const/4 v5, 0x0

    invoke-virtual {p0, v5, p1}, Lcom/android/server/DevicePolicyManagerService;->getPasswordQuality(Landroid/content/ComponentName;I)I

    move-result v5

    if-lt v4, v5, :cond_21

    iget v4, v1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLength:I

    const/4 v5, 0x0

    invoke-virtual {p0, v5, p1}, Lcom/android/server/DevicePolicyManagerService;->getPasswordMinimumLength(Landroid/content/ComponentName;I)I

    move-result v5

    if-ge v4, v5, :cond_23

    :cond_21
    monitor-exit p0

    :goto_22
    return v2

    :cond_23
    const/4 v4, 0x0

    invoke-virtual {p0, v4, p1}, Lcom/android/server/DevicePolicyManagerService;->getSimplePasswordEnabled(Landroid/content/ComponentName;I)Z

    move-result v4

    if-nez v4, :cond_4e

    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_47

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isDevicePasswordSimple()Z

    move-result v4

    if-eqz v4, :cond_4e

    const-string v3, "DevicePolicyManagerService"

    const-string v4, "isActivePasswordSufficient() : simple password is not allowed"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    goto :goto_22

    :catchall_44
    move-exception v2

    monitor-exit p0
    :try_end_46
    .catchall {:try_start_6 .. :try_end_46} :catchall_44

    throw v2

    :cond_47
    :try_start_47
    const-string v4, "DevicePolicyManagerService"

    const-string v5, "isActivePasswordSufficient() : fail to get isDevicePasswordSimple() due to mContext == null"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4e
    iget v4, v1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordQuality:I

    const/high16 v5, 0x6

    if-eq v4, v5, :cond_57

    monitor-exit p0

    move v2, v3

    goto :goto_22

    :cond_57
    iget v4, v1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordUpperCase:I

    const/4 v5, 0x0

    invoke-virtual {p0, v5, p1}, Lcom/android/server/DevicePolicyManagerService;->getPasswordMinimumUpperCase(Landroid/content/ComponentName;I)I

    move-result v5

    if-lt v4, v5, :cond_8e

    iget v4, v1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLowerCase:I

    const/4 v5, 0x0

    invoke-virtual {p0, v5, p1}, Lcom/android/server/DevicePolicyManagerService;->getPasswordMinimumLowerCase(Landroid/content/ComponentName;I)I

    move-result v5

    if-lt v4, v5, :cond_8e

    iget v4, v1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLetters:I

    const/4 v5, 0x0

    invoke-virtual {p0, v5, p1}, Lcom/android/server/DevicePolicyManagerService;->getPasswordMinimumLetters(Landroid/content/ComponentName;I)I

    move-result v5

    if-lt v4, v5, :cond_8e

    iget v4, v1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNumeric:I

    const/4 v5, 0x0

    invoke-virtual {p0, v5, p1}, Lcom/android/server/DevicePolicyManagerService;->getPasswordMinimumNumeric(Landroid/content/ComponentName;I)I

    move-result v5

    if-lt v4, v5, :cond_8e

    iget v4, v1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordSymbols:I

    const/4 v5, 0x0

    invoke-virtual {p0, v5, p1}, Lcom/android/server/DevicePolicyManagerService;->getPasswordMinimumSymbols(Landroid/content/ComponentName;I)I

    move-result v5

    if-lt v4, v5, :cond_8e

    iget v4, v1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNonLetter:I

    const/4 v5, 0x0

    invoke-virtual {p0, v5, p1}, Lcom/android/server/DevicePolicyManagerService;->getPasswordMinimumNonLetter(Landroid/content/ComponentName;I)I

    move-result v5

    if-lt v4, v5, :cond_8e

    move v2, v3

    :cond_8e
    monitor-exit p0
    :try_end_8f
    .catchall {:try_start_47 .. :try_end_8f} :catchall_44

    goto :goto_22
.end method

.method public isAdminActive(Landroid/content/ComponentName;I)Z
    .registers 4

    invoke-direct {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    monitor-enter p0

    :try_start_4
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    :goto_b
    monitor-exit p0

    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_b

    :catchall_f
    move-exception v0

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public isDeviceOwner(Ljava/lang/String;)Z
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/DevicePolicyManagerService$DeviceOwner;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/server/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/DevicePolicyManagerService$DeviceOwner;

    invoke-virtual {v0}, Lcom/android/server/DevicePolicyManagerService$DeviceOwner;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    :goto_12
    monitor-exit p0

    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_12

    :catchall_16
    move-exception v0

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_16

    throw v0
.end method

.method loadDeviceOwner()V
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-static {}, Lcom/android/server/DevicePolicyManagerService$DeviceOwner;->isRegistered()Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Lcom/android/server/DevicePolicyManagerService$DeviceOwner;

    invoke-direct {v0}, Lcom/android/server/DevicePolicyManagerService$DeviceOwner;-><init>()V

    iput-object v0, p0, Lcom/android/server/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/DevicePolicyManagerService$DeviceOwner;

    :cond_e
    monitor-exit p0

    return-void

    :catchall_10
    move-exception v0

    monitor-exit p0
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public lockNow()V
    .registers 3

    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x3

    :try_start_3
    invoke-virtual {p0, v0, v1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->lockNowUnchecked()V

    monitor-exit p0

    return-void

    :catchall_b
    move-exception v0

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method manageAllowThirdPartyApps(I)V
    .registers 15

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v11

    #getter for: Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAllowListRecord:Ljava/util/HashSet;
    invoke-static {v11}, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->access$500(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)Ljava/util/HashSet;

    move-result-object v7

    const/4 v2, 0x0

    invoke-virtual {p0, v2, p1}, Lcom/android/server/DevicePolicyManagerService;->getAllowAppListThirdParty(Landroid/content/ComponentName;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    invoke-static {v12, v8}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    const-string v2, ""

    invoke-virtual {v12, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->getHarmonyEAS()Landroid/content/IHarmonyEAS;

    invoke-virtual {v7}, Ljava/util/HashSet;->size()I

    move-result v2

    if-lez v2, :cond_75

    invoke-virtual {v12}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_75

    invoke-virtual {p0, v5, p1}, Lcom/android/server/DevicePolicyManagerService;->disableThirdPartyApps(ZI)V

    :goto_38
    invoke-virtual {v12}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :try_start_3c
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    :cond_40
    :goto_40
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_74

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lcom/android/server/DevicePolicyManagerService;->mHM:Landroid/content/IHarmonyEAS;

    invoke-interface {v2, v1, p1}, Landroid/content/IHarmonyEAS;->getPackageNameFromHash(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z
    :try_end_55
    .catch Landroid/os/RemoteException; {:try_start_3c .. :try_end_55} :catch_70

    move-result v2

    if-nez v2, :cond_40

    :try_start_58
    invoke-interface {v0, v1, p1}, Landroid/content/pm/IPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_40

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v5, "DevicePolicyManager"

    move v4, p1

    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_6a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_58 .. :try_end_6a} :catch_6b
    .catch Landroid/os/RemoteException; {:try_start_58 .. :try_end_6a} :catch_70

    goto :goto_40

    :catch_6b
    move-exception v9

    :try_start_6c
    invoke-direct {p0, v1}, Lcom/android/server/DevicePolicyManagerService;->removePackageFromHarmonyEAS(Ljava/lang/String;)V
    :try_end_6f
    .catch Landroid/os/RemoteException; {:try_start_6c .. :try_end_6f} :catch_70

    goto :goto_40

    :catch_70
    move-exception v9

    invoke-virtual {v9}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_74
    :goto_74
    return-void

    :cond_75
    invoke-virtual {v12}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7f

    invoke-virtual {p0, v4, p1}, Lcom/android/server/DevicePolicyManagerService;->disableThirdPartyApps(ZI)V

    goto :goto_38

    :cond_7f
    invoke-virtual {v7}, Ljava/util/HashSet;->clear()V

    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->enableAllThirdPartyApps(I)V

    goto :goto_74
.end method

.method manageBlockedApplications(I)V
    .registers 15

    const/4 v2, 0x0

    invoke-virtual {p0, v2, p1}, Lcom/android/server/DevicePolicyManagerService;->getBlockListInRom(Landroid/content/ComponentName;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v12

    #getter for: Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mBlockListRecordInRom:Ljava/util/HashSet;
    invoke-static {v12}, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->access$600(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)Ljava/util/HashSet;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/HashSet;->size()I

    move-result v2

    if-lez v2, :cond_16

    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->enableAllBlockedListApps(I)V

    :cond_16
    const-string v2, ","

    invoke-virtual {v8, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    invoke-static {v11, v6}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    const-string v2, ""

    invoke-virtual {v11, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v11}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-virtual {v7}, Ljava/util/HashSet;->clear()V

    :cond_32
    :goto_32
    return-void

    :cond_33
    :try_start_33
    invoke-virtual {v11}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v10

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    :cond_3b
    :goto_3b
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_3b

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z
    :try_end_4c
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_4c} :catch_5d

    move-result v2

    if-nez v2, :cond_3b

    const/4 v2, 0x2

    const/4 v3, 0x0

    :try_start_51
    const-string v5, "DevicePolicyManager"

    move v4, p1

    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_5a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_51 .. :try_end_5a} :catch_5b
    .catch Landroid/os/RemoteException; {:try_start_51 .. :try_end_5a} :catch_5d

    goto :goto_3b

    :catch_5b
    move-exception v2

    goto :goto_3b

    :catch_5d
    move-exception v9

    invoke-virtual {v9}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_32
.end method

.method public notifyChanges(Landroid/content/ComponentName;ZI)V
    .registers 8

    const/4 v1, 0x0

    if-nez p1, :cond_4

    :cond_3
    :goto_3
    return-void

    :cond_4
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.android.email.SecurityPolicy$PolicyAdmin"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    const-string v2, "DevicePolicyManagerService"

    const-string v3, "notifyChanges(): Not Email Admin not proceeding."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_18
    invoke-virtual {p0, p1, p3}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    if-eqz v0, :cond_3

    if-eqz p2, :cond_25

    iget-boolean v2, p0, Lcom/android/server/DevicePolicyManagerService;->mNotifyChanges:Z

    if-nez v2, :cond_25

    const/4 v1, 0x1

    :cond_25
    iput-boolean p2, p0, Lcom/android/server/DevicePolicyManagerService;->mNotifyChanges:Z

    if-eqz v1, :cond_3

    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->sendChangedNotification(I)V

    goto :goto_3
.end method

.method public packageHasActiveAdmins(Ljava/lang/String;I)Z
    .registers 7

    invoke-direct {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    monitor-enter p0

    :try_start_4
    invoke-virtual {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v2

    iget-object v3, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_f
    if-ge v1, v0, :cond_2b

    iget-object v3, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    iget-object v3, v3, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v3}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    const/4 v3, 0x1

    monitor-exit p0

    :goto_27
    return v3

    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_2b
    const/4 v3, 0x0

    monitor-exit p0

    goto :goto_27

    :catchall_2e
    move-exception v3

    monitor-exit p0
    :try_end_30
    .catchall {:try_start_4 .. :try_end_30} :catchall_2e

    throw v3
.end method

.method public reboot(Ljava/lang/String;)V
    .registers 9

    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.sec.MDM_SECURITY"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_c
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.enterprise.SHOW_UI"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "message"

    iget-object v5, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const v6, 0x10402b6

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->getIPowerManager()Landroid/os/IPowerManager;

    move-result-object v4

    if-eqz v4, :cond_33

    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mIPowerManager:Landroid/os/IPowerManager;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v4, v5, p1, v6}, Landroid/os/IPowerManager;->reboot(ZLjava/lang/String;Z)V
    :try_end_33
    .catchall {:try_start_c .. :try_end_33} :catchall_40
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_33} :catch_37

    :cond_33
    :goto_33
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catch_37
    move-exception v0

    :try_start_38
    const-string v4, "DevicePolicyManagerService"

    const-string v5, "Failure talking with power manager"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3f
    .catchall {:try_start_38 .. :try_end_3f} :catchall_40

    goto :goto_33

    :catchall_40
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public recoverPassword(I)V
    .registers 7

    iget-object v2, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BIND_DEVICE_ADMIN"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    monitor-enter p0

    :try_start_9
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_1e

    move-result-wide v0

    :try_start_d
    const-string v2, "android.app.action.ACTION_RECOVERY_PASSWORD_REQUESTED"

    const/16 v3, 0xa

    invoke-virtual {p0, v2, v3, p1}, Lcom/android/server/DevicePolicyManagerService;->sendAdminCommandLocked(Ljava/lang/String;II)V
    :try_end_14
    .catchall {:try_start_d .. :try_end_14} :catchall_19

    :try_start_14
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit p0

    return-void

    :catchall_19
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    :catchall_1e
    move-exception v2

    monitor-exit p0
    :try_end_20
    .catchall {:try_start_14 .. :try_end_20} :catchall_1e

    throw v2
.end method

.method public removeActiveAdmin(Landroid/content/ComponentName;I)V
    .registers 10

    invoke-direct {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    new-instance v1, Landroid/app/enterprise/EnterpriseDeviceManager;

    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Landroid/app/enterprise/EnterpriseDeviceManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Landroid/app/enterprise/EnterpriseDeviceManager;->isAdminRemovable(Landroid/content/ComponentName;)Z

    move-result v4

    if-nez v4, :cond_11

    :goto_10
    return-void

    :cond_11
    monitor-enter p0

    :try_start_12
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    if-nez v0, :cond_1d

    monitor-exit p0

    goto :goto_10

    :catchall_1a
    move-exception v4

    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_12 .. :try_end_1c} :catchall_1a

    throw v4

    :cond_1d
    :try_start_1d
    invoke-virtual {v0}, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->getUid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    if-eq v4, v5, :cond_46

    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/DevicePolicyManagerService$DeviceOwner;

    if-eqz v4, :cond_3d

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/DevicePolicyManagerService$DeviceOwner;

    invoke-virtual {v5}, Lcom/android/server/DevicePolicyManagerService$DeviceOwner;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3d

    monitor-exit p0

    goto :goto_10

    :cond_3d
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.BIND_DEVICE_ADMIN"

    const-string v6, "Only system or itself can remove an DPM admin"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_46
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_49
    .catchall {:try_start_1d .. :try_end_49} :catchall_1a

    move-result-wide v2

    :try_start_4a
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->removeActiveAdminLocked(Landroid/content/ComponentName;I)V
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_52

    :try_start_4d
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit p0

    goto :goto_10

    :catchall_52
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
    :try_end_57
    .catchall {:try_start_4d .. :try_end_57} :catchall_1a
.end method

.method removeActiveAdminLocked(Landroid/content/ComponentName;I)V
    .registers 6

    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    if-eqz v0, :cond_10

    const-string v1, "android.app.action.DEVICE_ADMIN_DISABLED"

    new-instance v2, Lcom/android/server/DevicePolicyManagerService$2;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/server/DevicePolicyManagerService$2;-><init>(Lcom/android/server/DevicePolicyManagerService;Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;Landroid/content/ComponentName;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/DevicePolicyManagerService;->sendAdminCommandLocked(Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    :cond_10
    return-void
.end method

.method removeUserData(I)V
    .registers 7

    monitor-enter p0

    if-nez p1, :cond_c

    :try_start_3
    const-string v2, "DevicePolicyManagerService"

    const-string v3, "Tried to remove device policy file for user 0! Ignoring."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    :goto_b
    return-void

    :cond_c
    iget-object v2, p0, Lcom/android/server/DevicePolicyManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    if-eqz v0, :cond_1b

    iget-object v2, p0, Lcom/android/server/DevicePolicyManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_1b
    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    const-string v3, "device_policies.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    const-string v2, "DevicePolicyManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removed device policy file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    goto :goto_b

    :catchall_47
    move-exception v2

    monitor-exit p0
    :try_end_49
    .catchall {:try_start_3 .. :try_end_49} :catchall_47

    throw v2
.end method

.method public reportFailedPasswordAttempt(I)V
    .registers 8

    invoke-direct {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    iget-object v3, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.BIND_DEVICE_ADMIN"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    monitor-enter p0

    :try_start_c
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_2d

    move-result-wide v0

    :try_start_14
    iget v3, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mFailedPasswordAttempts:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mFailedPasswordAttempts:I

    invoke-direct {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V

    const-string v3, "android.app.action.ACTION_PASSWORD_FAILED"

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4, p1}, Lcom/android/server/DevicePolicyManagerService;->sendAdminCommandLocked(Ljava/lang/String;II)V
    :try_end_23
    .catchall {:try_start_14 .. :try_end_23} :catchall_28

    :try_start_23
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit p0

    return-void

    :catchall_28
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :catchall_2d
    move-exception v3

    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_23 .. :try_end_2f} :catchall_2d

    throw v3
.end method

.method public reportSuccessfulPasswordAttempt(I)V
    .registers 8

    invoke-direct {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    iget-object v3, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.BIND_DEVICE_ADMIN"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    monitor-enter p0

    :try_start_c
    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v2

    iget v3, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mFailedPasswordAttempts:I

    if-nez v3, :cond_18

    iget v3, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    if-ltz v3, :cond_2e

    :cond_18
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1b
    .catchall {:try_start_c .. :try_end_1b} :catchall_35

    move-result-wide v0

    const/4 v3, 0x0

    :try_start_1d
    iput v3, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mFailedPasswordAttempts:I

    const/4 v3, -0x1

    iput v3, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    invoke-direct {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V

    const-string v3, "android.app.action.ACTION_PASSWORD_SUCCEEDED"

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4, p1}, Lcom/android/server/DevicePolicyManagerService;->sendAdminCommandLocked(Ljava/lang/String;II)V
    :try_end_2b
    .catchall {:try_start_1d .. :try_end_2b} :catchall_30

    :try_start_2b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_2e
    monitor-exit p0

    return-void

    :catchall_30
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :catchall_35
    move-exception v3

    monitor-exit p0
    :try_end_37
    .catchall {:try_start_2b .. :try_end_37} :catchall_35

    throw v3
.end method

.method public resetPassword(Ljava/lang/String;II)Z
    .registers 36

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    monitor-enter p0

    const/16 v29, 0x0

    const/16 v30, 0x2

    :try_start_c
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/DevicePolicyManagerService;->getPasswordQuality(Landroid/content/ComponentName;I)I

    move-result v24

    if-eqz v24, :cond_6b

    invoke-static/range {p1 .. p1}, Lcom/android/internal/widget/LockPatternUtils;->computePasswordQuality(Ljava/lang/String;)I

    move-result v25

    move/from16 v0, v25

    move/from16 v1, v24

    if-ge v0, v1, :cond_63

    const/high16 v29, 0x6

    move/from16 v0, v24

    move/from16 v1, v29

    if-eq v0, v1, :cond_63

    const-string v29, "DevicePolicyManagerService"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "resetPassword: password quality 0x"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " does not meet required quality 0x"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v29, 0x0

    monitor-exit p0

    :goto_62
    return v29

    :cond_63
    move/from16 v0, v25

    move/from16 v1, v24

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v24

    :cond_6b
    const/high16 v29, 0x7

    move/from16 v0, v24

    move/from16 v1, v29

    if-ne v0, v1, :cond_81

    const-string v29, "DevicePolicyManagerService"

    const-string v30, "resetPassword: current password quality is smartcard numeric and can\'t set reset password"

    invoke-static/range {v29 .. v30}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v29, 0x0

    monitor-exit p0

    goto :goto_62

    :catchall_7e
    move-exception v29

    monitor-exit p0
    :try_end_80
    .catchall {:try_start_c .. :try_end_80} :catchall_7e

    throw v29

    :cond_81
    const/16 v29, 0x0

    :try_start_83
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/DevicePolicyManagerService;->getPasswordMinimumLength(Landroid/content/ComponentName;I)I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v29

    move/from16 v0, v29

    if-ge v0, v11, :cond_c1

    const-string v29, "DevicePolicyManagerService"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "resetPassword: password length "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " does not meet required length "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v29, 0x0

    monitor-exit p0

    goto :goto_62

    :cond_c1
    const/high16 v29, 0x6

    move/from16 v0, v24

    move/from16 v1, v29

    if-ne v0, v1, :cond_292

    const/4 v12, 0x0

    const/16 v27, 0x0

    const/4 v13, 0x0

    const/16 v22, 0x0

    const/16 v26, 0x0

    const/16 v21, 0x0

    const/4 v7, 0x0

    :goto_d4
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v29

    move/from16 v0, v29

    if-ge v7, v0, :cond_11c

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v29, 0x41

    move/from16 v0, v29

    if-lt v5, v0, :cond_f5

    const/16 v29, 0x5a

    move/from16 v0, v29

    if-gt v5, v0, :cond_f5

    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v27, v27, 0x1

    :goto_f2
    add-int/lit8 v7, v7, 0x1

    goto :goto_d4

    :cond_f5
    const/16 v29, 0x61

    move/from16 v0, v29

    if-lt v5, v0, :cond_106

    const/16 v29, 0x7a

    move/from16 v0, v29

    if-gt v5, v0, :cond_106

    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v13, v13, 0x1

    goto :goto_f2

    :cond_106
    const/16 v29, 0x30

    move/from16 v0, v29

    if-lt v5, v0, :cond_117

    const/16 v29, 0x39

    move/from16 v0, v29

    if-gt v5, v0, :cond_117

    add-int/lit8 v22, v22, 0x1

    add-int/lit8 v21, v21, 0x1

    goto :goto_f2

    :cond_117
    add-int/lit8 v26, v26, 0x1

    add-int/lit8 v21, v21, 0x1

    goto :goto_f2

    :cond_11c
    const/16 v29, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/DevicePolicyManagerService;->getPasswordMinimumLetters(Landroid/content/ComponentName;I)I

    move-result v14

    if-ge v12, v14, :cond_155

    const-string v29, "DevicePolicyManagerService"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "resetPassword: number of letters "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " does not meet required number of letters "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v29, 0x0

    monitor-exit p0

    goto/16 :goto_62

    :cond_155
    const/16 v29, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/DevicePolicyManagerService;->getPasswordMinimumNumeric(Landroid/content/ComponentName;I)I

    move-result v17

    move/from16 v0, v22

    move/from16 v1, v17

    if-ge v0, v1, :cond_196

    const-string v29, "DevicePolicyManagerService"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "resetPassword: number of numerical digits "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " does not meet required number of numerical digits "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v29, 0x0

    monitor-exit p0

    goto/16 :goto_62

    :cond_196
    const/16 v29, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/DevicePolicyManagerService;->getPasswordMinimumLowerCase(Landroid/content/ComponentName;I)I

    move-result v15

    if-ge v13, v15, :cond_1cf

    const-string v29, "DevicePolicyManagerService"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "resetPassword: number of lowercase letters "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " does not meet required number of lowercase letters "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v29, 0x0

    monitor-exit p0

    goto/16 :goto_62

    :cond_1cf
    const/16 v29, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/DevicePolicyManagerService;->getPasswordMinimumUpperCase(Landroid/content/ComponentName;I)I

    move-result v19

    move/from16 v0, v27

    move/from16 v1, v19

    if-ge v0, v1, :cond_210

    const-string v29, "DevicePolicyManagerService"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "resetPassword: number of uppercase letters "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " does not meet required number of uppercase letters "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v29, 0x0

    monitor-exit p0

    goto/16 :goto_62

    :cond_210
    const/16 v29, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/DevicePolicyManagerService;->getPasswordMinimumSymbols(Landroid/content/ComponentName;I)I

    move-result v18

    move/from16 v0, v26

    move/from16 v1, v18

    if-ge v0, v1, :cond_251

    const-string v29, "DevicePolicyManagerService"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "resetPassword: number of special symbols "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " does not meet required number of special symbols "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v29, 0x0

    monitor-exit p0

    goto/16 :goto_62

    :cond_251
    const/16 v29, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/DevicePolicyManagerService;->getPasswordMinimumNonLetter(Landroid/content/ComponentName;I)I

    move-result v16

    move/from16 v0, v21

    move/from16 v1, v16

    if-ge v0, v1, :cond_292

    const-string v29, "DevicePolicyManagerService"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "resetPassword: number of non-letter characters "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " does not meet required number of non-letter characters "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v29, 0x0

    monitor-exit p0

    goto/16 :goto_62

    :cond_292
    monitor-exit p0
    :try_end_293
    .catchall {:try_start_83 .. :try_end_293} :catchall_7e

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    move/from16 v29, v0

    if-ltz v29, :cond_2bc

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    move/from16 v29, v0

    move/from16 v0, v29

    if-eq v0, v6, :cond_2bc

    const-string v29, "DevicePolicyManagerService"

    const-string v30, "resetPassword: already set by another uid and not entered by user"

    invoke-static/range {v29 .. v30}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v29, 0x0

    goto/16 :goto_62

    :cond_2bc
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    :try_start_2c0
    new-instance v28, Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    invoke-direct/range {v28 .. v29}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    move/from16 v2, v24

    move/from16 v3, v29

    move/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;IZI)V

    monitor-enter p0
    :try_end_2db
    .catchall {:try_start_2c0 .. :try_end_2db} :catchall_323

    and-int/lit8 v29, p2, 0x1

    if-eqz v29, :cond_31d

    move/from16 v20, v6

    :goto_2e1
    :try_start_2e1
    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    move/from16 v29, v0

    move/from16 v0, v29

    move/from16 v1, v20

    if-eq v0, v1, :cond_2fa

    move/from16 v0, v20

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V

    :cond_2fa
    monitor-exit p0
    :try_end_2fb
    .catchall {:try_start_2e1 .. :try_end_2fb} :catchall_320

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    new-instance v10, Landroid/content/Intent;

    const-string v29, "android.app.action.DEVICE_POLICY_MANAGER_PASSWORD_CHANGED"

    move-object/from16 v0, v29

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v29, 0x4000

    move/from16 v0, v29

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/16 v29, 0x1

    goto/16 :goto_62

    :cond_31d
    const/16 v20, -0x1

    goto :goto_2e1

    :catchall_320
    move-exception v29

    :try_start_321
    monitor-exit p0
    :try_end_322
    .catchall {:try_start_321 .. :try_end_322} :catchall_320

    :try_start_322
    throw v29
    :try_end_323
    .catchall {:try_start_322 .. :try_end_323} :catchall_323

    :catchall_323
    move-exception v29

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v29
.end method

.method public satisfyFIPSPassword(I)Z
    .registers 10

    invoke-virtual {p0, p1}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v4

    const/4 v3, 0x0

    const/4 v5, 0x0

    monitor-enter p0

    :try_start_7
    iget-object v6, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v0, :cond_21

    iget-object v6, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    iget v6, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordQuality:I

    if-ge v3, v6, :cond_1e

    iget v3, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordQuality:I

    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_21
    const/high16 v6, 0x2

    if-lt v3, v6, :cond_2c

    iget v6, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordQuality:I

    if-lt v6, v3, :cond_2a

    const/4 v5, 0x1

    :cond_2a
    :goto_2a
    monitor-exit p0

    return v5

    :cond_2c
    iget v6, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordQuality:I

    const/high16 v7, 0x5

    if-lt v6, v7, :cond_2a

    iget v6, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLength:I

    const/4 v7, 0x6

    if-lt v6, v7, :cond_2a

    const/4 v5, 0x1

    goto :goto_2a

    :catchall_39
    move-exception v6

    monitor-exit p0
    :try_end_3b
    .catchall {:try_start_7 .. :try_end_3b} :catchall_39

    throw v6
.end method

.method sendAdminCommandLocked(Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/DevicePolicyManagerService;->sendAdminCommandLocked(Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method sendAdminCommandLocked(Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;Ljava/lang/String;Landroid/content/BroadcastReceiver;)V
    .registers 13

    const/4 v3, 0x0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v0}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v0, "android.app.action.ACTION_PASSWORD_EXPIRING"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const-string v0, "expiration"

    iget-wide v4, p1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    invoke-virtual {v1, v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :cond_1e
    if-eqz p3, :cond_30

    iget-object v0, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    iget-object v5, p0, Lcom/android/server/DevicePolicyManagerService;->mHandler:Landroid/os/Handler;

    const/4 v6, -0x1

    move-object v4, p3

    move-object v7, v3

    move-object v8, v3

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    :goto_2f
    return-void

    :cond_30
    iget-object v0, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_2f
.end method

.method sendAdminCommandLocked(Ljava/lang/String;II)V
    .registers 9

    invoke-virtual {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    iget-object v4, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_25

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v1, :cond_25

    iget-object v4, v3, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    iget-object v4, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v4, p2}, Landroid/app/admin/DeviceAdminInfo;->usesPolicy(I)Z

    move-result v4

    if-eqz v4, :cond_22

    invoke-virtual {p0, v0, p1}, Lcom/android/server/DevicePolicyManagerService;->sendAdminCommandLocked(Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;Ljava/lang/String;)V

    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_25
    return-void
.end method

.method public setActiveAdmin(Landroid/content/ComponentName;ZI)V
    .registers 16

    iget-object v9, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v10, "android.permission.BIND_DEVICE_ADMIN"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    invoke-virtual {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v7

    invoke-virtual {p0, p1, p3}, Lcom/android/server/DevicePolicyManagerService;->findAdmin(Landroid/content/ComponentName;I)Landroid/app/admin/DeviceAdminInfo;

    move-result-object v4

    if-nez v4, :cond_2e

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

    :cond_2e
    monitor-enter p0

    :try_start_2f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_48

    move-result-wide v2

    if-nez p2, :cond_4b

    :try_start_35
    invoke-virtual {p0, p1, p3}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v9

    if-eqz v9, :cond_4b

    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Admin is already added"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_43
    .catchall {:try_start_35 .. :try_end_43} :catchall_43

    :catchall_43
    move-exception v9

    :try_start_44
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v9

    :catchall_48
    move-exception v9

    monitor-exit p0
    :try_end_4a
    .catchall {:try_start_44 .. :try_end_4a} :catchall_48

    throw v9

    :cond_4b
    :try_start_4b
    new-instance v5, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    invoke-direct {v5, v4}, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;-><init>(Landroid/app/admin/DeviceAdminInfo;)V

    iget-object v9, v7, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    invoke-virtual {v9, p1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v8, -0x1

    if-eqz p2, :cond_76

    iget-object v9, v7, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5f
    if-ge v1, v0, :cond_76

    iget-object v9, v7, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    iget-object v9, v6, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v9}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v9, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_92

    move v8, v1

    :cond_76
    const/4 v9, -0x1

    if-ne v8, v9, :cond_95

    iget-object v9, v7, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9, p3}, Lcom/android/server/DevicePolicyManagerService;->enableIfNecessary(Ljava/lang/String;I)V

    :goto_85
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V

    const-string v9, "android.app.action.DEVICE_ADMIN_ENABLED"

    invoke-virtual {p0, v5, v9}, Lcom/android/server/DevicePolicyManagerService;->sendAdminCommandLocked(Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;Ljava/lang/String;)V
    :try_end_8d
    .catchall {:try_start_4b .. :try_end_8d} :catchall_43

    :try_start_8d
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit p0
    :try_end_91
    .catchall {:try_start_8d .. :try_end_91} :catchall_48

    return-void

    :cond_92
    add-int/lit8 v1, v1, 0x1

    goto :goto_5f

    :cond_95
    :try_start_95
    iget-object v9, v7, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v9, v8, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_9a
    .catchall {:try_start_95 .. :try_end_9a} :catchall_43

    goto :goto_85
.end method

.method public setActivePasswordState(IIIIIIIII)V
    .registers 16

    invoke-direct {p0, p9}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    iget-object v3, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.BIND_DEVICE_ADMIN"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p9}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v2

    const/high16 v3, 0x7

    if-ne p1, v3, :cond_38

    iget-object v3, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->isSmartCardAuthenticationInstalled(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_3b

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid quality constant: 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_38
    invoke-static {p1}, Lcom/android/server/DevicePolicyManagerService;->validateQualityConstant(I)V

    :cond_3b
    monitor-enter p0

    :try_start_3c
    iget v3, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordQuality:I

    if-ne v3, p1, :cond_60

    iget v3, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLength:I

    if-ne v3, p2, :cond_60

    iget v3, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mFailedPasswordAttempts:I

    if-nez v3, :cond_60

    iget v3, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLetters:I

    if-ne v3, p3, :cond_60

    iget v3, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordUpperCase:I

    if-ne v3, p4, :cond_60

    iget v3, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLowerCase:I

    if-ne v3, p5, :cond_60

    iget v3, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNumeric:I

    if-ne v3, p6, :cond_60

    iget v3, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordSymbols:I

    if-ne v3, p7, :cond_60

    iget v3, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNonLetter:I

    if-eq v3, p8, :cond_8b

    :cond_60
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_63
    .catchall {:try_start_3c .. :try_end_63} :catchall_92

    move-result-wide v0

    :try_start_64
    iput p1, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordQuality:I

    iput p2, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLength:I

    iput p3, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLetters:I

    iput p5, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordLowerCase:I

    iput p4, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordUpperCase:I

    iput p6, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNumeric:I

    iput p7, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordSymbols:I

    iput p8, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mActivePasswordNonLetter:I

    const/4 v3, 0x0

    iput v3, v2, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mFailedPasswordAttempts:I

    invoke-direct {p0, p9}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V

    invoke-direct {p0, p9}, Lcom/android/server/DevicePolicyManagerService;->updatePasswordExpirationsLocked(I)V

    iget-object v3, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v3, v2}, Lcom/android/server/DevicePolicyManagerService;->setExpirationAlarmCheckLocked(Landroid/content/Context;Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V

    const-string v3, "android.app.action.ACTION_PASSWORD_CHANGED"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4, p9}, Lcom/android/server/DevicePolicyManagerService;->sendAdminCommandLocked(Ljava/lang/String;II)V
    :try_end_88
    .catchall {:try_start_64 .. :try_end_88} :catchall_8d

    :try_start_88
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_8b
    monitor-exit p0

    return-void

    :catchall_8d
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :catchall_92
    move-exception v3

    monitor-exit p0
    :try_end_94
    .catchall {:try_start_88 .. :try_end_94} :catchall_92

    throw v3
.end method

.method public setAdminPermissions(Landroid/content/ComponentName;I)V
    .registers 10

    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    if-nez v0, :cond_7

    :goto_6
    return-void

    :cond_7
    invoke-virtual {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->findAdmin(Landroid/content/ComponentName;I)Landroid/app/admin/DeviceAdminInfo;

    move-result-object v3

    if-nez v3, :cond_26

    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad admin: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_26
    monitor-enter p0

    :try_start_27
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_3c

    move-result-wide v1

    :try_start_2b
    iget-object v4, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v3}, Landroid/app/admin/DeviceAdminInfo;->getPermissions()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroid/app/admin/DeviceAdminInfo;->setPermissions(J)V

    invoke-direct {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V
    :try_end_37
    .catchall {:try_start_2b .. :try_end_37} :catchall_3f

    :try_start_37
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit p0

    goto :goto_6

    :catchall_3c
    move-exception v4

    monitor-exit p0
    :try_end_3e
    .catchall {:try_start_37 .. :try_end_3e} :catchall_3c

    throw v4

    :catchall_3f
    move-exception v4

    :try_start_40
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
    :try_end_44
    .catchall {:try_start_40 .. :try_end_44} :catchall_3c
.end method

.method public setAllowAppListThirdParty(Landroid/content/ComponentName;Ljava/lang/String;I)V
    .registers 10

    invoke-virtual {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    monitor-enter p0

    if-nez p1, :cond_12

    :try_start_7
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "ComponentName is null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    :catchall_f
    move-exception v4

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw v4

    :cond_12
    :try_start_12
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.android.email.SecurityPolicy$PolicyAdmin"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_27

    const-string v4, "DevicePolicyManagerService"

    const-string v5, "Not Email Admin not proceeding."

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    :goto_26
    return-void

    :cond_27
    const/16 v4, 0x16

    invoke-virtual {p0, p1, v4}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    iget-object v4, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowThirdPartyList:Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_48

    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowThirdPartyList:Ljava/lang/String;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_3e
    .catchall {:try_start_12 .. :try_end_3e} :catchall_f

    move-result-wide v1

    :try_start_3f
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V

    invoke-virtual {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->manageAllowThirdPartyApps(I)V
    :try_end_45
    .catchall {:try_start_3f .. :try_end_45} :catchall_4a

    :try_start_45
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_48
    monitor-exit p0

    goto :goto_26

    :catchall_4a
    move-exception v4

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
    :try_end_4f
    .catchall {:try_start_45 .. :try_end_4f} :catchall_f
.end method

.method public setAllowBluetoothMode(Landroid/content/ComponentName;II)V
    .registers 9

    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    monitor-enter p0

    if-nez p1, :cond_11

    :try_start_6
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "ComponentName is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    :catchall_e
    move-exception v3

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_e

    throw v3

    :cond_11
    const/16 v3, 0x11

    :try_start_13
    invoke-virtual {p0, p1, v3}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    iget v3, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowBluetoothMode:I

    if-eq v3, p2, :cond_27

    iput p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowBluetoothMode:I

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_20
    .catchall {:try_start_13 .. :try_end_20} :catchall_e

    move-result-wide v1

    :try_start_21
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_29

    :try_start_24
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_27
    monitor-exit p0

    return-void

    :catchall_29
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_2e
    .catchall {:try_start_24 .. :try_end_2e} :catchall_e
.end method

.method public setAllowBrowser(Landroid/content/ComponentName;ZI)V
    .registers 9

    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    monitor-enter p0

    if-nez p1, :cond_11

    :try_start_6
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "ComponentName is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    :catchall_e
    move-exception v3

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_e

    throw v3

    :cond_11
    const/16 v3, 0xf

    :try_start_13
    invoke-virtual {p0, p1, v3}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    iget-boolean v3, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowBrowser:Z

    if-eq v3, p2, :cond_27

    iput-boolean p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowBrowser:Z

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_20
    .catchall {:try_start_13 .. :try_end_20} :catchall_e

    move-result-wide v1

    :try_start_21
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_29

    :try_start_24
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_27
    monitor-exit p0

    return-void

    :catchall_29
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_2e
    .catchall {:try_start_24 .. :try_end_2e} :catchall_e
.end method

.method public setAllowCamera(Landroid/content/ComponentName;ZI)V
    .registers 5

    if-nez p2, :cond_7

    const/4 v0, 0x1

    :goto_3
    invoke-virtual {p0, p1, v0, p3}, Lcom/android/server/DevicePolicyManagerService;->setCameraDisabled(Landroid/content/ComponentName;ZI)V

    return-void

    :cond_7
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public setAllowDesktopSync(Landroid/content/ComponentName;ZI)V
    .registers 9

    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    monitor-enter p0

    if-nez p1, :cond_11

    :try_start_6
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "ComponentName is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    :catchall_e
    move-exception v3

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_e

    throw v3

    :cond_11
    const/16 v3, 0x12

    :try_start_13
    invoke-virtual {p0, p1, v3}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    iget-boolean v3, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowDesktopSync:Z

    if-eq v3, p2, :cond_27

    iput-boolean p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowDesktopSync:Z

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_20
    .catchall {:try_start_13 .. :try_end_20} :catchall_e

    move-result-wide v1

    :try_start_21
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_29

    :try_start_24
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_27
    monitor-exit p0

    return-void

    :catchall_29
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_2e
    .catchall {:try_start_24 .. :try_end_2e} :catchall_e
.end method

.method public setAllowInternetSharing(Landroid/content/ComponentName;ZI)V
    .registers 9

    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    monitor-enter p0

    if-nez p1, :cond_11

    :try_start_6
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "ComponentName is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    :catchall_e
    move-exception v3

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_e

    throw v3

    :cond_11
    const/16 v3, 0x10

    :try_start_13
    invoke-virtual {p0, p1, v3}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    iget-boolean v3, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowInternetSharing:Z

    if-eq v3, p2, :cond_27

    iput-boolean p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowInternetSharing:Z

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_20
    .catchall {:try_start_13 .. :try_end_20} :catchall_e

    move-result-wide v1

    :try_start_21
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_29

    :try_start_24
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_27
    monitor-exit p0

    return-void

    :catchall_29
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_2e
    .catchall {:try_start_24 .. :try_end_2e} :catchall_e
.end method

.method public setAllowIrDA(Landroid/content/ComponentName;ZI)V
    .registers 9

    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    monitor-enter p0

    if-nez p1, :cond_11

    :try_start_6
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "ComponentName is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    :catchall_e
    move-exception v3

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_e

    throw v3

    :cond_11
    const/16 v3, 0x13

    :try_start_13
    invoke-virtual {p0, p1, v3}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    iget-boolean v3, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowIrDA:Z

    if-eq v3, p2, :cond_27

    iput-boolean p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowIrDA:Z

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_20
    .catchall {:try_start_13 .. :try_end_20} :catchall_e

    move-result-wide v1

    :try_start_21
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_29

    :try_start_24
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_27
    monitor-exit p0

    return-void

    :catchall_29
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_2e
    .catchall {:try_start_24 .. :try_end_2e} :catchall_e
.end method

.method public setAllowPOPIMAPEmail(Landroid/content/ComponentName;ZI)V
    .registers 9

    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    monitor-enter p0

    if-nez p1, :cond_11

    :try_start_6
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "ComponentName is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    :catchall_e
    move-exception v3

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_e

    throw v3

    :cond_11
    const/16 v3, 0xe

    :try_start_13
    invoke-virtual {p0, p1, v3}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    iget-boolean v3, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowPOPIMAPEmail:Z

    if-eq v3, p2, :cond_27

    iput-boolean p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowPOPIMAPEmail:Z

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_20
    .catchall {:try_start_13 .. :try_end_20} :catchall_e

    move-result-wide v1

    :try_start_21
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_29

    :try_start_24
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_27
    monitor-exit p0

    return-void

    :catchall_29
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_2e
    .catchall {:try_start_24 .. :try_end_2e} :catchall_e
.end method

.method public setAllowStorageCard(Landroid/content/ComponentName;ZI)V
    .registers 9

    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    monitor-enter p0

    if-nez p1, :cond_11

    :try_start_6
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "ComponentName is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    :catchall_e
    move-exception v3

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_e

    throw v3

    :cond_11
    const/16 v3, 0xb

    :try_start_13
    invoke-virtual {p0, p1, v3}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    iget-boolean v3, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowStorageCard:Z

    if-eq v3, p2, :cond_27

    iput-boolean p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowStorageCard:Z

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_20
    .catchall {:try_start_13 .. :try_end_20} :catchall_e

    move-result-wide v1

    :try_start_21
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_29

    :try_start_24
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_27
    monitor-exit p0

    return-void

    :catchall_29
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_2e
    .catchall {:try_start_24 .. :try_end_2e} :catchall_e
.end method

.method public setAllowTextMessaging(Landroid/content/ComponentName;ZI)V
    .registers 9

    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    monitor-enter p0

    if-nez p1, :cond_11

    :try_start_6
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "ComponentName is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    :catchall_e
    move-exception v3

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_e

    throw v3

    :cond_11
    const/16 v3, 0xd

    :try_start_13
    invoke-virtual {p0, p1, v3}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    iget-boolean v3, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowTextMessaging:Z

    if-eq v3, p2, :cond_27

    iput-boolean p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowTextMessaging:Z

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_20
    .catchall {:try_start_13 .. :try_end_20} :catchall_e

    move-result-wide v1

    :try_start_21
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_29

    :try_start_24
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_27
    monitor-exit p0

    return-void

    :catchall_29
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_2e
    .catchall {:try_start_24 .. :try_end_2e} :catchall_e
.end method

.method public setAllowUnsignedApp(Landroid/content/ComponentName;ZI)V
    .registers 11

    monitor-enter p0

    if-nez p1, :cond_e

    :try_start_3
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "ComponentName is null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    :catchall_b
    move-exception v4

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v4

    :cond_e
    :try_start_e
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.android.email.SecurityPolicy$PolicyAdmin"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_23

    const-string v4, "DevicePolicyManagerService"

    const-string v5, "Not Email Admin not proceeding."

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    :goto_22
    return-void

    :cond_23
    const/4 v1, 0x0

    const/16 v4, 0x19

    invoke-virtual {p0, p1, v4}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    iget-boolean v4, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowUnsginedApp:Z

    if-eq v4, p2, :cond_4c

    iput-boolean p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowUnsginedApp:Z

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_33
    .catchall {:try_start_e .. :try_end_33} :catchall_b

    move-result-wide v2

    if-nez p2, :cond_43

    :try_start_36
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "install_non_market_apps"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v1, 0x1

    :cond_43
    invoke-virtual {p0, v1, p3}, Lcom/android/server/DevicePolicyManagerService;->handleAllowUnsignedApp(ZI)V

    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V
    :try_end_49
    .catchall {:try_start_36 .. :try_end_49} :catchall_4e

    :try_start_49
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_4c
    monitor-exit p0

    goto :goto_22

    :catchall_4e
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
    :try_end_53
    .catchall {:try_start_49 .. :try_end_53} :catchall_b
.end method

.method public setAllowUnsignedInstallationPkg(Landroid/content/ComponentName;ZI)V
    .registers 10

    monitor-enter p0

    if-nez p1, :cond_e

    :try_start_3
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "ComponentName is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    :catchall_b
    move-exception v3

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v3

    :cond_e
    :try_start_e
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.android.email.SecurityPolicy$PolicyAdmin"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_23

    const-string v3, "DevicePolicyManagerService"

    const-string v4, "Not Email Admin not proceeding."

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    :goto_22
    return-void

    :cond_23
    const/16 v3, 0x1a

    invoke-virtual {p0, p1, v3}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    iget-boolean v3, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowUnsignedInstallationPkg:Z

    if-eq v3, p2, :cond_47

    iput-boolean p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowUnsignedInstallationPkg:Z

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    if-nez p2, :cond_41

    iget-object v3, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "install_non_market_apps"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_41
    .catchall {:try_start_e .. :try_end_41} :catchall_b

    :cond_41
    :try_start_41
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_49

    :try_start_44
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_47
    monitor-exit p0

    goto :goto_22

    :catchall_49
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_4e
    .catchall {:try_start_44 .. :try_end_4e} :catchall_b
.end method

.method public setAllowWifi(Landroid/content/ComponentName;ZI)V
    .registers 9

    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    monitor-enter p0

    if-nez p1, :cond_11

    :try_start_6
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "ComponentName is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    :catchall_e
    move-exception v3

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_e

    throw v3

    :cond_11
    const/16 v3, 0xc

    :try_start_13
    invoke-virtual {p0, p1, v3}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    iget-boolean v3, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowWifi:Z

    if-eq v3, p2, :cond_27

    iput-boolean p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->allowWifi:Z

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_20
    .catchall {:try_start_13 .. :try_end_20} :catchall_e

    move-result-wide v1

    :try_start_21
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_29

    :try_start_24
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_27
    monitor-exit p0

    return-void

    :catchall_29
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_2e
    .catchall {:try_start_24 .. :try_end_2e} :catchall_e
.end method

.method public setBlockListInRom(Landroid/content/ComponentName;Ljava/lang/String;I)V
    .registers 10

    invoke-virtual {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v3

    monitor-enter p0

    if-nez p1, :cond_12

    :try_start_7
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "ComponentName is null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    :catchall_f
    move-exception v4

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw v4

    :cond_12
    :try_start_12
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.android.email.SecurityPolicy$PolicyAdmin"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_27

    const-string v4, "DevicePolicyManagerService"

    const-string v5, "Not Email Admin not proceeding."

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    :goto_26
    return-void

    :cond_27
    const/16 v4, 0x17

    invoke-virtual {p0, p1, v4}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    iget-object v4, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->blockInRomList:Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_48

    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->blockInRomList:Ljava/lang/String;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_3e
    .catchall {:try_start_12 .. :try_end_3e} :catchall_f

    move-result-wide v1

    :try_start_3f
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V

    invoke-virtual {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->manageBlockedApplications(I)V
    :try_end_45
    .catchall {:try_start_3f .. :try_end_45} :catchall_4a

    :try_start_45
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_48
    monitor-exit p0

    goto :goto_26

    :catchall_4a
    move-exception v4

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
    :try_end_4f
    .catchall {:try_start_45 .. :try_end_4f} :catchall_f
.end method

.method public setCameraDisabled(Landroid/content/ComponentName;ZI)V
    .registers 7

    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    monitor-enter p0

    if-nez p1, :cond_11

    :try_start_6
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_e
    move-exception v1

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_e

    throw v1

    :cond_11
    const/16 v1, 0x8

    :try_start_13
    invoke-virtual {p0, p1, v1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    iget-boolean v1, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->disableCamera:Z

    if-eq v1, p2, :cond_20

    iput-boolean p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->disableCamera:Z

    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V

    :cond_20
    invoke-virtual {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/DevicePolicyManagerService;->syncDeviceCapabilitiesLocked(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V

    monitor-exit p0
    :try_end_28
    .catchall {:try_start_13 .. :try_end_28} :catchall_e

    return-void
.end method

.method public setDeviceOwner(Ljava/lang/String;)Z
    .registers 5

    if-eqz p1, :cond_e

    iget-object v0, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/server/DevicePolicyManagerService$DeviceOwner;->isInstalled(Ljava/lang/String;Landroid/content/pm/PackageManager;)Z

    move-result v0

    if-nez v0, :cond_2d

    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid package name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for device owner"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2d
    monitor-enter p0

    :try_start_2e
    iget-object v0, p0, Lcom/android/server/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/DevicePolicyManagerService$DeviceOwner;

    if-nez v0, :cond_47

    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_47

    new-instance v0, Lcom/android/server/DevicePolicyManagerService$DeviceOwner;

    invoke-direct {v0, p1}, Lcom/android/server/DevicePolicyManagerService$DeviceOwner;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/DevicePolicyManagerService$DeviceOwner;

    iget-object v0, p0, Lcom/android/server/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/DevicePolicyManagerService$DeviceOwner;

    invoke-virtual {v0}, Lcom/android/server/DevicePolicyManagerService$DeviceOwner;->writeOwnerFile()V

    const/4 v0, 0x1

    monitor-exit p0

    return v0

    :cond_47
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to set device owner to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", owner="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/DevicePolicyManagerService$DeviceOwner;

    invoke-virtual {v2}, Lcom/android/server/DevicePolicyManagerService$DeviceOwner;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", device_provisioned="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->isDeviceProvisioned()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_7e
    move-exception v0

    monitor-exit p0
    :try_end_80
    .catchall {:try_start_2e .. :try_end_80} :catchall_7e

    throw v0
.end method

.method protected setExpirationAlarmCheckLocked(Landroid/content/Context;Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V
    .registers 27

    const/16 v19, 0x0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mUserHandle:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/server/DevicePolicyManagerService;->getPasswordExpirationLocked(Landroid/content/ComponentName;I)J

    move-result-wide v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long v15, v10, v12

    const-wide/16 v19, 0x0

    cmp-long v19, v10, v19

    if-nez v19, :cond_68

    const-wide/16 v7, 0x0

    :goto_20
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v17

    :try_start_24
    const-string v19, "alarm"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/AlarmManager;

    const/16 v19, 0x15c3

    new-instance v20, Landroid/content/Intent;

    const-string v21, "com.android.server.ACTION_EXPIRED_PASSWORD_NOTIFICATION"

    invoke-direct/range {v20 .. v21}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v21, 0x4800

    new-instance v22, Landroid/os/UserHandle;

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mUserHandle:I

    move/from16 v23, v0

    invoke-direct/range {v22 .. v23}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, p1

    move/from16 v1, v19

    move-object/from16 v2, v20

    move/from16 v3, v21

    move-object/from16 v4, v22

    invoke-static {v0, v1, v2, v3, v4}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v14

    invoke-virtual {v9, v14}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const-wide/16 v19, 0x0

    cmp-long v19, v7, v19

    if-eqz v19, :cond_64

    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v9, v0, v7, v8, v14}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_64
    .catchall {:try_start_24 .. :try_end_64} :catchall_85

    :cond_64
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_68
    const-wide/16 v19, 0x0

    cmp-long v19, v15, v19

    if-gtz v19, :cond_74

    const-wide/32 v19, 0x5265c00

    add-long v7, v12, v19

    goto :goto_20

    :cond_74
    const-wide/32 v19, 0x5265c00

    rem-long v5, v15, v19

    const-wide/16 v19, 0x0

    cmp-long v19, v5, v19

    if-nez v19, :cond_82

    const-wide/32 v5, 0x5265c00

    :cond_82
    add-long v7, v12, v5

    goto :goto_20

    :catchall_85
    move-exception v19

    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v19
.end method

.method public setGlobalProxy(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/ComponentName;
    .registers 16

    invoke-direct {p0, p4}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    monitor-enter p0

    if-nez p1, :cond_11

    :try_start_6
    new-instance v8, Ljava/lang/NullPointerException;

    const-string v9, "ComponentName is null"

    invoke-direct {v8, v9}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v8

    :catchall_e
    move-exception v8

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_e

    throw v8

    :cond_11
    const/4 v8, 0x0

    :try_start_12
    invoke-virtual {p0, v8}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v7

    const/4 v8, 0x5

    invoke-virtual {p0, p1, v8}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    iget-object v8, v7, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_25
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_45

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    iget-object v8, v7, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    invoke-virtual {v8, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    iget-boolean v8, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->specifiesGlobalProxy:Z

    if-eqz v8, :cond_25

    invoke-virtual {v3, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_25

    monitor-exit p0

    :goto_44
    return-object v3

    :cond_45
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v8

    if-eqz v8, :cond_6c

    const-string v8, "DevicePolicyManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Only the owner is allowed to set the global proxy. User "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is not permitted."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    monitor-exit p0

    goto :goto_44

    :cond_6c
    if-nez p2, :cond_84

    const/4 v8, 0x0

    iput-boolean v8, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->specifiesGlobalProxy:Z

    const/4 v8, 0x0

    iput-object v8, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->globalProxySpec:Ljava/lang/String;

    const/4 v8, 0x0

    iput-object v8, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->globalProxyExclusionList:Ljava/lang/String;

    :goto_77
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    invoke-direct {p0, v7}, Lcom/android/server/DevicePolicyManagerService;->resetGlobalProxyLocked(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v3, 0x0

    monitor-exit p0

    goto :goto_44

    :cond_84
    const/4 v8, 0x1

    iput-boolean v8, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->specifiesGlobalProxy:Z

    iput-object p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->globalProxySpec:Ljava/lang/String;

    iput-object p3, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->globalProxyExclusionList:Ljava/lang/String;
    :try_end_8b
    .catchall {:try_start_12 .. :try_end_8b} :catchall_e

    goto :goto_77
.end method

.method public setKeyguardDisabledFeatures(Landroid/content/ComponentName;II)V
    .registers 7

    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    monitor-enter p0

    if-nez p1, :cond_11

    :try_start_6
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_e
    move-exception v1

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_e

    throw v1

    :cond_11
    const/16 v1, 0x9

    :try_start_13
    invoke-virtual {p0, p1, v1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    iget v1, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->disabledKeyguardFeatures:I

    if-eq v1, p2, :cond_20

    iput p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->disabledKeyguardFeatures:I

    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V

    :cond_20
    invoke-virtual {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/DevicePolicyManagerService;->syncDeviceCapabilitiesLocked(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V

    monitor-exit p0
    :try_end_28
    .catchall {:try_start_13 .. :try_end_28} :catchall_e

    return-void
.end method

.method public setMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;II)V
    .registers 6

    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    monitor-enter p0

    const/4 v1, 0x4

    :try_start_5
    invoke-virtual {p0, p1, v1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    iget v1, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maximumFailedPasswordsForWipe:I

    if-eq v1, p2, :cond_16

    iput p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maximumFailedPasswordsForWipe:I

    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V

    :cond_16
    monitor-exit p0

    return-void

    :catchall_18
    move-exception v1

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public setMaximumTimeToLock(Landroid/content/ComponentName;JI)V
    .registers 8

    invoke-direct {p0, p4}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    monitor-enter p0

    if-nez p1, :cond_11

    :try_start_6
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_e
    move-exception v1

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_e

    throw v1

    :cond_11
    const/4 v1, 0x3

    :try_start_12
    invoke-virtual {p0, p1, v1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    iget-wide v1, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maximumTimeToUnlock:J

    cmp-long v1, v1, p2

    if-eqz v1, :cond_28

    iput-wide p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->maximumTimeToUnlock:J

    invoke-direct {p0, p4}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V

    invoke-virtual {p0, p4}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/DevicePolicyManagerService;->updateMaximumTimeToLockLocked(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V

    :cond_28
    monitor-exit p0
    :try_end_29
    .catchall {:try_start_12 .. :try_end_29} :catchall_e

    return-void
.end method

.method public setPasswordExpirationTimeout(Landroid/content/ComponentName;JI)V
    .registers 12

    const-wide/16 v3, 0x0

    invoke-direct {p0, p4}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    monitor-enter p0

    if-nez p1, :cond_13

    :try_start_8
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "ComponentName is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    :catchall_10
    move-exception v3

    monitor-exit p0
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_10

    throw v3

    :cond_13
    cmp-long v5, p2, v3

    if-gez v5, :cond_1f

    :try_start_17
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Timeout must be >= 0 ms"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1f
    const/4 v5, 0x6

    invoke-virtual {p0, p1, v5}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    cmp-long v5, p2, v3

    if-lez v5, :cond_6b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    add-long v1, p2, v5

    :goto_2e
    iput-wide v1, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationDate:J

    iput-wide p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordExpirationTimeout:J

    cmp-long v3, p2, v3

    if-lez v3, :cond_5d

    const-string v3, "DevicePolicyManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setPasswordExpiration(): password will expire on "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x2

    const/4 v6, 0x2

    invoke-static {v5, v6}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object v5

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5d
    invoke-direct {p0, p4}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V

    iget-object v3, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p4}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/server/DevicePolicyManagerService;->setExpirationAlarmCheckLocked(Landroid/content/Context;Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V

    monitor-exit p0
    :try_end_6a
    .catchall {:try_start_17 .. :try_end_6a} :catchall_10

    return-void

    :cond_6b
    move-wide v1, v3

    goto :goto_2e
.end method

.method public setPasswordHistoryLength(Landroid/content/ComponentName;II)V
    .registers 7

    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    monitor-enter p0

    if-nez p1, :cond_11

    :try_start_6
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_e
    move-exception v1

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_e

    throw v1

    :cond_11
    const/4 v1, 0x0

    :try_start_12
    invoke-virtual {p0, p1, v1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    iget v1, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordHistoryLength:I

    if-eq v1, p2, :cond_1f

    iput p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordHistoryLength:I

    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V

    :cond_1f
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_12 .. :try_end_20} :catchall_e

    return-void
.end method

.method public setPasswordMinimumLength(Landroid/content/ComponentName;II)V
    .registers 7

    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    monitor-enter p0

    if-nez p1, :cond_11

    :try_start_6
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_e
    move-exception v1

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_e

    throw v1

    :cond_11
    const/4 v1, 0x0

    :try_start_12
    invoke-virtual {p0, p1, v1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    iget v1, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLength:I

    if-eq v1, p2, :cond_1f

    iput p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLength:I

    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V

    :cond_1f
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_12 .. :try_end_20} :catchall_e

    return-void
.end method

.method public setPasswordMinimumLetters(Landroid/content/ComponentName;II)V
    .registers 7

    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    monitor-enter p0

    if-nez p1, :cond_11

    :try_start_6
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_e
    move-exception v1

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_e

    throw v1

    :cond_11
    const/4 v1, 0x0

    :try_start_12
    invoke-virtual {p0, p1, v1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    iget v1, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLetters:I

    if-eq v1, p2, :cond_1f

    iput p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLetters:I

    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V

    :cond_1f
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_12 .. :try_end_20} :catchall_e

    return-void
.end method

.method public setPasswordMinimumLowerCase(Landroid/content/ComponentName;II)V
    .registers 7

    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    monitor-enter p0

    if-nez p1, :cond_11

    :try_start_6
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_e
    move-exception v1

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_e

    throw v1

    :cond_11
    const/4 v1, 0x0

    :try_start_12
    invoke-virtual {p0, p1, v1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    iget v1, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLowerCase:I

    if-eq v1, p2, :cond_1f

    iput p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordLowerCase:I

    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V

    :cond_1f
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_12 .. :try_end_20} :catchall_e

    return-void
.end method

.method public setPasswordMinimumNonLetter(Landroid/content/ComponentName;II)V
    .registers 7

    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    monitor-enter p0

    if-nez p1, :cond_11

    :try_start_6
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_e
    move-exception v1

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_e

    throw v1

    :cond_11
    const/4 v1, 0x0

    :try_start_12
    invoke-virtual {p0, p1, v1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    iget v1, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNonLetter:I

    if-eq v1, p2, :cond_1f

    iput p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNonLetter:I

    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V

    :cond_1f
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_12 .. :try_end_20} :catchall_e

    return-void
.end method

.method public setPasswordMinimumNumeric(Landroid/content/ComponentName;II)V
    .registers 7

    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    monitor-enter p0

    if-nez p1, :cond_11

    :try_start_6
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_e
    move-exception v1

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_e

    throw v1

    :cond_11
    const/4 v1, 0x0

    :try_start_12
    invoke-virtual {p0, p1, v1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    iget v1, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNumeric:I

    if-eq v1, p2, :cond_1f

    iput p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordNumeric:I

    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V

    :cond_1f
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_12 .. :try_end_20} :catchall_e

    return-void
.end method

.method public setPasswordMinimumSymbols(Landroid/content/ComponentName;II)V
    .registers 7

    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    monitor-enter p0

    if-nez p1, :cond_11

    :try_start_6
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_e
    move-exception v1

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_e

    throw v1

    :cond_11
    const/4 v1, 0x0

    :try_start_12
    invoke-virtual {p0, p1, v1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    iget v1, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordSymbols:I

    if-eq v1, p2, :cond_1f

    iput p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordSymbols:I

    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V

    :cond_1f
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_12 .. :try_end_20} :catchall_e

    return-void
.end method

.method public setPasswordMinimumUpperCase(Landroid/content/ComponentName;II)V
    .registers 7

    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    monitor-enter p0

    if-nez p1, :cond_11

    :try_start_6
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_e
    move-exception v1

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_e

    throw v1

    :cond_11
    const/4 v1, 0x0

    :try_start_12
    invoke-virtual {p0, p1, v1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    iget v1, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordUpperCase:I

    if-eq v1, p2, :cond_1f

    iput p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->minimumPasswordUpperCase:I

    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V

    :cond_1f
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_12 .. :try_end_20} :catchall_e

    return-void
.end method

.method public setPasswordQuality(Landroid/content/ComponentName;II)V
    .registers 8

    const/high16 v1, 0x7

    if-ne p2, v1, :cond_29

    iget-object v1, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->isSmartCardAuthenticationInstalled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2c

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid quality constant: 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_29
    invoke-static {p2}, Lcom/android/server/DevicePolicyManagerService;->validateQualityConstant(I)V

    :cond_2c
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    monitor-enter p0

    if-nez p1, :cond_3d

    :try_start_32
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "ComponentName is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_3a
    move-exception v1

    monitor-exit p0
    :try_end_3c
    .catchall {:try_start_32 .. :try_end_3c} :catchall_3a

    throw v1

    :cond_3d
    const/4 v1, 0x0

    :try_start_3e
    invoke-virtual {p0, p1, v1}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    iget v1, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordQuality:I

    if-eq v1, p2, :cond_4b

    iput p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordQuality:I

    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V

    :cond_4b
    monitor-exit p0
    :try_end_4c
    .catchall {:try_start_3e .. :try_end_4c} :catchall_3a

    return-void
.end method

.method public setPasswordRecoverable(Landroid/content/ComponentName;ZI)V
    .registers 9

    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    monitor-enter p0

    if-nez p1, :cond_11

    :try_start_6
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "ComponentName is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    :catchall_e
    move-exception v3

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_e

    throw v3

    :cond_11
    const/16 v3, 0xa

    :try_start_13
    invoke-virtual {p0, p1, v3}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    iget-boolean v3, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordRecoverable:Z

    if-eq v3, p2, :cond_27

    iput-boolean p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->passwordRecoverable:Z

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_20
    .catchall {:try_start_13 .. :try_end_20} :catchall_e

    move-result-wide v1

    :try_start_21
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_29

    :try_start_24
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_27
    monitor-exit p0

    return-void

    :catchall_29
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_2e
    .catchall {:try_start_24 .. :try_end_2e} :catchall_e
.end method

.method public setRecoveryPasswordState(Landroid/content/ComponentName;ZI)V
    .registers 11

    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    monitor-enter p0

    if-nez p1, :cond_11

    :try_start_6
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "ComponentName is null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    :catchall_e
    move-exception v5

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_e

    throw v5

    :cond_11
    const/16 v5, 0xa

    :try_start_13
    invoke-virtual {p0, p1, v5}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    const/4 v5, 0x1

    if-ne p2, v5, :cond_30

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1d
    .catchall {:try_start_13 .. :try_end_1d} :catchall_e

    move-result-wide v1

    :try_start_1e
    new-instance v3, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v5, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v5}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getRecoveryPassword()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;I)V
    :try_end_2d
    .catchall {:try_start_1e .. :try_end_2d} :catchall_32

    :try_start_2d
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_30
    monitor-exit p0

    return-void

    :catchall_32
    move-exception v5

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
    :try_end_37
    .catchall {:try_start_2d .. :try_end_37} :catchall_e
.end method

.method public setRequireStorageCardEncryption(Landroid/content/ComponentName;ZI)V
    .registers 9

    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    monitor-enter p0

    if-nez p1, :cond_11

    :try_start_6
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "ComponentName is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    :catchall_e
    move-exception v3

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_e

    throw v3

    :cond_11
    const/16 v3, 0x14

    :try_start_13
    invoke-virtual {p0, p1, v3}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    iget-boolean v3, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->requireStorageCardEncryption:Z

    if-eq v3, p2, :cond_27

    iput-boolean p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->requireStorageCardEncryption:Z

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_20
    .catchall {:try_start_13 .. :try_end_20} :catchall_e

    move-result-wide v1

    :try_start_21
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_29

    :try_start_24
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_27
    monitor-exit p0

    return-void

    :catchall_29
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_2e
    .catchall {:try_start_24 .. :try_end_2e} :catchall_e
.end method

.method public setSimplePasswordEnabled(Landroid/content/ComponentName;ZI)V
    .registers 9

    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    monitor-enter p0

    if-nez p1, :cond_11

    :try_start_6
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "ComponentName is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    :catchall_e
    move-exception v3

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_e

    throw v3

    :cond_11
    const/4 v3, 0x0

    :try_start_12
    invoke-virtual {p0, p1, v3}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    iget-boolean v3, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->simplePasswordEnabled:Z

    if-eq v3, p2, :cond_26

    iput-boolean p2, v0, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->simplePasswordEnabled:Z

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1f
    .catchall {:try_start_12 .. :try_end_1f} :catchall_e

    move-result-wide v1

    :try_start_20
    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_28

    :try_start_23
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_26
    monitor-exit p0

    return-void

    :catchall_28
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_2d
    .catchall {:try_start_23 .. :try_end_2d} :catchall_e
.end method

.method public setStorageEncryption(Landroid/content/ComponentName;ZI)I
    .registers 13

    const/4 v5, 0x0

    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    monitor-enter p0

    if-nez p1, :cond_12

    :try_start_7
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "ComponentName is null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    :catchall_f
    move-exception v5

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw v5

    :cond_12
    if-nez p3, :cond_1a

    :try_start_14
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    if-eqz v6, :cond_3e

    :cond_1a
    const-string v6, "DevicePolicyManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Only owner is allowed to set storage encryption. User "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is not permitted."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    :goto_3d
    return v5

    :cond_3e
    const/4 v6, 0x7

    invoke-virtual {p0, p1, v6}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->isEncryptionSupported()Z

    move-result v6

    if-nez v6, :cond_4b

    monitor-exit p0

    goto :goto_3d

    :cond_4b
    iget-boolean v5, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->encryptionRequested:Z

    if-eq v5, p2, :cond_54

    iput-boolean p2, v1, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->encryptionRequested:Z

    invoke-direct {p0, p3}, Lcom/android/server/DevicePolicyManagerService;->saveSettingsLocked(I)V

    :cond_54
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v4

    const/4 v3, 0x0

    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_61
    if-ge v2, v0, :cond_71

    iget-object v5, v4, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    iget-boolean v5, v5, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->encryptionRequested:Z

    or-int/2addr v3, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_61

    :cond_71
    invoke-direct {p0, v3}, Lcom/android/server/DevicePolicyManagerService;->setEncryptionRequested(Z)V

    if-eqz v3, :cond_79

    const/4 v5, 0x3

    :goto_77
    monitor-exit p0
    :try_end_78
    .catchall {:try_start_14 .. :try_end_78} :catchall_f

    goto :goto_3d

    :cond_79
    const/4 v5, 0x1

    goto :goto_77
.end method

.method syncDeviceCapabilitiesLocked(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V
    .registers 9

    const-string v5, "sys.secpolicy.camera.disabled"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const/4 v5, 0x0

    iget v6, p1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mUserHandle:I

    invoke-virtual {p0, v5, v6}, Lcom/android/server/DevicePolicyManagerService;->getCameraDisabled(Landroid/content/ComponentName;I)Z

    move-result v0

    if-eq v0, v1, :cond_20

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    if-eqz v0, :cond_21

    :try_start_16
    const-string v4, "1"

    :goto_18
    const-string v5, "sys.secpolicy.camera.disabled"

    invoke-static {v5, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_24

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_20
    return-void

    :cond_21
    :try_start_21
    const-string v4, "0"
    :try_end_23
    .catchall {:try_start_21 .. :try_end_23} :catchall_24

    goto :goto_18

    :catchall_24
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public systemReady()V
    .registers 4

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0, v0}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/DevicePolicyManagerService;->loadSettingsLocked(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;I)Z

    move-result v0

    if-nez v0, :cond_2a

    const-string v0, "device_policies_backup.xml"

    const-string v1, "device_policies.xml"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/server/DevicePolicyManagerService;->moveFile(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2a

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/DevicePolicyManagerService;->mCheckLoadSettingsLocked:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/DevicePolicyManagerService;->loadSettingsLocked(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;I)Z

    invoke-virtual {p0}, Lcom/android/server/DevicePolicyManagerService;->loadDeviceOwner()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/DevicePolicyManagerService;->mCheckLoadSettingsLocked:Z

    :cond_2a
    monitor-exit p0

    return-void

    :catchall_2c
    move-exception v0

    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_2 .. :try_end_2e} :catchall_2c

    throw v0
.end method

.method updateMaximumTimeToLockLocked(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V
    .registers 10

    const/4 v5, 0x0

    iget v6, p1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mUserHandle:I

    invoke-virtual {p0, v5, v6}, Lcom/android/server/DevicePolicyManagerService;->getMaximumTimeToLock(Landroid/content/ComponentName;I)J

    move-result-wide v3

    iget-wide v5, p1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mLastMaximumTimeToLock:J

    cmp-long v5, v5, v3

    if-nez v5, :cond_e

    :goto_d
    return-void

    :cond_e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-gtz v5, :cond_29

    const-wide/32 v3, 0x7fffffff

    :goto_1b
    :try_start_1b
    iput-wide v3, p1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mLastMaximumTimeToLock:J
    :try_end_1d
    .catchall {:try_start_1b .. :try_end_1d} :catchall_36

    :try_start_1d
    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->getIPowerManager()Landroid/os/IPowerManager;

    move-result-object v5

    long-to-int v6, v3

    invoke-interface {v5, v6}, Landroid/os/IPowerManager;->setMaximumScreenOffTimeoutFromDeviceAdmin(I)V
    :try_end_25
    .catchall {:try_start_1d .. :try_end_25} :catchall_36
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_25} :catch_3b

    :goto_25
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_d

    :cond_29
    :try_start_29
    iget-object v5, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "stay_on_while_plugged_in"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_35
    .catchall {:try_start_29 .. :try_end_35} :catchall_36

    goto :goto_1b

    :catchall_36
    move-exception v5

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    :catch_3b
    move-exception v0

    :try_start_3c
    const-string v5, "DevicePolicyManagerService"

    const-string v6, "Failure talking with power manager"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_43
    .catchall {:try_start_3c .. :try_end_43} :catchall_36

    goto :goto_25
.end method

.method validatePasswordOwnerLocked(Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;)V
    .registers 7

    iget v2, p1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    if-ltz v2, :cond_45

    const/4 v0, 0x0

    iget-object v2, p1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_d
    if-ltz v1, :cond_20

    iget-object v2, p1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    invoke-virtual {v2}, Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;->getUid()I

    move-result v2

    iget v3, p1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    if-ne v2, v3, :cond_46

    const/4 v0, 0x1

    :cond_20
    if-nez v0, :cond_45

    const-string v2, "DevicePolicyManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Previous password owner "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " no longer active; disabling"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    iput v2, p1, Lcom/android/server/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    :cond_45
    return-void

    :cond_46
    add-int/lit8 v1, v1, -0x1

    goto :goto_d
.end method

.method public wipeData(II)V
    .registers 8

    invoke-direct {p0, p2}, Lcom/android/server/DevicePolicyManagerService;->enforceCrossUserPermission(I)V

    monitor-enter p0

    const/4 v3, 0x0

    const/4 v4, 0x4

    :try_start_6
    invoke-virtual {p0, v3, v4}, Lcom/android/server/DevicePolicyManagerService;->getActiveAdminForCallerLocked(Landroid/content/ComponentName;I)Lcom/android/server/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_1b

    move-result-wide v1

    :try_start_e
    invoke-direct {p0, p1, p2}, Lcom/android/server/DevicePolicyManagerService;->wipeDeviceOrUserLocked(II)V
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_16

    :try_start_11
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit p0

    return-void

    :catchall_16
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :catchall_1b
    move-exception v3

    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_11 .. :try_end_1d} :catchall_1b

    throw v3
.end method

.method wipeDataLocked(I)V
    .registers 9

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v5

    if-nez v5, :cond_3c

    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->isExtStorageEncrypted()Z

    move-result v5

    if-eqz v5, :cond_3c

    move v1, v4

    :goto_f
    and-int/lit8 v5, p1, 0x1

    if-eqz v5, :cond_14

    move v3, v4

    :cond_14
    if-nez v1, :cond_18

    if-eqz v3, :cond_3e

    :cond_18
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v5

    if-nez v5, :cond_3e

    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.android.internal.os.storage.FORMAT_AND_FACTORY_RESET"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "always_reset"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget-object v4, Lcom/android/internal/os/storage/ExternalStorageFormatter;->COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v5, 0x2710

    invoke-virtual {v4, v5, v6}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_3b
    return-void

    :cond_3c
    move v1, v3

    goto :goto_f

    :cond_3e
    :try_start_3e
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/os/RecoverySystem;->rebootWipeUserData(Landroid/content/Context;)V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_43} :catch_44

    goto :goto_3b

    :catch_44
    move-exception v0

    const-string v4, "DevicePolicyManagerService"

    const-string v5, "Failed requesting data wipe"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3b
.end method

.method wipeDataLockedFor3LM(I)V
    .registers 9

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v5

    if-nez v5, :cond_36

    invoke-direct {p0}, Lcom/android/server/DevicePolicyManagerService;->isExtStorageEncrypted()Z

    move-result v5

    if-eqz v5, :cond_36

    move v1, v3

    :goto_f
    and-int/lit8 v5, p1, 0x1

    if-eqz v5, :cond_38

    :goto_13
    if-nez v1, :cond_17

    if-eqz v3, :cond_3a

    :cond_17
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v4

    if-nez v4, :cond_3a

    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.android.internal.os.storage.FORMAT_AND_FACTORY_RESET"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/android/internal/os/storage/ExternalStorageFormatter;->COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v5, 0x2710

    invoke-virtual {v4, v5, v6}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_35
    return-void

    :cond_36
    move v1, v4

    goto :goto_f

    :cond_38
    move v3, v4

    goto :goto_13

    :cond_3a
    :try_start_3a
    iget-object v4, p0, Lcom/android/server/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/os/RecoverySystem;->rebootWipeUserData(Landroid/content/Context;)V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3f} :catch_40

    goto :goto_35

    :catch_40
    move-exception v0

    const-string v4, "DevicePolicyManagerService"

    const-string v5, "Failed requesting data wipe"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_35
.end method
