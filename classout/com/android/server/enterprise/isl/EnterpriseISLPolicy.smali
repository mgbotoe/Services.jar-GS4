.class public Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;
.super Lcom/sec/enterprise/knox/IEnterpriseISLPolicy$Stub;
.source "EnterpriseISLPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$ScanResult;,
        Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;,
        Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$TimaISLCallback;,
        Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$IntegrityObserver;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field private static final DIGEST_TYPE:Ljava/lang/String; = "SHA-256"

.field private static final PARTITION_TO_SCAN:Ljava/lang/String; = "/system"

.field private static TAG:Ljava/lang/String; = null

.field public static final WATCH_EVENTS:I = 0xfc6

.field public static isStopped:Z

.field private static mFilesCount:I

.field private static mProgress:I


# instance fields
.field private ISL_BIND_ACTION:Ljava/lang/String;

.field private final TIMA_SERVICE:Ljava/lang/String;

.field cISAConnect:Landroid/content/ServiceConnection;

.field private mAdminUid:I

.field private mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmIntegrityStorageProvider;

.field private mISAInterface:Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;

.field private mSubcriber:Lcom/sec/enterprise/knox/IIntegrityResultSubscriber;

.field private mSystemBinObserver:Landroid/os/FileObserver;

.field private mSystemFmwrkObserver:Landroid/os/FileObserver;

.field private mSystemXbinObserver:Landroid/os/FileObserver;

.field private final mTimaService:Landroid/service/tima/ITimaService;


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
    sput-boolean v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    const-string v0, "EnterpriseISLPolicy Service"

    sput-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    sput v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mFilesCount:I

    const/4 v0, -0x1

    sput v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mProgress:I

    sput-boolean v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->isStopped:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/sec/enterprise/knox/IEnterpriseISLPolicy$Stub;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mContext:Landroid/content/Context;

    const-string v0, "com.samsung.android.ISA_BIND_ACTION"

    iput-object v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->ISL_BIND_ACTION:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmIntegrityStorageProvider;

    iput-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mISAInterface:Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;

    iput-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mSubcriber:Lcom/sec/enterprise/knox/IIntegrityResultSubscriber;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mAdminUid:I

    const-string v0, "tima"

    iput-object v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TIMA_SERVICE:Ljava/lang/String;

    new-instance v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$1;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$1;-><init>(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;)V

    iput-object v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->cISAConnect:Landroid/content/ServiceConnection;

    sget-boolean v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v0, :cond_2b

    sget-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v1, "EnterpriseISLPolicy Constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    iput-object p1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/enterprise/storage/EdmIntegrityStorageProvider;

    iget-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmIntegrityStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmIntegrityStorageProvider;

    const-string v0, "tima"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/tima/ITimaService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/tima/ITimaService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mTimaService:Landroid/service/tima/ITimaService;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;)Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;
    .registers 2

    iget-object v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mISAInterface:Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;)Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;
    .registers 2

    iput-object p1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mISAInterface:Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;

    return-object p1
.end method

.method static synthetic access$100()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;)Lcom/android/server/enterprise/storage/EdmIntegrityStorageProvider;
    .registers 2

    iget-object v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmIntegrityStorageProvider;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;)Lcom/sec/enterprise/knox/IIntegrityResultSubscriber;
    .registers 2

    iget-object v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mSubcriber:Lcom/sec/enterprise/knox/IIntegrityResultSubscriber;

    return-object v0
.end method

.method static synthetic access$400()I
    .registers 1

    sget v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mFilesCount:I

    return v0
.end method

.method static synthetic access$402(I)I
    .registers 1

    sput p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mFilesCount:I

    return p0
.end method

.method static synthetic access$404()I
    .registers 1

    sget v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mFilesCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mFilesCount:I

    return v0
.end method

.method static synthetic access$800()I
    .registers 1

    sget v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mProgress:I

    return v0
.end method

.method static synthetic access$802(I)I
    .registers 1

    sput p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mProgress:I

    return p0
.end method

.method static synthetic access$900(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;)I
    .registers 2

    iget v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mAdminUid:I

    return v0
.end method

.method private enforceEnterpriseISLPermission()I
    .registers 3

    invoke-direct {p0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_ENTERPRISE_ISL"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .registers 3

    iget-object v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    :cond_10
    iget-object v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method


# virtual methods
.method public clearBaseline()Z
    .registers 4

    sget-boolean v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v1, :cond_b

    sget-object v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v2, "in clearBaseline"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    invoke-direct {p0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->enforceEnterpriseISLPermission()I

    move-result v1

    iput v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mAdminUid:I

    iget-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mISAInterface:Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;

    if-eqz v1, :cond_33

    :try_start_15
    iget-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mISAInterface:Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;

    invoke-interface {v1}, Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;->clearBaseline()Z
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1a} :catch_1c
    .catch Ljava/lang/NullPointerException; {:try_start_15 .. :try_end_1a} :catch_28

    move-result v1

    :goto_1b
    return v1

    :catch_1c
    move-exception v0

    sget-object v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    :goto_26
    const/4 v1, 0x0

    goto :goto_1b

    :catch_28
    move-exception v0

    sget-object v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26

    :cond_33
    sget-boolean v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v1, :cond_26

    sget-object v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v2, "clearBaseline - ISA interface is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26
.end method

.method public convertEventToString(I)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_1e

    :goto_4
    return-object v0

    :sswitch_5
    const-string v0, "Attribute modified"

    goto :goto_4

    :sswitch_8
    const-string v0, "File modified"

    goto :goto_4

    :sswitch_b
    const-string v0, "File or subdirectory moved from"

    goto :goto_4

    :sswitch_e
    const-string v0, "File or subdirectory moved to"

    goto :goto_4

    :sswitch_11
    const-string v0, "New file or subdirectory created"

    goto :goto_4

    :sswitch_14
    const-string v0, "File deleted"

    goto :goto_4

    :sswitch_17
    const-string v0, "Deleted Self"

    goto :goto_4

    :sswitch_1a
    const-string v0, "Moved Self"

    goto :goto_4

    nop

    :sswitch_data_1e
    .sparse-switch
        0x2 -> :sswitch_8
        0x4 -> :sswitch_5
        0x40 -> :sswitch_b
        0x80 -> :sswitch_e
        0x100 -> :sswitch_11
        0x200 -> :sswitch_14
        0x400 -> :sswitch_17
        0x800 -> :sswitch_1a
    .end sparse-switch
.end method

.method public establishBaselineScan(Z)Z
    .registers 5

    sget-boolean v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v1, :cond_b

    sget-object v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v2, "in establishBaselineScan"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    invoke-direct {p0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->enforceEnterpriseISLPermission()I

    move-result v1

    iput v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mAdminUid:I

    iget-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mISAInterface:Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;

    if-eqz v1, :cond_33

    :try_start_15
    iget-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mISAInterface:Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;

    invoke-interface {v1, p1}, Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;->establishBaselineScan(Z)Z
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1a} :catch_1c
    .catch Ljava/lang/NullPointerException; {:try_start_15 .. :try_end_1a} :catch_28

    move-result v1

    :goto_1b
    return v1

    :catch_1c
    move-exception v0

    sget-object v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    :goto_26
    const/4 v1, 0x0

    goto :goto_1b

    :catch_28
    move-exception v0

    sget-object v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26

    :cond_33
    sget-boolean v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v1, :cond_26

    sget-object v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v2, "establishBaselineScan - ISA interface is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26
.end method

.method public isISAReady()Z
    .registers 3

    sget-boolean v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v0, :cond_b

    sget-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v1, "in isISAReady"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    invoke-direct {p0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->enforceEnterpriseISLPermission()I

    iget-object v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mISAInterface:Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public onAdminAdded(I)V
    .registers 2

    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 2

    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 2

    return-void
.end method

.method public performPreBaselineScan()Z
    .registers 4

    sget-boolean v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v1, :cond_b

    sget-object v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v2, "in performPreBaselineScan"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    invoke-direct {p0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->enforceEnterpriseISLPermission()I

    move-result v1

    iput v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mAdminUid:I

    iget-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mISAInterface:Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;

    if-eqz v1, :cond_33

    :try_start_15
    iget-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mISAInterface:Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;

    invoke-interface {v1}, Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;->performPreBaselineScan()Z
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1a} :catch_1c
    .catch Ljava/lang/NullPointerException; {:try_start_15 .. :try_end_1a} :catch_28

    move-result v1

    :goto_1b
    return v1

    :catch_1c
    move-exception v0

    sget-object v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    :goto_26
    const/4 v1, 0x0

    goto :goto_1b

    :catch_28
    move-exception v0

    sget-object v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26

    :cond_33
    sget-boolean v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v1, :cond_26

    sget-object v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v2, "performPreBaselineScan - ISA interface is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26
.end method

.method public performScanNow(ILjava/util/List;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v1, 0x0

    sget-boolean v2, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v2, :cond_c

    sget-object v2, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v3, "in performScanNow"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    invoke-direct {p0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->enforceEnterpriseISLPermission()I

    move-result v2

    iput v2, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mAdminUid:I

    sput v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mFilesCount:I

    const/4 v2, -0x1

    sput v2, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mProgress:I

    iget-object v2, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mISAInterface:Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;

    if-eqz v2, :cond_38

    :try_start_1b
    iget-object v2, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mISAInterface:Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;

    invoke-interface {v2, p1, p2}, Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;->performScanNow(ILjava/util/List;)Z
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_20} :catch_22
    .catch Ljava/lang/NullPointerException; {:try_start_1b .. :try_end_20} :catch_2d

    move-result v1

    :cond_21
    :goto_21
    return v1

    :catch_22
    move-exception v0

    sget-object v2, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21

    :catch_2d
    move-exception v0

    sget-object v2, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21

    :cond_38
    sget-boolean v2, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v2, :cond_21

    sget-object v2, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v3, "performScanNow - ISA interface is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21
.end method

.method public putPackageToBaseline(Ljava/lang/String;)Z
    .registers 5

    sget-boolean v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v1, :cond_b

    sget-object v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v2, "in putPackageToBaseline"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    invoke-direct {p0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->enforceEnterpriseISLPermission()I

    move-result v1

    iput v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mAdminUid:I

    iget-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mISAInterface:Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;

    if-eqz v1, :cond_33

    :try_start_15
    iget-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mISAInterface:Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;

    invoke-interface {v1, p1}, Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;->putPackageToBaseline(Ljava/lang/String;)Z
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1a} :catch_1c
    .catch Ljava/lang/NullPointerException; {:try_start_15 .. :try_end_1a} :catch_28

    move-result v1

    :goto_1b
    return v1

    :catch_1c
    move-exception v0

    sget-object v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    :goto_26
    const/4 v1, 0x0

    goto :goto_1b

    :catch_28
    move-exception v0

    sget-object v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26

    :cond_33
    sget-boolean v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v1, :cond_26

    sget-object v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v2, "putPackageToBaseline - ISA interface is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26
.end method

.method public removePackageFromBaseline(Ljava/lang/String;)Z
    .registers 5

    sget-boolean v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v1, :cond_b

    sget-object v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v2, "in removePackageFromBaseline"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    invoke-direct {p0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->enforceEnterpriseISLPermission()I

    move-result v1

    iput v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mAdminUid:I

    iget-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mISAInterface:Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;

    if-eqz v1, :cond_33

    :try_start_15
    iget-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mISAInterface:Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;

    invoke-interface {v1, p1}, Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;->removePackageFromBaseline(Ljava/lang/String;)Z
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1a} :catch_1c
    .catch Ljava/lang/NullPointerException; {:try_start_15 .. :try_end_1a} :catch_28

    move-result v1

    :goto_1b
    return v1

    :catch_1c
    move-exception v0

    sget-object v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    :goto_26
    const/4 v1, 0x0

    goto :goto_1b

    :catch_28
    move-exception v0

    sget-object v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26

    :cond_33
    sget-boolean v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v1, :cond_26

    sget-object v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v2, "removePackageFromBaseline - ISA interface is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26
.end method

.method public requestBindISA(Ljava/lang/String;)Z
    .registers 15

    const/4 v6, 0x0

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_16

    :cond_9
    sget-boolean v10, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v10, :cond_14

    sget-object v10, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v11, "requestBindISA - packageName is null or empty"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    move v7, v6

    :goto_15
    return v7

    :cond_16
    sget-boolean v10, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v10, :cond_32

    sget-object v10, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "in requestBindISA - packageName is -- "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_32
    invoke-direct {p0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->enforceEnterpriseISLPermission()I

    iget-object v10, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    new-instance v1, Landroid/content/Intent;

    iget-object v10, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->ISL_BIND_ACTION:Ljava/lang/String;

    invoke-direct {v1, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v10, 0x0

    invoke-virtual {v4, v1, v10}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_10d

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_51
    :goto_51
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_fd

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v8, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    sget-boolean v10, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v10, :cond_99

    sget-object v10, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "requestBindISA - Package  Name -- "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v8, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v12, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v10, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "requestBindISA - Service  Name -- "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v8, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_99
    iget-object v10, v8, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_51

    new-instance v2, Landroid/content/ComponentName;

    iget-object v10, v8, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v11, v8, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_100

    sget-boolean v10, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v10, :cond_ec

    sget-object v10, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Comp Name -- "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v10, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Comp Class -- "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ec
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v10, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->cISAConnect:Landroid/content/ServiceConnection;

    const/4 v12, 0x1

    invoke-virtual {v10, v0, v11, v12}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    const/4 v6, 0x1

    :cond_fd
    :goto_fd
    move v7, v6

    goto/16 :goto_15

    :cond_100
    sget-boolean v10, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v10, :cond_51

    sget-object v10, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v11, "requestBindISA - ComponentName is null"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_51

    :cond_10d
    sget-boolean v10, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v10, :cond_fd

    sget-object v10, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v11, "requestBindISA - No package found with ISL intent"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_fd
.end method

.method public setISLCallBack()V
    .registers 4

    sget-boolean v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v1, :cond_b

    sget-object v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v2, "in setISLCallBack"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    iget-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mISAInterface:Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;

    if-eqz v1, :cond_3b

    :try_start_f
    iget-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mISAInterface:Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;

    new-instance v2, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;

    invoke-direct {v2, p0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseIntegrityServiceAgentCallback;-><init>(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;)V

    invoke-interface {v1, v2}, Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;->setISLCallBack(Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentCallback;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_19} :catch_1a
    .catch Ljava/lang/SecurityException; {:try_start_f .. :try_end_19} :catch_25
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_19} :catch_30

    :cond_19
    :goto_19
    return-void

    :catch_1a
    move-exception v0

    sget-object v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19

    :catch_25
    move-exception v0

    sget-object v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19

    :catch_30
    move-exception v0

    sget-object v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19

    :cond_3b
    sget-boolean v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v1, :cond_19

    sget-object v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v2, "setISLCallBack - ISA interface is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19
.end method

.method public setIntegrityResultSubscriber(Lcom/sec/enterprise/knox/IIntegrityResultSubscriber;)V
    .registers 5

    sget-boolean v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v1, :cond_b

    sget-object v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v2, "in setIntegrityResultSubscriber"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    invoke-direct {p0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->enforceEnterpriseISLPermission()I

    iput-object p1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mSubcriber:Lcom/sec/enterprise/knox/IIntegrityResultSubscriber;

    iget-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mTimaService:Landroid/service/tima/ITimaService;

    if-eqz v1, :cond_29

    :try_start_14
    iget-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mTimaService:Landroid/service/tima/ITimaService;

    new-instance v2, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$TimaISLCallback;

    invoke-direct {v2, p0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$TimaISLCallback;-><init>(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;)V

    invoke-interface {v1, v2}, Landroid/service/tima/ITimaService;->setISLCallback(Landroid/service/tima/ITimaISLCallback;)V

    sget-boolean v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v1, :cond_29

    sget-object v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v2, "call back registered with TIMA"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_29} :catch_2a

    :cond_29
    :goto_29
    return-void

    :catch_2a
    move-exception v0

    sget-object v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29
.end method

.method public startRuntimeWatch()Z
    .registers 4

    const/16 v2, 0xfc6

    sget-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v1, "in startRuntimeWatch"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->enforceEnterpriseISLPermission()I

    move-result v0

    iput v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mAdminUid:I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->isStopped:Z

    iget-object v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mSystemBinObserver:Landroid/os/FileObserver;

    if-eqz v0, :cond_35

    sget-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v1, "System bin is already being watched"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1d
    iget-object v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mSystemXbinObserver:Landroid/os/FileObserver;

    if-eqz v0, :cond_44

    sget-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v1, "System xbin is already being watched"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_28
    iget-object v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mSystemFmwrkObserver:Landroid/os/FileObserver;

    if-eqz v0, :cond_53

    sget-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v1, "System framework is already being watched"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_33
    const/4 v0, 0x1

    return v0

    :cond_35
    new-instance v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$IntegrityObserver;

    const-string v1, "/system/bin/"

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$IntegrityObserver;-><init>(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mSystemBinObserver:Landroid/os/FileObserver;

    iget-object v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mSystemBinObserver:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->startWatching()V

    goto :goto_1d

    :cond_44
    new-instance v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$IntegrityObserver;

    const-string v1, "/system/xbin/"

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$IntegrityObserver;-><init>(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mSystemXbinObserver:Landroid/os/FileObserver;

    iget-object v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mSystemXbinObserver:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->startWatching()V

    goto :goto_28

    :cond_53
    new-instance v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$IntegrityObserver;

    const-string v1, "/system/framework/"

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$IntegrityObserver;-><init>(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mSystemFmwrkObserver:Landroid/os/FileObserver;

    iget-object v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mSystemFmwrkObserver:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->startWatching()V

    goto :goto_33
.end method

.method public stopRuntimeWatch()Z
    .registers 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    sget-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v1, "in stopRuntimeWatch"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->enforceEnterpriseISLPermission()I

    move-result v0

    iput v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mAdminUid:I

    sput-boolean v3, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->isStopped:Z

    iget-object v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mSystemBinObserver:Landroid/os/FileObserver;

    if-eqz v0, :cond_23

    sget-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Stopping system bin watcher"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mSystemBinObserver:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->stopWatching()V

    iput-object v2, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mSystemBinObserver:Landroid/os/FileObserver;

    :cond_23
    iget-object v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mSystemXbinObserver:Landroid/os/FileObserver;

    if-eqz v0, :cond_35

    sget-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Stopping system xbin watcher"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mSystemXbinObserver:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->stopWatching()V

    iput-object v2, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mSystemXbinObserver:Landroid/os/FileObserver;

    :cond_35
    iget-object v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mSystemFmwrkObserver:Landroid/os/FileObserver;

    if-eqz v0, :cond_47

    sget-object v0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Stopping system framework watcher"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mSystemFmwrkObserver:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->stopWatching()V

    iput-object v2, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mSystemFmwrkObserver:Landroid/os/FileObserver;

    :cond_47
    return v3
.end method

.method public systemReady()V
    .registers 1

    return-void
.end method

.method public updatePlatformBaseline()Z
    .registers 4

    sget-boolean v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v1, :cond_b

    sget-object v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v2, "in updatePlatformBaseline"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    invoke-direct {p0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->enforceEnterpriseISLPermission()I

    move-result v1

    iput v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mAdminUid:I

    iget-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mISAInterface:Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;

    if-eqz v1, :cond_33

    :try_start_15
    iget-object v1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->mISAInterface:Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;

    invoke-interface {v1}, Lcom/sec/enterprise/knox/IEnterpriseIntegrityServiceAgentInterface;->updatePlatformBaseline()Z
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1a} :catch_1c
    .catch Ljava/lang/NullPointerException; {:try_start_15 .. :try_end_1a} :catch_28

    move-result v1

    :goto_1b
    return v1

    :catch_1c
    move-exception v0

    sget-object v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    :goto_26
    const/4 v1, 0x0

    goto :goto_1b

    :catch_28
    move-exception v0

    sget-object v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26

    :cond_33
    sget-boolean v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->DBG:Z

    if-eqz v1, :cond_26

    sget-object v1, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->TAG:Ljava/lang/String;

    const-string v2, "updatePlatformBaseline - ISA interface is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26
.end method
