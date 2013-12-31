.class public Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;
.super Ljava/lang/Object;
.source "PackageManagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$MyPackageMonitor;,
        Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$BackupRestoreResultReceiver;,
        Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$AppInfoTask;,
        Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PkgSizeObserver;,
        Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ApplicationPackageInfo;,
        Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PackageDeleteObserver;,
        Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$InstallationCallback;,
        Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PackageInstallObserver;,
        Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearUserDataObserver;,
        Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearCacheObserver;
    }
.end annotation


# static fields
.field private static final BACKUP_RESTORE_TIMEOUT:J = 0x493e0L

.field private static final TAG:Ljava/lang/String; = "PackageManagerAdapter"

.field private static mBackupRestoreReceiver:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$BackupRestoreResultReceiver;

.field private static mContext:Landroid/content/Context;

.field private static mIPackageManager:Landroid/content/pm/IPackageManager;

.field private static mInstance:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;


# instance fields
.field private volatile isBackupRunning:Z

.field private volatile isRestoreRunning:Z

.field final mBackupLock:Ljava/lang/Object;

.field private mBackupManagerService:Landroid/app/backup/IBackupManager;

.field private mBackupReturnCode:I

.field private mCurrentBackupPackage:Ljava/lang/String;

.field private mCurrentRestorePackage:Ljava/lang/String;

.field private final mProcessStats:Lcom/android/internal/os/ProcessStats;

.field final mRestoreLock:Ljava/lang/Object;

.field private mRestoreReturnCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mBackupRestoreReceiver:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$BackupRestoreResultReceiver;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lcom/android/internal/os/ProcessStats;

    invoke-direct {v1, v3}, Lcom/android/internal/os/ProcessStats;-><init>(Z)V

    iput-object v1, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mProcessStats:Lcom/android/internal/os/ProcessStats;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mBackupLock:Ljava/lang/Object;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mRestoreLock:Ljava/lang/Object;

    iput-boolean v3, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->isBackupRunning:Z

    iput-boolean v3, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->isRestoreRunning:Z

    iput-object v2, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mBackupManagerService:Landroid/app/backup/IBackupManager;

    iput-object v2, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mCurrentBackupPackage:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mCurrentRestorePackage:Ljava/lang/String;

    new-instance v1, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$BackupRestoreResultReceiver;

    invoke-direct {v1, p0, v2}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$BackupRestoreResultReceiver;-><init>(Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$1;)V

    sput-object v1, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mBackupRestoreReceiver:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$BackupRestoreResultReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "edm.intent.action.backup.result"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "edm.intent.action.restore.result"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mBackupRestoreReceiver:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$BackupRestoreResultReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$302(Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;I)I
    .registers 2

    iput p1, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mBackupReturnCode:I

    return p1
.end method

.method static synthetic access$402(Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;I)I
    .registers 2

    iput p1, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mRestoreReturnCode:I

    return p1
.end method

.method private enforceBackupAppPermission()I
    .registers 4

    sget-object v1, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mContext:Landroid/content/Context;

    const-string v2, "enterprise_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    const-string v1, "android.permission.sec.MDM_APP_BACKUP"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    return v1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;
    .registers 3

    const-class v1, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mInstance:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    if-nez v0, :cond_1c

    sput-object p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    invoke-direct {v0}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mInstance:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    const-string v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mIPackageManager:Landroid/content/pm/IPackageManager;

    :cond_1c
    sget-object v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mInstance:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_20

    monitor-exit v1

    return-object v0

    :catchall_20
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getPackageInfo(Landroid/net/Uri;)Landroid/content/pm/PackageParser$Package;
    .registers 7

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Landroid/content/pm/PackageParser;

    invoke-direct {v2, v0}, Landroid/content/pm/PackageParser;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v1}, Landroid/util/DisplayMetrics;->setToDefaults()V

    invoke-virtual {v2, v4, v0, v1, v5}, Landroid/content/pm/PackageParser;->parsePackage(Ljava/io/File;Ljava/lang/String;Landroid/util/DisplayMetrics;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v3

    if-eqz v3, :cond_20

    invoke-virtual {v2, v3, v5}, Landroid/content/pm/PackageParser;->collectCertificates(Landroid/content/pm/PackageParser$Package;I)Z

    :cond_20
    const/4 v2, 0x0

    return-object v3
.end method

.method private static getValidStr(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

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

    const-string v2, "PackageManagerAdapter"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method


# virtual methods
.method public backupApplicationData(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)I
    .registers 23

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->enforceBackupAppPermission()I

    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_1b

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getPkgInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

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

    iget-boolean v2, v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->isBackupRunning:Z

    if-nez v2, :cond_3b

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->isRestoreRunning:Z

    if-eqz v2, :cond_3d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mCurrentRestorePackage:Ljava/lang/String;

    if-eqz v2, :cond_3d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mCurrentRestorePackage:Ljava/lang/String;

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
    .catch Ljava/lang/SecurityException; {:try_start_3d .. :try_end_49} :catch_8f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mBackupLock:Ljava/lang/Object;

    move-object/from16 v19, v0

    monitor-enter v19

    :try_start_50
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_53
    .catchall {:try_start_50 .. :try_end_53} :catchall_8c

    move-result-wide v16

    :try_start_54
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mBackupManagerService:Landroid/app/backup/IBackupManager;

    if-nez v2, :cond_99

    const-string v2, "backup"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mBackupManagerService:Landroid/app/backup/IBackupManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mBackupManagerService:Landroid/app/backup/IBackupManager;

    if-nez v2, :cond_99

    const-string v2, "PackageManagerAdapter"

    const-string v3, "failed to get backup manager service"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_75
    .catchall {:try_start_54 .. :try_end_75} :catchall_159
    .catch Ljava/lang/InterruptedException; {:try_start_54 .. :try_end_75} :catch_119
    .catch Landroid/os/RemoteException; {:try_start_54 .. :try_end_75} :catch_139

    const/4 v2, -0x2

    const/4 v3, 0x0

    :try_start_77
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->isBackupRunning:Z

    new-instance v12, Landroid/content/Intent;

    const-string v3, "edm.intent.action.backup.service.available"

    invoke-direct {v12, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v19

    goto :goto_1c

    :catchall_8c
    move-exception v2

    monitor-exit v19
    :try_end_8e
    .catchall {:try_start_77 .. :try_end_8e} :catchall_8c

    throw v2

    :catch_8f
    move-exception v11

    const-string v2, "PackageManagerAdapter"

    const-string v3, "can\'t write to file descriptor"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, -0x2

    goto :goto_1c

    :cond_99
    :try_start_99
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mBackupManagerService:Landroid/app/backup/IBackupManager;

    const/4 v3, 0x1

    move-object/from16 v0, v18

    invoke-interface {v2, v3, v0}, Landroid/app/backup/IBackupManager;->setupEdmBackupRestore(ZLjava/lang/String;)Z
    :try_end_a3
    .catchall {:try_start_99 .. :try_end_a3} :catchall_159
    .catch Ljava/lang/InterruptedException; {:try_start_99 .. :try_end_a3} :catch_119
    .catch Landroid/os/RemoteException; {:try_start_99 .. :try_end_a3} :catch_139

    move-result v2

    if-nez v2, :cond_be

    const/4 v2, -0x3

    const/4 v3, 0x0

    :try_start_a8
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->isBackupRunning:Z

    new-instance v12, Landroid/content/Intent;

    const-string v3, "edm.intent.action.backup.service.available"

    invoke-direct {v12, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v19
    :try_end_bc
    .catchall {:try_start_a8 .. :try_end_bc} :catchall_8c

    goto/16 :goto_1c

    :cond_be
    const/4 v2, 0x1

    :try_start_bf
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->isBackupRunning:Z

    const/4 v2, -0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mBackupReturnCode:I

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mCurrentBackupPackage:Ljava/lang/String;

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v13, v2, [Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mCurrentBackupPackage:Ljava/lang/String;

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mBackupManagerService:Landroid/app/backup/IBackupManager;

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

    iget-object v2, v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mBackupLock:Ljava/lang/Object;

    const-wide/32 v3, 0x493e0

    invoke-virtual {v2, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_fe
    .catchall {:try_start_bf .. :try_end_fe} :catchall_159
    .catch Ljava/lang/InterruptedException; {:try_start_bf .. :try_end_fe} :catch_119
    .catch Landroid/os/RemoteException; {:try_start_bf .. :try_end_fe} :catch_139

    const/4 v2, 0x0

    :try_start_ff
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->isBackupRunning:Z

    new-instance v12, Landroid/content/Intent;

    const-string v2, "edm.intent.action.backup.service.available"

    invoke-direct {v12, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mBackupReturnCode:I

    monitor-exit v19
    :try_end_117
    .catchall {:try_start_ff .. :try_end_117} :catchall_8c

    goto/16 :goto_1c

    :catch_119
    move-exception v10

    :try_start_11a
    const-string v2, "PackageManagerAdapter"

    const-string v3, "backupApplicationData interrupted"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_121
    .catchall {:try_start_11a .. :try_end_121} :catchall_159

    const/4 v2, -0x2

    const/4 v3, 0x0

    :try_start_123
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->isBackupRunning:Z

    new-instance v12, Landroid/content/Intent;

    const-string v3, "edm.intent.action.backup.service.available"

    invoke-direct {v12, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v19
    :try_end_137
    .catchall {:try_start_123 .. :try_end_137} :catchall_8c

    goto/16 :goto_1c

    :catch_139
    move-exception v11

    :try_start_13a
    const-string v2, "PackageManagerAdapter"

    const-string v3, "Failed to get backup manager service"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_141
    .catchall {:try_start_13a .. :try_end_141} :catchall_159

    const/4 v2, -0x2

    const/4 v3, 0x0

    :try_start_143
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->isBackupRunning:Z

    new-instance v12, Landroid/content/Intent;

    const-string v3, "edm.intent.action.backup.service.available"

    invoke-direct {v12, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v19

    goto/16 :goto_1c

    :catchall_159
    move-exception v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->isBackupRunning:Z

    new-instance v12, Landroid/content/Intent;

    const-string v3, "edm.intent.action.backup.service.available"

    invoke-direct {v12, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
    :try_end_16f
    .catchall {:try_start_143 .. :try_end_16f} :catchall_8c
.end method

.method public clearApplicationCacheFiles(Ljava/lang/String;)Z
    .registers 7

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2c

    new-instance v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearCacheObserver;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearCacheObserver;-><init>(Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$1;)V

    :try_start_d
    sget-object v3, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v3, p1, v0}, Landroid/content/pm/IPackageManager;->deleteApplicationCacheFiles(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V

    monitor-enter v0
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_13} :catch_32

    :goto_13
    :try_start_13
    iget-boolean v3, v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearCacheObserver;->finished:Z
    :try_end_15
    .catchall {:try_start_13 .. :try_end_15} :catchall_2f

    if-nez v3, :cond_1d

    :try_start_17
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_2f
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_1a} :catch_1b

    goto :goto_13

    :catch_1b
    move-exception v3

    goto :goto_13

    :cond_1d
    const/4 v3, 0x1

    :try_start_1e
    iget-boolean v4, v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearCacheObserver;->success:Z

    if-ne v3, v4, :cond_2d

    iget-object v3, v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearCacheObserver;->packageName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2d

    const/4 v2, 0x1

    :goto_2b
    monitor-exit v0

    :cond_2c
    :goto_2c
    return v2

    :cond_2d
    const/4 v2, 0x0

    goto :goto_2b

    :catchall_2f
    move-exception v3

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_1e .. :try_end_31} :catchall_2f

    :try_start_31
    throw v3
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_32} :catch_32

    :catch_32
    move-exception v1

    const/4 v2, 0x0

    const-string v3, "PackageManagerAdapter"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2c
.end method

.method public clearUserData(Ljava/lang/String;)Z
    .registers 10

    const/4 v4, 0x0

    invoke-static {p1}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_35

    new-instance v1, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearUserDataObserver;

    const/4 v5, 0x0

    invoke-direct {v1, p0, v5}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearUserDataObserver;-><init>(Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$1;)V

    :try_start_d
    sget-object v5, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mContext:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0, p1, v1}, Landroid/app/ActivityManager;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)Z

    move-result v3

    if-nez v3, :cond_36

    const-string v5, "PackageManagerAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Couldn\'t clear application user data for package: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_35
    :goto_35
    return v4

    :cond_36
    monitor-enter v1
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_37} :catch_54

    :goto_37
    :try_start_37
    iget-boolean v5, v1, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearUserDataObserver;->finished:Z
    :try_end_39
    .catchall {:try_start_37 .. :try_end_39} :catchall_51

    if-nez v5, :cond_41

    :try_start_3b
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_51
    .catch Ljava/lang/InterruptedException; {:try_start_3b .. :try_end_3e} :catch_3f

    goto :goto_37

    :catch_3f
    move-exception v5

    goto :goto_37

    :cond_41
    const/4 v5, 0x1

    :try_start_42
    iget-boolean v6, v1, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearUserDataObserver;->success:Z

    if-ne v5, v6, :cond_60

    iget-object v5, v1, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearUserDataObserver;->packageName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_60

    const/4 v4, 0x1

    :goto_4f
    monitor-exit v1

    goto :goto_35

    :catchall_51
    move-exception v5

    monitor-exit v1
    :try_end_53
    .catchall {:try_start_42 .. :try_end_53} :catchall_51

    :try_start_53
    throw v5
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_54} :catch_54

    :catch_54
    move-exception v2

    const/4 v4, 0x0

    const-string v5, "PackageManagerAdapter"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_35

    :cond_60
    const/4 v4, 0x0

    goto :goto_4f
.end method

.method public deletePackage(Ljava/lang/String;I)Z
    .registers 5

    new-instance v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PackageDeleteObserver;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PackageDeleteObserver;-><init>(Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;)V

    sget-object v1, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Landroid/content/pm/PackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V

    monitor-enter v0

    :goto_f
    :try_start_f
    iget-boolean v1, v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PackageDeleteObserver;->finished:Z
    :try_end_11
    .catchall {:try_start_f .. :try_end_11} :catchall_1d

    if-nez v1, :cond_19

    :try_start_13
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_1d
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_16} :catch_17

    goto :goto_f

    :catch_17
    move-exception v1

    goto :goto_f

    :cond_19
    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_1d

    iget-boolean v1, v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PackageDeleteObserver;->result:Z

    return v1

    :catchall_1d
    move-exception v1

    :try_start_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public getAllWidgets(Ljava/lang/String;)Ljava/util/Map;
    .registers 5
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x0

    const-string v2, "appwidget"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/appwidget/IAppWidgetService;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-interface {v0, p1}, Lcom/android/internal/appwidget/IAppWidgetService;->getAllWidgets(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    :cond_11
    return-object v1
.end method

.method public getApplicationPackageInfo(Ljava/lang/String;Landroid/net/Uri;)Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ApplicationPackageInfo;
    .registers 14

    new-instance v4, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ApplicationPackageInfo;

    invoke-direct {v4}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ApplicationPackageInfo;-><init>()V

    if-eqz p2, :cond_5b

    :try_start_7
    invoke-static {p2}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getPackageInfo(Landroid/net/Uri;)Landroid/content/pm/PackageParser$Package;

    move-result-object v6

    if-eqz v4, :cond_37

    if-eqz v6, :cond_37

    iget-object v8, v6, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iput-object v8, v4, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ApplicationPackageInfo;->packageName:Ljava/lang/String;

    iget-object v8, v6, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    if-eqz v8, :cond_1b

    iget-object v8, v6, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    iput-object v8, v4, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ApplicationPackageInfo;->permissions:Ljava/util/List;

    :cond_1b
    iget-object v8, v6, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    if-eqz v8, :cond_37

    iget-object v0, v6, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    array-length v3, v0

    const/4 v2, 0x0

    :goto_23
    if-ge v2, v3, :cond_33

    aget-object v7, v0, v2

    iget-object v8, v4, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ApplicationPackageInfo;->signatures:Ljava/util/List;

    invoke-virtual {v7}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    :cond_33
    iget-object v8, v6, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    iput-object v8, v4, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ApplicationPackageInfo;->signaturesArray:[Landroid/content/pm/Signature;
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_37} :catch_38

    :cond_37
    :goto_37
    return-object v4

    :catch_38
    move-exception v1

    const-string v8, "PackageManagerAdapter"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "PackageManagerAdapter"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Could not retrieve permissions & signature for package: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_37

    :cond_5b
    if-nez p1, :cond_99

    const-string p1, ""

    :goto_5f
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_37

    :try_start_65
    sget-object v8, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const/16 v9, 0x1040

    invoke-virtual {v8, p1, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    if-eqz v5, :cond_37

    iput-object p1, v4, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ApplicationPackageInfo;->packageName:Ljava/lang/String;

    iget-object v8, v5, Landroid/content/pm/PackageInfo;->permissions:[Landroid/content/pm/PermissionInfo;

    if-eqz v8, :cond_81

    iget-object v8, v5, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    iput-object v8, v4, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ApplicationPackageInfo;->permissions:Ljava/util/List;

    :cond_81
    iget-object v8, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v8, :cond_37

    iget-object v0, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v3, v0

    const/4 v2, 0x0

    :goto_89
    if-ge v2, v3, :cond_37

    aget-object v7, v0, v2

    iget-object v8, v4, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ApplicationPackageInfo;->signatures:Ljava/util/List;

    invoke-virtual {v7}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_96} :catch_9e

    add-int/lit8 v2, v2, 0x1

    goto :goto_89

    :cond_99
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    goto :goto_5f

    :catch_9e
    move-exception v1

    const-string v8, "PackageManagerAdapter"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "PackageManagerAdapter"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Could not retrieve permissions & signature for package: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_37
.end method

.method public getApplicationPackageStats(Ljava/lang/String;)Landroid/content/pm/PackageStats;
    .registers 8

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2e

    new-instance v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PkgSizeObserver;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PkgSizeObserver;-><init>(Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_10
    sget-object v4, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, p1, v0}, Landroid/content/pm/PackageManager;->getPackageSizeInfo(Ljava/lang/String;Landroid/content/pm/IPackageStatsObserver;)V

    monitor-enter v0
    :try_end_1a
    .catchall {:try_start_10 .. :try_end_1a} :catchall_32

    :goto_1a
    :try_start_1a
    iget-boolean v4, v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PkgSizeObserver;->finished:Z
    :try_end_1c
    .catchall {:try_start_1a .. :try_end_1c} :catchall_2f

    if-nez v4, :cond_24

    :try_start_1e
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_2f
    .catch Ljava/lang/InterruptedException; {:try_start_1e .. :try_end_21} :catch_22

    goto :goto_1a

    :catch_22
    move-exception v4

    goto :goto_1a

    :cond_24
    :try_start_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_2f

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    iget-boolean v4, v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PkgSizeObserver;->result:Z

    if-eqz v4, :cond_2e

    iget-object v1, v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PkgSizeObserver;->mPkgStats:Landroid/content/pm/PackageStats;

    :cond_2e
    return-object v1

    :catchall_2f
    move-exception v4

    :try_start_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    :try_start_31
    throw v4
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_32

    :catchall_32
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    iget-boolean v5, v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PkgSizeObserver;->result:Z

    if-eqz v5, :cond_3c

    iget-object v1, v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PkgSizeObserver;->mPkgStats:Landroid/content/pm/PackageStats;

    :cond_3c
    throw v4
.end method

.method public getGrantedPermissions(Ljava/lang/String;)Ljava/util/List;
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1}, Landroid/content/pm/IPackageManager;->getGrantedPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getInstalledWidgetProviders()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x0

    const-string v2, "appwidget"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/appwidget/IAppWidgetService;

    move-result-object v0

    if-eqz v0, :cond_1b

    const/4 v2, 0x1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-interface {v0, v2, v3}, Lcom/android/internal/appwidget/IAppWidgetService;->getInstalledProviders(II)Ljava/util/List;

    move-result-object v1

    :goto_1a
    return-object v1

    :cond_1b
    const/4 v1, 0x0

    goto :goto_1a
.end method

.method public getPkgInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .registers 7

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_13

    :try_start_7
    sget-object v2, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x2000

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_12
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_12} :catch_14

    move-result-object v1

    :cond_13
    :goto_13
    return-object v1

    :catch_14
    move-exception v0

    const-string v2, "PackageManagerAdapter"

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

    goto :goto_13
.end method

.method public getProcessCpuUsage(I)J
    .registers 11

    const-wide/16 v5, 0x0

    iget-object v7, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mProcessStats:Lcom/android/internal/os/ProcessStats;

    invoke-virtual {v7}, Lcom/android/internal/os/ProcessStats;->update()V

    iget-object v7, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mProcessStats:Lcom/android/internal/os/ProcessStats;

    invoke-virtual {v7}, Lcom/android/internal/os/ProcessStats;->countWorkingStats()I

    move-result v0

    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_f
    if-ge v1, v0, :cond_1b

    iget-object v7, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mProcessStats:Lcom/android/internal/os/ProcessStats;

    invoke-virtual {v7, v1}, Lcom/android/internal/os/ProcessStats;->getWorkingStats(I)Lcom/android/internal/os/ProcessStats$Stats;

    move-result-object v2

    iget v7, v2, Lcom/android/internal/os/ProcessStats$Stats;->pid:I

    if-ne v7, p1, :cond_1e

    :cond_1b
    if-nez v2, :cond_21

    :goto_1d
    return-wide v5

    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_21
    iget-object v7, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mProcessStats:Lcom/android/internal/os/ProcessStats;

    invoke-virtual {v7}, Lcom/android/internal/os/ProcessStats;->getLastUserTime()I

    move-result v7

    iget-object v8, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mProcessStats:Lcom/android/internal/os/ProcessStats;

    invoke-virtual {v8}, Lcom/android/internal/os/ProcessStats;->getLastSystemTime()I

    move-result v8

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mProcessStats:Lcom/android/internal/os/ProcessStats;

    invoke-virtual {v8}, Lcom/android/internal/os/ProcessStats;->getLastIrqTime()I

    move-result v8

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mProcessStats:Lcom/android/internal/os/ProcessStats;

    invoke-virtual {v8}, Lcom/android/internal/os/ProcessStats;->getLastIdleTime()I

    move-result v8

    add-int/2addr v7, v8

    int-to-long v3, v7

    cmp-long v5, v3, v5

    if-nez v5, :cond_43

    const-wide/16 v3, 0x1

    :cond_43
    iget v5, v2, Lcom/android/internal/os/ProcessStats$Stats;->rel_utime:I

    iget v6, v2, Lcom/android/internal/os/ProcessStats$Stats;->rel_stime:I

    add-int/2addr v5, v6

    mul-int/lit8 v5, v5, 0x64

    int-to-long v5, v5

    div-long/2addr v5, v3

    goto :goto_1d
.end method

.method public getTopCpuUsageProcesses(IZ)Ljava/util/List;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/AppInfo;",
            ">;"
        }
    .end annotation

    iget-object v11, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mProcessStats:Lcom/android/internal/os/ProcessStats;

    invoke-virtual {v11}, Lcom/android/internal/os/ProcessStats;->update()V

    iget-object v11, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mProcessStats:Lcom/android/internal/os/ProcessStats;

    invoke-virtual {v11}, Lcom/android/internal/os/ProcessStats;->countWorkingStats()I

    move-result v2

    if-lez p1, :cond_f

    if-ge v2, p1, :cond_10

    :cond_f
    move p1, v2

    :cond_10
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iget-object v11, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mProcessStats:Lcom/android/internal/os/ProcessStats;

    invoke-virtual {v11}, Lcom/android/internal/os/ProcessStats;->getLastUserTime()I

    move-result v11

    iget-object v12, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mProcessStats:Lcom/android/internal/os/ProcessStats;

    invoke-virtual {v12}, Lcom/android/internal/os/ProcessStats;->getLastSystemTime()I

    move-result v12

    add-int/2addr v11, v12

    iget-object v12, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mProcessStats:Lcom/android/internal/os/ProcessStats;

    invoke-virtual {v12}, Lcom/android/internal/os/ProcessStats;->getLastIrqTime()I

    move-result v12

    add-int/2addr v11, v12

    iget-object v12, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mProcessStats:Lcom/android/internal/os/ProcessStats;

    invoke-virtual {v12}, Lcom/android/internal/os/ProcessStats;->getLastIdleTime()I

    move-result v12

    add-int/2addr v11, v12

    int-to-long v9, v11

    const-wide/16 v11, 0x0

    cmp-long v11, v9, v11

    if-nez v11, :cond_39

    const-wide/16 v9, 0x1

    :cond_39
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-nez p2, :cond_68

    sget-object v11, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mContext:Landroid/content/Context;

    const-string v12, "activity"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_52
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_68

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v11, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_52

    :cond_68
    const/4 v8, 0x0

    const/4 v3, 0x0

    :goto_6a
    if-ge v3, p1, :cond_9d

    iget-object v11, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mProcessStats:Lcom/android/internal/os/ProcessStats;

    invoke-virtual {v11, v3}, Lcom/android/internal/os/ProcessStats;->getWorkingStats(I)Lcom/android/internal/os/ProcessStats$Stats;

    move-result-object v8

    if-eqz v8, :cond_9a

    if-nez p2, :cond_82

    iget v11, v8, Lcom/android/internal/os/ProcessStats$Stats;->pid:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9a

    :cond_82
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

    :cond_9a
    add-int/lit8 v3, v3, 0x1

    goto :goto_6a

    :cond_9d
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_a4

    :goto_a3
    return-object v7

    :cond_a4
    const/4 v7, 0x0

    goto :goto_a3
.end method

.method public initProcessStats()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mProcessStats:Lcom/android/internal/os/ProcessStats;

    invoke-virtual {v0}, Lcom/android/internal/os/ProcessStats;->init()V

    return-void
.end method

.method public installPackage(Ljava/io/File;I)Ljava/lang/String;
    .registers 7

    const/4 v1, 0x0

    new-instance v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PackageInstallObserver;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PackageInstallObserver;-><init>(Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;)V

    sget-object v2, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v0, p2, v1}, Landroid/content/pm/PackageManager;->installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V

    monitor-enter v0

    :goto_14
    :try_start_14
    iget-boolean v2, v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PackageInstallObserver;->finished:Z
    :try_end_16
    .catchall {:try_start_14 .. :try_end_16} :catchall_29

    if-nez v2, :cond_1e

    :try_start_18
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_29
    .catch Ljava/lang/InterruptedException; {:try_start_18 .. :try_end_1b} :catch_1c

    goto :goto_14

    :catch_1c
    move-exception v2

    goto :goto_14

    :cond_1e
    :try_start_1e
    iget v2, v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PackageInstallObserver;->result:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_27

    iget-object v1, v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PackageInstallObserver;->pkgName:Ljava/lang/String;

    monitor-exit v0

    :goto_26
    return-object v1

    :cond_27
    monitor-exit v0

    goto :goto_26

    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_1e .. :try_end_2b} :catchall_29

    throw v1
.end method

.method public installPackage(Ljava/io/File;Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$InstallationCallback;I)V
    .registers 8

    sget-object v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$1;

    invoke-direct {v2, p0, p2}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$1;-><init>(Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$InstallationCallback;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, p3, v3}, Landroid/content/pm/PackageManager;->installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V

    return-void
.end method

.method public isBackupEnabled()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mBackupManagerService:Landroid/app/backup/IBackupManager;

    if-nez v0, :cond_1d

    const-string v0, "backup"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mBackupManagerService:Landroid/app/backup/IBackupManager;

    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mBackupManagerService:Landroid/app/backup/IBackupManager;

    if-nez v0, :cond_1d

    const-string v0, "PackageManagerAdapter"

    const-string v1, "failed to get backup manager service"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_1c
    return v0

    :cond_1d
    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mBackupManagerService:Landroid/app/backup/IBackupManager;

    invoke-interface {v0}, Landroid/app/backup/IBackupManager;->isBackupEnabled()Z

    move-result v0

    goto :goto_1c
.end method

.method public readAppSizeInfo()Ljava/util/List;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$AppInfoTask;",
            ">;"
        }
    .end annotation

    const-string v11, "PackageManagerAdapter"

    const-string v12, "readAppSizeInfo start"

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v11, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v3

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    :try_start_1b
    new-instance v5, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PkgSizeObserver;

    invoke-direct {v5, p0}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PkgSizeObserver;-><init>(Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;)V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_24
    :goto_24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_73

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-eqz v4, :cond_24

    sget-object v11, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-virtual {v11, v4, v5}, Landroid/content/pm/PackageManager;->getPackageSizeInfo(Ljava/lang/String;Landroid/content/pm/IPackageStatsObserver;)V

    monitor-enter v5
    :try_end_3e
    .catchall {:try_start_1b .. :try_end_3e} :catchall_81
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_3e} :catch_69

    :goto_3e
    :try_start_3e
    iget-boolean v11, v5, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PkgSizeObserver;->finished:Z
    :try_end_40
    .catchall {:try_start_3e .. :try_end_40} :catchall_7e

    if-nez v11, :cond_48

    :try_start_42
    invoke-virtual {v5}, Ljava/lang/Object;->wait()V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_7e
    .catch Ljava/lang/InterruptedException; {:try_start_42 .. :try_end_45} :catch_46

    goto :goto_3e

    :catch_46
    move-exception v11

    goto :goto_3e

    :cond_48
    :try_start_48
    monitor-exit v5
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_7e

    :try_start_49
    iget-boolean v11, v5, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PkgSizeObserver;->result:Z

    if-eqz v11, :cond_24

    iget-object v11, v5, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PkgSizeObserver;->mPkgStats:Landroid/content/pm/PackageStats;

    if-eqz v11, :cond_24

    iget-object v11, v5, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PkgSizeObserver;->mPkgStats:Landroid/content/pm/PackageStats;

    iget-wide v11, v11, Landroid/content/pm/PackageStats;->cacheSize:J

    iget-object v13, v5, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PkgSizeObserver;->mPkgStats:Landroid/content/pm/PackageStats;

    iget-wide v13, v13, Landroid/content/pm/PackageStats;->codeSize:J

    add-long/2addr v11, v13

    iget-object v13, v5, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PkgSizeObserver;->mPkgStats:Landroid/content/pm/PackageStats;

    iget-wide v13, v13, Landroid/content/pm/PackageStats;->dataSize:J

    add-long v7, v11, v13

    new-instance v11, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$AppInfoTask;

    invoke-direct {v11, v4, v7, v8}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$AppInfoTask;-><init>(Ljava/lang/String;J)V

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_68
    .catchall {:try_start_49 .. :try_end_68} :catchall_81
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_68} :catch_69

    goto :goto_24

    :catch_69
    move-exception v0

    :try_start_6a
    const-string v11, "PackageManagerAdapter"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_73
    .catchall {:try_start_6a .. :try_end_73} :catchall_81

    :cond_73
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const-string v11, "PackageManagerAdapter"

    const-string v12, "readAppSizeInfo end"

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v6

    :catchall_7e
    move-exception v11

    :try_start_7f
    monitor-exit v5
    :try_end_80
    .catchall {:try_start_7f .. :try_end_80} :catchall_7e

    :try_start_80
    throw v11
    :try_end_81
    .catchall {:try_start_80 .. :try_end_81} :catchall_81
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_81} :catch_69

    :catchall_81
    move-exception v11

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v11
.end method

.method public restoreApplicationData(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)I
    .registers 15

    const/4 v8, -0x3

    const/4 v7, -0x2

    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->enforceBackupAppPermission()I

    invoke-static {p1}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_19

    invoke-virtual {p0, v6}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getPkgInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

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
    iget-boolean v9, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->isRestoreRunning:Z

    if-nez v9, :cond_2e

    iget-boolean v9, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->isBackupRunning:Z

    if-eqz v9, :cond_30

    iget-object v9, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mCurrentBackupPackage:Ljava/lang/String;

    if-eqz v9, :cond_30

    iget-object v9, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mCurrentBackupPackage:Ljava/lang/String;

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

    iget-object v9, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mRestoreLock:Ljava/lang/Object;

    monitor-enter v9

    :try_start_3f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_75

    move-result-wide v4

    const/4 v10, -0x2

    :try_start_44
    iput v10, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mRestoreReturnCode:I

    iget-object v10, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mBackupManagerService:Landroid/app/backup/IBackupManager;

    if-nez v10, :cond_81

    const-string v10, "backup"

    invoke-static {v10}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v10

    iput-object v10, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mBackupManagerService:Landroid/app/backup/IBackupManager;

    iget-object v10, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mBackupManagerService:Landroid/app/backup/IBackupManager;

    if-nez v10, :cond_81

    const-string v8, "PackageManagerAdapter"

    const-string v10, "failed to get backup manager service"

    invoke-static {v8, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_61
    .catchall {:try_start_44 .. :try_end_61} :catchall_fc
    .catch Ljava/lang/InterruptedException; {:try_start_44 .. :try_end_61} :catch_c9
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_61} :catch_df

    const/4 v8, 0x0

    :try_start_62
    iput-boolean v8, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->isRestoreRunning:Z

    new-instance v2, Landroid/content/Intent;

    const-string v8, "edm.intent.action.backup.service.available"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v8, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mContext:Landroid/content/Context;

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

    const-string v8, "PackageManagerAdapter"

    const-string v9, "can\'t read from file descriptor"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_19

    :cond_81
    :try_start_81
    iget-object v10, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mBackupManagerService:Landroid/app/backup/IBackupManager;

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
    iput-boolean v7, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->isRestoreRunning:Z

    new-instance v2, Landroid/content/Intent;

    const-string v7, "edm.intent.action.backup.service.available"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v7, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mContext:Landroid/content/Context;

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
    iput-boolean v8, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->isRestoreRunning:Z

    iput-object v6, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mCurrentRestorePackage:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mBackupManagerService:Landroid/app/backup/IBackupManager;

    invoke-interface {v8, p2}, Landroid/app/backup/IBackupManager;->fullRestore(Landroid/os/ParcelFileDescriptor;)V

    iget-object v8, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mRestoreLock:Ljava/lang/Object;

    const-wide/32 v10, 0x493e0

    invoke-virtual {v8, v10, v11}, Ljava/lang/Object;->wait(J)V
    :try_end_b2
    .catchall {:try_start_a1 .. :try_end_b2} :catchall_fc
    .catch Ljava/lang/InterruptedException; {:try_start_a1 .. :try_end_b2} :catch_c9
    .catch Landroid/os/RemoteException; {:try_start_a1 .. :try_end_b2} :catch_df

    const/4 v7, 0x0

    :try_start_b3
    iput-boolean v7, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->isRestoreRunning:Z

    new-instance v2, Landroid/content/Intent;

    const-string v7, "edm.intent.action.backup.service.available"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v7, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    iget v7, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mRestoreReturnCode:I

    monitor-exit v9

    goto/16 :goto_19

    :catch_c9
    move-exception v0

    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->isRestoreRunning:Z

    new-instance v2, Landroid/content/Intent;

    const-string v8, "edm.intent.action.backup.service.available"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v8, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v9
    :try_end_dd
    .catchall {:try_start_b3 .. :try_end_dd} :catchall_75

    goto/16 :goto_19

    :catch_df
    move-exception v1

    :try_start_e0
    const-string v8, "PackageManagerAdapter"

    const-string v10, "Failed to get backup manager service"

    invoke-static {v8, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e7
    .catchall {:try_start_e0 .. :try_end_e7} :catchall_fc

    const/4 v8, 0x0

    :try_start_e8
    iput-boolean v8, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->isRestoreRunning:Z

    new-instance v2, Landroid/content/Intent;

    const-string v8, "edm.intent.action.backup.service.available"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v8, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v9

    goto/16 :goto_19

    :catchall_fc
    move-exception v7

    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->isRestoreRunning:Z

    new-instance v2, Landroid/content/Intent;

    const-string v8, "edm.intent.action.backup.service.available"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v8, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7
    :try_end_110
    .catchall {:try_start_e8 .. :try_end_110} :catchall_75
.end method

.method public revokeExternalPermissions(Landroid/content/pm/ResolveInfo;Ljava/util/List;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ResolveInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1, p2}, Landroid/content/pm/IPackageManager;->revokeExternalPermissions(Landroid/content/pm/ResolveInfo;Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method public revokePermissionEDM(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1, p2}, Landroid/content/pm/IPackageManager;->revokePermissionEDM(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public rollbackPermission(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1, p2}, Landroid/content/pm/IPackageManager;->rollbackPermission(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public setBackupEnabled(Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mBackupManagerService:Landroid/app/backup/IBackupManager;

    if-nez v0, :cond_1c

    const-string v0, "backup"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mBackupManagerService:Landroid/app/backup/IBackupManager;

    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mBackupManagerService:Landroid/app/backup/IBackupManager;

    if-nez v0, :cond_1c

    const-string v0, "PackageManagerAdapter"

    const-string v1, "failed to get backup manager service"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1b
    return-void

    :cond_1c
    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mBackupManagerService:Landroid/app/backup/IBackupManager;

    invoke-interface {v0, p1}, Landroid/app/backup/IBackupManager;->setBackupEnabled(Z)V

    goto :goto_1b
.end method

.method public setLicensePermissions(Ljava/lang/String;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1}, Landroid/content/pm/IPackageManager;->setLicensePermissions(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public verifyGrantExternalPermissions(Landroid/content/pm/ResolveInfo;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1}, Landroid/content/pm/IPackageManager;->verifyGrantExternalPermissions(Landroid/content/pm/ResolveInfo;)I

    move-result v0

    return v0
.end method
