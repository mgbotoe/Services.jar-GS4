.class public Lcom/android/server/analytics/data/collection/adapterlayer/PackageManagerAdapter;
.super Ljava/lang/Object;
.source "PackageManagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/analytics/data/collection/adapterlayer/PackageManagerAdapter$MyPackageMonitor;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PackageManagerAdapter"

.field private static mContext:Landroid/content/Context;

.field private static mIPackageManager:Landroid/content/pm/IPackageManager;

.field private static mInstance:Lcom/android/server/analytics/data/collection/adapterlayer/PackageManagerAdapter;


# instance fields
.field private final mProcessStats:Lcom/android/internal/os/ProcessStats;


# direct methods
.method private constructor <init>()V
    .registers 3

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/internal/os/ProcessStats;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/os/ProcessStats;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/analytics/data/collection/adapterlayer/PackageManagerAdapter;->mProcessStats:Lcom/android/internal/os/ProcessStats;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/analytics/data/collection/adapterlayer/PackageManagerAdapter;
    .registers 3

    const-class v1, Lcom/android/server/analytics/data/collection/adapterlayer/PackageManagerAdapter;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/android/server/analytics/data/collection/adapterlayer/PackageManagerAdapter;->mInstance:Lcom/android/server/analytics/data/collection/adapterlayer/PackageManagerAdapter;

    if-nez v0, :cond_1c

    sput-object p0, Lcom/android/server/analytics/data/collection/adapterlayer/PackageManagerAdapter;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/analytics/data/collection/adapterlayer/PackageManagerAdapter;

    invoke-direct {v0}, Lcom/android/server/analytics/data/collection/adapterlayer/PackageManagerAdapter;-><init>()V

    sput-object v0, Lcom/android/server/analytics/data/collection/adapterlayer/PackageManagerAdapter;->mInstance:Lcom/android/server/analytics/data/collection/adapterlayer/PackageManagerAdapter;

    const-string v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    sput-object v0, Lcom/android/server/analytics/data/collection/adapterlayer/PackageManagerAdapter;->mIPackageManager:Landroid/content/pm/IPackageManager;

    :cond_1c
    sget-object v0, Lcom/android/server/analytics/data/collection/adapterlayer/PackageManagerAdapter;->mInstance:Lcom/android/server/analytics/data/collection/adapterlayer/PackageManagerAdapter;
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_20

    monitor-exit v1

    return-object v0

    :catchall_20
    move-exception v0

    monitor-exit v1

    throw v0
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

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method


# virtual methods
.method public getProcessCpuUsage(I)J
    .registers 11

    const-wide/16 v5, 0x0

    iget-object v7, p0, Lcom/android/server/analytics/data/collection/adapterlayer/PackageManagerAdapter;->mProcessStats:Lcom/android/internal/os/ProcessStats;

    invoke-virtual {v7}, Lcom/android/internal/os/ProcessStats;->update()V

    iget-object v7, p0, Lcom/android/server/analytics/data/collection/adapterlayer/PackageManagerAdapter;->mProcessStats:Lcom/android/internal/os/ProcessStats;

    invoke-virtual {v7}, Lcom/android/internal/os/ProcessStats;->countWorkingStats()I

    move-result v0

    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_f
    if-ge v1, v0, :cond_1b

    iget-object v7, p0, Lcom/android/server/analytics/data/collection/adapterlayer/PackageManagerAdapter;->mProcessStats:Lcom/android/internal/os/ProcessStats;

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
    iget-object v7, p0, Lcom/android/server/analytics/data/collection/adapterlayer/PackageManagerAdapter;->mProcessStats:Lcom/android/internal/os/ProcessStats;

    invoke-virtual {v7}, Lcom/android/internal/os/ProcessStats;->getLastUserTime()I

    move-result v7

    iget-object v8, p0, Lcom/android/server/analytics/data/collection/adapterlayer/PackageManagerAdapter;->mProcessStats:Lcom/android/internal/os/ProcessStats;

    invoke-virtual {v8}, Lcom/android/internal/os/ProcessStats;->getLastSystemTime()I

    move-result v8

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/android/server/analytics/data/collection/adapterlayer/PackageManagerAdapter;->mProcessStats:Lcom/android/internal/os/ProcessStats;

    invoke-virtual {v8}, Lcom/android/internal/os/ProcessStats;->getLastIrqTime()I

    move-result v8

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/android/server/analytics/data/collection/adapterlayer/PackageManagerAdapter;->mProcessStats:Lcom/android/internal/os/ProcessStats;

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

.method public initProcessStats()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/analytics/data/collection/adapterlayer/PackageManagerAdapter;->mProcessStats:Lcom/android/internal/os/ProcessStats;

    invoke-virtual {v0}, Lcom/android/internal/os/ProcessStats;->init()V

    return-void
.end method
