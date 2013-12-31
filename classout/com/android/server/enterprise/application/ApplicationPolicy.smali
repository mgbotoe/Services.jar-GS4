.class public Lcom/android/server/enterprise/application/ApplicationPolicy;
.super Landroid/app/enterprise/IApplicationPolicy$Stub;
.source "ApplicationPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;
.implements Lcom/android/server/enterprise/EnterpriseContainerSubscriber;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/application/ApplicationPolicy$3;,
        Lcom/android/server/enterprise/application/ApplicationPolicy$BackupRestoreResultReceiver;,
        Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;,
        Lcom/android/server/enterprise/application/ApplicationPolicy$PkgSizeObserver;,
        Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationPackageInfo;,
        Lcom/android/server/enterprise/application/ApplicationPolicy$PackageInstallObserver;,
        Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;
    }
.end annotation


# static fields
.field private static final ALL_PACKAGES:Ljava/lang/String; = "*"

.field private static final APPS_TO_RECONCILE:Ljava/lang/String; = "appToReconcile"

.field private static final BACKUP_RESTORE_TIMEOUT:J = 0x493e0L

.field private static final EXTRA_APPSTATE:Ljava/lang/String; = "application_state_disable_enable"

.field private static final INSTALL_SHORTCUT:Ljava/lang/String; = "com.android.launcher.action.INSTALL_SHORTCUT"

.field private static final INTENT_SAMSUNG_WIDGET_ACTION:Ljava/lang/String; = "com.samsung.sec.android.SAMSUNG_APP_WIDGET_ACTION"

.field private static final INTENT_SAMSUNG_WIDGET_CATEGORY:Ljava/lang/String; = "com.samsung.sec.android.SAMSUNG_APP_WIDGET"

.field private static final INTENT_SURFACE_WIDGET_ACTION:Ljava/lang/String; = "com.samsung.sec.android.SURFACE_WIDGET_ACTION"

.field private static final INTENT_SURFACE_WIDGET_CATEGORY:Ljava/lang/String; = "com.samsung.sec.android.SURFACE_WIDGET"

.field private static final PERMISSION_INSTALLATION_BLACKLIST:Ljava/lang/String; = "PermissionInstallationBlacklist"

.field private static final PKGNAME_CLEARCACHE_BLACKLIST:Ljava/lang/String; = "PackageNameClearCacheBlacklist"

.field private static final PKGNAME_CLEARCACHE_WHITELIST:Ljava/lang/String; = "PackageNameClearCacheWhitelist"

.field private static final PKGNAME_CLEARDATA_BLACKLIST:Ljava/lang/String; = "PackageNameClearDataBlacklist"

.field private static final PKGNAME_CLEARDATA_WHITELIST:Ljava/lang/String; = "PackageNameClearDataWhitelist"

.field private static final PKGNAME_INSTALLATION_BLACKLIST:Ljava/lang/String; = "PackageNameInstallationBlacklist"

.field private static final PKGNAME_INSTALLATION_WHITELIST:Ljava/lang/String; = "PackageNameInstallationWhitelist"

.field private static final PKGNAME_NOTIFICATION_BLACKLIST:Ljava/lang/String; = "PackageNameNotificationBlacklist"

.field private static final PKGNAME_NOTIFICATION_WHITELIST:Ljava/lang/String; = "PackageNameNotificationWhitelist"

.field private static final PKGNAME_OCSP_CHECK:Ljava/lang/String; = "OcspCheck"

.field private static final PKGNAME_REVOCATION_CHECK:Ljava/lang/String; = "RevocationCheck"

.field private static final PKGNAME_STOP_BLACKLIST:Ljava/lang/String; = "PackageNameStopBlacklist"

.field private static final PKGNAME_STOP_WHITELIST:Ljava/lang/String; = "PackageNameStopWhitelist"

.field private static final PKGNAME_WIDGET_BLACKLIST:Ljava/lang/String; = "PackageNameWidgetBlacklist"

.field private static final PKGNAME_WIDGET_WHITELIST:Ljava/lang/String; = "PackageNameWidgetWhitelist"

.field private static final SIGNATURE_INSTALLATION_BLACKLIST:Ljava/lang/String; = "SignatureInstallationBlacklist"

.field private static final SIGNATURE_INSTALLATION_WHITELIST:Ljava/lang/String; = "SignatureInstallationWhitelist"

.field private static final TAG:Ljava/lang/String; = "ApplicationPolicy"

.field private static final UNINSTALLATION_BLACKLIST:Ljava/lang/String; = "UninstallationBlacklist"

.field private static final UNINSTALLATION_WHITELIST:Ljava/lang/String; = "UninstallationWhitelist"

.field private static final UNINSTALL_SHORTCUT:Ljava/lang/String; = "com.android.launcher.action.UNINSTALL_SHORTCUT"

.field private static mAppControlState:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private static mAppIconChangedPkgNameList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mBackupRestoreReceiver:Lcom/android/server/enterprise/application/ApplicationPolicy$BackupRestoreResultReceiver;

.field private static volatile packageChangeIntentReceiver:Landroid/content/BroadcastReceiver;


# instance fields
.field private volatile isBackupRunning:Z

.field private volatile isRestoreRunning:Z

.field private final mAppControlStateLock:Ljava/lang/Object;

.field private mAppNetworkStatsTracker:Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;

.field final mBackupLock:Ljava/lang/Object;

.field private mBackupManagerService:Landroid/app/backup/IBackupManager;

.field private mBackupReturnCode:I

.field mContext:Landroid/content/Context;

.field private mCurrentBackupPackage:Ljava/lang/String;

.field private mCurrentRestorePackage:Ljava/lang/String;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mNotificationMode:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

.field private final mProcessStats:Lcom/android/internal/os/ProcessStats;

.field final mRefreshWidgetStatusLock:Ljava/lang/Object;

.field final mRestoreLock:Ljava/lang/Object;

.field private mRestoreReturnCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->packageChangeIntentReceiver:Landroid/content/BroadcastReceiver;

    sput-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppIconChangedPkgNameList:Ljava/util/List;

    sput-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    sput-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mBackupRestoreReceiver:Lcom/android/server/enterprise/application/ApplicationPolicy$BackupRestoreResultReceiver;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Landroid/app/enterprise/IApplicationPolicy$Stub;-><init>()V

    iput-object v3, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v3, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlStateLock:Ljava/lang/Object;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mBackupLock:Ljava/lang/Object;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mRestoreLock:Ljava/lang/Object;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mRefreshWidgetStatusLock:Ljava/lang/Object;

    iput-boolean v2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->isBackupRunning:Z

    iput-boolean v2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->isRestoreRunning:Z

    iput-object v3, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mBackupManagerService:Landroid/app/backup/IBackupManager;

    iput-object v3, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mCurrentBackupPackage:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mCurrentRestorePackage:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mNotificationMode:Ljava/util/Map;

    new-instance v1, Lcom/android/internal/os/ProcessStats;

    invoke-direct {v1, v2}, Lcom/android/internal/os/ProcessStats;-><init>(Z)V

    iput-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mProcessStats:Lcom/android/internal/os/ProcessStats;

    iput-object p1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    new-instance v1, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->registerPackageChangeReceiver()V

    iget-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/enterprise/application/ApplicationIconDb;->getApplicationIconChangedList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppIconChangedPkgNameList:Ljava/util/List;

    new-instance v1, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;-><init>(Lcom/android/server/enterprise/application/ApplicationPolicy;)V

    iput-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppNetworkStatsTracker:Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;

    new-instance v1, Lcom/android/server/enterprise/application/ApplicationPolicy$BackupRestoreResultReceiver;

    invoke-direct {v1, p0, v3}, Lcom/android/server/enterprise/application/ApplicationPolicy$BackupRestoreResultReceiver;-><init>(Lcom/android/server/enterprise/application/ApplicationPolicy;Lcom/android/server/enterprise/application/ApplicationPolicy$1;)V

    sput-object v1, Lcom/android/server/enterprise/application/ApplicationPolicy;->mBackupRestoreReceiver:Lcom/android/server/enterprise/application/ApplicationPolicy$BackupRestoreResultReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "edm.intent.action.backup.result"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "edm.intent.action.restore.result"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/server/enterprise/application/ApplicationPolicy;->mBackupRestoreReceiver:Lcom/android/server/enterprise/application/ApplicationPolicy$BackupRestoreResultReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->registerBootCompletedListener()V

    return-void
.end method

.method private _installApplication(ILjava/lang/String;Z)Z
    .registers 16

    const/4 v7, 0x0

    const/4 v11, -0x1

    const/4 v10, 0x1

    const/4 v3, 0x0

    if-eqz p3, :cond_14

    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v8

    if-eqz v8, :cond_14

    const-string v8, "ApplicationPolicy"

    const-string v9, "installApplication : External Storage Emulated"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_13
    return v7

    :cond_14
    invoke-static {p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_26

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    const-string v8, ".apk"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_28

    :cond_26
    move v7, v3

    goto :goto_13

    :cond_28
    const/4 v1, 0x2

    if-eqz p3, :cond_6d

    or-int/lit8 v1, v1, 0x8

    :goto_2d
    new-instance v2, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageInstallObserver;

    invoke-direct {v2, p0}, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageInstallObserver;-><init>(Lcom/android/server/enterprise/application/ApplicationPolicy;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    const/4 v6, 0x0

    :try_start_37
    iget-object v7, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "package_verifier_enable"

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v10, :cond_53

    iget-object v7, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "package_verifier_enable"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v6, 0x1

    :cond_53
    iget-object v7, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v2, v1, v9}, Landroid/content/pm/PackageManager;->installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V

    monitor-enter v2
    :try_end_63
    .catchall {:try_start_37 .. :try_end_63} :catchall_bc
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_63} :catch_9c

    :goto_63
    :try_start_63
    iget-boolean v7, v2, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageInstallObserver;->finished:Z
    :try_end_65
    .catchall {:try_start_63 .. :try_end_65} :catchall_99

    if-nez v7, :cond_70

    :try_start_67
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_6a
    .catchall {:try_start_67 .. :try_end_6a} :catchall_99
    .catch Ljava/lang/InterruptedException; {:try_start_67 .. :try_end_6a} :catch_6b

    goto :goto_63

    :catch_6b
    move-exception v7

    goto :goto_63

    :cond_6d
    or-int/lit8 v1, v1, 0x10

    goto :goto_2d

    :cond_70
    :try_start_70
    iget v7, v2, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageInstallObserver;->result:I

    if-ne v7, v10, :cond_97

    const/4 v3, 0x1

    :goto_75
    monitor-exit v2
    :try_end_76
    .catchall {:try_start_70 .. :try_end_76} :catchall_99

    if-eqz v3, :cond_84

    if-eq p1, v11, :cond_84

    iget-object v7, v2, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageInstallObserver;->pkgName:Ljava/lang/String;

    invoke-direct {p0, p1, v7, v10}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setManagedApp(ILjava/lang/String;Z)V

    iget-object v7, v2, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageInstallObserver;->pkgName:Ljava/lang/String;

    invoke-direct {p0, p1, v7, v10}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setInstallSourceMDM(ILjava/lang/String;Z)V

    :cond_84
    if-eqz v6, :cond_91

    iget-object v7, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "package_verifier_enable"

    invoke-static {v7, v8, v10}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_91
    :goto_91
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v7, v3

    goto/16 :goto_13

    :cond_97
    const/4 v3, 0x0

    goto :goto_75

    :catchall_99
    move-exception v7

    :try_start_9a
    monitor-exit v2
    :try_end_9b
    .catchall {:try_start_9a .. :try_end_9b} :catchall_99

    :try_start_9b
    throw v7
    :try_end_9c
    .catchall {:try_start_9b .. :try_end_9c} :catchall_bc
    .catch Ljava/lang/Exception; {:try_start_9b .. :try_end_9c} :catch_9c

    :catch_9c
    move-exception v0

    :try_start_9d
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a0
    .catchall {:try_start_9d .. :try_end_a0} :catchall_bc

    if-eqz v3, :cond_ae

    if-eq p1, v11, :cond_ae

    iget-object v7, v2, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageInstallObserver;->pkgName:Ljava/lang/String;

    invoke-direct {p0, p1, v7, v10}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setManagedApp(ILjava/lang/String;Z)V

    iget-object v7, v2, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageInstallObserver;->pkgName:Ljava/lang/String;

    invoke-direct {p0, p1, v7, v10}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setInstallSourceMDM(ILjava/lang/String;Z)V

    :cond_ae
    if-eqz v6, :cond_91

    iget-object v7, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "package_verifier_enable"

    invoke-static {v7, v8, v10}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_91

    :catchall_bc
    move-exception v7

    if-eqz v3, :cond_cb

    if-eq p1, v11, :cond_cb

    iget-object v8, v2, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageInstallObserver;->pkgName:Ljava/lang/String;

    invoke-direct {p0, p1, v8, v10}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setManagedApp(ILjava/lang/String;Z)V

    iget-object v8, v2, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageInstallObserver;->pkgName:Ljava/lang/String;

    invoke-direct {p0, p1, v8, v10}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setInstallSourceMDM(ILjava/lang/String;Z)V

    :cond_cb
    if-eqz v6, :cond_d8

    iget-object v8, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "package_verifier_enable"

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_d8
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7
.end method

.method private _setApplicationInstallationDisabled(ILjava/lang/String;Z)V
    .registers 7

    invoke-static {p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_12

    const/4 v1, 0x4

    :try_start_7
    invoke-direct {p0, p2, p1, v1, p3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    const/16 v2, 0x8

    if-nez p3, :cond_13

    const/4 v1, 0x1

    :goto_f
    invoke-direct {p0, p2, p1, v2, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_12} :catch_15

    :cond_12
    :goto_12
    return-void

    :cond_13
    const/4 v1, 0x0

    goto :goto_f

    :catch_15
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_12
.end method

.method private _setApplicationUninstallationDisabled(ILjava/lang/String;Z)V
    .registers 7

    const/4 v1, 0x1

    invoke-static {p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_12

    const/4 v2, 0x1

    :try_start_8
    invoke-direct {p0, p2, p1, v2, p3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    const/16 v2, 0x400

    if-nez p3, :cond_13

    :goto_f
    invoke-direct {p0, p2, p1, v2, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_12} :catch_15

    :cond_12
    :goto_12
    return-void

    :cond_13
    const/4 v1, 0x0

    goto :goto_f

    :catch_15
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_12
.end method

.method private _uninstallApplication(Ljava/lang/String;Z)Z
    .registers 9

    invoke-static {p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_8

    const/4 v1, 0x0

    :goto_7
    return v1

    :cond_8
    const/4 v4, 0x0

    if-eqz p2, :cond_c

    const/4 v4, 0x1

    :cond_c
    const/4 v1, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_11
    iget-object v5, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    invoke-virtual {v5, p1, v4}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->deletePackage(Ljava/lang/String;I)Z
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_20
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_16} :catch_1b

    move-result v1

    :goto_17
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_7

    :catch_1b
    move-exception v0

    :try_start_1c
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_20

    goto :goto_17

    :catchall_20
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method static synthetic access$1000(Lcom/android/server/enterprise/application/ApplicationPolicy;Ljava/lang/String;IIZ)Z
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/enterprise/application/ApplicationPolicy;Ljava/lang/String;)Ljava/util/List;
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getProvidersFromPackage(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/enterprise/application/ApplicationPolicy;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->refreshWidgetStatus(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/enterprise/application/ApplicationPolicy;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->refreshWidgetStatus()V

    return-void
.end method

.method static synthetic access$1602(Lcom/android/server/enterprise/application/ApplicationPolicy;I)I
    .registers 2

    iput p1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mBackupReturnCode:I

    return p1
.end method

.method static synthetic access$1702(Lcom/android/server/enterprise/application/ApplicationPolicy;I)I
    .registers 2

    iput p1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mRestoreReturnCode:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/enterprise/application/ApplicationPolicy;Landroid/content/Intent;)Ljava/lang/String;
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/enterprise/application/ApplicationPolicy;)Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .registers 2

    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/enterprise/application/ApplicationPolicy;ILjava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->updateCount(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private declared-synchronized addApplicationStateList(ILjava/lang/String;ILjava/util/List;)Z
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    monitor-enter p0

    if-eqz p4, :cond_5

    if-nez p2, :cond_8

    :cond_5
    const/4 v8, 0x0

    :cond_6
    monitor-exit p0

    return v8

    :cond_8
    :try_start_8
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(I)I

    move-result v2

    const/4 v8, 0x1

    if-eqz p4, :cond_3a

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_13
    :goto_13
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_33

    const-string v0, "*"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->checkRegex(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    :cond_33
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V
    :try_end_36
    .catchall {:try_start_8 .. :try_end_36} :catchall_37

    goto :goto_13

    :catchall_37
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3a
    if-eqz p4, :cond_6

    :try_start_3c
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_40
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v5, 0x1

    move-object v0, p0

    move v3, p1

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIIZ)Z
    :try_end_53
    .catchall {:try_start_3c .. :try_end_53} :catchall_37

    move-result v0

    and-int/2addr v8, v0

    goto :goto_40
.end method

.method private addApplicationStateList(Ljava/lang/String;ILjava/util/List;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->addApplicationStateList(ILjava/lang/String;ILjava/util/List;)Z

    move-result v0

    return v0
.end method

.method private checkApplicationsStateToBeReconciled(I)V
    .registers 13

    const/4 v1, 0x0

    :try_start_1
    iget-object v6, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "appToReconcile"

    invoke-virtual {v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v3, :cond_19

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_19

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_19
    iget-object v6, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "APPLICATION"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "packageName"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string v10, "controlState"

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, p1, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCursorByAdmin(Ljava/lang/String;I[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    :cond_2e
    :goto_2e
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_63

    const-string v6, "packageName"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v6, "controlState"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    and-int/lit8 v6, v0, 0x2

    if-eqz v6, :cond_2e

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_54
    .catchall {:try_start_1 .. :try_end_54} :catchall_77
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_54} :catch_55

    goto :goto_2e

    :catch_55
    move-exception v2

    :try_start_56
    const-string v6, "ApplicationPolicy"

    const-string v7, "error in changeUidOnAppReconcileNeeded"

    invoke-static {v6, v7, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5d
    .catchall {:try_start_56 .. :try_end_5d} :catchall_77

    if-eqz v1, :cond_62

    :goto_5f
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_62
    return-void

    :cond_63
    :try_start_63
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_74

    iget-object v6, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "appToReconcile"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_74
    .catchall {:try_start_63 .. :try_end_74} :catchall_77
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_74} :catch_55

    :cond_74
    if-eqz v1, :cond_62

    goto :goto_5f

    :catchall_77
    move-exception v6

    if-eqz v1, :cond_7d

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_7d
    throw v6
.end method

.method private checkPkgNameMatch(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    iget-object v2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlStateLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    sget-object v1, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    const/4 v1, 0x1

    monitor-exit v2

    :goto_29
    return v1

    :cond_2a
    monitor-exit v2

    const/4 v1, 0x0

    goto :goto_29

    :catchall_2d
    move-exception v1

    monitor-exit v2
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

    throw v1
.end method

.method private checkRegex(Ljava/lang/String;)Z
    .registers 4

    :try_start_0
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_5

    const/4 v1, 0x1

    :goto_4
    return v1

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x0

    goto :goto_4
.end method

.method private cleanCmdline(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-nez p1, :cond_5

    const-string p1, "<invalid>"

    :cond_4
    :goto_4
    return-object p1

    :cond_5
    const/4 v0, 0x0

    :goto_6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_4

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isIdentifierIgnorable(C)Z

    move-result v1

    if-eqz v1, :cond_1c

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_6
.end method

.method private createAdminMap(J)V
    .registers 7

    iget-object v2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlStateLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    sget-object v1, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_db

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "PackageNameInstallationBlacklist"

    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "PackageNameInstallationWhitelist"

    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "PermissionInstallationBlacklist"

    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SignatureInstallationBlacklist"

    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SignatureInstallationWhitelist"

    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "UninstallationBlacklist"

    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "UninstallationWhitelist"

    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "PackageNameStopBlacklist"

    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "PackageNameStopWhitelist"

    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "PackageNameWidgetBlacklist"

    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "PackageNameWidgetWhitelist"

    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "PackageNameNotificationBlacklist"

    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "PackageNameNotificationWhitelist"

    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "RevocationCheck"

    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "OcspCheck"

    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "PackageNameClearDataBlacklist"

    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "PackageNameClearDataWhitelist"

    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "PackageNameClearCacheBlacklist"

    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "PackageNameClearCacheWhitelist"

    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_db
    monitor-exit v2

    return-void

    :catchall_dd
    move-exception v1

    monitor-exit v2
    :try_end_df
    .catchall {:try_start_3 .. :try_end_df} :catchall_dd

    throw v1
.end method

.method private enforceAppPermission()I
    .registers 3

    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_APP_MGMT"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method private enforceAppPermission(I)I
    .registers 4

    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_APP_MGMT"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/sec/enterprise/knox/EnterpriseContainerManager;->enforceContainerPermission(I)I

    move-result v0

    return v0
.end method

.method private enforceBackupAppPermission()I
    .registers 3

    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_APP_BACKUP"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method private enforceCertificatePermission()I
    .registers 3

    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_CERTIFICATE"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method private getActualApplicationStateEnabled(Ljava/lang/String;)Z
    .registers 8

    const/4 v3, 0x1

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationInstalled(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_d

    :goto_c
    return v3

    :cond_d
    if-eqz p1, :cond_19

    :try_start_f
    iget-object v4, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, p1}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_14} :catch_35

    move-result v2

    const/4 v4, 0x2

    if-eq v2, v4, :cond_33

    move v1, v3

    :cond_19
    :goto_19
    const-string v3, "ApplicationPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getActualApplicationStateEnabled() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v1

    goto :goto_c

    :cond_33
    const/4 v1, 0x0

    goto :goto_19

    :catch_35
    move-exception v0

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_19
.end method

.method private getAppInfo(Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;
    .registers 7

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_f

    :try_start_7
    iget-object v2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v3, 0x2000

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_e} :catch_10

    move-result-object v1

    :cond_f
    :goto_f
    return-object v1

    :catch_10
    move-exception v0

    const-string v2, "ApplicationPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAppInfo() : Exception when retrieving package : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f
.end method

.method private getApplicationControlState(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 12

    iget-object v7, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlStateLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_3
    sget-object v6, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    if-eqz v5, :cond_44

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_44

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getContainerIdFromLUID(J)I

    move-result v6

    if-nez v6, :cond_f

    sget-object v6, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_f

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    if-eqz v2, :cond_f

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    const/4 v6, 0x1

    monitor-exit v7

    :goto_43
    return v6

    :cond_44
    monitor-exit v7

    const/4 v6, 0x0

    goto :goto_43

    :catchall_47
    move-exception v6

    monitor-exit v7
    :try_end_49
    .catchall {:try_start_3 .. :try_end_49} :catchall_47

    throw v6
.end method

.method private getApplicationPackageInfo(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;)Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationPackageInfo;
    .registers 13

    new-instance v4, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationPackageInfo;

    invoke-direct {v4, p0}, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationPackageInfo;-><init>(Lcom/android/server/enterprise/application/ApplicationPolicy;)V

    if-eqz p2, :cond_4e

    :try_start_7
    iget-object v7, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iput-object v7, v4, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationPackageInfo;->packageName:Ljava/lang/String;

    iget-object v7, p2, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    if-eqz v7, :cond_13

    iget-object v7, p2, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    iput-object v7, v4, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationPackageInfo;->permissions:Ljava/util/List;

    :cond_13
    iget-object v7, p2, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    if-eqz v7, :cond_4d

    iget-object v0, p2, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    array-length v3, v0

    const/4 v2, 0x0

    :goto_1b
    if-ge v2, v3, :cond_4d

    aget-object v6, v0, v2

    iget-object v7, v4, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationPackageInfo;->signatures:Ljava/util/List;

    invoke-virtual {v6}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_28} :catch_2b

    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    :catch_2b
    move-exception v1

    const-string v7, "ApplicationPolicy"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "ApplicationPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could not retrieve permissions & signature for package: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4d
    :goto_4d
    return-object v4

    :cond_4e
    if-nez p1, :cond_88

    const-string p1, ""

    :goto_52
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_4d

    :try_start_58
    iget-object v7, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v8, 0x1040

    invoke-virtual {v7, p1, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    if-eqz v5, :cond_4d

    iput-object p1, v4, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationPackageInfo;->packageName:Ljava/lang/String;

    iget-object v7, v5, Landroid/content/pm/PackageInfo;->permissions:[Landroid/content/pm/PermissionInfo;

    if-eqz v7, :cond_70

    iget-object v7, v5, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    iput-object v7, v4, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationPackageInfo;->permissions:Ljava/util/List;

    :cond_70
    iget-object v7, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v7, :cond_4d

    iget-object v0, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v3, v0

    const/4 v2, 0x0

    :goto_78
    if-ge v2, v3, :cond_4d

    aget-object v6, v0, v2

    iget-object v7, v4, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationPackageInfo;->signatures:Ljava/util/List;

    invoke-virtual {v6}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_85} :catch_8d

    add-int/lit8 v2, v2, 0x1

    goto :goto_78

    :cond_88
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    goto :goto_52

    :catch_8d
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const-string v7, "ApplicationPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could not retrieve permissions & signature for package: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4d
.end method

.method private getApplicationPackageStats(Ljava/lang/String;)Landroid/content/pm/PackageStats;
    .registers 8

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2a

    new-instance v0, Lcom/android/server/enterprise/application/ApplicationPolicy$PkgSizeObserver;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/application/ApplicationPolicy$PkgSizeObserver;-><init>(Lcom/android/server/enterprise/application/ApplicationPolicy;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_10
    iget-object v4, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, p1, v0}, Landroid/content/pm/PackageManager;->getPackageSizeInfo(Ljava/lang/String;Landroid/content/pm/IPackageStatsObserver;)V

    monitor-enter v0
    :try_end_16
    .catchall {:try_start_10 .. :try_end_16} :catchall_2e

    :goto_16
    :try_start_16
    iget-boolean v4, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$PkgSizeObserver;->finished:Z
    :try_end_18
    .catchall {:try_start_16 .. :try_end_18} :catchall_2b

    if-nez v4, :cond_20

    :try_start_1a
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_2b
    .catch Ljava/lang/InterruptedException; {:try_start_1a .. :try_end_1d} :catch_1e

    goto :goto_16

    :catch_1e
    move-exception v4

    goto :goto_16

    :cond_20
    :try_start_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_2b

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    iget-boolean v4, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$PkgSizeObserver;->result:Z

    if-eqz v4, :cond_2a

    iget-object v1, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$PkgSizeObserver;->mPkgStats:Landroid/content/pm/PackageStats;

    :cond_2a
    return-object v1

    :catchall_2b
    move-exception v4

    :try_start_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    :try_start_2d
    throw v4
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2e

    :catchall_2e
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    iget-boolean v5, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$PkgSizeObserver;->result:Z

    if-eqz v5, :cond_38

    iget-object v1, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$PkgSizeObserver;->mPkgStats:Landroid/content/pm/PackageStats;

    :cond_38
    throw v4
.end method

.method private getApplicationStateList(ILjava/lang/String;)Ljava/util/List;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(I)I

    iget-object v10, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlStateLock:Ljava/lang/Object;

    monitor-enter v10

    :try_start_6
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    sget-object v9, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    if-eqz v8, :cond_68

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_68

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getContainerIdFromLUID(J)I

    move-result v9

    if-ne v9, p1, :cond_17

    sget-object v9, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-interface {v9, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_17

    sget-object v9, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-interface {v9, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    invoke-interface {v9, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_51
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_17

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {p1, v4}, Lcom/sec/enterprise/knox/EnterpriseContainerManager;->getNonContainerizedString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_51

    :catchall_65
    move-exception v9

    monitor-exit v10
    :try_end_67
    .catchall {:try_start_6 .. :try_end_67} :catchall_65

    throw v9

    :cond_68
    :try_start_68
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v10
    :try_end_6e
    .catchall {:try_start_68 .. :try_end_6e} :catchall_65

    return-object v9
.end method

.method private getApplicationStateList(Ljava/lang/String;)Ljava/util/List;
    .registers 3
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

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateList(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getApplicationsList(Ljava/lang/String;I)[Landroid/app/enterprise/ManagedAppInfo;
    .registers 14

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v7, 0x0

    invoke-static {p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x6

    new-array v5, v0, [Ljava/lang/String;

    const-string v0, "packageName"

    aput-object v0, v5, v9

    const-string v0, "applicationInstallationCount"

    aput-object v0, v5, v10

    const/4 v0, 0x2

    const-string v1, "applicationUninstallationCount"

    aput-object v1, v5, v0

    const/4 v0, 0x3

    const-string v1, "managedApp"

    aput-object v1, v5, v0

    const/4 v0, 0x4

    const-string v1, "install_sourceMDM"

    aput-object v1, v5, v0

    const/4 v0, 0x5

    const-string v1, "controlState"

    aput-object v1, v5, v0

    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "APPLICATION"

    const-string v3, "packageName"

    move v2, p2

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCursorByAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_b8

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    :goto_39
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_b5

    new-instance v6, Landroid/app/enterprise/ManagedAppInfo;

    invoke-direct {v6}, Landroid/app/enterprise/ManagedAppInfo;-><init>()V

    const-string v0, "packageName"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Landroid/app/enterprise/ManagedAppInfo;->mAppPkg:Ljava/lang/String;

    const-string v0, "applicationInstallationCount"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v6, Landroid/app/enterprise/ManagedAppInfo;->mAppInstallCount:I

    const-string v0, "applicationUninstallationCount"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v6, Landroid/app/enterprise/ManagedAppInfo;->mAppUninstallCount:I

    const-string v0, "managedApp"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v6, Landroid/app/enterprise/ManagedAppInfo;->mIsEnterpriseApp:I

    const-string v0, "install_sourceMDM"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v6, Landroid/app/enterprise/ManagedAppInfo;->mIsInstallSourceMDM:I

    iget-object v0, v6, Landroid/app/enterprise/ManagedAppInfo;->mAppPkg:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationInstalled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_af

    iget-object v0, v6, Landroid/app/enterprise/ManagedAppInfo;->mAppPkg:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getActualApplicationStateEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ad

    move v0, v9

    :goto_91
    iput v0, v6, Landroid/app/enterprise/ManagedAppInfo;->mAppDisabled:I

    iget-object v0, v6, Landroid/app/enterprise/ManagedAppInfo;->mAppPkg:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationInstallationEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b1

    move v0, v9

    :goto_9c
    iput v0, v6, Landroid/app/enterprise/ManagedAppInfo;->mAppInstallationDisabled:I

    iget-object v0, v6, Landroid/app/enterprise/ManagedAppInfo;->mAppPkg:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationUninstallationEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b3

    move v0, v9

    :goto_a7
    iput v0, v6, Landroid/app/enterprise/ManagedAppInfo;->mAppUninstallationDisabled:I

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_39

    :cond_ad
    move v0, v10

    goto :goto_91

    :cond_af
    move v0, v9

    goto :goto_91

    :cond_b1
    move v0, v10

    goto :goto_9c

    :cond_b3
    move v0, v10

    goto :goto_a7

    :cond_b5
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_b8
    if-eqz v7, :cond_cf

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_cf

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/app/enterprise/ManagedAppInfo;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/app/enterprise/ManagedAppInfo;

    check-cast v0, [Landroid/app/enterprise/ManagedAppInfo;

    :goto_ce
    return-object v0

    :cond_cf
    const/4 v0, 0x0

    goto :goto_ce
.end method

.method public static getContainerizedPackageName(ILjava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {p0, p1}, Lcom/sec/enterprise/knox/EnterpriseContainerManager;->getContainerizedString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final getDebugMemoryInfo(ILandroid/app/ActivityManager;)J
    .registers 7

    const/4 v3, 0x0

    const/4 v2, 0x1

    new-array v1, v2, [I

    aput p1, v1, v3

    invoke-virtual {p2, v1}, Landroid/app/ActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v0

    aget-object v2, v0, v3

    invoke-virtual {v2}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v2

    mul-int/lit16 v2, v2, 0x400

    int-to-long v2, v2

    return-wide v2
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .registers 3

    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    :cond_10
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getPackageName(Landroid/content/Intent;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private getPackageNameForUid(I)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPackageNameForUid(Ljava/lang/Long;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminUidFromLUID(J)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPidList()Ljava/util/ArrayList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v3, Ljava/io/File;

    const-string v4, "/proc/"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_13

    :cond_12
    return-object v2

    :cond_13
    const-string v4, "ApplicationPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getPidList: process count: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_2d
    array-length v4, v1

    if-ge v0, v4, :cond_12

    const/4 v4, 0x1

    aget-object v5, v1, v0

    const-string v6, "[0-9]+"

    invoke-virtual {v5, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-ne v4, v5, :cond_48

    aget-object v4, v1, v0

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_48
    add-int/lit8 v0, v0, 0x1

    goto :goto_2d
.end method

.method private getPkgInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .registers 7

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_f

    :try_start_7
    iget-object v2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v3, 0x2000

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_e} :catch_10

    move-result-object v1

    :cond_f
    :goto_f
    return-object v1

    :catch_10
    move-exception v0

    const-string v2, "ApplicationPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAppInfo() : Exception when retrieving package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f
.end method

.method private getProvidersFromPackage(Ljava/lang/String;)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v7, 0x80

    invoke-virtual {v6, v3, v7}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_36

    const/4 v0, 0x0

    :goto_1a
    const/4 v2, 0x0

    :goto_1b
    if-ge v2, v0, :cond_3b

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    new-instance v6, Landroid/content/ComponentName;

    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v8, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    :cond_36
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_1a

    :cond_3b
    return-object v4
.end method

.method private getSamsungWidgets()Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v5, "com.samsung.sec.android.SAMSUNG_APP_WIDGET_ACTION"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "com.samsung.sec.android.SAMSUNG_APP_WIDGET"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v6, 0x80

    invoke-virtual {v5, v2, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    new-instance v5, Landroid/content/ComponentName;

    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_20

    :cond_3d
    return-object v4
.end method

.method private getSurfaceWidgets()Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v5, "com.samsung.sec.android.SURFACE_WIDGET_ACTION"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "com.samsung.sec.android.SURFACE_WIDGET"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v6, 0x80

    invoke-virtual {v5, v2, v6}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    new-instance v5, Landroid/content/ComponentName;

    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_20

    :cond_3d
    return-object v4
.end method

.method private static getValidStr(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v1, 0x0

    if-nez p0, :cond_4

    :cond_3
    :goto_3
    return-object v1

    :cond_4
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_b} :catch_10

    move-result v2

    if-lez v2, :cond_3

    move-object v1, p0

    goto :goto_3

    :catch_10
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method private getWidgetProviderDisabledList()Ljava/util/Set;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    iget-object v7, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "disabledWidgetComponents"

    invoke-virtual {v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2c

    const-string v7, ":"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    array-length v4, v0

    const/4 v3, 0x0

    :goto_18
    if-ge v3, v4, :cond_2c

    aget-object v1, v0, v3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_29

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_29
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    :cond_2c
    return-object v6
.end method

.method private isActiveAdmin(Ljava/lang/String;)Z
    .registers 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/app/enterprise/EnterpriseDeviceManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v1, :cond_4

    move v0, v1

    goto :goto_4
.end method

.method private isApplicationInstallationEnabled(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;Z)Z
    .registers 18

    const/4 v5, 0x1

    const-string v9, "ApplicationPolicy"

    const-string v10, "isApplicationInstallationEnabled"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlStateLock:Ljava/lang/Object;

    monitor-enter v10

    :try_start_b
    sget-object v9, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    if-eqz v9, :cond_17

    sget-object v9, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1a

    :cond_17
    monitor-exit v10

    move v6, v5

    :goto_19
    return v6

    :cond_1a
    invoke-direct/range {p0 .. p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationPackageInfo(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;)Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationPackageInfo;
    :try_end_1d
    .catchall {:try_start_b .. :try_end_1d} :catchall_259

    move-result-object v1

    :try_start_1e
    sget-object v9, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_28
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_25c

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-static {v11, v12}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getContainerIdFromLUID(J)I

    move-result v9

    if-nez v9, :cond_28

    const-string v9, "PackageNameInstallationWhitelist"

    invoke-direct {p0, v7, v9, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->checkPkgNameMatch(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    const-string v9, "ApplicationPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "isApplicationInstallationEnabled :  Checking PKG WL - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v5, :cond_28

    const-string v9, "PackageNameInstallationBlacklist"

    invoke-direct {p0, v7, v9, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->checkPkgNameMatch(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_bb

    const/4 v5, 0x1

    :goto_67
    const-string v9, "ApplicationPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "isApplicationInstallationEnabled :  Checking PKG BL - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v5, :cond_bd

    const-string v9, "ApplicationPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "isApplicationInstallationEnabled :  enabled "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_99
    .catchall {:try_start_1e .. :try_end_99} :catchall_239
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_99} :catch_1f4

    if-eqz p3, :cond_b7

    if-nez v5, :cond_b7

    :try_start_9d
    new-instance v4, Landroid/content/Intent;

    const-string v9, "android.intent.action.enterprise.SHOW_UI"

    invoke-direct {v4, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v9, "message"

    iget-object v11, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    const v12, 0x10402a5

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v9, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v9, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_b7
    monitor-exit v10
    :try_end_b8
    .catchall {:try_start_9d .. :try_end_b8} :catchall_259

    move v6, v5

    goto/16 :goto_19

    :cond_bb
    const/4 v5, 0x0

    goto :goto_67

    :cond_bd
    :try_start_bd
    new-instance v0, Ljava/util/ArrayList;

    iget-object v9, v1, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationPackageInfo;->permissions:Ljava/util/List;

    invoke-direct {v0, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object v9, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v9, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    const-string v11, "PermissionInstallationBlacklist"

    invoke-interface {v9, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Collection;

    invoke-interface {v0, v9}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    const-string v9, "ApplicationPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "isApplicationInstallationEnabled :  Checking PERM BL - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v5, :cond_12f

    const-string v9, "ApplicationPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "isApplicationInstallationEnabled :  enabled "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10d
    .catchall {:try_start_bd .. :try_end_10d} :catchall_239
    .catch Ljava/lang/Exception; {:try_start_bd .. :try_end_10d} :catch_1f4

    if-eqz p3, :cond_12b

    if-nez v5, :cond_12b

    :try_start_111
    new-instance v4, Landroid/content/Intent;

    const-string v9, "android.intent.action.enterprise.SHOW_UI"

    invoke-direct {v4, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v9, "message"

    iget-object v11, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    const v12, 0x10402a5

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v9, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v9, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_12b
    monitor-exit v10
    :try_end_12c
    .catchall {:try_start_111 .. :try_end_12c} :catchall_259

    move v6, v5

    goto/16 :goto_19

    :cond_12f
    :try_start_12f
    new-instance v2, Ljava/util/ArrayList;

    iget-object v9, v1, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationPackageInfo;->signatures:Ljava/util/List;

    invoke-direct {v2, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object v9, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v9, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    const-string v11, "SignatureInstallationWhitelist"

    invoke-interface {v9, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Collection;

    invoke-interface {v2, v9}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    sget-object v9, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v9, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    const-string v11, "SignatureInstallationWhitelist"

    invoke-interface {v9, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Set;

    const-string v11, "*"

    invoke-interface {v9, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_28

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_28

    new-instance v2, Ljava/util/ArrayList;

    iget-object v9, v1, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationPackageInfo;->signatures:Ljava/util/List;

    invoke-direct {v2, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object v9, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v9, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    const-string v11, "SignatureInstallationBlacklist"

    invoke-interface {v9, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Collection;

    invoke-interface {v2, v9}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    sget-object v9, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v9, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    const-string v11, "SignatureInstallationBlacklist"

    invoke-interface {v9, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Set;

    const-string v11, "*"

    invoke-interface {v9, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_19f

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_1a0

    :cond_19f
    const/4 v5, 0x0

    :cond_1a0
    const-string v9, "ApplicationPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "isApplicationInstallationEnabled :  Checking SIG BL - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v5, :cond_28

    const-string v9, "ApplicationPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "isApplicationInstallationEnabled :  enabled "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1d2
    .catchall {:try_start_12f .. :try_end_1d2} :catchall_239
    .catch Ljava/lang/Exception; {:try_start_12f .. :try_end_1d2} :catch_1f4

    if-eqz p3, :cond_1f0

    if-nez v5, :cond_1f0

    :try_start_1d6
    new-instance v4, Landroid/content/Intent;

    const-string v9, "android.intent.action.enterprise.SHOW_UI"

    invoke-direct {v4, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v9, "message"

    iget-object v11, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    const v12, 0x10402a5

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v9, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v9, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1f0
    monitor-exit v10
    :try_end_1f1
    .catchall {:try_start_1d6 .. :try_end_1f1} :catchall_259

    move v6, v5

    goto/16 :goto_19

    :catch_1f4
    move-exception v3

    :try_start_1f5
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    const-string v9, "ApplicationPolicy"

    const-string v11, "Could not retrieve permissions & signature for package"

    invoke-static {v9, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1ff
    .catchall {:try_start_1f5 .. :try_end_1ff} :catchall_239

    if-eqz p3, :cond_21d

    if-nez v5, :cond_21d

    :try_start_203
    new-instance v4, Landroid/content/Intent;

    const-string v9, "android.intent.action.enterprise.SHOW_UI"

    invoke-direct {v4, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v9, "message"

    iget-object v11, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    const v12, 0x10402a5

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v9, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v9, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_21d
    :goto_21d
    monitor-exit v10
    :try_end_21e
    .catchall {:try_start_203 .. :try_end_21e} :catchall_259

    const-string v9, "ApplicationPolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isApplicationInstallationEnabled :  enabled "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v5

    goto/16 :goto_19

    :catchall_239
    move-exception v9

    if-eqz p3, :cond_258

    if-nez v5, :cond_258

    :try_start_23e
    new-instance v4, Landroid/content/Intent;

    const-string v11, "android.intent.action.enterprise.SHOW_UI"

    invoke-direct {v4, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v11, "message"

    iget-object v12, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    const v13, 0x10402a5

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v11, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_258
    throw v9

    :catchall_259
    move-exception v9

    monitor-exit v10
    :try_end_25b
    .catchall {:try_start_23e .. :try_end_25b} :catchall_259

    throw v9

    :cond_25c
    if-eqz p3, :cond_21d

    if-nez v5, :cond_21d

    :try_start_260
    new-instance v4, Landroid/content/Intent;

    const-string v9, "android.intent.action.enterprise.SHOW_UI"

    invoke-direct {v4, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v9, "message"

    iget-object v11, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    const v12, 0x10402a5

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v9, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v9, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_27a
    .catchall {:try_start_260 .. :try_end_27a} :catchall_259

    goto :goto_21d
.end method

.method private declared-synchronized isApplicationStateBlocked(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 19

    monitor-enter p0

    :try_start_1
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_17

    move-result v11

    if-eqz v11, :cond_a

    const/4 v1, 0x0

    :goto_8
    monitor-exit p0

    return v1

    :cond_a
    :try_start_a
    iget-object v12, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlStateLock:Ljava/lang/Object;

    monitor-enter v12
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_17

    :try_start_d
    sget-object v11, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    if-nez v11, :cond_1a

    const/4 v1, 0x0

    monitor-exit v12

    goto :goto_8

    :catchall_14
    move-exception v11

    monitor-exit v12
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_14

    :try_start_16
    throw v11
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_17

    :catchall_17
    move-exception v11

    monitor-exit p0

    throw v11

    :cond_1a
    :try_start_1a
    sget-object v11, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v10

    const/4 v1, 0x0

    if-eqz v10, :cond_a8

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_27
    :goto_27
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_a8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getContainerIdFromLUID(J)I

    move-result v11

    if-ne v11, p1, :cond_27

    sget-object v11, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-interface {v11, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map;

    move-object/from16 v0, p2

    invoke-interface {v11, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    sget-object v11, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-interface {v11, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map;

    move-object/from16 v0, p3

    invoke-interface {v11, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_69
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_27

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v11, "*"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_85

    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_69

    :cond_85
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_89
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_a7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v11, "*"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_a5

    move-object/from16 v0, p4

    invoke-virtual {v0, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_89

    :cond_a5
    const/4 v1, 0x0

    goto :goto_27

    :cond_a7
    const/4 v1, 0x1

    :cond_a8
    monitor-exit v12
    :try_end_a9
    .catchall {:try_start_1a .. :try_end_a9} :catchall_14

    goto/16 :goto_8
.end method

.method private isApplicationStateBlocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationStateBlocked(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private loadApplicationBlacklistWhitelist()V
    .registers 27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlStateLock:Ljava/lang/Object;

    move-object/from16 v21, v0

    monitor-enter v21

    :try_start_7
    new-instance v20, Ljava/util/HashMap;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashMap;-><init>()V

    sput-object v20, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminLUidList()Ljava/util/ArrayList;

    move-result-object v19

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v7, v0, [Ljava/lang/String;

    const/16 v20, 0x0

    const-string v22, "packageName"

    aput-object v22, v7, v20

    const/16 v20, 0x1

    const-string v22, "controlState"

    aput-object v22, v7, v20

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v8, v0, [Ljava/lang/String;

    const/16 v20, 0x0

    const-string v22, "signature"

    aput-object v22, v8, v20

    const/16 v20, 0x1

    const-string v22, "controlState"

    aput-object v22, v8, v20

    new-instance v20, Ljava/util/HashMap;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/enterprise/application/ApplicationPolicy;->mNotificationMode:Ljava/util/Map;

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_4b
    :goto_4b
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_4a9

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Long;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminUidFromLUID(J)I

    move-result v17

    invoke-static {v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getContainerIdFromLUID(J)I
    :try_end_62
    .catchall {:try_start_7 .. :try_end_62} :catchall_38f

    move-result v10

    const/4 v15, 0x1

    :try_start_64
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getComponentNameForUid(I)Landroid/content/ComponentName;

    move-result-object v9

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v20

    const/16 v22, 0x1b

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v9, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->hasGrantedPolicy(Landroid/content/ComponentName;I)Z
    :try_end_7f
    .catchall {:try_start_64 .. :try_end_7f} :catchall_38f
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_7f} :catch_4ab

    move-result v15

    :goto_80
    if-eqz v15, :cond_4b

    :try_start_82
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string v20, "PackageNameInstallationBlacklist"

    new-instance v22, Ljava/util/TreeSet;

    invoke-direct/range {v22 .. v22}, Ljava/util/TreeSet;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v20, "PackageNameInstallationWhitelist"

    new-instance v22, Ljava/util/TreeSet;

    invoke-direct/range {v22 .. v22}, Ljava/util/TreeSet;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v20, "PermissionInstallationBlacklist"

    new-instance v22, Ljava/util/TreeSet;

    invoke-direct/range {v22 .. v22}, Ljava/util/TreeSet;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v20, "SignatureInstallationBlacklist"

    new-instance v22, Ljava/util/TreeSet;

    invoke-direct/range {v22 .. v22}, Ljava/util/TreeSet;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v20, "SignatureInstallationWhitelist"

    new-instance v22, Ljava/util/TreeSet;

    invoke-direct/range {v22 .. v22}, Ljava/util/TreeSet;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v20, "UninstallationBlacklist"

    new-instance v22, Ljava/util/TreeSet;

    invoke-direct/range {v22 .. v22}, Ljava/util/TreeSet;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v20, "UninstallationWhitelist"

    new-instance v22, Ljava/util/TreeSet;

    invoke-direct/range {v22 .. v22}, Ljava/util/TreeSet;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v20, "PackageNameStopBlacklist"

    new-instance v22, Ljava/util/TreeSet;

    invoke-direct/range {v22 .. v22}, Ljava/util/TreeSet;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v20, "PackageNameStopWhitelist"

    new-instance v22, Ljava/util/TreeSet;

    invoke-direct/range {v22 .. v22}, Ljava/util/TreeSet;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v20, "PackageNameWidgetWhitelist"

    new-instance v22, Ljava/util/TreeSet;

    invoke-direct/range {v22 .. v22}, Ljava/util/TreeSet;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v20, "PackageNameWidgetBlacklist"

    new-instance v22, Ljava/util/TreeSet;

    invoke-direct/range {v22 .. v22}, Ljava/util/TreeSet;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v20, "PackageNameNotificationWhitelist"

    new-instance v22, Ljava/util/TreeSet;

    invoke-direct/range {v22 .. v22}, Ljava/util/TreeSet;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v20, "PackageNameNotificationBlacklist"

    new-instance v22, Ljava/util/TreeSet;

    invoke-direct/range {v22 .. v22}, Ljava/util/TreeSet;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v20, "RevocationCheck"

    new-instance v22, Ljava/util/TreeSet;

    invoke-direct/range {v22 .. v22}, Ljava/util/TreeSet;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v20, "OcspCheck"

    new-instance v22, Ljava/util/TreeSet;

    invoke-direct/range {v22 .. v22}, Ljava/util/TreeSet;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v20, "PackageNameClearDataBlacklist"

    new-instance v22, Ljava/util/TreeSet;

    invoke-direct/range {v22 .. v22}, Ljava/util/TreeSet;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v20, "PackageNameClearDataWhitelist"

    new-instance v22, Ljava/util/TreeSet;

    invoke-direct/range {v22 .. v22}, Ljava/util/TreeSet;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v20, "PackageNameClearCacheBlacklist"

    new-instance v22, Ljava/util/TreeSet;

    invoke-direct/range {v22 .. v22}, Ljava/util/TreeSet;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v20, "PackageNameClearCacheWhitelist"

    new-instance v22, Ljava/util/TreeSet;

    invoke-direct/range {v22 .. v22}, Ljava/util/TreeSet;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v20, v0

    const-string v22, "APPLICATION"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2, v10, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCursorByAdmin(Ljava/lang/String;II[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    if-eqz v12, :cond_395

    :cond_1a5
    :goto_1a5
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v20

    if-eqz v20, :cond_392

    const-string v20, "packageName"

    move-object/from16 v0, v20

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    const-string v20, "controlState"

    move-object/from16 v0, v20

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    const/16 v20, 0x4

    and-int/lit8 v22, v11, 0x4

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_1e2

    const-string v20, "PackageNameInstallationBlacklist"

    move-object/from16 v0, v20

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/Set;

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1e2
    const/16 v20, 0x8

    and-int/lit8 v22, v11, 0x8

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_1fd

    const-string v20, "PackageNameInstallationWhitelist"

    move-object/from16 v0, v20

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/Set;

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1fd
    const/16 v20, 0x1

    and-int/lit8 v22, v11, 0x1

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_218

    const-string v20, "UninstallationBlacklist"

    move-object/from16 v0, v20

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/Set;

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_218
    const/16 v20, 0x400

    and-int/lit16 v0, v11, 0x400

    move/from16 v22, v0

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_235

    const-string v20, "UninstallationWhitelist"

    move-object/from16 v0, v20

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/Set;

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_235
    const/16 v20, 0x10

    and-int/lit8 v22, v11, 0x10

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_250

    const-string v20, "PackageNameStopBlacklist"

    move-object/from16 v0, v20

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/Set;

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_250
    const/16 v20, 0x20

    and-int/lit8 v22, v11, 0x20

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_26b

    const-string v20, "PackageNameStopWhitelist"

    move-object/from16 v0, v20

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/Set;

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_26b
    const/16 v20, 0x40

    and-int/lit8 v22, v11, 0x40

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_286

    const-string v20, "PackageNameWidgetBlacklist"

    move-object/from16 v0, v20

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/Set;

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_286
    const/16 v20, 0x80

    and-int/lit16 v0, v11, 0x80

    move/from16 v22, v0

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_2a3

    const-string v20, "PackageNameWidgetWhitelist"

    move-object/from16 v0, v20

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/Set;

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2a3
    const/16 v20, 0x100

    and-int/lit16 v0, v11, 0x100

    move/from16 v22, v0

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_2c0

    const-string v20, "PackageNameNotificationBlacklist"

    move-object/from16 v0, v20

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/Set;

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2c0
    const/16 v20, 0x200

    and-int/lit16 v0, v11, 0x200

    move/from16 v22, v0

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_2dd

    const-string v20, "PackageNameNotificationWhitelist"

    move-object/from16 v0, v20

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/Set;

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2dd
    const/16 v20, 0x800

    and-int/lit16 v0, v11, 0x800

    move/from16 v22, v0

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_2fa

    const-string v20, "RevocationCheck"

    move-object/from16 v0, v20

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/Set;

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2fa
    const/16 v20, 0x1000

    and-int/lit16 v0, v11, 0x1000

    move/from16 v22, v0

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_317

    const-string v20, "OcspCheck"

    move-object/from16 v0, v20

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/Set;

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_317
    const/16 v20, 0x2000

    and-int/lit16 v0, v11, 0x2000

    move/from16 v22, v0

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_334

    const-string v20, "PackageNameClearDataBlacklist"

    move-object/from16 v0, v20

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/Set;

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_334
    const/16 v20, 0x4000

    and-int/lit16 v0, v11, 0x4000

    move/from16 v22, v0

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_351

    const-string v20, "PackageNameClearDataWhitelist"

    move-object/from16 v0, v20

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/Set;

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_351
    const v20, 0x8000

    const v22, 0x8000

    and-int v22, v22, v11

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_370

    const-string v20, "PackageNameClearCacheBlacklist"

    move-object/from16 v0, v20

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/Set;

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_370
    const/high16 v20, 0x1

    const/high16 v22, 0x1

    and-int v22, v22, v11

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_1a5

    const-string v20, "PackageNameClearCacheWhitelist"

    move-object/from16 v0, v20

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/Set;

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1a5

    :catchall_38f
    move-exception v20

    monitor-exit v21
    :try_end_391
    .catchall {:try_start_82 .. :try_end_391} :catchall_38f

    throw v20

    :cond_392
    :try_start_392
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v20, v0

    const-string v22, "APPLICATION_PERMISSION"

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-string v25, "permission"

    aput-object v25, v23, v24

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move/from16 v2, v17

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v2, v10, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCursorByAdmin(Ljava/lang/String;II[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    if-eqz v12, :cond_3e2

    :goto_3b9
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v20

    if-eqz v20, :cond_3df

    const-string v20, "PermissionInstallationBlacklist"

    move-object/from16 v0, v20

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/Set;

    const-string v22, "permission"

    move-object/from16 v0, v22

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3b9

    :cond_3df
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_3e2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v20, v0

    const-string v22, "APPLICATION_SIGNATURE2"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2, v10, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCursorByAdmin(Ljava/lang/String;II[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    if-eqz v12, :cond_452

    :cond_3f6
    :goto_3f6
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v20

    if-eqz v20, :cond_44f

    const-string v20, "signature"

    move-object/from16 v0, v20

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    const-string v20, "controlState"

    move-object/from16 v0, v20

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    const/16 v20, 0x1

    and-int/lit8 v22, v11, 0x1

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_433

    const-string v20, "SignatureInstallationBlacklist"

    move-object/from16 v0, v20

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/Set;

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_433
    const/16 v20, 0x2

    and-int/lit8 v22, v11, 0x2

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_3f6

    const-string v20, "SignatureInstallationWhitelist"

    move-object/from16 v0, v20

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/Set;

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3f6

    :cond_44f
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_452
    .catchall {:try_start_392 .. :try_end_452} :catchall_38f

    :cond_452
    :try_start_452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mNotificationMode:Ljava/util/Map;

    move-object/from16 v20, v0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v23, v0

    const-string v24, "APPLICATION_MISC"

    const-string v25, "appNotificationMode"

    move-object/from16 v0, v23

    move/from16 v1, v17

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    invoke-virtual {v0, v1, v10, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(IILjava/lang/String;Ljava/lang/String;)I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_47f
    .catchall {:try_start_452 .. :try_end_47f} :catchall_38f
    .catch Lcom/android/server/enterprise/storage/SettingNotFoundException; {:try_start_452 .. :try_end_47f} :catch_48e

    :goto_47f
    :try_start_47f
    sget-object v20, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4b

    :catch_48e
    move-exception v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mNotificationMode:Ljava/util/Map;

    move-object/from16 v20, v0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    const/16 v23, 0x2

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_47f

    :cond_4a9
    monitor-exit v21
    :try_end_4aa
    .catchall {:try_start_47f .. :try_end_4aa} :catchall_38f

    return-void

    :catch_4ab
    move-exception v20

    goto/16 :goto_80
.end method

.method private manageHomeShorcut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 24

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    new-instance v13, Landroid/content/Intent;

    const-string v18, "android.intent.action.MAIN"

    move-object/from16 v0, v18

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v18, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v12, v13, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v15

    if-eqz v15, :cond_4c

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_4c

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    iget-object v0, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2a

    const/16 v16, 0x1

    :cond_4c
    if-eqz v16, :cond_fb

    const/4 v2, 0x0

    const/16 v18, 0x80

    :try_start_51
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v17

    new-instance v10, Landroid/content/Intent;

    move-object/from16 v0, p3

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v18, "android.intent.extra.shortcut.INTENT"

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v18, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v12, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    invoke-virtual {v12, v2}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_8f

    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    const-string v18, "android.intent.extra.shortcut.ICON"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_8f
    const-string v18, "duplicate"

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    if-eqz p2, :cond_f0

    new-instance v7, Landroid/content/Intent;

    const-string v18, "android.intent.action.MAIN"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v7, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v18, "android.intent.category.HOME"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v7, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v11

    const/4 v6, 0x0

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_c5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_eb

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/ResolveInfo;

    iget-object v0, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_c5

    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v6, 0x1

    :cond_eb
    if-nez v6, :cond_f0

    const/16 v18, 0x0

    :goto_ef
    return v18

    :cond_f0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_fb
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_51 .. :try_end_fb} :catch_fe

    :cond_fb
    :goto_fb
    move/from16 v18, v16

    goto :goto_ef

    :catch_fe
    move-exception v5

    const-string v18, "ApplicationPolicy"

    const-string v19, "something wrong here , package name not found"

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v16, 0x0

    goto :goto_fb
.end method

.method private putWidgetProviderDisabledList(Ljava/util/Set;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    :cond_30
    iget-object v3, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "disabledWidgetComponents"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method private readAppMemoryInfo(Z)Ljava/util/List;
    .registers 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;",
            ">;"
        }
    .end annotation

    const-string v22, "ApplicationPolicy"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "readAppMemoryInfo start bShowAllProcess:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    :try_start_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const-string v23, "activity"

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager;

    const/4 v14, 0x0

    if-nez p1, :cond_ed

    const-string v22, "ApplicationPolicy"

    const-string v23, "readAppMemoryInfo : show only installed application"

    invoke-static/range {v22 .. v23}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v22

    move/from16 v0, v22

    new-array v14, v0, [I

    const/4 v8, 0x0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v9, v8

    :goto_4b
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_63

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/app/ActivityManager$RunningAppProcessInfo;

    add-int/lit8 v8, v9, 0x1

    move-object/from16 v0, v19

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v22, v0

    aput v22, v14, v9

    move v9, v8

    goto :goto_4b

    :cond_63
    move v8, v9

    :goto_64
    invoke-virtual {v4, v14}, Landroid/app/ActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v12

    if-eqz v12, :cond_94

    if-eqz v14, :cond_94

    const-string v22, "ApplicationPolicy"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "memory length : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    array-length v0, v12

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "pids length"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    array-length v0, v14

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_94
    if-eqz v12, :cond_119

    const/4 v6, 0x0

    :goto_97
    array-length v0, v12

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v6, v0, :cond_119

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "/proc/"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    aget v23, v14, v6

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "/cmdline"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->readData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_ea

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->cleanCmdline(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aget-object v11, v12, v6

    invoke-virtual {v11}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v22

    move/from16 v0, v22

    mul-int/lit16 v0, v0, 0x400

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v17, v0

    new-instance v22, Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-wide/from16 v2, v17

    invoke-direct {v0, v1, v10, v2, v3}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;-><init>(Lcom/android/server/enterprise/application/ApplicationPolicy;Ljava/lang/String;J)V

    invoke-virtual/range {v21 .. v22}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_ea
    add-int/lit8 v6, v6, 0x1

    goto :goto_97

    :cond_ed
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getPidList()Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    new-array v14, v0, [I

    const/4 v8, 0x0

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v9, v8

    :goto_ff
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_121

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v13

    add-int/lit8 v8, v9, 0x1

    aput v13, v14, v9
    :try_end_113
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_113} :catch_115

    move v9, v8

    goto :goto_ff

    :catch_115
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    :cond_119
    const-string v22, "ApplicationPolicy"

    const-string v23, "readAppMemoryInfo end"

    invoke-static/range {v22 .. v23}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v21

    :cond_121
    move v8, v9

    goto/16 :goto_64
.end method

.method private readAppSizeInfo()Ljava/util/List;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;",
            ">;"
        }
    .end annotation

    const-string v11, "ApplicationPolicy"

    const-string v12, "readAppSizeInfo start"

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v3

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    :try_start_17
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1b
    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_65

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-eqz v4, :cond_1b

    new-instance v5, Lcom/android/server/enterprise/application/ApplicationPolicy$PkgSizeObserver;

    invoke-direct {v5, p0}, Lcom/android/server/enterprise/application/ApplicationPolicy$PkgSizeObserver;-><init>(Lcom/android/server/enterprise/application/ApplicationPolicy;)V

    iget-object v11, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v11, v4, v5}, Landroid/content/pm/PackageManager;->getPackageSizeInfo(Ljava/lang/String;Landroid/content/pm/IPackageStatsObserver;)V

    monitor-enter v5
    :try_end_36
    .catchall {:try_start_17 .. :try_end_36} :catchall_73
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_36} :catch_61

    :goto_36
    :try_start_36
    iget-boolean v11, v5, Lcom/android/server/enterprise/application/ApplicationPolicy$PkgSizeObserver;->finished:Z
    :try_end_38
    .catchall {:try_start_36 .. :try_end_38} :catchall_70

    if-nez v11, :cond_40

    :try_start_3a
    invoke-virtual {v5}, Ljava/lang/Object;->wait()V
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_70
    .catch Ljava/lang/InterruptedException; {:try_start_3a .. :try_end_3d} :catch_3e

    goto :goto_36

    :catch_3e
    move-exception v11

    goto :goto_36

    :cond_40
    :try_start_40
    monitor-exit v5
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_70

    :try_start_41
    iget-boolean v11, v5, Lcom/android/server/enterprise/application/ApplicationPolicy$PkgSizeObserver;->result:Z

    if-eqz v11, :cond_1b

    iget-object v11, v5, Lcom/android/server/enterprise/application/ApplicationPolicy$PkgSizeObserver;->mPkgStats:Landroid/content/pm/PackageStats;

    if-eqz v11, :cond_1b

    iget-object v11, v5, Lcom/android/server/enterprise/application/ApplicationPolicy$PkgSizeObserver;->mPkgStats:Landroid/content/pm/PackageStats;

    iget-wide v11, v11, Landroid/content/pm/PackageStats;->cacheSize:J

    iget-object v13, v5, Lcom/android/server/enterprise/application/ApplicationPolicy$PkgSizeObserver;->mPkgStats:Landroid/content/pm/PackageStats;

    iget-wide v13, v13, Landroid/content/pm/PackageStats;->codeSize:J

    add-long/2addr v11, v13

    iget-object v13, v5, Lcom/android/server/enterprise/application/ApplicationPolicy$PkgSizeObserver;->mPkgStats:Landroid/content/pm/PackageStats;

    iget-wide v13, v13, Landroid/content/pm/PackageStats;->dataSize:J

    add-long v7, v11, v13

    new-instance v11, Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;

    invoke-direct {v11, p0, v4, v7, v8}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;-><init>(Lcom/android/server/enterprise/application/ApplicationPolicy;Ljava/lang/String;J)V

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_60
    .catchall {:try_start_41 .. :try_end_60} :catchall_73
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_60} :catch_61

    goto :goto_1b

    :catch_61
    move-exception v0

    :try_start_62
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_65
    .catchall {:try_start_62 .. :try_end_65} :catchall_73

    :cond_65
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const-string v11, "ApplicationPolicy"

    const-string v12, "readAppSizeInfo end"

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v6

    :catchall_70
    move-exception v11

    :try_start_71
    monitor-exit v5
    :try_end_72
    .catchall {:try_start_71 .. :try_end_72} :catchall_70

    :try_start_72
    throw v11
    :try_end_73
    .catchall {:try_start_72 .. :try_end_73} :catchall_73
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_73} :catch_61

    :catchall_73
    move-exception v11

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v11
.end method

.method private readData(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    const/4 v3, 0x0

    :try_start_1
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_6} :catch_1e

    new-instance v1, Ljava/io/BufferedReader;

    const/16 v4, 0x1f4

    invoke-direct {v1, v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    :try_start_d
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_68
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_10} :catch_3b

    move-result-object v3

    if-eqz v2, :cond_17

    :try_start_13
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_16} :catch_7b

    const/4 v2, 0x0

    :cond_17
    if-eqz v1, :cond_1d

    :try_start_19
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1c} :catch_7d

    :goto_1c
    const/4 v1, 0x0

    :cond_1d
    :goto_1d
    return-object v3

    :catch_1e
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    const-string v4, "ApplicationPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "File access error "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1d

    :catch_3b
    move-exception v0

    :try_start_3c
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const-string v4, "ApplicationPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "read error on "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_57
    .catchall {:try_start_3c .. :try_end_57} :catchall_68

    if-eqz v2, :cond_5d

    :try_start_59
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V

    const/4 v2, 0x0

    :cond_5d
    if-eqz v1, :cond_1d

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_62} :catch_63

    goto :goto_1c

    :catch_63
    move-exception v0

    :goto_64
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1d

    :catchall_68
    move-exception v3

    if-eqz v2, :cond_6f

    :try_start_6b
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V

    const/4 v2, 0x0

    :cond_6f
    if-eqz v1, :cond_75

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_74
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_74} :catch_76

    const/4 v1, 0x0

    :cond_75
    :goto_75
    throw v3

    :catch_76
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_75

    :catch_7b
    move-exception v0

    goto :goto_64

    :catch_7d
    move-exception v0

    goto :goto_64
.end method

.method private reconcileApplicationsState()V
    .registers 11

    :try_start_0
    iget-object v7, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "appToReconcile"

    invoke-virtual {v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_43

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_43

    const-string v7, ";"

    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    array-length v4, v1

    const/4 v3, 0x0

    :goto_19
    if-ge v3, v4, :cond_3a

    aget-object v6, v1, v3

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_37

    invoke-direct {p0, v6}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getActualApplicationStateEnabled(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_37

    const/4 v7, 0x0

    invoke-virtual {p0, v7, v6}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateEnabled(ILjava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_37

    iget-object v7, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {v7, v6, v8, v9}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    :cond_37
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    :cond_3a
    iget-object v7, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "appToReconcile"

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_43} :catch_44

    :cond_43
    :goto_43
    return-void

    :catch_44
    move-exception v2

    const-string v7, "ApplicationPolicy"

    const-string v8, "error in reconcileApplicationsState"

    invoke-static {v7, v8, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_43
.end method

.method private refreshWidgetStatus()V
    .registers 20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mRefreshWidgetStatusLock:Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16

    :try_start_7
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_2e

    const/4 v10, 0x0

    :try_start_d
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    invoke-virtual {v15}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getInstalledWidgetProviders()Ljava/util/List;
    :try_end_14
    .catchall {:try_start_d .. :try_end_14} :catchall_2e
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_14} :catch_22

    move-result-object v10

    :goto_15
    if-nez v10, :cond_31

    :try_start_17
    const-string v15, "ApplicationPolicy"

    const-string v17, "providerInfoList == null"

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v16

    :goto_21
    return-void

    :catch_22
    move-exception v5

    const/4 v10, 0x0

    const-string v15, "ApplicationPolicy"

    const-string v17, "Failed to get widget providers"

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15

    :catchall_2e
    move-exception v15

    monitor-exit v16
    :try_end_30
    .catchall {:try_start_17 .. :try_end_30} :catchall_2e

    throw v15

    :cond_31
    :try_start_31
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_35
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_47

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v15, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_35

    :cond_47
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getSamsungWidgets()Ljava/util/List;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getSurfaceWidgets()Ljava/util/List;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getWidgetProviderDisabledList()Ljava/util/Set;

    move-result-object v4

    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_66
    :goto_66
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_91

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isWidgetAllowed(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_66

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v3, v0, v1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    invoke-interface {v11, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_66

    :cond_91
    invoke-interface {v4, v11}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    const/4 v6, 0x0

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_99
    :goto_99
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_c5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isWidgetAllowed(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_99

    invoke-interface {v4, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v17, 0x2

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v9, v0, v1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    const/4 v6, 0x1

    goto :goto_99

    :cond_c5
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/application/ApplicationPolicy;->putWidgetProviderDisabledList(Ljava/util/Set;)V

    if-eqz v6, :cond_dd

    new-instance v8, Landroid/content/Intent;

    const-string v15, "edm.intent.action.FORCE_LAUNCHER_REFRESH"

    invoke-direct {v8, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v15, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_dd
    monitor-exit v16
    :try_end_de
    .catchall {:try_start_31 .. :try_end_de} :catchall_2e

    goto/16 :goto_21
.end method

.method private refreshWidgetStatus(Ljava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_7

    :goto_6
    return-void

    :cond_7
    iget-object v6, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mRefreshWidgetStatusLock:Ljava/lang/Object;

    monitor-enter v6

    const/4 v5, 0x0

    :try_start_b
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isWidgetAllowed(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_47

    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getWidgetProviderDisabledList()Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_23
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_44

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-virtual {v5, v2, v7, v8}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_23

    :catchall_41
    move-exception v5

    monitor-exit v6
    :try_end_43
    .catchall {:try_start_b .. :try_end_43} :catchall_41

    throw v5

    :cond_44
    :try_start_44
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->putWidgetProviderDisabledList(Ljava/util/Set;)V

    :cond_47
    monitor-exit v6
    :try_end_48
    .catchall {:try_start_44 .. :try_end_48} :catchall_41

    goto :goto_6
.end method

.method private registerBootCompletedListener()V
    .registers 4

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lcom/android/server/enterprise/application/ApplicationPolicy$2;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/application/ApplicationPolicy$2;-><init>(Lcom/android/server/enterprise/application/ApplicationPolicy;)V

    iget-object v2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private registerPackageChangeReceiver()V
    .registers 5

    :try_start_0
    sget-object v2, Lcom/android/server/enterprise/application/ApplicationPolicy;->packageChangeIntentReceiver:Landroid/content/BroadcastReceiver;

    if-nez v2, :cond_39

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.MY_PACKAGE_REPLACED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    new-instance v2, Lcom/android/server/enterprise/application/ApplicationPolicy$1;

    invoke-direct {v2, p0}, Lcom/android/server/enterprise/application/ApplicationPolicy$1;-><init>(Lcom/android/server/enterprise/application/ApplicationPolicy;)V

    sput-object v2, Lcom/android/server/enterprise/application/ApplicationPolicy;->packageChangeIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/server/enterprise/application/ApplicationPolicy;->packageChangeIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string v2, "ApplicationPolicy"

    const-string v3, "registerPackageChangeReceiver() : Done"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_39} :catch_3a

    :cond_39
    :goto_39
    return-void

    :catch_3a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_39
.end method

.method private declared-synchronized removeApplicationStateList(ILjava/lang/String;ILjava/util/List;)Z
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v8, 0x0

    monitor-enter p0

    :try_start_2
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(I)I
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_33

    move-result v2

    if-nez p4, :cond_a

    :cond_8
    monitor-exit p0

    return v8

    :cond_a
    const/4 v8, 0x1

    if-eqz p4, :cond_36

    :try_start_d
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_11
    :goto_11
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "*"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->checkRegex(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    invoke-interface {v7}, Ljava/util/Iterator;->remove()V
    :try_end_32
    .catchall {:try_start_d .. :try_end_32} :catchall_33

    goto :goto_11

    :catchall_33
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_36
    if-eqz p4, :cond_8

    :try_start_38
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p1

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIIZ)Z
    :try_end_4f
    .catchall {:try_start_38 .. :try_end_4f} :catchall_33

    move-result v0

    and-int/2addr v8, v0

    goto :goto_3c
.end method

.method private removeApplicationStateList(Ljava/lang/String;ILjava/util/List;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->removeApplicationStateList(ILjava/lang/String;ILjava/util/List;)Z

    move-result v0

    return v0
.end method

.method private setApplicationPermissionControlState(Ljava/lang/String;IZ)Z
    .registers 11

    int-to-long v0, p2

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->createAdminMap(J)V

    iget-object v4, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlStateLock:Ljava/lang/Object;

    monitor-enter v4

    if-eqz p3, :cond_3d

    :try_start_9
    sget-object v3, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    const-string v5, "PermissionInstallationBlacklist"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "permission"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "adminUid"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v3, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "APPLICATION_PERMISSION"

    invoke-virtual {v3, v5, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v3

    monitor-exit v4

    :goto_3c
    return v3

    :cond_3d
    sget-object v3, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    const-string v5, "PermissionInstallationBlacklist"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "APPLICATION_PERMISSION"

    const-string v6, "permission"

    invoke-virtual {v3, v5, p2, v6, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->removeByAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v3

    monitor-exit v4

    goto :goto_3c

    :catchall_60
    move-exception v3

    monitor-exit v4
    :try_end_62
    .catchall {:try_start_9 .. :try_end_62} :catchall_60

    throw v3
.end method

.method private declared-synchronized setApplicationPkgNameControlState(Ljava/lang/String;IIIZ)Z
    .registers 16

    monitor-enter p0

    int-to-long v7, p2

    if-lez p3, :cond_c

    :try_start_4
    invoke-static {p2, p3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->translateToAdminLUID(II)J

    move-result-wide v7

    invoke-static {p3, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getContainerizedPackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_c
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "APPLICATION"

    const-string v4, "packageName"

    const-string v6, "controlState"

    move v2, p2

    move v3, p3

    move-object v5, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntByAdminAndField(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    const/4 v0, -0x1

    if-ne v9, v0, :cond_1f

    const/4 v9, 0x0

    :cond_1f
    invoke-direct {p0, v7, v8}, Lcom/android/server/enterprise/application/ApplicationPolicy;->createAdminMap(J)V

    iget-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlStateLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_25
    .catchall {:try_start_4 .. :try_end_25} :catchall_66

    sparse-switch p4, :sswitch_data_392

    :goto_28
    :try_start_28
    monitor-exit v1
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_63

    if-eqz p5, :cond_38c

    or-int/2addr v9, p4

    :goto_2c
    :try_start_2c
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "controlState"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "APPLICATION"

    const-string v4, "packageName"

    move v2, p2

    move v3, p3

    move-object v5, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesForAdminAndField(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Z
    :try_end_46
    .catchall {:try_start_2c .. :try_end_46} :catchall_66

    move-result v0

    monitor-exit p0

    return v0

    :sswitch_49
    if-eqz p5, :cond_69

    :try_start_4b
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "PackageNameInstallationBlacklist"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_28

    :catchall_63
    move-exception v0

    monitor-exit v1
    :try_end_65
    .catchall {:try_start_4b .. :try_end_65} :catchall_63

    :try_start_65
    throw v0
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_66

    :catchall_66
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_69
    :try_start_69
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "PackageNameInstallationBlacklist"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_28

    :sswitch_81
    if-eqz p5, :cond_9b

    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "PackageNameInstallationWhitelist"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_28

    :cond_9b
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "PackageNameInstallationWhitelist"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_28

    :sswitch_b4
    if-eqz p5, :cond_cf

    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "UninstallationBlacklist"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_28

    :cond_cf
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "UninstallationBlacklist"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_28

    :sswitch_e8
    if-eqz p5, :cond_103

    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "UninstallationWhitelist"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_28

    :cond_103
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "UninstallationWhitelist"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_28

    :sswitch_11c
    if-eqz p5, :cond_137

    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "PackageNameStopBlacklist"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_28

    :cond_137
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "PackageNameStopBlacklist"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_28

    :sswitch_150
    if-eqz p5, :cond_16b

    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "PackageNameStopWhitelist"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_28

    :cond_16b
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "PackageNameStopWhitelist"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_28

    :sswitch_184
    if-eqz p5, :cond_19f

    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "PackageNameWidgetWhitelist"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_28

    :cond_19f
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "PackageNameWidgetWhitelist"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_28

    :sswitch_1b8
    if-eqz p5, :cond_1d3

    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "PackageNameWidgetBlacklist"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_28

    :cond_1d3
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "PackageNameWidgetBlacklist"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_28

    :sswitch_1ec
    if-eqz p5, :cond_207

    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "PackageNameNotificationBlacklist"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_28

    :cond_207
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "PackageNameNotificationBlacklist"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_28

    :sswitch_220
    if-eqz p5, :cond_23b

    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "PackageNameNotificationWhitelist"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_28

    :cond_23b
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "PackageNameNotificationWhitelist"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_28

    :sswitch_254
    if-eqz p5, :cond_26f

    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "RevocationCheck"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_28

    :cond_26f
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "RevocationCheck"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_28

    :sswitch_288
    if-eqz p5, :cond_2a3

    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "OcspCheck"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_28

    :cond_2a3
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "OcspCheck"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_28

    :sswitch_2bc
    if-eqz p5, :cond_2d7

    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "PackageNameClearDataBlacklist"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_28

    :cond_2d7
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "PackageNameClearDataBlacklist"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_28

    :sswitch_2f0
    if-eqz p5, :cond_30b

    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "PackageNameClearDataWhitelist"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_28

    :cond_30b
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "PackageNameClearDataWhitelist"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_28

    :sswitch_324
    if-eqz p5, :cond_33f

    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "PackageNameClearCacheBlacklist"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_28

    :cond_33f
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "PackageNameClearCacheBlacklist"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_28

    :sswitch_358
    if-eqz p5, :cond_373

    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "PackageNameClearCacheWhitelist"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_28

    :cond_373
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "PackageNameClearCacheWhitelist"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_38a
    .catchall {:try_start_69 .. :try_end_38a} :catchall_63

    goto/16 :goto_28

    :cond_38c
    xor-int/lit8 v0, p4, -0x1

    and-int/2addr v9, v0

    goto/16 :goto_2c

    nop

    :sswitch_data_392
    .sparse-switch
        0x1 -> :sswitch_b4
        0x4 -> :sswitch_49
        0x8 -> :sswitch_81
        0x10 -> :sswitch_11c
        0x20 -> :sswitch_150
        0x40 -> :sswitch_1b8
        0x80 -> :sswitch_184
        0x100 -> :sswitch_1ec
        0x200 -> :sswitch_220
        0x400 -> :sswitch_e8
        0x800 -> :sswitch_254
        0x1000 -> :sswitch_288
        0x2000 -> :sswitch_2bc
        0x4000 -> :sswitch_2f0
        0x8000 -> :sswitch_324
        0x10000 -> :sswitch_358
    .end sparse-switch
.end method

.method private declared-synchronized setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z
    .registers 11

    monitor-enter p0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    move v5, p4

    :try_start_7
    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIIZ)Z
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_d

    move-result v0

    monitor-exit p0

    return v0

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setApplicationSignatureControlState(Ljava/lang/String;IIZ)Z
    .registers 15

    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "APPLICATION_SIGNATURE2"

    const-string v3, "signature"

    const-string v5, "controlState"

    move v2, p2

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntByAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    const/4 v0, -0x1

    if-ne v8, v0, :cond_12

    const/4 v8, 0x0

    :cond_12
    if-nez p4, :cond_1a

    and-int v0, v8, p3

    if-eq v0, p3, :cond_1a

    const/4 v9, 0x1

    :goto_19
    return v9

    :cond_1a
    int-to-long v6, p2

    invoke-direct {p0, v6, v7}, Lcom/android/server/enterprise/application/ApplicationPolicy;->createAdminMap(J)V

    iget-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlStateLock:Ljava/lang/Object;

    monitor-enter v1

    packed-switch p3, :pswitch_data_c0

    :goto_24
    :try_start_24
    monitor-exit v1
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_60

    if-eqz p4, :cond_ae

    or-int/2addr v8, p3

    :goto_28
    const/4 v9, 0x1

    if-lez v8, :cond_b3

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "controlState"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "APPLICATION_SIGNATURE2"

    const-string v3, "signature"

    move v2, p2

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesForAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v9

    goto :goto_19

    :pswitch_46
    if-eqz p4, :cond_63

    :try_start_48
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "SignatureInstallationBlacklist"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_24

    :catchall_60
    move-exception v0

    monitor-exit v1
    :try_end_62
    .catchall {:try_start_48 .. :try_end_62} :catchall_60

    throw v0

    :cond_63
    :try_start_63
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "SignatureInstallationBlacklist"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_24

    :pswitch_7b
    if-eqz p4, :cond_95

    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "SignatureInstallationWhitelist"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_24

    :cond_95
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v2, "SignatureInstallationWhitelist"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_ac
    .catchall {:try_start_63 .. :try_end_ac} :catchall_60

    goto/16 :goto_24

    :cond_ae
    xor-int/lit8 v0, p3, -0x1

    and-int/2addr v8, v0

    goto/16 :goto_28

    :cond_b3
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "APPLICATION_SIGNATURE2"

    const-string v2, "signature"

    invoke-virtual {v0, v1, p2, v2, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->removeByAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v9

    goto/16 :goto_19

    nop

    :pswitch_data_c0
    .packed-switch 0x1
        :pswitch_46
        :pswitch_7b
    .end packed-switch
.end method

.method private setInstallSourceMDM(ILjava/lang/String;Z)V
    .registers 11

    const/4 v6, 0x1

    if-ne p3, v6, :cond_1d

    :goto_3
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "install_sourceMDM"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "APPLICATION"

    const-string v3, "packageName"

    move v2, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesForAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Z

    return-void

    :cond_1d
    const/4 v6, 0x0

    goto :goto_3
.end method

.method private setManagedApp(ILjava/lang/String;Z)V
    .registers 11

    const/4 v6, 0x1

    if-ne p3, v6, :cond_1d

    :goto_3
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "managedApp"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "APPLICATION"

    const-string v3, "packageName"

    move v2, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesForAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Z

    return-void

    :cond_1d
    const/4 v6, 0x0

    goto :goto_3
.end method

.method private updateCount(ILjava/lang/String;Ljava/lang/String;)V
    .registers 11

    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "APPLICATION"

    const-string v3, "packageName"

    move v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntByAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    if-gtz v6, :cond_28

    const/4 v0, 0x1

    :goto_15
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, p3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "APPLICATION"

    const-string v3, "packageName"

    move v2, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesForAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Z

    return-void

    :cond_28
    add-int/lit8 v0, v6, 0x1

    goto :goto_15
.end method


# virtual methods
.method public addAppNotificationBlackList(Ljava/util/List;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "PackageNameNotificationBlacklist"

    const/16 v1, 0x100

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->addApplicationStateList(Ljava/lang/String;ILjava/util/List;)Z

    move-result v0

    return v0
.end method

.method public addAppNotificationWhiteList(Ljava/util/List;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "PackageNameNotificationWhitelist"

    const/16 v1, 0x200

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->addApplicationStateList(Ljava/lang/String;ILjava/util/List;)Z

    move-result v0

    return v0
.end method

.method public addAppPackageNameToBlackList(Ljava/lang/String;)Z
    .registers 6

    const-string v1, "ApplicationPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addAppPackageNameToBlackList "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission()I

    move-result v0

    invoke-static {p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->checkRegex(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_28

    const/4 v1, 0x0

    :goto_27
    return v1

    :cond_28
    const/4 v1, 0x4

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    move-result v1

    goto :goto_27
.end method

.method public addAppPackageNameToWhiteList(Ljava/lang/String;)Z
    .registers 5

    const-string v1, "ApplicationPolicy"

    const-string v2, "addAppPackageNameToWhiteList"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission()I

    move-result v0

    invoke-static {p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->checkRegex(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_17

    const/4 v1, 0x0

    :goto_16
    return v1

    :cond_17
    const/16 v1, 0x8

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    move-result v1

    goto :goto_16
.end method

.method public addAppPermissionToBlackList(Ljava/lang/String;)Z
    .registers 4

    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPermissionControlState(Ljava/lang/String;IZ)Z

    move-result v1

    return v1
.end method

.method public addAppSignatureToBlackList(Ljava/lang/String;)Z
    .registers 4

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission()I

    move-result v0

    invoke-direct {p0, p1, v0, v1, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationSignatureControlState(Ljava/lang/String;IIZ)Z

    move-result v1

    return v1
.end method

.method public addAppSignatureToWhiteList(Ljava/lang/String;)Z
    .registers 5

    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationSignatureControlState(Ljava/lang/String;IIZ)Z

    move-result v1

    return v1
.end method

.method public addHomeShortcut(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission()I

    const-string v0, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->manageHomeShorcut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public addPackageToInstallWhiteList(ILjava/lang/String;)Z
    .registers 10

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(I)I

    move-result v2

    const-string v1, "ApplicationPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addPackageToInstallList :  pkgName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " containerId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_31

    const-string v1, "ApplicationPolicy"

    const-string v3, "addPackageToInstallList() Package name is null"

    invoke-static {v1, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_30
    return v0

    :cond_31
    invoke-static {p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getContainerizedPackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_63

    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "containerID"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "adminUid"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "packageName"

    invoke-virtual {v6, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "WhiteListInstallApps"

    const-string v4, "packageName"

    move v3, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesForAdminAndField(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v0

    goto :goto_30

    :cond_63
    const-string v1, "ApplicationPolicy"

    const-string v3, "Package name is null. Failed to add the package to White list"

    invoke-static {v1, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_30
.end method

.method public addPackagesToClearCacheBlackList(ILjava/util/List;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "PackageNameClearCacheBlacklist"

    const v1, 0x8000

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->addApplicationStateList(ILjava/lang/String;ILjava/util/List;)Z

    move-result v0

    return v0
.end method

.method public addPackagesToClearCacheWhiteList(ILjava/util/List;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "PackageNameClearCacheWhitelist"

    const/high16 v1, 0x1

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->addApplicationStateList(ILjava/lang/String;ILjava/util/List;)Z

    move-result v0

    return v0
.end method

.method public addPackagesToClearDataBlackList(ILjava/util/List;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "PackageNameClearDataBlacklist"

    const/16 v1, 0x2000

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->addApplicationStateList(ILjava/lang/String;ILjava/util/List;)Z

    move-result v0

    return v0
.end method

.method public addPackagesToClearDataWhiteList(ILjava/util/List;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "PackageNameClearDataWhitelist"

    const/16 v1, 0x4000

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->addApplicationStateList(ILjava/lang/String;ILjava/util/List;)Z

    move-result v0

    return v0
.end method

.method public addPackagesToForceStopBlackList(Ljava/util/List;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "PackageNameStopBlacklist"

    const/16 v1, 0x10

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->addApplicationStateList(Ljava/lang/String;ILjava/util/List;)Z

    move-result v0

    return v0
.end method

.method public addPackagesToForceStopWhiteList(Ljava/util/List;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "PackageNameStopWhitelist"

    const/16 v1, 0x20

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->addApplicationStateList(Ljava/lang/String;ILjava/util/List;)Z

    move-result v0

    return v0
.end method

.method public addPackagesToWidgetBlackList(Ljava/util/List;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v1, "PackageNameWidgetBlacklist"

    const/16 v2, 0x40

    invoke-direct {p0, v1, v2, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->addApplicationStateList(Ljava/lang/String;ILjava/util/List;)Z

    move-result v0

    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->refreshWidgetStatus()V

    return v0
.end method

.method public addPackagesToWidgetWhiteList(Ljava/util/List;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v1, "PackageNameWidgetWhitelist"

    const/16 v2, 0x80

    invoke-direct {p0, v1, v2, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->addApplicationStateList(Ljava/lang/String;ILjava/util/List;)Z

    move-result v0

    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->refreshWidgetStatus()V

    return v0
.end method

.method public backupApplicationData(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)I
    .registers 23

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceBackupAppPermission()I

    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_1b

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getPkgInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-eqz v2, :cond_1b

    if-eqz p2, :cond_1b

    invoke-virtual/range {p2 .. p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    if-nez v2, :cond_1d

    :cond_1b
    const/4 v2, -0x2

    :goto_1c
    return v2

    :cond_1d
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->isBackupRunning:Z

    if-nez v2, :cond_3b

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->isRestoreRunning:Z

    if-eqz v2, :cond_3d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mCurrentRestorePackage:Ljava/lang/String;

    if-eqz v2, :cond_3d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mCurrentRestorePackage:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    :cond_3b
    const/4 v2, -0x3

    goto :goto_1c

    :cond_3d
    :try_start_3d
    new-instance v15, Ljava/lang/SecurityManager;

    invoke-direct {v15}, Ljava/lang/SecurityManager;-><init>()V

    invoke-virtual/range {p2 .. p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/lang/SecurityManager;->checkWrite(Ljava/io/FileDescriptor;)V
    :try_end_49
    .catch Ljava/lang/SecurityException; {:try_start_3d .. :try_end_49} :catch_91

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mBackupLock:Ljava/lang/Object;

    move-object/from16 v19, v0

    monitor-enter v19

    :try_start_50
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_53
    .catchall {:try_start_50 .. :try_end_53} :catchall_8e

    move-result-wide v16

    :try_start_54
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mBackupManagerService:Landroid/app/backup/IBackupManager;

    if-nez v2, :cond_9b

    const-string v2, "backup"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mBackupManagerService:Landroid/app/backup/IBackupManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mBackupManagerService:Landroid/app/backup/IBackupManager;

    if-nez v2, :cond_9b

    const-string v2, "ApplicationPolicy"

    const-string v3, "failed to get backup manager service"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_75
    .catchall {:try_start_54 .. :try_end_75} :catchall_163
    .catch Ljava/lang/InterruptedException; {:try_start_54 .. :try_end_75} :catch_11f
    .catch Landroid/os/RemoteException; {:try_start_54 .. :try_end_75} :catch_141

    const/4 v2, -0x2

    const/4 v3, 0x0

    :try_start_77
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->isBackupRunning:Z

    new-instance v12, Landroid/content/Intent;

    const-string v3, "edm.intent.action.backup.service.available"

    invoke-direct {v12, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v19

    goto :goto_1c

    :catchall_8e
    move-exception v2

    monitor-exit v19
    :try_end_90
    .catchall {:try_start_77 .. :try_end_90} :catchall_8e

    throw v2

    :catch_91
    move-exception v11

    const-string v2, "ApplicationPolicy"

    const-string v3, "can\'t write to file descriptor"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, -0x2

    goto :goto_1c

    :cond_9b
    :try_start_9b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mBackupManagerService:Landroid/app/backup/IBackupManager;

    const/4 v3, 0x1

    move-object/from16 v0, v18

    invoke-interface {v2, v3, v0}, Landroid/app/backup/IBackupManager;->setupEdmBackupRestore(ZLjava/lang/String;)Z
    :try_end_a5
    .catchall {:try_start_9b .. :try_end_a5} :catchall_163
    .catch Ljava/lang/InterruptedException; {:try_start_9b .. :try_end_a5} :catch_11f
    .catch Landroid/os/RemoteException; {:try_start_9b .. :try_end_a5} :catch_141

    move-result v2

    if-nez v2, :cond_c2

    const/4 v2, -0x3

    const/4 v3, 0x0

    :try_start_aa
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->isBackupRunning:Z

    new-instance v12, Landroid/content/Intent;

    const-string v3, "edm.intent.action.backup.service.available"

    invoke-direct {v12, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v19
    :try_end_c0
    .catchall {:try_start_aa .. :try_end_c0} :catchall_8e

    goto/16 :goto_1c

    :cond_c2
    const/4 v2, 0x1

    :try_start_c3
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->isBackupRunning:Z

    const/4 v2, -0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mBackupReturnCode:I

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/enterprise/application/ApplicationPolicy;->mCurrentBackupPackage:Ljava/lang/String;

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v13, v2, [Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mCurrentBackupPackage:Ljava/lang/String;

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mBackupManagerService:Landroid/app/backup/IBackupManager;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    move-object/from16 v3, p2

    invoke-interface/range {v2 .. v9}, Landroid/app/backup/IBackupManager;->fullBackup(Landroid/os/ParcelFileDescriptor;ZZZZZ[Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mBackupLock:Ljava/lang/Object;

    const-wide/32 v3, 0x493e0

    invoke-virtual {v2, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_102
    .catchall {:try_start_c3 .. :try_end_102} :catchall_163
    .catch Ljava/lang/InterruptedException; {:try_start_c3 .. :try_end_102} :catch_11f
    .catch Landroid/os/RemoteException; {:try_start_c3 .. :try_end_102} :catch_141

    const/4 v2, 0x0

    :try_start_103
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->isBackupRunning:Z

    new-instance v12, Landroid/content/Intent;

    const-string v2, "edm.intent.action.backup.service.available"

    invoke-direct {v12, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mBackupReturnCode:I

    monitor-exit v19
    :try_end_11d
    .catchall {:try_start_103 .. :try_end_11d} :catchall_8e

    goto/16 :goto_1c

    :catch_11f
    move-exception v10

    :try_start_120
    const-string v2, "ApplicationPolicy"

    const-string v3, "backupApplicationData interrupted"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_127
    .catchall {:try_start_120 .. :try_end_127} :catchall_163

    const/4 v2, -0x2

    const/4 v3, 0x0

    :try_start_129
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->isBackupRunning:Z

    new-instance v12, Landroid/content/Intent;

    const-string v3, "edm.intent.action.backup.service.available"

    invoke-direct {v12, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v19
    :try_end_13f
    .catchall {:try_start_129 .. :try_end_13f} :catchall_8e

    goto/16 :goto_1c

    :catch_141
    move-exception v11

    :try_start_142
    const-string v2, "ApplicationPolicy"

    const-string v3, "Failed to get backup manager service"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_149
    .catchall {:try_start_142 .. :try_end_149} :catchall_163

    const/4 v2, -0x2

    const/4 v3, 0x0

    :try_start_14b
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->isBackupRunning:Z

    new-instance v12, Landroid/content/Intent;

    const-string v3, "edm.intent.action.backup.service.available"

    invoke-direct {v12, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v19

    goto/16 :goto_1c

    :catchall_163
    move-exception v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->isBackupRunning:Z

    new-instance v12, Landroid/content/Intent;

    const-string v3, "edm.intent.action.backup.service.available"

    invoke-direct {v12, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
    :try_end_17b
    .catchall {:try_start_14b .. :try_end_17b} :catchall_8e
.end method

.method public changeApplicationIcon(Ljava/lang/String;[B)Z
    .registers 14

    const/4 v7, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission()I

    const-string v8, "ApplicationPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "changeApplicationIcon:packageName "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "called from :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    const/4 v3, 0x0

    if-eqz p1, :cond_33

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-gez v8, :cond_3c

    :cond_33
    const-string v7, "ApplicationPolicy"

    const-string v8, "changeApplicationIcon: packageName can\'t be null :"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v3

    :goto_3b
    return v4

    :cond_3c
    if-nez p2, :cond_93

    iget-object v8, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-static {v8, p1}, Lcom/android/server/enterprise/application/ApplicationIconDb;->deleteApplicationIcon(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    :goto_44
    if-eqz v3, :cond_8e

    sget-object v8, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppIconChangedPkgNameList:Ljava/util/List;

    if-nez v8, :cond_51

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    sput-object v8, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppIconChangedPkgNameList:Ljava/util/List;

    :cond_51
    sget-object v8, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppIconChangedPkgNameList:Ljava/util/List;

    invoke-interface {v8, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_9a

    if-nez p2, :cond_9a

    sget-object v8, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppIconChangedPkgNameList:Ljava/util/List;

    invoke-interface {v8, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_61
    :goto_61
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationInstalled(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8e

    new-instance v1, Landroid/content/Intent;

    const-string v8, "android.intent.action.PACKAGE_CHANGED"

    if-eqz p1, :cond_73

    const-string v9, "package"

    invoke-static {v9, p1, v7}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    :cond_73
    invoke-direct {v1, v8, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/4 v2, 0x0

    :try_start_77
    iget-object v7, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v8, 0x0

    invoke-virtual {v7, p1, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_80} :catch_aa

    :goto_80
    const-string v7, "android.intent.extra.user_handle"

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v7, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_8e
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v4, v3

    goto :goto_3b

    :cond_93
    iget-object v8, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-static {v8, p1, p2}, Lcom/android/server/enterprise/application/ApplicationIconDb;->updateApplicationIcon(Landroid/content/Context;Ljava/lang/String;[B)Z

    move-result v3

    goto :goto_44

    :cond_9a
    sget-object v8, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppIconChangedPkgNameList:Ljava/util/List;

    invoke-interface {v8, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_61

    if-eqz p2, :cond_61

    sget-object v8, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppIconChangedPkgNameList:Ljava/util/List;

    invoke-interface {v8, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_61

    :catch_aa
    move-exception v7

    goto :goto_80
.end method

.method checkKNOXSystemStatus()Z
    .registers 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    :try_start_2
    const-string v4, "container_service"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/knox/container/IEnterpriseContainerService;

    move-result-object v0

    if-nez v0, :cond_16

    const-string v3, "ApplicationPolicy"

    const-string v4, "KNOX Service is NULL"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_15
    return v2

    :cond_16
    const/4 v4, 0x1

    invoke-interface {v0, v4}, Lcom/sec/knox/container/IEnterpriseContainerService;->getMountStatus(I)Z

    move-result v4

    if-nez v4, :cond_2e

    const-string v3, "ApplicationPolicy"

    const-string v4, "KNOX system not mount"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_24} :catch_25

    goto :goto_15

    :catch_25
    move-exception v1

    const-string v3, "ApplicationPolicy"

    const-string v4, "KNOX : get status exception"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15

    :cond_2e
    move v2, v3

    goto :goto_15
.end method

.method public deleteHomeShortcut(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission()I

    const-string v0, "com.android.launcher.action.UNINSTALL_SHORTCUT"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->manageHomeShorcut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public deleteManagedAppInfo(Ljava/lang/String;)Z
    .registers 6

    const/4 v3, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission()I

    move-result v0

    invoke-static {p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isManagedAppInfo(Ljava/lang/String;[Landroid/app/enterprise/ManagedAppInfo;I)Landroid/app/enterprise/ManagedAppInfo;

    move-result-object v2

    if-nez v2, :cond_12

    :goto_11
    return v1

    :cond_12
    invoke-virtual {p0, v1, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateEnabled(ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1b

    invoke-virtual {p0, v1, p1, v3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationState(ILjava/lang/String;Z)Z

    :cond_1b
    const/4 v2, 0x4

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    const/16 v2, 0x8

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    invoke-direct {p0, p1, v0, v3, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    const/16 v2, 0x400

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    const/16 v2, 0x10

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    const/16 v2, 0x20

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    const/16 v2, 0x40

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    const/16 v2, 0x80

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    const/16 v2, 0x100

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    const/16 v2, 0x200

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->refreshWidgetStatus()V

    const/16 v2, 0x800

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    const/16 v2, 0x1000

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    const/16 v2, 0x2000

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    const/16 v2, 0x4000

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    const v2, 0x8000

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    const/high16 v2, 0x1

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    iget-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "APPLICATION"

    const-string v3, "packageName"

    invoke-virtual {v1, v2, v0, v3, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->removeByAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto :goto_11
.end method

.method public deletePackageFromAppUsageDb(Ljava/lang/String;)Z
    .registers 4

    new-instance v0, Lcom/android/server/enterprise/application/ApplicationUsage;

    iget-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/application/ApplicationUsage;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/application/ApplicationUsage;->deletePackageFromDb(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public enableOcspCheck(Ljava/lang/String;Z)Z
    .registers 7

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceCertificatePermission()I

    move-result v0

    invoke-static {p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_c

    :cond_b
    :goto_b
    return v2

    :cond_c
    const-string v3, "*"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->checkRegex(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    :cond_1a
    const/16 v2, 0x1000

    invoke-direct {p0, p1, v0, v2, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    move-result v2

    goto :goto_b
.end method

.method public enableRevocationCheck(Ljava/lang/String;Z)Z
    .registers 7

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceCertificatePermission()I

    move-result v0

    invoke-static {p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_c

    :cond_b
    :goto_b
    return v2

    :cond_c
    const-string v3, "*"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->checkRegex(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    :cond_1a
    const/16 v2, 0x800

    invoke-direct {p0, p1, v0, v2, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    move-result v2

    goto :goto_b
.end method

.method public getAllAppLastUsage()[Landroid/app/enterprise/AppInfoLastUsage;
    .registers 3

    new-instance v0, Lcom/android/server/enterprise/application/ApplicationUsage;

    iget-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/application/ApplicationUsage;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/server/enterprise/application/ApplicationUsage;->getAllAppLastUsage()[Landroid/app/enterprise/AppInfoLastUsage;

    move-result-object v0

    return-object v0
.end method

.method public getAllWidgets(Ljava/lang/String;)Ljava/util/Map;
    .registers 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission()I

    const/16 v22, 0x0

    :try_start_5
    const-string v7, "appwidget"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/appwidget/IAppWidgetService;

    move-result-object v11

    if-eqz v11, :cond_20

    const-wide/16 v23, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v23

    move-object/from16 v0, p1

    invoke-interface {v11, v0}, Lcom/android/internal/appwidget/IAppWidgetService;->getAllWidgets(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v22

    invoke-static/range {v23 .. v24}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_20} :catch_105

    :cond_20
    :goto_20
    if-nez v22, :cond_27

    new-instance v22, Ljava/util/HashMap;

    invoke-direct/range {v22 .. v22}, Ljava/util/HashMap;-><init>()V

    :cond_27
    if-eqz p1, :cond_35

    if-eqz p1, :cond_138

    const-string v7, "com.sec.android.app.launcher"

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_138

    :cond_35
    const-string v7, "content://com.sec.android.app.launcher.settings/favorites?notify=false"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v7, 0x2

    new-array v5, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "appWidgetId"

    aput-object v8, v5, v7

    const/4 v7, 0x1

    const-string v8, "intent"

    aput-object v8, v5, v7

    const-string v6, "itemType = 900 OR itemType = 901 OR itemType = 1000 OR itemType = 1001 OR itemType = 1002"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v12, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :try_start_55
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    :cond_59
    :goto_59
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_179

    new-instance v20, Landroid/appwidget/AppWidgetProviderInfo;

    invoke-direct/range {v20 .. v20}, Landroid/appwidget/AppWidgetProviderInfo;-><init>()V

    const/4 v7, 0x0

    invoke-interface {v12, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    const/4 v7, 0x1

    invoke-interface {v12, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_6d
    .catchall {:try_start_55 .. :try_end_6d} :catchall_167
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_6d} :catch_118

    move-result-object v25

    const/16 v19, 0x0

    const/4 v7, 0x0

    :try_start_71
    move-object/from16 v0, v25

    invoke-static {v0, v7}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_76
    .catchall {:try_start_71 .. :try_end_76} :catchall_167
    .catch Ljava/net/URISyntaxException; {:try_start_71 .. :try_end_76} :catch_10f
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_76} :catch_118

    move-result-object v19

    const/4 v13, 0x0

    :try_start_78
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const/16 v27, 0x3

    move/from16 v0, v27

    invoke-virtual {v7, v8, v0}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_8b
    .catchall {:try_start_78 .. :try_end_8b} :catchall_167
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_78 .. :try_end_8b} :catch_112
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_8b} :catch_118

    move-result-object v13

    :goto_8c
    if-eqz v13, :cond_59

    :try_start_8e
    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    move-object/from16 v0, v20

    iput-object v7, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;
    :try_end_96
    .catchall {:try_start_8e .. :try_end_96} :catchall_167
    .catch Ljava/lang/Exception; {:try_start_8e .. :try_end_96} :catch_118

    const/16 v21, 0x0

    :try_start_98
    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string v8, "plug_in_name"

    const-string v27, "string"

    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v7, v8, v0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v21

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const/16 v27, 0x80

    move/from16 v0, v27

    invoke-virtual {v7, v8, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    if-eqz v21, :cond_139

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    move/from16 v0, v21

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    :goto_cc
    move-object/from16 v0, v20

    iput-object v7, v0, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;
    :try_end_d0
    .catchall {:try_start_98 .. :try_end_d0} :catchall_167
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_98 .. :try_end_d0} :catch_146
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_98 .. :try_end_d0} :catch_149
    .catch Ljava/lang/Exception; {:try_start_98 .. :try_end_d0} :catch_118

    const/16 v17, 0x0

    :try_start_d2
    invoke-interface/range {v22 .. v22}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    if-eqz v7, :cond_14c

    invoke-interface/range {v22 .. v22}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_e0
    :goto_e0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_14c

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/appwidget/AppWidgetProviderInfo;

    if-eqz v10, :cond_e0

    iget-object v7, v10, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    if-eqz v7, :cond_e0

    iget-object v7, v10, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e0

    move-object/from16 v0, v22

    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/ArrayList;
    :try_end_104
    .catchall {:try_start_d2 .. :try_end_104} :catchall_167
    .catch Ljava/lang/Exception; {:try_start_d2 .. :try_end_104} :catch_118

    goto :goto_e0

    :catch_105
    move-exception v14

    const-string v7, "ApplicationPolicy"

    const-string v8, "error in getAllWidgets"

    invoke-static {v7, v8, v14}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_20

    :catch_10f
    move-exception v14

    goto/16 :goto_59

    :catch_112
    move-exception v15

    :try_start_113
    invoke-virtual {v15}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V
    :try_end_116
    .catchall {:try_start_113 .. :try_end_116} :catchall_167
    .catch Ljava/lang/Exception; {:try_start_113 .. :try_end_116} :catch_118

    goto/16 :goto_8c

    :catch_118
    move-exception v14

    :try_start_119
    const-string v7, "ApplicationPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "getPreferredApn Ex: "

    move-object/from16 v0, v27

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_133
    .catchall {:try_start_119 .. :try_end_133} :catchall_167

    if-eqz v12, :cond_138

    :goto_135
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_138
    return-object v22

    :cond_139
    :try_start_139
    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v9, v7}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_144
    .catchall {:try_start_139 .. :try_end_144} :catchall_167
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_139 .. :try_end_144} :catch_146
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_139 .. :try_end_144} :catch_149
    .catch Ljava/lang/Exception; {:try_start_139 .. :try_end_144} :catch_118

    move-result-object v7

    goto :goto_cc

    :catch_146
    move-exception v18

    goto/16 :goto_59

    :catch_149
    move-exception v18

    goto/16 :goto_59

    :cond_14c
    if-nez v17, :cond_16e

    :try_start_14e
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_165
    .catchall {:try_start_14e .. :try_end_165} :catchall_167
    .catch Ljava/lang/Exception; {:try_start_14e .. :try_end_165} :catch_118

    goto/16 :goto_59

    :catchall_167
    move-exception v7

    if-eqz v12, :cond_16d

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_16d
    throw v7

    :cond_16e
    :try_start_16e
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_177
    .catchall {:try_start_16e .. :try_end_177} :catchall_167
    .catch Ljava/lang/Exception; {:try_start_16e .. :try_end_177} :catch_118

    goto/16 :goto_59

    :cond_179
    if-eqz v12, :cond_138

    goto :goto_135
.end method

.method public getAppInstallToSdCard()Z
    .registers 8

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "APPLICATION_GENERAL"

    const-string v6, "installToSdCard"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_f

    move v1, v2

    :cond_23
    return v1
.end method

.method public getAppInstallationMode()I
    .registers 9

    const/4 v4, 0x1

    const-string v3, "ApplicationPolicy"

    const-string v5, "getAppInstallationMode :  mode start: "

    invoke-static {v3, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlStateLock:Ljava/lang/Object;

    monitor-enter v5

    const/4 v0, 0x1

    :try_start_c
    sget-object v3, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    if-eqz v3, :cond_18

    sget-object v3, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1b

    :cond_18
    monitor-exit v5

    move v3, v4

    :goto_1a
    return v3

    :cond_1b
    sget-object v3, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_25
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getContainerIdFromLUID(J)I

    move-result v3

    if-nez v3, :cond_25

    sget-object v3, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    const-string v6, "PackageNameInstallationBlacklist"

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    const-string v6, ".*"

    invoke-interface {v3, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    sget-object v3, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    const-string v6, "PackageNameInstallationWhitelist"

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    const-string v6, ".*"

    invoke-interface {v3, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_25

    const/4 v0, 0x0

    :cond_6c
    const-string v3, "ApplicationPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getAppInstallationMode :  mode"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_8c

    move v3, v4

    :goto_87
    monitor-exit v5

    goto :goto_1a

    :catchall_89
    move-exception v3

    monitor-exit v5
    :try_end_8b
    .catchall {:try_start_c .. :try_end_8b} :catchall_89

    throw v3

    :cond_8c
    const/4 v3, 0x0

    goto :goto_87
.end method

.method public getAppNotificationBlackList(Z)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "PackageNameNotificationBlacklist"

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAppNotificationWhiteList(Z)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "PackageNameNotificationWhitelist"

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAppPackageNamesAllBlackLists()Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/AppControlInfo;",
            ">;"
        }
    .end annotation

    const-string v6, "ApplicationPolicy"

    const-string v7, "getAppPackageNamesAllBlackLists "

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission()I

    iget-object v7, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlStateLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_d
    sget-object v6, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    if-eqz v6, :cond_19

    sget-object v6, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1c

    :cond_19
    const/4 v2, 0x0

    monitor-exit v7

    :goto_1b
    return-object v2

    :cond_1c
    sget-object v6, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :cond_2c
    :goto_2c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_95

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getContainerIdFromLUID(J)I

    move-result v6

    if-nez v6, :cond_2c

    sget-object v6, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    const-string v8, "PackageNameInstallationBlacklist"

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getPackageNameForUid(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2c

    new-instance v0, Landroid/app/enterprise/AppControlInfo;

    invoke-direct {v0}, Landroid/app/enterprise/AppControlInfo;-><init>()V

    iput-object v1, v0, Landroid/app/enterprise/AppControlInfo;->adminPackageName:Ljava/lang/String;

    new-instance v8, Ljava/util/ArrayList;

    sget-object v6, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    const-string v9, "PackageNameInstallationBlacklist"

    invoke-interface {v6, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v6

    invoke-direct {v8, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v8, v0, Landroid/app/enterprise/AppControlInfo;->entries:Ljava/util/List;

    :goto_7e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_91

    iget-object v6, v0, Landroid/app/enterprise/AppControlInfo;->entries:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7e

    :catchall_8e
    move-exception v6

    monitor-exit v7
    :try_end_90
    .catchall {:try_start_d .. :try_end_90} :catchall_8e

    throw v6

    :cond_91
    :try_start_91
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2c

    :cond_95
    monitor-exit v7
    :try_end_96
    .catchall {:try_start_91 .. :try_end_96} :catchall_8e

    goto :goto_1b
.end method

.method public getAppPackageNamesAllWhiteLists()Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/AppControlInfo;",
            ">;"
        }
    .end annotation

    const-string v6, "ApplicationPolicy"

    const-string v7, "getAppPackageNamesAllWhiteLists "

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission()I

    iget-object v7, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlStateLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_d
    sget-object v6, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    if-eqz v6, :cond_19

    sget-object v6, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1c

    :cond_19
    const/4 v5, 0x0

    monitor-exit v7

    :goto_1b
    return-object v5

    :cond_1c
    sget-object v6, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :cond_2c
    :goto_2c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_95

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getContainerIdFromLUID(J)I

    move-result v6

    if-nez v6, :cond_2c

    sget-object v6, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    const-string v8, "PackageNameInstallationWhitelist"

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-direct {p0, v3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getPackageNameForUid(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2c

    new-instance v0, Landroid/app/enterprise/AppControlInfo;

    invoke-direct {v0}, Landroid/app/enterprise/AppControlInfo;-><init>()V

    iput-object v1, v0, Landroid/app/enterprise/AppControlInfo;->adminPackageName:Ljava/lang/String;

    new-instance v8, Ljava/util/ArrayList;

    sget-object v6, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    const-string v9, "PackageNameInstallationWhitelist"

    invoke-interface {v6, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v6

    invoke-direct {v8, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v8, v0, Landroid/app/enterprise/AppControlInfo;->entries:Ljava/util/List;

    :goto_7e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_91

    iget-object v6, v0, Landroid/app/enterprise/AppControlInfo;->entries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7e

    :catchall_8e
    move-exception v6

    monitor-exit v7
    :try_end_90
    .catchall {:try_start_d .. :try_end_90} :catchall_8e

    throw v6

    :cond_91
    :try_start_91
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2c

    :cond_95
    monitor-exit v7
    :try_end_96
    .catchall {:try_start_91 .. :try_end_96} :catchall_8e

    goto :goto_1b
.end method

.method public getAppPermissionsAllBlackLists()Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/AppControlInfo;",
            ">;"
        }
    .end annotation

    const-string v6, "ApplicationPolicy"

    const-string v7, "getAppPermissionAllBlackLists:"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission()I

    iget-object v7, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlStateLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_d
    sget-object v6, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    if-eqz v6, :cond_19

    sget-object v6, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1c

    :cond_19
    const/4 v2, 0x0

    monitor-exit v7

    :goto_1b
    return-object v2

    :cond_1c
    sget-object v6, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :cond_2c
    :goto_2c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_95

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getContainerIdFromLUID(J)I

    move-result v6

    if-nez v6, :cond_2c

    sget-object v6, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    const-string v8, "PermissionInstallationBlacklist"

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getPackageNameForUid(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2c

    new-instance v0, Landroid/app/enterprise/AppControlInfo;

    invoke-direct {v0}, Landroid/app/enterprise/AppControlInfo;-><init>()V

    iput-object v1, v0, Landroid/app/enterprise/AppControlInfo;->adminPackageName:Ljava/lang/String;

    new-instance v8, Ljava/util/ArrayList;

    sget-object v6, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    const-string v9, "PermissionInstallationBlacklist"

    invoke-interface {v6, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v6

    invoke-direct {v8, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v8, v0, Landroid/app/enterprise/AppControlInfo;->entries:Ljava/util/List;

    :goto_7e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_91

    iget-object v6, v0, Landroid/app/enterprise/AppControlInfo;->entries:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7e

    :catchall_8e
    move-exception v6

    monitor-exit v7
    :try_end_90
    .catchall {:try_start_d .. :try_end_90} :catchall_8e

    throw v6

    :cond_91
    :try_start_91
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2c

    :cond_95
    monitor-exit v7
    :try_end_96
    .catchall {:try_start_91 .. :try_end_96} :catchall_8e

    goto :goto_1b
.end method

.method public getAppPermissionsBlackList()[Ljava/lang/String;
    .registers 9

    const-string v2, "ApplicationPolicy"

    const-string v3, "getAppPermissionsBlackList:"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "APPLICATION_PERMISSION"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "permission"

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCursorByAdmin(Ljava/lang/String;I[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_3a

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_23
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_37

    const-string v2, "permission"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_23

    :cond_37
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3a
    if-eqz v1, :cond_51

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_51

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    check-cast v2, [Ljava/lang/String;

    :goto_50
    return-object v2

    :cond_51
    const/4 v2, 0x0

    goto :goto_50
.end method

.method public getAppSignatureBlackList()[Ljava/lang/String;
    .registers 7

    const/4 v3, 0x0

    const-string v2, "ApplicationPolicy"

    const-string v4, "getAppSignatureBlackList()"

    invoke-static {v2, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    if-eqz v2, :cond_14

    sget-object v2, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_16

    :cond_14
    move-object v2, v3

    :goto_15
    return-object v2

    :cond_16
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    int-to-long v4, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v0, 0x0

    sget-object v2, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3d

    new-instance v0, Ljava/util/ArrayList;

    sget-object v2, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    const-string v4, "SignatureInstallationBlacklist"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :cond_3d
    if-eqz v0, :cond_54

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_54

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    check-cast v2, [Ljava/lang/String;

    goto :goto_15

    :cond_54
    move-object v2, v3

    goto :goto_15
.end method

.method public getAppSignaturesAllBlackLists()Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/AppControlInfo;",
            ">;"
        }
    .end annotation

    const-string v6, "ApplicationPolicy"

    const-string v7, "getAppSignatureAllBlackLists:"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission()I

    iget-object v7, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlStateLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_d
    sget-object v6, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    if-eqz v6, :cond_19

    sget-object v6, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1c

    :cond_19
    const/4 v2, 0x0

    monitor-exit v7

    :goto_1b
    return-object v2

    :cond_1c
    sget-object v6, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :cond_2c
    :goto_2c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_95

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getContainerIdFromLUID(J)I

    move-result v6

    if-nez v6, :cond_2c

    sget-object v6, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    const-string v8, "SignatureInstallationBlacklist"

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getPackageNameForUid(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2c

    new-instance v0, Landroid/app/enterprise/AppControlInfo;

    invoke-direct {v0}, Landroid/app/enterprise/AppControlInfo;-><init>()V

    iput-object v1, v0, Landroid/app/enterprise/AppControlInfo;->adminPackageName:Ljava/lang/String;

    new-instance v8, Ljava/util/ArrayList;

    sget-object v6, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    const-string v9, "SignatureInstallationBlacklist"

    invoke-interface {v6, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v6

    invoke-direct {v8, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v8, v0, Landroid/app/enterprise/AppControlInfo;->entries:Ljava/util/List;

    :goto_7e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_91

    iget-object v6, v0, Landroid/app/enterprise/AppControlInfo;->entries:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7e

    :catchall_8e
    move-exception v6

    monitor-exit v7
    :try_end_90
    .catchall {:try_start_d .. :try_end_90} :catchall_8e

    throw v6

    :cond_91
    :try_start_91
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2c

    :cond_95
    monitor-exit v7
    :try_end_96
    .catchall {:try_start_91 .. :try_end_96} :catchall_8e

    goto :goto_1b
.end method

.method public getAppSignaturesAllWhiteLists()Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/AppControlInfo;",
            ">;"
        }
    .end annotation

    const-string v6, "ApplicationPolicy"

    const-string v7, "getAppSignaturesAllWhiteLists:"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission()I

    iget-object v7, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlStateLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_d
    sget-object v6, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    if-eqz v6, :cond_19

    sget-object v6, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1c

    :cond_19
    const/4 v5, 0x0

    monitor-exit v7

    :goto_1b
    return-object v5

    :cond_1c
    sget-object v6, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v8, 0x1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_34
    :goto_34
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getContainerIdFromLUID(J)I

    move-result v6

    if-nez v6, :cond_34

    sget-object v6, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    const-string v8, "SignatureInstallationWhitelist"

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-direct {p0, v3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getPackageNameForUid(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_34

    new-instance v0, Landroid/app/enterprise/AppControlInfo;

    invoke-direct {v0}, Landroid/app/enterprise/AppControlInfo;-><init>()V

    iput-object v1, v0, Landroid/app/enterprise/AppControlInfo;->adminPackageName:Ljava/lang/String;

    new-instance v8, Ljava/util/ArrayList;

    sget-object v6, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    const-string v9, "SignatureInstallationWhitelist"

    invoke-interface {v6, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v6

    invoke-direct {v8, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v8, v0, Landroid/app/enterprise/AppControlInfo;->entries:Ljava/util/List;

    :goto_86
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_99

    iget-object v6, v0, Landroid/app/enterprise/AppControlInfo;->entries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_86

    :catchall_96
    move-exception v6

    monitor-exit v7
    :try_end_98
    .catchall {:try_start_d .. :try_end_98} :catchall_96

    throw v6

    :cond_99
    :try_start_99
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_34

    :cond_9d
    monitor-exit v7
    :try_end_9e
    .catchall {:try_start_99 .. :try_end_9e} :catchall_96

    goto/16 :goto_1b
.end method

.method public getAppSignaturesWhiteList()[Ljava/lang/String;
    .registers 8

    const/4 v3, 0x0

    const-string v2, "ApplicationPolicy"

    const-string v4, "getAppSignaturesWhiteList:"

    invoke-static {v2, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlStateLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_b
    sget-object v2, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    if-eqz v2, :cond_17

    sget-object v2, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1a

    :cond_17
    monitor-exit v4

    move-object v2, v3

    :goto_19
    return-object v2

    :cond_1a
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    int-to-long v5, v2

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v0, 0x0

    sget-object v2, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_41

    new-instance v0, Ljava/util/ArrayList;

    sget-object v2, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    const-string v5, "SignatureInstallationWhitelist"

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :cond_41
    if-eqz v0, :cond_5c

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_5c

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    check-cast v2, [Ljava/lang/String;

    monitor-exit v4

    goto :goto_19

    :catchall_59
    move-exception v2

    monitor-exit v4
    :try_end_5b
    .catchall {:try_start_b .. :try_end_5b} :catchall_59

    throw v2

    :cond_5c
    :try_start_5c
    monitor-exit v4
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_59

    move-object v2, v3

    goto :goto_19
.end method

.method public getApplicationCacheSize(Ljava/lang/String;)J
    .registers 6

    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission()I

    const-wide/16 v2, -0x1

    invoke-static {p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_11

    :try_start_b
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationPackageStats(Ljava/lang/String;)Landroid/content/pm/PackageStats;

    move-result-object v1

    iget-wide v2, v1, Landroid/content/pm/PackageStats;->cacheSize:J
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_11} :catch_12

    :cond_11
    :goto_11
    return-wide v2

    :catch_12
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_11
.end method

.method public getApplicationCodeSize(Ljava/lang/String;)J
    .registers 6

    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission()I

    const-wide/16 v2, -0x1

    invoke-static {p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_11

    :try_start_b
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationPackageStats(Ljava/lang/String;)Landroid/content/pm/PackageStats;

    move-result-object v1

    iget-wide v2, v1, Landroid/content/pm/PackageStats;->codeSize:J
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_11} :catch_12

    :cond_11
    :goto_11
    return-wide v2

    :catch_12
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_11
.end method

.method public getApplicationCpuUsage(Ljava/lang/String;)J
    .registers 13

    const-wide/16 v6, 0x0

    iget-object v8, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    const-string v9, "android.permission.sec.MDM_APP_MGMT"

    const-string v10, "Application Policy"

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_17

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationInstalled(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1a

    :cond_17
    const-wide/16 v6, -0x1

    :cond_19
    :goto_19
    return-wide v6

    :cond_1a
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationRunningInternal(Ljava/lang/String;)I

    move-result v2

    const/4 v8, -0x1

    if-eq v2, v8, :cond_19

    iget-object v8, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mProcessStats:Lcom/android/internal/os/ProcessStats;

    invoke-virtual {v8}, Lcom/android/internal/os/ProcessStats;->update()V

    iget-object v8, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mProcessStats:Lcom/android/internal/os/ProcessStats;

    invoke-virtual {v8}, Lcom/android/internal/os/ProcessStats;->countWorkingStats()I

    move-result v0

    const/4 v3, 0x0

    const/4 v1, 0x0

    :goto_2e
    if-ge v1, v0, :cond_3a

    iget-object v8, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mProcessStats:Lcom/android/internal/os/ProcessStats;

    invoke-virtual {v8, v1}, Lcom/android/internal/os/ProcessStats;->getWorkingStats(I)Lcom/android/internal/os/ProcessStats$Stats;

    move-result-object v3

    iget v8, v3, Lcom/android/internal/os/ProcessStats$Stats;->pid:I

    if-ne v8, v2, :cond_68

    :cond_3a
    if-eqz v3, :cond_19

    iget-object v8, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mProcessStats:Lcom/android/internal/os/ProcessStats;

    invoke-virtual {v8}, Lcom/android/internal/os/ProcessStats;->getLastUserTime()I

    move-result v8

    iget-object v9, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mProcessStats:Lcom/android/internal/os/ProcessStats;

    invoke-virtual {v9}, Lcom/android/internal/os/ProcessStats;->getLastSystemTime()I

    move-result v9

    add-int/2addr v8, v9

    iget-object v9, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mProcessStats:Lcom/android/internal/os/ProcessStats;

    invoke-virtual {v9}, Lcom/android/internal/os/ProcessStats;->getLastIrqTime()I

    move-result v9

    add-int/2addr v8, v9

    iget-object v9, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mProcessStats:Lcom/android/internal/os/ProcessStats;

    invoke-virtual {v9}, Lcom/android/internal/os/ProcessStats;->getLastIdleTime()I

    move-result v9

    add-int/2addr v8, v9

    int-to-long v4, v8

    cmp-long v6, v4, v6

    if-nez v6, :cond_5e

    const-wide/16 v4, 0x1

    :cond_5e
    iget v6, v3, Lcom/android/internal/os/ProcessStats$Stats;->rel_utime:I

    iget v7, v3, Lcom/android/internal/os/ProcessStats$Stats;->rel_stime:I

    add-int/2addr v6, v7

    mul-int/lit8 v6, v6, 0x64

    int-to-long v6, v6

    div-long/2addr v6, v4

    goto :goto_19

    :cond_68
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e
.end method

.method public getApplicationDataSize(Ljava/lang/String;)J
    .registers 6

    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission()I

    const-wide/16 v2, -0x1

    invoke-static {p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_11

    :try_start_b
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationPackageStats(Ljava/lang/String;)Landroid/content/pm/PackageStats;

    move-result-object v1

    iget-wide v2, v1, Landroid/content/pm/PackageStats;->dataSize:J
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_11} :catch_12

    :cond_11
    :goto_11
    return-wide v2

    :catch_12
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_11
.end method

.method public getApplicationIconFromDb(Ljava/lang/String;)[B
    .registers 5

    const/4 v0, 0x0

    sget-object v1, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppIconChangedPkgNameList:Ljava/util/List;

    if-eqz v1, :cond_14

    sget-object v1, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppIconChangedPkgNameList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_14

    iget-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/android/server/enterprise/application/ApplicationIconDb;->getApplicationIcon(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v0

    :cond_14
    return-object v0
.end method

.method public getApplicationInstallationEnabled(Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationInstallationEnabled(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;Z)Z

    move-result v0

    return v0
.end method

.method public getApplicationMemoryUsage(Ljava/lang/String;)J
    .registers 16

    const-wide/16 v8, -0x1

    iget-object v10, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    const-string v11, "android.permission.sec.MDM_APP_MGMT"

    const-string v12, "Application Policy"

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v6, 0x0

    invoke-static {p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5f

    :try_start_13
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationInstalled(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1a

    :cond_19
    :goto_19
    return-wide v8

    :cond_1a
    iget-object v10, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    const-string v11, "activity"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2c
    :goto_2c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_57

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v10, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2c

    iget v10, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-direct {p0, v10, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getDebugMemoryInfo(ILandroid/app/ActivityManager;)J

    move-result-wide v10

    iget-object v12, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v12, v12

    int-to-long v12, v12

    div-long/2addr v10, v12
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_4f} :catch_51

    add-long/2addr v6, v10

    goto :goto_2c

    :catch_51
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const-wide/16 v6, -0x1

    :cond_57
    :goto_57
    const-wide/16 v10, 0x0

    cmp-long v10, v6, v10

    if-ltz v10, :cond_19

    move-wide v8, v6

    goto :goto_19

    :cond_5f
    const-wide/16 v6, -0x1

    goto :goto_57
.end method

.method public getApplicationName(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission()I

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1a

    :try_start_a
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getAppInfo(Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    if-eqz v3, :cond_1a

    iget-object v4, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v1, v0
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_1a} :catch_1b

    :cond_1a
    :goto_1a
    return-object v1

    :catch_1b
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1a
.end method

.method public getApplicationNotificationMode(Z)I
    .registers 7

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v0, 0x2

    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission()I

    iget-object v3, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mNotificationMode:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    :cond_12
    :goto_12
    return v0

    :cond_13
    iget-object v3, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mNotificationMode:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    move v0, v1

    goto :goto_12

    :cond_21
    iget-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mNotificationMode:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    move v0, v2

    goto :goto_12
.end method

.method public getApplicationStateEnabled(ILjava/lang/String;)Z
    .registers 12

    const/4 v1, 0x1

    invoke-static {p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getContainerizedPackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_94

    const-string v5, "sec_container_"

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5b

    const-string v5, "com.sec.knox.containeragent"

    invoke-virtual {p2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5b

    const-string v5, "com.sec.android.app.knoxlauncher"

    invoke-virtual {p2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5b

    :try_start_23
    invoke-virtual {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->checkKNOXSystemStatus()Z

    move-result v5

    if-nez v5, :cond_43

    const-string v5, "ApplicationPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "KNOX system is not ready, blocked : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    :goto_42
    return v5

    :cond_43
    const-string v5, "ApplicationPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "KNOX system is ready, start : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_5b} :catch_8f

    :cond_5b
    :goto_5b
    iget-object v5, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "APPLICATION"

    const-string v7, "packageName"

    const-string v8, "controlState"

    invoke-virtual {v5, v6, v7, p2, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_8d

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_71
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ltz v5, :cond_71

    const/4 v5, 0x2

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    and-int/lit8 v6, v6, 0x2

    if-ne v5, v6, :cond_71

    const/4 v1, 0x0

    :cond_8d
    :goto_8d
    move v5, v1

    goto :goto_42

    :catch_8f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5b

    :cond_94
    const/4 v1, 0x0

    goto :goto_8d
.end method

.method public getApplicationStateEnabled(Ljava/lang/String;)Z
    .registers 5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Lcom/sec/enterprise/knox/EnterpriseContainerManager;->getContainerId(I)I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateEnabled(ILjava/lang/String;)Z

    move-result v2

    return v2
.end method

.method public getApplicationStateEnabled(Ljava/lang/String;Z)Z
    .registers 8

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_22

    if-eqz p2, :cond_22

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.enterprise.SHOW_UI"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "message"

    iget-object v3, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    const v4, 0x1040622

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_22
    return v1
.end method

.method public getApplicationStateList(Z)[Ljava/lang/String;
    .registers 8

    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission()I

    const-string v3, "ApplicationPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getApplicationStateList:state:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getInstalledApplicationsIDList()[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_27

    :goto_26
    return-object v0

    :cond_27
    const/4 v1, 0x0

    :goto_28
    array-length v3, v0

    if-ge v1, v3, :cond_3b

    aget-object v3, v0, v1

    invoke-direct {p0, v3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getActualApplicationStateEnabled(Ljava/lang/String;)Z

    move-result v3

    if-ne v3, p1, :cond_38

    aget-object v3, v0, v1

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_38
    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    :cond_3b
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_43

    const/4 v0, 0x0

    goto :goto_26

    :cond_43
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    check-cast v3, [Ljava/lang/String;

    move-object v0, v3

    goto :goto_26
.end method

.method public getApplicationTotalSize(Ljava/lang/String;)J
    .registers 10

    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission()I

    const-wide/16 v2, -0x1

    invoke-static {p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_18

    :try_start_b
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationPackageStats(Ljava/lang/String;)Landroid/content/pm/PackageStats;

    move-result-object v1

    iget-wide v4, v1, Landroid/content/pm/PackageStats;->cacheSize:J

    iget-wide v6, v1, Landroid/content/pm/PackageStats;->codeSize:J

    add-long/2addr v4, v6

    iget-wide v6, v1, Landroid/content/pm/PackageStats;->dataSize:J
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_16} :catch_19

    add-long v2, v4, v6

    :cond_18
    :goto_18
    return-wide v2

    :catch_19
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_18
.end method

.method public getApplicationUninstallationEnabled(Ljava/lang/String;)Z
    .registers 11

    const/4 v3, 0x1

    const-string v5, "ApplicationPolicy"

    const-string v6, "getApplicationUninstallationEnabled"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlStateLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_b
    sget-object v5, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    if-eqz v5, :cond_17

    sget-object v5, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1a

    :cond_17
    monitor-exit v6
    :try_end_18
    .catchall {:try_start_b .. :try_end_18} :catchall_89

    move v4, v3

    :goto_19
    return v4

    :cond_1a
    :try_start_1a
    sget-object v5, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_24
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getContainerIdFromLUID(J)I

    move-result v5

    if-nez v5, :cond_24

    const-string v5, "UninstallationWhitelist"

    invoke-direct {p0, v1, v5, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->checkPkgNameMatch(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_24

    const-string v5, "UninstallationBlacklist"

    invoke-direct {p0, v1, v5, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->checkPkgNameMatch(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_68

    const/4 v3, 0x1

    :goto_4b
    if-nez v3, :cond_24

    const-string v5, "ApplicationPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getApplicationUninstallationEnabled :  enabled "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_65
    .catchall {:try_start_1a .. :try_end_65} :catchall_89
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_65} :catch_6a

    :try_start_65
    monitor-exit v6

    move v4, v3

    goto :goto_19

    :cond_68
    const/4 v3, 0x0

    goto :goto_4b

    :catch_6a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6e
    monitor-exit v6
    :try_end_6f
    .catchall {:try_start_65 .. :try_end_6f} :catchall_89

    const-string v5, "ApplicationPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getApplicationUninstallationEnabled :  enabled "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v3

    goto :goto_19

    :catchall_89
    move-exception v5

    :try_start_8a
    monitor-exit v6
    :try_end_8b
    .catchall {:try_start_8a .. :try_end_8b} :catchall_89

    throw v5
.end method

.method public getApplicationUninstallationMode()I
    .registers 9

    const/4 v4, 0x1

    const-string v3, "ApplicationPolicy"

    const-string v5, "getApplicationUninstallationMode"

    invoke-static {v3, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlStateLock:Ljava/lang/Object;

    monitor-enter v5

    const/4 v2, 0x1

    :try_start_c
    sget-object v3, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    if-eqz v3, :cond_18

    sget-object v3, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1b

    :cond_18
    monitor-exit v5

    move v3, v4

    :goto_1a
    return v3

    :cond_1b
    sget-object v3, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_25
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_54

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getContainerIdFromLUID(J)I

    move-result v3

    if-nez v3, :cond_25

    sget-object v3, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppControlState:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    const-string v6, "UninstallationBlacklist"

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    const-string v6, ".*"

    invoke-interface {v3, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    const/4 v2, 0x0

    :cond_54
    const-string v3, "ApplicationPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getAppInstallationMode :  mode"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_74

    move v3, v4

    :goto_6f
    monitor-exit v5

    goto :goto_1a

    :catchall_71
    move-exception v3

    monitor-exit v5
    :try_end_73
    .catchall {:try_start_c .. :try_end_73} :catchall_71

    throw v3

    :cond_74
    const/4 v3, 0x0

    goto :goto_6f
.end method

.method public getApplicationVersion(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission()I

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_12

    :try_start_a
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getPkgInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-eqz v2, :cond_12

    iget-object v0, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_12} :catch_13

    :cond_12
    :goto_12
    return-object v0

    :catch_13
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_12
.end method

.method public getApplicationsList(Ljava/lang/String;)[Landroid/app/enterprise/ManagedAppInfo;
    .registers 4

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, 0x0

    :goto_7
    return-object v1

    :cond_8
    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationsList(Ljava/lang/String;I)[Landroid/app/enterprise/ManagedAppInfo;

    move-result-object v1

    goto :goto_7
.end method

.method public getAvgNoAppUsagePerMonth()[Landroid/app/enterprise/AppInfoLastUsage;
    .registers 3

    new-instance v0, Lcom/android/server/enterprise/application/ApplicationUsage;

    iget-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/application/ApplicationUsage;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/server/enterprise/application/ApplicationUsage;->getAvgNoAppUsagePerMonth()[Landroid/app/enterprise/AppInfoLastUsage;

    move-result-object v0

    return-object v0
.end method

.method public getInstalledApplicationsIDList()[Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission()I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getInstalledApplicationsIDListExtended(Z)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getInstalledApplicationsIDListExtended(Z)[Ljava/lang/String;
    .registers 11

    const/4 v6, 0x0

    :try_start_1
    iget-object v8, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    if-eqz p1, :cond_33

    const/16 v7, 0x2000

    :goto_7
    invoke-virtual {v8, v7}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3a

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_3a

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    new-array v6, v7, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v5, v4

    :goto_1f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    add-int/lit8 v4, v5, 0x1

    iget-object v7, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    aput-object v7, v6, v5
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_31} :catch_35

    move v5, v4

    goto :goto_1f

    :cond_33
    const/4 v7, 0x0

    goto :goto_7

    :catch_35
    move-exception v2

    const/4 v6, 0x0

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3a
    return-object v6
.end method

.method public getInstalledManagedApplicationsList()[Ljava/lang/String;
    .registers 16

    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission()I

    move-result v2

    const/4 v0, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x2

    :try_start_7
    new-array v3, v13, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string v14, "packageName"

    aput-object v14, v3, v13

    const/4 v13, 0x1

    const-string v14, "managedApp"

    aput-object v14, v3, v13

    iget-object v13, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v14, "APPLICATION"

    invoke-virtual {v13, v14, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCursorByAdmin(Ljava/lang/String;I[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    if-eqz v4, :cond_6b

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_22} :catch_b1

    :cond_22
    :goto_22
    :try_start_22
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v13

    if-eqz v13, :cond_67

    const-string v13, "managedApp"

    invoke-interface {v4, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v4, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    const/4 v13, 0x1

    and-int/lit8 v14, v12, 0x1

    if-ne v13, v14, :cond_65

    const/4 v9, 0x1

    :goto_38
    const/4 v13, 0x1

    if-ne v9, v13, :cond_22

    const-string v13, "packageName"

    invoke-interface {v4, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v4, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_48} :catch_49

    goto :goto_22

    :catch_49
    move-exception v7

    move-object v10, v11

    :goto_4b
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4e
    :goto_4e
    if-eqz v0, :cond_af

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_af

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v13

    new-array v13, v13, [Ljava/lang/String;

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Ljava/lang/String;

    check-cast v13, [Ljava/lang/String;

    :goto_64
    return-object v13

    :cond_65
    const/4 v9, 0x0

    goto :goto_38

    :cond_67
    :try_start_67
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_6a} :catch_49

    move-object v10, v11

    :cond_6b
    if-eqz v10, :cond_4e

    :try_start_6d
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_4e

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_78} :catch_b1

    const/4 v13, 0x0

    :try_start_79
    invoke-virtual {p0, v13}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getInstalledApplicationsIDListExtended(Z)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_87

    array-length v13, v5

    if-lez v13, :cond_87

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    :cond_87
    const/4 v8, 0x0

    :goto_88
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v8, v13, :cond_b3

    if-eqz v6, :cond_a4

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v6, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a1

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a1
    :goto_a1
    add-int/lit8 v8, v8, 0x1

    goto :goto_88

    :cond_a4
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_ab
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_ab} :catch_ac

    goto :goto_a1

    :catch_ac
    move-exception v7

    move-object v0, v1

    goto :goto_4b

    :cond_af
    const/4 v13, 0x0

    goto :goto_64

    :catch_b1
    move-exception v7

    goto :goto_4b

    :cond_b3
    move-object v0, v1

    goto :goto_4e
.end method

.method public getNetworkStats()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/enterprise/NetworkStats;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission()I

    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppNetworkStatsTracker:Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;

    invoke-virtual {v0}, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->getAppLevelDataUsage()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getNetworkStats()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getNetworkStats()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getPackagesFromClearCacheBlackList(I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "PackageNameClearCacheBlacklist"

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateList(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPackagesFromClearCacheWhiteList(I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "PackageNameClearCacheWhitelist"

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateList(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPackagesFromClearDataBlackList(I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "PackageNameClearDataBlacklist"

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateList(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPackagesFromClearDataWhiteList(I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "PackageNameClearDataWhitelist"

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateList(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPackagesFromForceStopBlackList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "PackageNameStopBlacklist"

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPackagesFromForceStopWhiteList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "PackageNameStopWhitelist"

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPackagesFromInstallWhiteList(I)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission()I

    move-result v1

    const-string v6, "ApplicationPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getPackagesFromInstallWhiteList :  containerId: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v6, 0x1

    new-array v4, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "packageName"

    aput-object v7, v4, v6

    iget-object v6, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "WhiteListInstallApps"

    invoke-virtual {v6, v7, v0, p1, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCursorByAdmin(Ljava/lang/String;II[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    if-eqz v2, :cond_4e

    :goto_37
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_4b

    const-string v6, "packageName"

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_37

    :cond_4b
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_4e
    return-object v5
.end method

.method public getPackagesFromWidgetBlackList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "PackageNameWidgetBlacklist"

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPackagesFromWidgetWhiteList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "PackageNameWidgetWhitelist"

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTopNCPUUsageApp(IZ)Ljava/util/List;
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/AppInfo;",
            ">;"
        }
    .end annotation

    iget-object v11, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    const-string v12, "android.permission.sec.MDM_APP_MGMT"

    const-string v13, "Application Policy"

    invoke-virtual {v11, v12, v13}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mProcessStats:Lcom/android/internal/os/ProcessStats;

    invoke-virtual {v11}, Lcom/android/internal/os/ProcessStats;->update()V

    iget-object v11, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mProcessStats:Lcom/android/internal/os/ProcessStats;

    invoke-virtual {v11}, Lcom/android/internal/os/ProcessStats;->countWorkingStats()I

    move-result v2

    if-lez p1, :cond_18

    if-ge v2, p1, :cond_19

    :cond_18
    move p1, v2

    :cond_19
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iget-object v11, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mProcessStats:Lcom/android/internal/os/ProcessStats;

    invoke-virtual {v11}, Lcom/android/internal/os/ProcessStats;->getLastUserTime()I

    move-result v11

    iget-object v12, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mProcessStats:Lcom/android/internal/os/ProcessStats;

    invoke-virtual {v12}, Lcom/android/internal/os/ProcessStats;->getLastSystemTime()I

    move-result v12

    add-int/2addr v11, v12

    iget-object v12, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mProcessStats:Lcom/android/internal/os/ProcessStats;

    invoke-virtual {v12}, Lcom/android/internal/os/ProcessStats;->getLastIrqTime()I

    move-result v12

    add-int/2addr v11, v12

    iget-object v12, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mProcessStats:Lcom/android/internal/os/ProcessStats;

    invoke-virtual {v12}, Lcom/android/internal/os/ProcessStats;->getLastIdleTime()I

    move-result v12

    add-int/2addr v11, v12

    int-to-long v9, v11

    const-wide/16 v11, 0x0

    cmp-long v11, v9, v11

    if-nez v11, :cond_42

    const-wide/16 v9, 0x1

    :cond_42
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-nez p2, :cond_71

    iget-object v11, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    const-string v12, "activity"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_71

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v11, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5b

    :cond_71
    const/4 v8, 0x0

    const/4 v3, 0x0

    :goto_73
    if-ge v3, p1, :cond_a6

    iget-object v11, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mProcessStats:Lcom/android/internal/os/ProcessStats;

    invoke-virtual {v11, v3}, Lcom/android/internal/os/ProcessStats;->getWorkingStats(I)Lcom/android/internal/os/ProcessStats$Stats;

    move-result-object v8

    if-eqz v8, :cond_a3

    if-nez p2, :cond_8b

    iget v11, v8, Lcom/android/internal/os/ProcessStats$Stats;->pid:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a3

    :cond_8b
    new-instance v5, Landroid/app/enterprise/AppInfo;

    invoke-direct {v5}, Landroid/app/enterprise/AppInfo;-><init>()V

    iget-object v11, v8, Lcom/android/internal/os/ProcessStats$Stats;->name:Ljava/lang/String;

    iput-object v11, v5, Landroid/app/enterprise/AppInfo;->mPackageName:Ljava/lang/String;

    iget v11, v8, Lcom/android/internal/os/ProcessStats$Stats;->rel_utime:I

    iget v12, v8, Lcom/android/internal/os/ProcessStats$Stats;->rel_stime:I

    add-int/2addr v11, v12

    mul-int/lit8 v11, v11, 0x64

    int-to-long v11, v11

    div-long/2addr v11, v9

    long-to-double v11, v11

    iput-wide v11, v5, Landroid/app/enterprise/AppInfo;->mUsage:D

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a3
    add-int/lit8 v3, v3, 0x1

    goto :goto_73

    :cond_a6
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_ad

    :goto_ac
    return-object v7

    :cond_ad
    const/4 v7, 0x0

    goto :goto_ac
.end method

.method public getTopNDataUsageApp(I)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/AppInfo;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission()I

    const-string v5, "ApplicationPolicy"

    const-string v6, "getTopNDataUsageApp start"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->readAppSizeInfo()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    if-lez p1, :cond_1e

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v5, p1, :cond_22

    :cond_1e
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    :cond_22
    const/4 v0, 0x0

    :goto_23
    if-ge v0, p1, :cond_43

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;

    new-instance v3, Landroid/app/enterprise/AppInfo;

    invoke-direct {v3}, Landroid/app/enterprise/AppInfo;-><init>()V

    #getter for: Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;->mCmd:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;->access$1300(Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Landroid/app/enterprise/AppInfo;->mPackageName:Ljava/lang/String;

    #getter for: Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;->mUsage:J
    invoke-static {v1}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;->access$1400(Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;)J

    move-result-wide v5

    long-to-double v5, v5

    iput-wide v5, v3, Landroid/app/enterprise/AppInfo;->mUsage:D

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    :cond_43
    const-string v5, "ApplicationPolicy"

    const-string v6, "getTopNDataUsageApp end"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4
.end method

.method public getTopNMemoryUsageApp(IZ)Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/AppInfo;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission()I

    const-string v5, "ApplicationPolicy"

    const-string v6, "getTopNMemoryUsageApp start"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->readAppMemoryInfo(Z)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    if-lez p1, :cond_1e

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v5, p1, :cond_22

    :cond_1e
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    :cond_22
    const/4 v0, 0x0

    :goto_23
    if-ge v0, p1, :cond_6d

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;

    new-instance v3, Landroid/app/enterprise/AppInfo;

    invoke-direct {v3}, Landroid/app/enterprise/AppInfo;-><init>()V

    #getter for: Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;->mCmd:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;->access$1300(Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Landroid/app/enterprise/AppInfo;->mPackageName:Ljava/lang/String;

    #getter for: Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;->mUsage:J
    invoke-static {v1}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;->access$1400(Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;)J

    move-result-wide v5

    long-to-double v5, v5

    iput-wide v5, v3, Landroid/app/enterprise/AppInfo;->mUsage:D

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v5, "ApplicationPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    #getter for: Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;->mCmd:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;->access$1300(Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " memory usage:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    #getter for: Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;->mUsage:J
    invoke-static {v1}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;->access$1400(Lcom/android/server/enterprise/application/ApplicationPolicy$AppInfoTask;)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    :cond_6d
    const-string v5, "ApplicationPolicy"

    const-string v6, "getTopNMemoryUsageApp end"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4
.end method

.method public installApplication(Ljava/lang/String;Z)Z
    .registers 5

    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission()I

    move-result v0

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->_installApplication(ILjava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public installApplicationBySystem(ILjava/lang/String;Z)Z
    .registers 7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_10

    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Process should have system uid"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_10
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->_installApplication(ILjava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public isApplicationClearCacheDisabled(ILjava/lang/String;Z)Z
    .registers 8

    const-string v1, "PackageNameClearCacheBlacklist"

    const-string v2, "PackageNameClearCacheWhitelist"

    invoke-direct {p0, p1, v1, v2, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationStateBlocked(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2f

    const-string v1, "ApplicationPolicy"

    const-string v2, "isApplicationForceStopDisabled: matches"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_2d

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.enterprise.SHOW_UI"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "message"

    iget-object v2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    const v3, 0x104027f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_2d
    const/4 v1, 0x1

    :goto_2e
    return v1

    :cond_2f
    const/4 v1, 0x0

    goto :goto_2e
.end method

.method public isApplicationClearCacheDisabled(Ljava/lang/String;Z)Z
    .registers 5

    invoke-static {p1}, Lcom/sec/enterprise/knox/EnterpriseContainerManager;->getContainerId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationClearCacheDisabled(ILjava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public isApplicationClearDataDisabled(ILjava/lang/String;Z)Z
    .registers 8

    const-string v1, "PackageNameClearDataBlacklist"

    const-string v2, "PackageNameClearDataWhitelist"

    invoke-direct {p0, p1, v1, v2, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationStateBlocked(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2f

    const-string v1, "ApplicationPolicy"

    const-string v2, "isApplicationForceStopDisabled: matches"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_2d

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.enterprise.SHOW_UI"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "message"

    iget-object v2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    const v3, 0x104027e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_2d
    const/4 v1, 0x1

    :goto_2e
    return v1

    :cond_2f
    const/4 v1, 0x0

    goto :goto_2e
.end method

.method public isApplicationClearDataDisabled(Ljava/lang/String;Z)Z
    .registers 5

    invoke-static {p1}, Lcom/sec/enterprise/knox/EnterpriseContainerManager;->getContainerId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationClearDataDisabled(ILjava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public isApplicationForceStopDisabled(Ljava/lang/String;Z)Z
    .registers 7

    const-string v1, "PackageNameStopBlacklist"

    const-string v2, "PackageNameStopWhitelist"

    invoke-direct {p0, v1, v2, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationStateBlocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2f

    const-string v1, "ApplicationPolicy"

    const-string v2, "isApplicationForceStopDisabled: matches"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_2d

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.enterprise.SHOW_UI"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "message"

    iget-object v2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    const v3, 0x104027d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_2d
    const/4 v1, 0x1

    :goto_2e
    return v1

    :cond_2f
    const/4 v1, 0x0

    goto :goto_2e
.end method

.method public isApplicationInstallationEnabled(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;)Z
    .registers 4

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationInstallationEnabled(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;Z)Z

    move-result v0

    return v0
.end method

.method public isApplicationInstalled(Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :try_start_5
    iget-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_b} :catch_10

    move-result-object v1

    if-eqz v1, :cond_f

    const/4 v0, 0x1

    :cond_f
    :goto_f
    return v0

    :catch_10
    move-exception v1

    goto :goto_f
.end method

.method public isApplicationRunning(Ljava/lang/String;)Z
    .registers 4

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationRunningInternal(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public isApplicationRunningInternal(Ljava/lang/String;)I
    .registers 10

    const/4 v3, -0x1

    invoke-static {p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_37

    :try_start_7
    iget-object v6, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    const-string v7, "activity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_37

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_37

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_37

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v6, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_21

    iget v3, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_37} :catch_38

    :cond_37
    :goto_37
    return v3

    :catch_38
    move-exception v1

    const/4 v3, -0x1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_37
.end method

.method public isIntentDisabled(Landroid/content/Intent;)Z
    .registers 10

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v5, "ApplicationPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isIntentDisabled start :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    if-nez p1, :cond_1e

    :goto_1d
    return v3

    :cond_1e
    :try_start_1e
    iget-object v5, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v6, 0x200

    invoke-virtual {v5, p1, v6}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    const-string v5, "ApplicationPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isIntentDisabled resolve info :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_6c

    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v5, :cond_6c

    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v5, :cond_6c

    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v5, :cond_6c

    const/4 v5, 0x0

    iget-object v6, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v5, v6}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateEnabled(ILjava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6b

    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getActualApplicationStateEnabled(Ljava/lang/String;)Z
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_68} :catch_8d

    move-result v5

    if-eqz v5, :cond_8b

    :cond_6b
    move v1, v4

    :cond_6c
    :goto_6c
    const-string v6, "ApplicationPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isIntentDisabled return :"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-nez v1, :cond_92

    move v5, v4

    :goto_7c
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_94

    :goto_89
    move v3, v4

    goto :goto_1d

    :cond_8b
    move v1, v3

    goto :goto_6c

    :catch_8d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6c

    :cond_92
    move v5, v3

    goto :goto_7c

    :cond_94
    move v4, v3

    goto :goto_89
.end method

.method isManagedAppInfo(Ljava/lang/String;[Landroid/app/enterprise/ManagedAppInfo;I)Landroid/app/enterprise/ManagedAppInfo;
    .registers 11

    const/4 v4, 0x0

    if-nez p2, :cond_7

    invoke-direct {p0, v4, p3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationsList(Ljava/lang/String;I)[Landroid/app/enterprise/ManagedAppInfo;

    move-result-object p2

    :cond_7
    if-eqz p1, :cond_36

    if-eqz p2, :cond_36

    move-object v0, p2

    array-length v3, v0

    const/4 v1, 0x0

    :goto_e
    if-ge v1, v3, :cond_36

    aget-object v2, v0, v1

    iget-object v5, v2, Landroid/app/enterprise/ManagedAppInfo;->mAppPkg:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_33

    const-string v4, "ApplicationPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IsManagedAppInfo:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_32
    return-object v2

    :cond_33
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_36
    move-object v2, v4

    goto :goto_32
.end method

.method public isOcspCheckEnabled(Ljava/lang/String;)Z
    .registers 3

    const-string v0, "OcspCheck"

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationControlState(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isPackageInInstallWhiteList(ILjava/lang/String;)Z
    .registers 13

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v7, "ApplicationPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isPackageInInstallWhiteList :  pkgName: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " containerId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_2e

    const-string v6, "ApplicationPolicy"

    const-string v7, "isPackageInInstallWhiteList() Package name is null"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2d
    :goto_2d
    return v5

    :cond_2e
    invoke-static {p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getContainerizedPackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_74

    new-array v4, v6, [Ljava/lang/String;

    const-string v7, "packageName"

    aput-object v7, v4, v5

    iget-object v7, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "WhiteListInstallApps"

    invoke-virtual {v7, p1, v8, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(ILjava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2d

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2d

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_52
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    if-eqz v0, :cond_52

    invoke-virtual {v0}, Landroid/content/ContentValues;->size()I

    move-result v7

    if-lez v7, :cond_52

    const-string v7, "packageName"

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_52

    move v5, v6

    goto :goto_2d

    :cond_74
    const-string v6, "ApplicationPolicy"

    const-string v7, "Package name is null. Failed to check the package to White list"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2d
.end method

.method public isRevocationCheckEnabled(Ljava/lang/String;)Z
    .registers 3

    const-string v0, "RevocationCheck"

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationControlState(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isStatusBarNotificationAllowed(Ljava/lang/String;)Z
    .registers 5

    const-string v0, "ApplicationPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isStatusBarNotificationAllowed: packageName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "PackageNameNotificationBlacklist"

    const-string v1, "PackageNameNotificationWhitelist"

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationStateBlocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_24

    const/4 v0, 0x1

    :goto_23
    return v0

    :cond_24
    const/4 v0, 0x0

    goto :goto_23
.end method

.method public isWidgetAllowed(Ljava/lang/String;)Z
    .registers 4

    const-string v0, "PackageNameWidgetBlacklist"

    const-string v1, "PackageNameWidgetWhitelist"

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationStateBlocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public onAdminAdded(I)V
    .registers 2

    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->loadApplicationBlacklistWhitelist()V

    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->refreshWidgetStatus()V

    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->reconcileApplicationsState()V

    return-void
.end method

.method public onContainerCreation(II)V
    .registers 11

    const-string v0, "ApplicationPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ApplicationPolicy.onContainerCreation("

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

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_28
    const-string v1, ".*"

    const/16 v4, 0x2000

    const/4 v5, 0x1

    move-object v0, p0

    move v2, p2

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIIZ)Z

    move-result v7

    const-string v1, ".*"

    const v4, 0x8000

    const/4 v5, 0x1

    move-object v0, p0

    move v2, p2

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIIZ)Z

    move-result v0

    and-int/2addr v7, v0

    if-nez v7, :cond_4b

    const-string v0, "ApplicationPolicy"

    const-string v1, "Failed to initialize container"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_4b} :catch_4c

    :cond_4b
    :goto_4b
    return-void

    :catch_4c
    move-exception v6

    const-string v0, "ApplicationPolicy"

    const-string v1, "onContainerCreation initialize exception : "

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4b
.end method

.method public onContainerRemoved(II)V
    .registers 6

    const-string v0, "ApplicationPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ApplicationPolicy.onContainerRemoved("

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

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->loadApplicationBlacklistWhitelist()V

    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->checkApplicationsStateToBeReconciled(I)V

    return-void
.end method

.method public onPreContainerRemoval(II)V
    .registers 6

    const-string v0, "ApplicationPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ApplicationPolicy.onPreContainerRemoval("

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

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public removeAppNotificationBlackList(Ljava/util/List;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "PackageNameNotificationBlacklist"

    const/16 v1, 0x100

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->removeApplicationStateList(Ljava/lang/String;ILjava/util/List;)Z

    move-result v0

    return v0
.end method

.method public removeAppNotificationWhiteList(Ljava/util/List;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "PackageNameNotificationWhitelist"

    const/16 v1, 0x200

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->removeApplicationStateList(Ljava/lang/String;ILjava/util/List;)Z

    move-result v0

    return v0
.end method

.method public removeAppPackageNameFromBlackList(Ljava/lang/String;)Z
    .registers 6

    const/4 v1, 0x0

    const-string v2, "ApplicationPolicy"

    const-string v3, "removeAppPackageNameFromBlackList "

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission()I

    move-result v0

    invoke-static {p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->checkRegex(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_17

    :goto_16
    return v1

    :cond_17
    const/4 v2, 0x4

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    move-result v1

    goto :goto_16
.end method

.method public removeAppPackageNameFromWhiteList(Ljava/lang/String;)Z
    .registers 6

    const/4 v1, 0x0

    const-string v2, "ApplicationPolicy"

    const-string v3, "removeAppPackageNameFromWhiteList"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission()I

    move-result v0

    invoke-static {p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->checkRegex(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_17

    :goto_16
    return v1

    :cond_17
    const/16 v2, 0x8

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    move-result v1

    goto :goto_16
.end method

.method public removeAppPermissionFromBlackList(Ljava/lang/String;)Z
    .registers 4

    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPermissionControlState(Ljava/lang/String;IZ)Z

    move-result v1

    return v1
.end method

.method public removeAppSignatureFromBlackList(Ljava/lang/String;)Z
    .registers 5

    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationSignatureControlState(Ljava/lang/String;IIZ)Z

    move-result v1

    return v1
.end method

.method public removeAppSignatureFromWhiteList(Ljava/lang/String;)Z
    .registers 5

    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationSignatureControlState(Ljava/lang/String;IIZ)Z

    move-result v1

    return v1
.end method

.method public removeManagedApplications(Ljava/util/List;)Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission()I

    const/4 v3, 0x0

    if-eqz p1, :cond_34

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_34

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_15
    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :try_start_21
    invoke-static {v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_15

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4}, Lcom/android/server/enterprise/application/ApplicationPolicy;->uninstallApplication(Ljava/lang/String;Z)Z

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_2e} :catch_2f

    goto :goto_15

    :catch_2f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_15

    :cond_34
    return-object v3
.end method

.method public bridge synthetic removeManagedApplications(Ljava/util/List;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->removeManagedApplications(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public removePackageFromInstallWhiteList(ILjava/lang/String;)Z
    .registers 9

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(I)I

    move-result v2

    const-string v1, "ApplicationPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removePackageFromInstallList :  pkgName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " containerId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_31

    const-string v1, "ApplicationPolicy"

    const-string v3, "removePackageFromInstallWhiteList() Package name is null"

    invoke-static {v1, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_30
    return v0

    :cond_31
    invoke-static {p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getContainerizedPackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_47

    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "WhiteListInstallApps"

    const-string v4, "packageName"

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->removeByAdminAndField(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_30

    :cond_47
    const-string v1, "ApplicationPolicy"

    const-string v3, "Package name is null. Failed to remove the package from White list"

    invoke-static {v1, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_30
.end method

.method public removePackagesFromClearCacheBlackList(ILjava/util/List;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "PackageNameClearCacheBlacklist"

    const v1, 0x8000

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->removeApplicationStateList(ILjava/lang/String;ILjava/util/List;)Z

    move-result v0

    return v0
.end method

.method public removePackagesFromClearCacheWhiteList(ILjava/util/List;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "PackageNameClearCacheWhitelist"

    const/high16 v1, 0x1

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->removeApplicationStateList(ILjava/lang/String;ILjava/util/List;)Z

    move-result v0

    return v0
.end method

.method public removePackagesFromClearDataBlackList(ILjava/util/List;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "PackageNameClearDataBlacklist"

    const/16 v1, 0x2000

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->removeApplicationStateList(ILjava/lang/String;ILjava/util/List;)Z

    move-result v0

    return v0
.end method

.method public removePackagesFromClearDataWhiteList(ILjava/util/List;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "PackageNameClearDataWhitelist"

    const/16 v1, 0x4000

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->removeApplicationStateList(ILjava/lang/String;ILjava/util/List;)Z

    move-result v0

    return v0
.end method

.method public removePackagesFromForceStopBlackList(Ljava/util/List;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "PackageNameStopBlacklist"

    const/16 v1, 0x10

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->removeApplicationStateList(Ljava/lang/String;ILjava/util/List;)Z

    move-result v0

    return v0
.end method

.method public removePackagesFromForceStopWhiteList(Ljava/util/List;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "PackageNameStopWhitelist"

    const/16 v1, 0x20

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->removeApplicationStateList(Ljava/lang/String;ILjava/util/List;)Z

    move-result v0

    return v0
.end method

.method public removePackagesFromWidgetBlackList(Ljava/util/List;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v1, "PackageNameWidgetBlacklist"

    const/16 v2, 0x40

    invoke-direct {p0, v1, v2, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->removeApplicationStateList(Ljava/lang/String;ILjava/util/List;)Z

    move-result v0

    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->refreshWidgetStatus()V

    return v0
.end method

.method public removePackagesFromWidgetWhiteList(Ljava/util/List;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v1, "PackageNameWidgetWhitelist"

    const/16 v2, 0x80

    invoke-direct {p0, v1, v2, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->removeApplicationStateList(Ljava/lang/String;ILjava/util/List;)Z

    move-result v0

    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->refreshWidgetStatus()V

    return v0
.end method

.method public restoreApplicationData(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)I
    .registers 15

    const/4 v8, -0x3

    const/4 v7, -0x2

    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceBackupAppPermission()I

    invoke-static {p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_19

    invoke-direct {p0, v6}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getPkgInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v9

    if-eqz v9, :cond_19

    if-eqz p2, :cond_19

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v9

    if-nez v9, :cond_1a

    :cond_19
    :goto_19
    return v7

    :cond_1a
    iget-boolean v9, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->isRestoreRunning:Z

    if-nez v9, :cond_2e

    iget-boolean v9, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->isBackupRunning:Z

    if-eqz v9, :cond_30

    iget-object v9, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mCurrentBackupPackage:Ljava/lang/String;

    if-eqz v9, :cond_30

    iget-object v9, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mCurrentBackupPackage:Ljava/lang/String;

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_30

    :cond_2e
    move v7, v8

    goto :goto_19

    :cond_30
    :try_start_30
    new-instance v3, Ljava/lang/SecurityManager;

    invoke-direct {v3}, Ljava/lang/SecurityManager;-><init>()V

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/SecurityManager;->checkRead(Ljava/io/FileDescriptor;)V
    :try_end_3c
    .catch Ljava/lang/SecurityException; {:try_start_30 .. :try_end_3c} :catch_78

    iget-object v9, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mRestoreLock:Ljava/lang/Object;

    monitor-enter v9

    :try_start_3f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_75

    move-result-wide v4

    const/4 v10, -0x2

    :try_start_44
    iput v10, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mRestoreReturnCode:I

    iget-object v10, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mBackupManagerService:Landroid/app/backup/IBackupManager;

    if-nez v10, :cond_81

    const-string v10, "backup"

    invoke-static {v10}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v10

    iput-object v10, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mBackupManagerService:Landroid/app/backup/IBackupManager;

    iget-object v10, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mBackupManagerService:Landroid/app/backup/IBackupManager;

    if-nez v10, :cond_81

    const-string v8, "ApplicationPolicy"

    const-string v10, "failed to get backup manager service"

    invoke-static {v8, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_61
    .catchall {:try_start_44 .. :try_end_61} :catchall_fc
    .catch Ljava/lang/InterruptedException; {:try_start_44 .. :try_end_61} :catch_c9
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_61} :catch_df

    const/4 v8, 0x0

    :try_start_62
    iput-boolean v8, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->isRestoreRunning:Z

    new-instance v2, Landroid/content/Intent;

    const-string v8, "edm.intent.action.backup.service.available"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v9

    goto :goto_19

    :catchall_75
    move-exception v7

    monitor-exit v9
    :try_end_77
    .catchall {:try_start_62 .. :try_end_77} :catchall_75

    throw v7

    :catch_78
    move-exception v1

    const-string v8, "ApplicationPolicy"

    const-string v9, "can\'t read from file descriptor"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_19

    :cond_81
    :try_start_81
    iget-object v10, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mBackupManagerService:Landroid/app/backup/IBackupManager;

    const/4 v11, 0x0

    invoke-interface {v10, v11, v6}, Landroid/app/backup/IBackupManager;->setupEdmBackupRestore(ZLjava/lang/String;)Z
    :try_end_87
    .catchall {:try_start_81 .. :try_end_87} :catchall_fc
    .catch Ljava/lang/InterruptedException; {:try_start_81 .. :try_end_87} :catch_c9
    .catch Landroid/os/RemoteException; {:try_start_81 .. :try_end_87} :catch_df

    move-result v10

    if-nez v10, :cond_a0

    const/4 v7, 0x0

    :try_start_8b
    iput-boolean v7, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->isRestoreRunning:Z

    new-instance v2, Landroid/content/Intent;

    const-string v7, "edm.intent.action.backup.service.available"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v9
    :try_end_9d
    .catchall {:try_start_8b .. :try_end_9d} :catchall_75

    move v7, v8

    goto/16 :goto_19

    :cond_a0
    const/4 v8, 0x1

    :try_start_a1
    iput-boolean v8, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->isRestoreRunning:Z

    iput-object v6, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mCurrentRestorePackage:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mBackupManagerService:Landroid/app/backup/IBackupManager;

    invoke-interface {v8, p2}, Landroid/app/backup/IBackupManager;->fullRestore(Landroid/os/ParcelFileDescriptor;)V

    iget-object v8, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mRestoreLock:Ljava/lang/Object;

    const-wide/32 v10, 0x493e0

    invoke-virtual {v8, v10, v11}, Ljava/lang/Object;->wait(J)V
    :try_end_b2
    .catchall {:try_start_a1 .. :try_end_b2} :catchall_fc
    .catch Ljava/lang/InterruptedException; {:try_start_a1 .. :try_end_b2} :catch_c9
    .catch Landroid/os/RemoteException; {:try_start_a1 .. :try_end_b2} :catch_df

    const/4 v7, 0x0

    :try_start_b3
    iput-boolean v7, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->isRestoreRunning:Z

    new-instance v2, Landroid/content/Intent;

    const-string v7, "edm.intent.action.backup.service.available"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    iget v7, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mRestoreReturnCode:I

    monitor-exit v9

    goto/16 :goto_19

    :catch_c9
    move-exception v0

    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->isRestoreRunning:Z

    new-instance v2, Landroid/content/Intent;

    const-string v8, "edm.intent.action.backup.service.available"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v9
    :try_end_dd
    .catchall {:try_start_b3 .. :try_end_dd} :catchall_75

    goto/16 :goto_19

    :catch_df
    move-exception v1

    :try_start_e0
    const-string v8, "ApplicationPolicy"

    const-string v10, "Failed to get backup manager service"

    invoke-static {v8, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e7
    .catchall {:try_start_e0 .. :try_end_e7} :catchall_fc

    const/4 v8, 0x0

    :try_start_e8
    iput-boolean v8, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->isRestoreRunning:Z

    new-instance v2, Landroid/content/Intent;

    const-string v8, "edm.intent.action.backup.service.available"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v9

    goto/16 :goto_19

    :catchall_fc
    move-exception v7

    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->isRestoreRunning:Z

    new-instance v2, Landroid/content/Intent;

    const-string v8, "edm.intent.action.backup.service.available"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7
    :try_end_110
    .catchall {:try_start_e8 .. :try_end_110} :catchall_75
.end method

.method public setAppInstallToSdCard(Z)Z
    .registers 8

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission()I

    move-result v0

    :try_start_5
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v3

    if-eqz v3, :cond_13

    const-string v3, "ApplicationPolicy"

    const-string v4, "setAppInstallToSdCard : External Storage Emulated"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_12
    return v2

    :cond_13
    iget-object v3, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "APPLICATION_GENERAL"

    const-string v5, "installToSdCard"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1c} :catch_1e

    move-result v2

    goto :goto_12

    :catch_1e
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_12
.end method

.method public setAppInstallationMode(I)Z
    .registers 4

    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission()I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne v1, p1, :cond_e

    const-string v1, ".*"

    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->removeAppPackageNameFromBlackList(Ljava/lang/String;)Z

    move-result v0

    :cond_d
    :goto_d
    return v0

    :cond_e
    if-nez p1, :cond_d

    const-string v1, ".*"

    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->addAppPackageNameToBlackList(Ljava/lang/String;)Z

    move-result v0

    goto :goto_d
.end method

.method public setApplicationInstallationDisabled(Ljava/lang/String;Z)V
    .registers 4

    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission()I

    move-result v0

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->_setApplicationInstallationDisabled(ILjava/lang/String;Z)V

    return-void
.end method

.method public setApplicationInstallationDisabledBySystem(ILjava/lang/String;Z)V
    .registers 7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_10

    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Process should have system uid"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_10
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->_setApplicationInstallationDisabled(ILjava/lang/String;Z)V

    return-void
.end method

.method public setApplicationNotificationMode(I)Z
    .registers 7

    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission()I

    move-result v0

    const-string v2, "ApplicationPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setApplicationNotificationMode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    packed-switch p1, :pswitch_data_54

    const/4 v1, 0x0

    :goto_20
    return v1

    :pswitch_21
    iget-object v2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "APPLICATION_MISC"

    const-string v4, "appNotificationMode"

    invoke-virtual {v2, v0, v3, v4, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3b

    iget-object v2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mNotificationMode:Ljava/util/Map;

    int-to-long v3, v0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3b
    const-string v2, "ApplicationPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setApplicationNotificationMode: status = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_20

    :pswitch_data_54
    .packed-switch 0x2
        :pswitch_21
        :pswitch_21
        :pswitch_21
    .end packed-switch
.end method

.method public setApplicationState(ILjava/lang/String;Z)Z
    .registers 15

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission(I)I

    move-result v2

    const/4 v8, 0x0

    const-string v0, "ApplicationPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setApplicationState :  pkgName :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " callingUid :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " enableApp :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getContainerizedPackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_89

    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationInstalled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_43

    const/4 v0, 0x0

    :goto_42
    return v0

    :cond_43
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isActiveAdmin(Ljava/lang/String;)Z

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_53

    const-string v0, "ApplicationPolicy"

    const-string v3, "setApplicationState() : can not disable Admin app"

    invoke-static {v0, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v8

    goto :goto_42

    :cond_53
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    const/4 v4, 0x2

    if-nez p3, :cond_8b

    const/4 v5, 0x1

    :goto_5b
    move-object v0, p0

    move v3, p1

    :try_start_5d
    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIIZ)Z

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateEnabled(ILjava/lang/String;)Z

    move-result v7

    const-string v0, "ApplicationPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "state : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    if-eqz v7, :cond_8d

    const/4 v0, 0x1

    :goto_81
    const/4 v4, 0x0

    invoke-virtual {v3, v1, v0, v4}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V
    :try_end_85
    .catchall {:try_start_5d .. :try_end_85} :catchall_94
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_85} :catch_8f

    const/4 v8, 0x1

    :goto_86
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_89
    move v0, v8

    goto :goto_42

    :cond_8b
    const/4 v5, 0x0

    goto :goto_5b

    :cond_8d
    const/4 v0, 0x2

    goto :goto_81

    :catch_8f
    move-exception v6

    :try_start_90
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_93
    .catchall {:try_start_90 .. :try_end_93} :catchall_94

    goto :goto_86

    :catchall_94
    move-exception v0

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public setApplicationStateList([Ljava/lang/String;Z)[Ljava/lang/String;
    .registers 11

    const/4 v7, 0x0

    const/4 v0, 0x0

    const-string v4, "ApplicationPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setApplicationStateList:operation:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission()I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_27

    array-length v4, p1

    if-gez v4, :cond_29

    :cond_27
    move-object v4, v0

    :goto_28
    return-object v4

    :cond_29
    const/4 v1, 0x0

    :goto_2a
    array-length v4, p1

    if-ge v1, v4, :cond_58

    aget-object v4, p1, v1

    invoke-virtual {p0, v7, v4, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationState(ILjava/lang/String;Z)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_55

    aget-object v4, p1, v1

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v4, "ApplicationPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setApplicationStateList:pkgList[i]:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, p1, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_55
    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    :cond_58
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_60

    const/4 v4, 0x0

    goto :goto_28

    :cond_60
    new-array v4, v7, [Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    check-cast v4, [Ljava/lang/String;

    goto :goto_28
.end method

.method public setApplicationUninstallationDisabled(Ljava/lang/String;Z)V
    .registers 4

    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission()I

    move-result v0

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->_setApplicationUninstallationDisabled(ILjava/lang/String;Z)V

    return-void
.end method

.method public setApplicationUninstallationDisabledBySystem(ILjava/lang/String;Z)V
    .registers 7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_10

    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Process should have system uid"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_10
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->_setApplicationUninstallationDisabled(ILjava/lang/String;Z)V

    return-void
.end method

.method public setApplicationUninstallationMode(I)Z
    .registers 7

    const/4 v4, 0x1

    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission()I

    move-result v0

    const/4 v1, 0x0

    if-ne v4, p1, :cond_32

    const-string v2, ".*"

    const/4 v3, 0x0

    invoke-direct {p0, v2, v0, v4, v3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    move-result v1

    :cond_f
    :goto_f
    const-string v2, "ApplicationPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setAppInstallationMode : returns : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " new mode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_32
    if-nez p1, :cond_f

    const-string v2, ".*"

    invoke-direct {p0, v2, v0, v4, v4}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z

    move-result v1

    goto :goto_f
.end method

.method public setAsManagedApp(Ljava/lang/String;)Z
    .registers 10

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v5, "ApplicationPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setAsManagedApp():pkgName:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission()I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationInstalled(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_25

    :goto_24
    return v3

    :cond_25
    const/4 v5, 0x1

    :try_start_26
    invoke-direct {p0, v0, p1, v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setManagedApp(ILjava/lang/String;Z)V

    const/4 v5, 0x0

    invoke-virtual {p0, p1, v5, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isManagedAppInfo(Ljava/lang/String;[Landroid/app/enterprise/ManagedAppInfo;I)Landroid/app/enterprise/ManagedAppInfo;

    move-result-object v2

    if-eqz v2, :cond_40

    iget v5, v2, Landroid/app/enterprise/ManagedAppInfo;->mAppInstallCount:I

    if-nez v5, :cond_40

    const-string v5, "applicationInstallationCount"

    invoke-direct {p0, v0, p1, v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->updateCount(ILjava/lang/String;Ljava/lang/String;)V

    const-string v5, "ApplicationPolicy"

    const-string v6, "App install count incremented"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_40} :catch_42

    :cond_40
    move v3, v4

    goto :goto_24

    :catch_42
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_24
.end method

.method public startApp(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 12

    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission()I

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p1, :cond_44

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationInstalled(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_44

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    if-nez p2, :cond_27

    :try_start_1a
    iget-object v6, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v6, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1f
    .catchall {:try_start_1a .. :try_end_1f} :catchall_64
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1f} :catch_46

    move-result-object v2

    if-nez v2, :cond_36

    const/4 v6, 0x0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_26
    return v6

    :cond_27
    :try_start_27
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :cond_36
    const/high16 v6, 0x1000

    invoke-virtual {v2, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_40
    .catchall {:try_start_27 .. :try_end_40} :catchall_64
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_40} :catch_46

    const/4 v3, 0x1

    :goto_41
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_44
    move v6, v3

    goto :goto_26

    :catch_46
    move-exception v1

    :try_start_47
    const-string v6, "ApplicationPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "could not start app"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_63
    .catchall {:try_start_47 .. :try_end_63} :catchall_64

    goto :goto_41

    :catchall_64
    move-exception v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method

.method public stopApp(Ljava/lang/String;)Z
    .registers 10

    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission()I

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_25

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationInstalled(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_25

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    :try_start_14
    iget-object v5, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V
    :try_end_21
    .catchall {:try_start_14 .. :try_end_21} :catchall_44
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_21} :catch_26

    const/4 v2, 0x1

    :goto_22
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_25
    return v2

    :catch_26
    move-exception v1

    :try_start_27
    const-string v5, "ApplicationPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "could not stop app"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_43
    .catchall {:try_start_27 .. :try_end_43} :catchall_44

    goto :goto_22

    :catchall_44
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public systemReady()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mProcessStats:Lcom/android/internal/os/ProcessStats;

    invoke-virtual {v0}, Lcom/android/internal/os/ProcessStats;->init()V

    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->loadApplicationBlacklistWhitelist()V

    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->reconcileApplicationsState()V

    return-void
.end method

.method public uninstallApplication(Ljava/lang/String;Z)Z
    .registers 4

    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission()I

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->_uninstallApplication(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public uninstallApplicationBySystem(ILjava/lang/String;Z)Z
    .registers 7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_10

    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Process should have system uid"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_10
    invoke-direct {p0, p2, p3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->_uninstallApplication(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public updateDataUsageDb()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppNetworkStatsTracker:Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;

    invoke-virtual {v0}, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->updateNetworkUsageDb()V

    return-void
.end method

.method public wipeApplicationData(Ljava/lang/String;)Z
    .registers 7

    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->enforceAppPermission()I

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1f

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_e
    iget-object v4, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    invoke-virtual {v4, p1}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->clearUserData(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1c

    const/4 v1, 0x1

    iget-object v4, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    invoke-virtual {v4, p1}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->clearApplicationCacheFiles(Ljava/lang/String;)Z
    :try_end_1c
    .catchall {:try_start_e .. :try_end_1c} :catchall_26
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_1c} :catch_20

    :cond_1c
    :goto_1c
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_1f
    return v1

    :catch_20
    move-exception v0

    const/4 v1, 0x0

    :try_start_22
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_26

    goto :goto_1c

    :catchall_26
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method
