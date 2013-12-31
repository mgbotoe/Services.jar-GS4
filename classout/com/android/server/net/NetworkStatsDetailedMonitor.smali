.class public Lcom/android/server/net/NetworkStatsDetailedMonitor;
.super Ljava/lang/Object;
.source "NetworkStatsDetailedMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/net/NetworkStatsDetailedMonitor$NetStatsMonitorThread;,
        Lcom/android/server/net/NetworkStatsDetailedMonitor$UidDetail;
    }
.end annotation


# static fields
.field private static final CONTROLFILE_DIR:Ljava/lang/String; = "/data/monitor"

.field private static final CONTROLFILE_NAME1:Ljava/lang/String; = "network.1"

.field private static final CONTROLFILE_NAME2:Ljava/lang/String; = "monitor.1"

.field private static final DEBUG_LEVEL_HIGH:I = 0x4948

.field private static final DEBUG_LEVEL_LOW:I = 0x4f4c

.field private static final DEBUG_LEVEL_MID:I = 0x494d

.field private static DEBUG_LOG:Z = false

.field private static final PREFIX_DEV:Ljava/lang/String; = "ex_dev"

.field private static final PREFIX_EXPORT_DEV:Ljava/lang/String; = "netstats_dev."

.field private static final PREFIX_EXPORT_IF:Ljava/lang/String; = "netstats_if."

.field private static final PREFIX_EXPORT_UID:Ljava/lang/String; = "netstats_uids."

.field private static final PREFIX_EXPORT_UID_APP:Ljava/lang/String; = "netstats_uidapp."

.field private static final PREFIX_EXPORT_UID_TAG:Ljava/lang/String; = "netstats_uid_tag."

.field private static final PREFIX_EXPORT_XT:Ljava/lang/String; = "netstats_xt."

.field private static final PREFIX_IF:Ljava/lang/String; = "ex_if"

.field private static final PREFIX_UID:Ljava/lang/String; = "ex_uid"

.field private static final PREFIX_UID_APP:Ljava/lang/String; = "ex_uidapp"

.field private static final PREFIX_UID_TAG:Ljava/lang/String; = "ex_uid_tag"

.field private static final PREFIX_XT:Ljava/lang/String; = "ex_xt"

.field private static final SETTING_END_TIME:Ljava/lang/String; = "monitor_network_usage_end_time"

.field private static final SETTING_INTENT:Ljava/lang/String; = "action.NETWORK_MONITOR"

.field private static final SETTING_PERMISSION:Ljava/lang/String; = "com.samsung.android.permission.AUTHORISED_FOR_NETWORK_WAKELOCK_MONITORING"

.field private static final SETTING_SAMPLING_RATE:Ljava/lang/String; = "monitor_network_usage_sampling_rate"

.field private static final SETTING_START_TIME:Ljava/lang/String; = "monitor_network_usage_start_time"

.field private static final TAG:Ljava/lang/String; = "NetworkStatsEx"

.field static enabled_by_file:Z

.field private static mConfigBucketSize:J

.field private static mConfigRemoveFileTime:J

.field private static mConfigRotateFileTime:J


# instance fields
.field private mBaseDir:Ljava/io/File;

.field private final mContext:Landroid/content/Context;

.field private mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

.field private mLastPollTime:J

.field private mMonitorEndTime:J

.field private mMonitorStartTime:J

.field private mNetStatsMonitorThread:Lcom/android/server/net/NetworkStatsDetailedMonitor$NetStatsMonitorThread;

.field private final mNetworkManager:Landroid/os/INetworkManagementService;

.field private final mNonMonotonicObserver:Landroid/net/NetworkStats$NonMonotonicObserver;

.field private mPersistThreshold:J

.field private mPollInterval:J

.field private mReceiverMonitoringSetting:Landroid/content/BroadcastReceiver;

.field private final mServiceNetStats:Lcom/android/server/net/NetworkStatsService;

.field private final mStatsLock:Ljava/lang/Object;

.field private mUidNameMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/net/NetworkStatsDetailedMonitor$UidDetail;",
            ">;"
        }
    .end annotation
.end field

.field private mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

.field private mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide/32 v3, 0x5265c00

    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/server/net/NetworkStatsDetailedMonitor;->DEBUG_LOG:Z

    const/4 v0, 0x2

    invoke-static {}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->getDebugLevel()I

    move-result v1

    if-ne v0, v1, :cond_1b

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->DEBUG_LOG:Z

    :goto_10
    const-wide/16 v0, 0x3e8

    sput-wide v0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mConfigBucketSize:J

    sput-wide v3, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mConfigRotateFileTime:J

    sput-wide v3, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mConfigRemoveFileTime:J

    sput-boolean v2, Lcom/android/server/net/NetworkStatsDetailedMonitor;->enabled_by_file:Z

    return-void

    :cond_1b
    sput-boolean v2, Lcom/android/server/net/NetworkStatsDetailedMonitor;->DEBUG_LOG:Z

    goto :goto_10
.end method

.method public constructor <init>(Lcom/android/server/net/NetworkStatsService;Landroid/content/Context;Landroid/os/INetworkManagementService;Ljava/lang/Object;Landroid/os/PowerManager$WakeLock;Landroid/net/NetworkStats$NonMonotonicObserver;)V
    .registers 12

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mUidNameMap:Ljava/util/HashMap;

    iput-object v2, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mNetStatsMonitorThread:Lcom/android/server/net/NetworkStatsDetailedMonitor$NetStatsMonitorThread;

    const-wide/16 v0, 0x400

    iput-wide v0, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mPersistThreshold:J

    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mPollInterval:J

    iput-wide v3, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mLastPollTime:J

    iput-wide v3, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mMonitorStartTime:J

    iput-wide v3, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mMonitorEndTime:J

    iput-object v2, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mBaseDir:Ljava/io/File;

    new-instance v0, Lcom/android/server/net/NetworkStatsDetailedMonitor$1;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkStatsDetailedMonitor$1;-><init>(Lcom/android/server/net/NetworkStatsDetailedMonitor;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mReceiverMonitoringSetting:Landroid/content/BroadcastReceiver;

    const-string v0, "NetworkStatsEx"

    const-string v1, "(xxxz) NSS>> NetworkStatsDetailedMonitor: Begin..."

    invoke-static {v0, v1}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mServiceNetStats:Lcom/android/server/net/NetworkStatsService;

    iput-object p2, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mNetworkManager:Landroid/os/INetworkManagementService;

    iput-object p4, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mStatsLock:Ljava/lang/Object;

    iput-object p5, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iput-object p6, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mNonMonotonicObserver:Landroid/net/NetworkStats$NonMonotonicObserver;

    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->getOrCreateMonitorDir()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mBaseDir:Ljava/io/File;

    const-string v0, "NetworkStatsEx"

    const-string v1, "(xxxz) NSS>> NetworkStatsDetailedMonitor: End!"

    invoke-static {v0, v1}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static LogI(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    sget-boolean v0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->DEBUG_LOG:Z

    if-eqz v0, :cond_7

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/net/NetworkStatsDetailedMonitor;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/net/NetworkStatsDetailedMonitor;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mLastPollTime:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/android/server/net/NetworkStatsDetailedMonitor;IZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->performPoll(IZ)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/net/NetworkStatsDetailedMonitor;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->checkShipAndDebugLevel()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/net/NetworkStatsDetailedMonitor;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->disable(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/net/NetworkStatsDetailedMonitor;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->setSamplingRateFromSetting(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/net/NetworkStatsDetailedMonitor;JZ)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->enable(JZ)V

    return-void
.end method

.method private buildRecorder(Ljava/lang/String;Z)Lcom/android/server/net/NetworkStatsRecorder;
    .registers 15

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mContext:Landroid/content/Context;

    const-string v1, "dropbox"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/DropBoxManager;

    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->getConfig()Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;

    move-result-object v9

    new-instance v11, Lcom/android/server/net/NetworkStatsRecorder;

    new-instance v0, Lcom/android/internal/util/FileRotator;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mBaseDir:Ljava/io/File;

    iget-wide v3, v9, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;->rotateAgeMillis:J

    iget-wide v5, v9, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;->deleteAgeMillis:J

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/util/FileRotator;-><init>(Ljava/io/File;Ljava/lang/String;JJ)V

    iget-object v3, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mNonMonotonicObserver:Landroid/net/NetworkStats$NonMonotonicObserver;

    iget-wide v6, v9, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;->bucketDuration:J

    move-object v1, v11

    move-object v2, v0

    move-object v4, v10

    move-object v5, p1

    move v8, p2

    invoke-direct/range {v1 .. v8}, Lcom/android/server/net/NetworkStatsRecorder;-><init>(Lcom/android/internal/util/FileRotator;Landroid/net/NetworkStats$NonMonotonicObserver;Landroid/os/DropBoxManager;Ljava/lang/String;JZ)V

    return-object v11
.end method

.method private checkControlFile()Z
    .registers 6

    new-instance v1, Ljava/io/File;

    const-string v2, "/data/monitor"

    const-string v3, "network.1"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    const-string v2, "NetworkStatsEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(xxxz) NSS>> checkControlFile: file="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", exist="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_68

    new-instance v1, Ljava/io/File;

    const-string v2, "/data/monitor"

    const-string v3, "monitor.1"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    const-string v2, "NetworkStatsEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(xxxz) NSS>> checkControlFile: file="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", exist="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    :cond_68
    return v0
.end method

.method private checkShipAndDebugLevel()Z
    .registers 8

    const/4 v3, 0x1

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v2

    invoke-static {}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->getDebugLevel()I

    move-result v0

    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->checkControlFile()Z

    move-result v4

    sput-boolean v4, Lcom/android/server/net/NetworkStatsDetailedMonitor;->enabled_by_file:Z

    sget-boolean v4, Lcom/android/server/net/NetworkStatsDetailedMonitor;->enabled_by_file:Z

    if-eqz v4, :cond_5b

    if-eq v2, v3, :cond_5b

    if-ltz v0, :cond_5b

    move v1, v3

    :goto_18
    const-string v4, "NetworkStatsEx"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "(xxxz) NSS>> checkShipAndDebugLevel: enabled_by_file="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/android/server/net/NetworkStatsDetailedMonitor;->enabled_by_file:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", ship="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", level="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", SecProductFeature="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", ok="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_5b
    const/4 v1, 0x0

    goto :goto_18
.end method

.method private copyFile(Ljava/io/File;Ljava/io/File;)Z
    .registers 14

    const/4 v7, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x0

    :try_start_3
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_66
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_8} :catch_85

    :try_start_8
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_7e
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_d} :catch_87

    const/16 v8, 0x400

    :try_start_f
    new-array v0, v8, [B

    :goto_11
    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_58

    const/4 v8, 0x0

    invoke-virtual {v6, v0, v8, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_81
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_1b} :catch_1c

    goto :goto_11

    :catch_1c
    move-exception v1

    move-object v5, v6

    move-object v2, v3

    :goto_1f
    :try_start_1f
    const-string v8, "NetworkStatsEx"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "(xxxz) NSS>> copyFile: Error-> failed to copy "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4c
    .catchall {:try_start_1f .. :try_end_4c} :catchall_66

    const/4 v7, 0x0

    if-eqz v5, :cond_52

    :try_start_4f
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_52} :catch_76

    :cond_52
    :goto_52
    if-eqz v2, :cond_57

    :try_start_54
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_57} :catch_78

    :cond_57
    :goto_57
    return v7

    :cond_58
    const/4 v7, 0x1

    if-eqz v6, :cond_5e

    :try_start_5b
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_5e} :catch_7a

    :cond_5e
    :goto_5e
    if-eqz v3, :cond_63

    :try_start_60
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_63} :catch_7c

    :cond_63
    :goto_63
    move-object v5, v6

    move-object v2, v3

    goto :goto_57

    :catchall_66
    move-exception v8

    :goto_67
    if-eqz v5, :cond_6c

    :try_start_69
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_6c} :catch_72

    :cond_6c
    :goto_6c
    if-eqz v2, :cond_71

    :try_start_6e
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_71} :catch_74

    :cond_71
    :goto_71
    throw v8

    :catch_72
    move-exception v9

    goto :goto_6c

    :catch_74
    move-exception v9

    goto :goto_71

    :catch_76
    move-exception v8

    goto :goto_52

    :catch_78
    move-exception v8

    goto :goto_57

    :catch_7a
    move-exception v8

    goto :goto_5e

    :catch_7c
    move-exception v8

    goto :goto_63

    :catchall_7e
    move-exception v8

    move-object v2, v3

    goto :goto_67

    :catchall_81
    move-exception v8

    move-object v5, v6

    move-object v2, v3

    goto :goto_67

    :catch_85
    move-exception v1

    goto :goto_1f

    :catch_87
    move-exception v1

    move-object v2, v3

    goto :goto_1f
.end method

.method private deleteData()V
    .registers 11

    iget-object v7, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mBaseDir:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    move-object v0, v2

    array-length v4, v0

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v4, :cond_89

    aget-object v1, v0, v3

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v7, "ex_if"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_41

    const-string v7, "ex_dev"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_41

    const-string v7, "ex_xt"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_41

    const-string v7, "ex_uid"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_41

    const-string v7, "ex_uid_tag"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_41

    const-string v7, "ex_uidapp"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_63

    :cond_41
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v6

    if-eqz v6, :cond_66

    const-string v7, "NetworkStatsEx"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "(xxxz) NSS>> deleteData: deleted "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    :cond_63
    :goto_63
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_66
    const-string v7, "NetworkStatsEx"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "(xxxz) NSS>> deleteData: failed to delete "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_63

    :cond_89
    return-void
.end method

.method private deleteExportData()V
    .registers 12

    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->getOrCreateExportDir()Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_e

    const-string v8, "NetworkStatsEx"

    const-string v9, "(xxxz) NSS>> deleteExportData: Warning-> failed to get the export dir!"

    invoke-static {v8, v9}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    return-void

    :cond_e
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    move-object v0, v3

    array-length v5, v0

    const/4 v4, 0x0

    :goto_15
    if-ge v4, v5, :cond_d

    aget-object v2, v0, v4

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v8, "netstats_if."

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4d

    const-string v8, "netstats_dev."

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4d

    const-string v8, "netstats_xt."

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4d

    const-string v8, "netstats_uids."

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4d

    const-string v8, "netstats_uid_tag."

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4d

    const-string v8, "netstats_uidapp."

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6f

    :cond_4d
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v7

    if-eqz v7, :cond_72

    const-string v8, "NetworkStatsEx"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "(xxxz) NSS>> deleteExportData: deleted "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6f
    :goto_6f
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    :cond_72
    const-string v8, "NetworkStatsEx"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "(xxxz) NSS>> deleteExportData: failed to delete "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "!"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6f
.end method

.method private declared-synchronized disable(Z)V
    .registers 8

    monitor-enter p0

    :try_start_1
    const-string v1, "NetworkStatsEx"

    const-string v2, "(xxxz) NSS>> disable: Begin..."

    invoke-static {v1, v2}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_d0

    :try_start_8
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->isInMonitoring()Z

    move-result v1

    if-nez v1, :cond_36

    const-string v1, "NetworkStatsEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(xxxz) NSS>> disable: Warning-> monitoring is not even started yet! start="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mMonitorStartTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", end="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mMonitorEndTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_34
    .catchall {:try_start_8 .. :try_end_34} :catchall_d0
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_34} :catch_f1

    :goto_34
    monitor-exit p0

    return-void

    :cond_36
    :try_start_36
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mNetStatsMonitorThread:Lcom/android/server/net/NetworkStatsDetailedMonitor$NetStatsMonitorThread;

    if-eqz v1, :cond_46

    const-string v1, "NetworkStatsEx"

    const-string v2, "(xxxz) NSS>> disable: stopping monitor thread..."

    invoke-static {v1, v2}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mNetStatsMonitorThread:Lcom/android/server/net/NetworkStatsDetailedMonitor$NetStatsMonitorThread;

    invoke-virtual {v1}, Lcom/android/server/net/NetworkStatsDetailedMonitor$NetStatsMonitorThread;->setStop()V

    :cond_46
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mStatsLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_49
    .catchall {:try_start_36 .. :try_end_49} :catchall_d0
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_49} :catch_f1

    const/4 v1, 0x0

    :try_start_4a
    iput-object v1, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mNetStatsMonitorThread:Lcom/android/server/net/NetworkStatsDetailedMonitor$NetStatsMonitorThread;

    if-nez p1, :cond_d3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mMonitorEndTime:J

    iget-wide v3, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mMonitorEndTime:J

    invoke-direct {p0, v3, v4}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->setEndTimeToSetting(J)V

    const-string v1, "NetworkStatsEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(xxxz) NSS>> disable: start="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mMonitorStartTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", end="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mMonitorEndTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    :goto_7f
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    if-eqz v1, :cond_8a

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    iget-wide v3, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mMonitorEndTime:J

    invoke-virtual {v1, v3, v4}, Lcom/android/server/net/NetworkStatsRecorder;->forcePersistLocked(J)V

    :cond_8a
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    if-eqz v1, :cond_95

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    iget-wide v3, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mMonitorEndTime:J

    invoke-virtual {v1, v3, v4}, Lcom/android/server/net/NetworkStatsRecorder;->forcePersistLocked(J)V

    :cond_95
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    if-eqz v1, :cond_a0

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    iget-wide v3, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mMonitorEndTime:J

    invoke-virtual {v1, v3, v4}, Lcom/android/server/net/NetworkStatsRecorder;->forcePersistLocked(J)V

    :cond_a0
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    if-eqz v1, :cond_ab

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    iget-wide v3, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mMonitorEndTime:J

    invoke-virtual {v1, v3, v4}, Lcom/android/server/net/NetworkStatsRecorder;->forcePersistLocked(J)V

    :cond_ab
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->updateUidNameMap(Z)V

    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->saveIf()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mUidNameMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mUidNameMap:Ljava/util/HashMap;

    monitor-exit v2
    :try_end_c7
    .catchall {:try_start_4a .. :try_end_c7} :catchall_ee

    :goto_c7
    :try_start_c7
    const-string v1, "NetworkStatsEx"

    const-string v2, "(xxxz) NSS>> disable: End!"

    invoke-static {v1, v2}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ce
    .catchall {:try_start_c7 .. :try_end_ce} :catchall_d0

    goto/16 :goto_34

    :catchall_d0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_d3
    :try_start_d3
    const-string v1, "NetworkStatsEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(xxxz) NSS>> disable: called from shutdown. don\'t set the end time! start="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mMonitorStartTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7f

    :catchall_ee
    move-exception v1

    monitor-exit v2
    :try_end_f0
    .catchall {:try_start_d3 .. :try_end_f0} :catchall_ee

    :try_start_f0
    throw v1
    :try_end_f1
    .catchall {:try_start_f0 .. :try_end_f1} :catchall_d0
    .catch Ljava/lang/Throwable; {:try_start_f0 .. :try_end_f1} :catch_f1

    :catch_f1
    move-exception v0

    :try_start_f2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v1, "NetworkStatsEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(xxxze) NSS>> disable: Warning! SHOULD NOT BE HERE!! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_111
    .catchall {:try_start_f2 .. :try_end_111} :catchall_d0

    goto :goto_c7
.end method

.method private dumpDev(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/net/NetworkStatsRecorder;)V
    .registers 4

    const-string v0, "Dev stats:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Lcom/android/server/net/NetworkStatsRecorder;->dumpLocked(Lcom/android/internal/util/IndentingPrintWriter;Z)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    return-void
.end method

.method private dumpIf(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 7

    const-string v4, "Active interfaces:"

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    iget-object v4, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mServiceNetStats:Lcom/android/server/net/NetworkStatsService;

    invoke-virtual {v4}, Lcom/android/server/net/NetworkStatsService;->getActiveIfaces()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/net/NetworkIdentitySet;

    const-string v4, "iface="

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v4, " ident="

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/server/net/NetworkIdentitySet;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_16

    :cond_3d
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    return-void
.end method

.method private dumpUid(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/net/NetworkStatsRecorder;)V
    .registers 4

    const-string v0, "UID stats:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Lcom/android/server/net/NetworkStatsRecorder;->dumpLocked(Lcom/android/internal/util/IndentingPrintWriter;Z)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    return-void
.end method

.method private dumpUidNameMap(Ljava/io/PrintWriter;)V
    .registers 6

    iget-object v3, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mUidNameMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iget-object v3, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mUidNameMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/NetworkStatsDetailedMonitor$UidDetail;

    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsDetailedMonitor$UidDetail;->toFormatString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_a

    :cond_26
    return-void
.end method

.method private dumpUidTag(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/net/NetworkStatsRecorder;)V
    .registers 4

    const-string v0, "UID tag stats:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Lcom/android/server/net/NetworkStatsRecorder;->dumpLocked(Lcom/android/internal/util/IndentingPrintWriter;Z)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    return-void
.end method

.method private dumpXt(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/net/NetworkStatsRecorder;)V
    .registers 4

    const-string v0, "Xt stats:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Lcom/android/server/net/NetworkStatsRecorder;->dumpLocked(Lcom/android/internal/util/IndentingPrintWriter;Z)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    return-void
.end method

.method private declared-synchronized enable(JZ)V
    .registers 11

    const-wide/16 v5, 0x3e8

    monitor-enter p0

    :try_start_3
    const-string v1, "NetworkStatsEx"

    const-string v2, "(xxxz) NSS>> enable: Begin..."

    invoke-static {v1, v2}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_b2

    :try_start_a
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->isInMonitoring()Z

    move-result v1

    if-eqz v1, :cond_19

    const-string v1, "NetworkStatsEx"

    const-string v2, "(xxxz) NSS>> enable: End! already monitoring"

    invoke-static {v1, v2}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_a .. :try_end_17} :catchall_b2
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_17} :catch_d7

    :goto_17
    monitor-exit p0

    return-void

    :cond_19
    if-nez p3, :cond_b5

    :try_start_1b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mMonitorStartTime:J

    iget-wide v1, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mMonitorStartTime:J

    invoke-direct {p0, v1, v2}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->setStartTimeToSetting(J)V

    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->deleteData()V

    :goto_29
    cmp-long v1, p1, v5

    if-ltz v1, :cond_f8

    sput-wide p1, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mConfigBucketSize:J

    :goto_2f
    const-string v1, "NetworkStatsEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(xxxz) NSS>> enable: bucket size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-wide v3, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mConfigBucketSize:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "NetworkStatsEx"

    const-string v2, "(xxxz) NSS>> enable: creating recorders..."

    invoke-static {v1, v2}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ex_dev"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->buildRecorder(Ljava/lang/String;Z)Lcom/android/server/net/NetworkStatsRecorder;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    const-string v1, "ex_xt"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->buildRecorder(Ljava/lang/String;Z)Lcom/android/server/net/NetworkStatsRecorder;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    const-string v1, "ex_uid"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->buildRecorder(Ljava/lang/String;Z)Lcom/android/server/net/NetworkStatsRecorder;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    const-string v1, "ex_uid_tag"

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->buildRecorder(Ljava/lang/String;Z)Lcom/android/server/net/NetworkStatsRecorder;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mPersistThreshold:J

    invoke-virtual {v1, v2, v3}, Lcom/android/server/net/NetworkStatsRecorder;->setPersistThreshold(J)V

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mPersistThreshold:J

    invoke-virtual {v1, v2, v3}, Lcom/android/server/net/NetworkStatsRecorder;->setPersistThreshold(J)V

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mPersistThreshold:J

    invoke-virtual {v1, v2, v3}, Lcom/android/server/net/NetworkStatsRecorder;->setPersistThreshold(J)V

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mPersistThreshold:J

    invoke-virtual {v1, v2, v3}, Lcom/android/server/net/NetworkStatsRecorder;->setPersistThreshold(J)V

    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mUidNameMap:Ljava/util/HashMap;

    const-string v1, "NetworkStatsEx"

    const-string v2, "(xxxz) NSS>> enable: creating thread..."

    invoke-static {v1, v2}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/android/server/net/NetworkStatsDetailedMonitor$NetStatsMonitorThread;

    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkStatsDetailedMonitor$NetStatsMonitorThread;-><init>(Lcom/android/server/net/NetworkStatsDetailedMonitor;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mNetStatsMonitorThread:Lcom/android/server/net/NetworkStatsDetailedMonitor$NetStatsMonitorThread;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mNetStatsMonitorThread:Lcom/android/server/net/NetworkStatsDetailedMonitor$NetStatsMonitorThread;

    invoke-virtual {v1}, Lcom/android/server/net/NetworkStatsDetailedMonitor$NetStatsMonitorThread;->start()V
    :try_end_a9
    .catchall {:try_start_1b .. :try_end_a9} :catchall_b2
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_a9} :catch_d7

    :goto_a9
    :try_start_a9
    const-string v1, "NetworkStatsEx"

    const-string v2, "(xxxz) NSS>> enable: End!"

    invoke-static {v1, v2}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b0
    .catchall {:try_start_a9 .. :try_end_b0} :catchall_b2

    goto/16 :goto_17

    :catchall_b2
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_b5
    :try_start_b5
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->getStartTimeFromSetting()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mMonitorStartTime:J

    const-string v1, "NetworkStatsEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(xxxz) NSS>> enable: monitoring started before the boot. start="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mMonitorStartTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d5
    .catchall {:try_start_b5 .. :try_end_d5} :catchall_b2
    .catch Ljava/lang/Throwable; {:try_start_b5 .. :try_end_d5} :catch_d7

    goto/16 :goto_29

    :catch_d7
    move-exception v0

    :try_start_d8
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v1, "NetworkStatsEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(xxxze) NSS>> enable: Warning! SHOULD NOT BE HERE!! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f7
    .catchall {:try_start_d8 .. :try_end_f7} :catchall_b2

    goto :goto_a9

    :cond_f8
    const-wide/16 v1, 0x3e8

    :try_start_fa
    sput-wide v1, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mConfigBucketSize:J
    :try_end_fc
    .catchall {:try_start_fa .. :try_end_fc} :catchall_b2
    .catch Ljava/lang/Throwable; {:try_start_fa .. :try_end_fc} :catch_d7

    goto/16 :goto_2f
.end method

.method private exportData(ZLcom/android/internal/util/IndentingPrintWriter;)Z
    .registers 37

    const-string v30, "NetworkStatsEx"

    const-string v31, "(xxxz) NSS>> exportData: Begin..."

    invoke-static/range {v30 .. v31}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->isInMonitoring()Z

    move-result v30

    if-eqz v30, :cond_22

    const-string v30, "NetworkStatsEx"

    const-string v31, "(xxxz) NSS>> exportData: Error-> not support to export data during monitoring!"

    invoke-static/range {v30 .. v31}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_1f

    const-string v30, "Still in monitoring, no data is exported!"

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :cond_1f
    const/16 v30, 0x0

    :goto_21
    return v30

    :cond_22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->getStartTimeFromSetting()J

    move-result-wide v14

    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->getEndTimeFromSetting()J

    move-result-wide v12

    const-string v30, "NetworkStatsEx"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "(xxxz) NSS>> exportData: time start="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ", end="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    cmp-long v30, v14, v12

    if-ltz v30, :cond_b8

    const-string v30, "NetworkStatsEx"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "(xxxz) NSS>> exportData: End! no data for this time period ("

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "-"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ")"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_b4

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "no data for this time period ("

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "-"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ")"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :cond_b4
    const/16 v30, 0x0

    goto/16 :goto_21

    :cond_b8
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->deleteExportData()V

    const-string v30, "ex_dev"

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->buildRecorder(Ljava/lang/String;Z)Lcom/android/server/net/NetworkStatsRecorder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/net/NetworkStatsRecorder;->getOrLoadCompleteLocked()Lcom/android/server/net/NetworkStatsCollection;

    const-string v30, "ex_xt"

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->buildRecorder(Ljava/lang/String;Z)Lcom/android/server/net/NetworkStatsRecorder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/android/server/net/NetworkStatsRecorder;->getOrLoadCompleteLocked()Lcom/android/server/net/NetworkStatsCollection;

    const-string v30, "ex_uid"

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->buildRecorder(Ljava/lang/String;Z)Lcom/android/server/net/NetworkStatsRecorder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/android/server/net/NetworkStatsRecorder;->getOrLoadCompleteLocked()Lcom/android/server/net/NetworkStatsCollection;

    const-string v30, "ex_uid_tag"

    const/16 v31, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->buildRecorder(Ljava/lang/String;Z)Lcom/android/server/net/NetworkStatsRecorder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/android/server/net/NetworkStatsRecorder;->getOrLoadCompleteLocked()Lcom/android/server/net/NetworkStatsCollection;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "-"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->getOrCreateExportDir()Ljava/io/File;

    move-result-object v7

    if-nez v7, :cond_12b

    const-string v30, "NetworkStatsEx"

    const-string v31, "(xxxz) NSS>> exportData: Error-> failed to get the export dir!"

    invoke-static/range {v30 .. v31}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v30, 0x0

    goto/16 :goto_21

    :cond_12b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    new-instance v9, Ljava/io/File;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "netstats_dev."

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-direct {v9, v7, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/16 v27, 0x0

    const/16 v22, 0x0

    :try_start_151
    const-string v30, "NetworkStatsEx"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "(xxxz) NSS>> exportData: writing "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "..."

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v28, Ljava/io/PrintWriter;

    move-object/from16 v0, v28

    invoke-direct {v0, v9}, Ljava/io/PrintWriter;-><init>(Ljava/io/File;)V
    :try_end_17a
    .catchall {:try_start_151 .. :try_end_17a} :catchall_48f
    .catch Ljava/lang/Exception; {:try_start_151 .. :try_end_17a} :catch_436

    :try_start_17a
    new-instance v23, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v30, "  "

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V
    :try_end_187
    .catchall {:try_start_17a .. :try_end_187} :catchall_68f
    .catch Ljava/lang/Exception; {:try_start_17a .. :try_end_187} :catch_69b

    :try_start_187
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v5}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->dumpDev(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/net/NetworkStatsRecorder;)V
    :try_end_18e
    .catchall {:try_start_187 .. :try_end_18e} :catchall_694
    .catch Ljava/lang/Exception; {:try_start_187 .. :try_end_18e} :catch_6a0

    if-eqz v28, :cond_193

    :try_start_190
    invoke-virtual/range {v28 .. v28}, Ljava/io/PrintWriter;->close()V
    :try_end_193
    .catch Ljava/lang/Exception; {:try_start_190 .. :try_end_193} :catch_642

    :cond_193
    :goto_193
    const/16 v28, 0x0

    const/16 v23, 0x0

    const-string v30, "NetworkStatsEx"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "(xxxz) NSS>> exportData: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " duration="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v32

    sub-long v32, v32, v20

    invoke-virtual/range {v31 .. v33}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    new-instance v9, Ljava/io/File;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "netstats_xt."

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-direct {v9, v7, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_1e5
    const-string v30, "NetworkStatsEx"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "(xxxz) NSS>> exportData: writing "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "..."

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v27, Ljava/io/PrintWriter;

    move-object/from16 v0, v27

    invoke-direct {v0, v9}, Ljava/io/PrintWriter;-><init>(Ljava/io/File;)V
    :try_end_20e
    .catchall {:try_start_1e5 .. :try_end_20e} :catchall_4f7
    .catch Ljava/lang/Exception; {:try_start_1e5 .. :try_end_20e} :catch_49a

    :try_start_20e
    new-instance v22, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v30, "  "

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V
    :try_end_21b
    .catchall {:try_start_20e .. :try_end_21b} :catchall_67f
    .catch Ljava/lang/Exception; {:try_start_20e .. :try_end_21b} :catch_687

    :try_start_21b
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->dumpXt(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/net/NetworkStatsRecorder;)V
    :try_end_224
    .catchall {:try_start_21b .. :try_end_224} :catchall_684
    .catch Ljava/lang/Exception; {:try_start_21b .. :try_end_224} :catch_68c

    if-eqz v27, :cond_229

    :try_start_226
    invoke-virtual/range {v27 .. v27}, Ljava/io/PrintWriter;->close()V
    :try_end_229
    .catch Ljava/lang/Exception; {:try_start_226 .. :try_end_229} :catch_64b

    :cond_229
    :goto_229
    const/16 v28, 0x0

    const/16 v23, 0x0

    const-string v30, "NetworkStatsEx"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "(xxxz) NSS>> exportData: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " duration="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v32

    sub-long v32, v32, v20

    invoke-virtual/range {v31 .. v33}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    new-instance v9, Ljava/io/File;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "netstats_uids."

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-direct {v9, v7, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_27b
    const-string v30, "NetworkStatsEx"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "(xxxz) NSS>> exportData: writing "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "..."

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v27, Ljava/io/PrintWriter;

    move-object/from16 v0, v27

    invoke-direct {v0, v9}, Ljava/io/PrintWriter;-><init>(Ljava/io/File;)V
    :try_end_2a4
    .catchall {:try_start_27b .. :try_end_2a4} :catchall_563
    .catch Ljava/lang/Exception; {:try_start_27b .. :try_end_2a4} :catch_506

    :try_start_2a4
    new-instance v22, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v30, "  "

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V
    :try_end_2b1
    .catchall {:try_start_2a4 .. :try_end_2b1} :catchall_66f
    .catch Ljava/lang/Exception; {:try_start_2a4 .. :try_end_2b1} :catch_677

    :try_start_2b1
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->dumpUid(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/net/NetworkStatsRecorder;)V
    :try_end_2ba
    .catchall {:try_start_2b1 .. :try_end_2ba} :catchall_674
    .catch Ljava/lang/Exception; {:try_start_2b1 .. :try_end_2ba} :catch_67c

    if-eqz v27, :cond_2bf

    :try_start_2bc
    invoke-virtual/range {v27 .. v27}, Ljava/io/PrintWriter;->close()V
    :try_end_2bf
    .catch Ljava/lang/Exception; {:try_start_2bc .. :try_end_2bf} :catch_654

    :cond_2bf
    :goto_2bf
    const/16 v28, 0x0

    const/16 v23, 0x0

    const-string v30, "NetworkStatsEx"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "(xxxz) NSS>> exportData: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " duration="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v32

    sub-long v32, v32, v20

    invoke-virtual/range {v31 .. v33}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    new-instance v9, Ljava/io/File;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "netstats_uid_tag."

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-direct {v9, v7, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_311
    const-string v30, "NetworkStatsEx"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "(xxxz) NSS>> exportData: writing "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "..."

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v27, Ljava/io/PrintWriter;

    move-object/from16 v0, v27

    invoke-direct {v0, v9}, Ljava/io/PrintWriter;-><init>(Ljava/io/File;)V
    :try_end_33a
    .catchall {:try_start_311 .. :try_end_33a} :catchall_5cf
    .catch Ljava/lang/Exception; {:try_start_311 .. :try_end_33a} :catch_572

    :try_start_33a
    new-instance v22, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v30, "  "

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V
    :try_end_347
    .catchall {:try_start_33a .. :try_end_347} :catchall_65f
    .catch Ljava/lang/Exception; {:try_start_33a .. :try_end_347} :catch_667

    :try_start_347
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->dumpUidTag(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/net/NetworkStatsRecorder;)V
    :try_end_350
    .catchall {:try_start_347 .. :try_end_350} :catchall_664
    .catch Ljava/lang/Exception; {:try_start_347 .. :try_end_350} :catch_66c

    if-eqz v27, :cond_355

    :try_start_352
    invoke-virtual/range {v27 .. v27}, Ljava/io/PrintWriter;->close()V
    :try_end_355
    .catch Ljava/lang/Exception; {:try_start_352 .. :try_end_355} :catch_65c

    :cond_355
    :goto_355
    const/16 v27, 0x0

    const/16 v22, 0x0

    const-string v30, "NetworkStatsEx"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "(xxxz) NSS>> exportData: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " duration="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v32

    sub-long v32, v32, v20

    invoke-virtual/range {v31 .. v33}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mBaseDir:Ljava/io/File;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v10

    move-object v3, v10

    array-length v0, v3

    move/from16 v16, v0

    const/4 v11, 0x0

    :goto_394
    move/from16 v0, v16

    if-ge v11, v0, :cond_5de

    aget-object v8, v3, v11

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v17

    const-string v30, "ex_if"

    move-object/from16 v0, v17

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v30

    if-nez v30, :cond_3b6

    const-string v30, "ex_uidapp"

    move-object/from16 v0, v17

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_432

    :cond_3b6
    const-string v30, "ex_if"

    move-object/from16 v0, v17

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_3d9

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "netstats_if."

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    :cond_3d9
    const-string v30, "ex_uidapp"

    move-object/from16 v0, v17

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_3fc

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "netstats_uidapp."

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    :cond_3fc
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, v17

    invoke-direct {v4, v7, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v30, "NetworkStatsEx"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "(xxxz) NSS>> exportData: copying "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " to "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v4}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    :cond_432
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_394

    :catch_436
    move-exception v6

    :goto_437
    :try_start_437
    const-string v30, "NetworkStatsEx"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "(xxxz) NSS>> exportData: Error-> failed to write "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "!!"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    if-eqz p2, :cond_482

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Failed to write "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "!!"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_482
    .catchall {:try_start_437 .. :try_end_482} :catchall_48f

    :cond_482
    const/16 v30, 0x0

    if-eqz v27, :cond_489

    :try_start_486
    invoke-virtual/range {v27 .. v27}, Ljava/io/PrintWriter;->close()V
    :try_end_489
    .catch Ljava/lang/Exception; {:try_start_486 .. :try_end_489} :catch_63f

    :cond_489
    :goto_489
    const/16 v27, 0x0

    const/16 v22, 0x0

    goto/16 :goto_21

    :catchall_48f
    move-exception v30

    :goto_490
    if-eqz v27, :cond_495

    :try_start_492
    invoke-virtual/range {v27 .. v27}, Ljava/io/PrintWriter;->close()V
    :try_end_495
    .catch Ljava/lang/Exception; {:try_start_492 .. :try_end_495} :catch_63c

    :cond_495
    :goto_495
    const/16 v27, 0x0

    const/16 v22, 0x0

    throw v30

    :catch_49a
    move-exception v6

    move-object/from16 v22, v23

    move-object/from16 v27, v28

    :goto_49f
    :try_start_49f
    const-string v30, "NetworkStatsEx"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "(xxxz) NSS>> exportData: Error-> failed to write "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "!!"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    if-eqz p2, :cond_4ea

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Failed to write "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "!!"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_4ea
    .catchall {:try_start_49f .. :try_end_4ea} :catchall_684

    :cond_4ea
    const/16 v30, 0x0

    if-eqz v27, :cond_4f1

    :try_start_4ee
    invoke-virtual/range {v27 .. v27}, Ljava/io/PrintWriter;->close()V
    :try_end_4f1
    .catch Ljava/lang/Exception; {:try_start_4ee .. :try_end_4f1} :catch_648

    :cond_4f1
    :goto_4f1
    const/16 v27, 0x0

    const/16 v22, 0x0

    goto/16 :goto_21

    :catchall_4f7
    move-exception v30

    move-object/from16 v22, v23

    move-object/from16 v27, v28

    :goto_4fc
    if-eqz v27, :cond_501

    :try_start_4fe
    invoke-virtual/range {v27 .. v27}, Ljava/io/PrintWriter;->close()V
    :try_end_501
    .catch Ljava/lang/Exception; {:try_start_4fe .. :try_end_501} :catch_645

    :cond_501
    :goto_501
    const/16 v27, 0x0

    const/16 v22, 0x0

    throw v30

    :catch_506
    move-exception v6

    move-object/from16 v22, v23

    move-object/from16 v27, v28

    :goto_50b
    :try_start_50b
    const-string v30, "NetworkStatsEx"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "(xxxz) NSS>> exportData: Error-> failed to write "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "!!"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    if-eqz p2, :cond_556

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Failed to write "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "!!"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_556
    .catchall {:try_start_50b .. :try_end_556} :catchall_674

    :cond_556
    const/16 v30, 0x0

    if-eqz v27, :cond_55d

    :try_start_55a
    invoke-virtual/range {v27 .. v27}, Ljava/io/PrintWriter;->close()V
    :try_end_55d
    .catch Ljava/lang/Exception; {:try_start_55a .. :try_end_55d} :catch_651

    :cond_55d
    :goto_55d
    const/16 v27, 0x0

    const/16 v22, 0x0

    goto/16 :goto_21

    :catchall_563
    move-exception v30

    move-object/from16 v22, v23

    move-object/from16 v27, v28

    :goto_568
    if-eqz v27, :cond_56d

    :try_start_56a
    invoke-virtual/range {v27 .. v27}, Ljava/io/PrintWriter;->close()V
    :try_end_56d
    .catch Ljava/lang/Exception; {:try_start_56a .. :try_end_56d} :catch_64e

    :cond_56d
    :goto_56d
    const/16 v27, 0x0

    const/16 v22, 0x0

    throw v30

    :catch_572
    move-exception v6

    move-object/from16 v22, v23

    move-object/from16 v27, v28

    :goto_577
    :try_start_577
    const-string v30, "NetworkStatsEx"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "(xxxz) NSS>> exportData: Error-> failed to write "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "!!"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    if-eqz p2, :cond_5c2

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Failed to write "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "!!"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_5c2
    .catchall {:try_start_577 .. :try_end_5c2} :catchall_664

    :cond_5c2
    const/16 v30, 0x0

    if-eqz v27, :cond_5c9

    :try_start_5c6
    invoke-virtual/range {v27 .. v27}, Ljava/io/PrintWriter;->close()V
    :try_end_5c9
    .catch Ljava/lang/Exception; {:try_start_5c6 .. :try_end_5c9} :catch_659

    :cond_5c9
    :goto_5c9
    const/16 v27, 0x0

    const/16 v22, 0x0

    goto/16 :goto_21

    :catchall_5cf
    move-exception v30

    move-object/from16 v22, v23

    move-object/from16 v27, v28

    :goto_5d4
    if-eqz v27, :cond_5d9

    :try_start_5d6
    invoke-virtual/range {v27 .. v27}, Ljava/io/PrintWriter;->close()V
    :try_end_5d9
    .catch Ljava/lang/Exception; {:try_start_5d6 .. :try_end_5d9} :catch_657

    :cond_5d9
    :goto_5d9
    const/16 v27, 0x0

    const/16 v22, 0x0

    throw v30

    :cond_5de
    if-eqz p1, :cond_5ea

    const-string v30, "NetworkStatsEx"

    const-string v31, "(xxxz) NSS>> exportData: deleting raw data..."

    invoke-static/range {v30 .. v31}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->deleteData()V

    :cond_5ea
    const-string v30, "NetworkStatsEx"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "(xxxz) NSS>> exportData: End! duration="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v32

    sub-long v32, v32, v18

    invoke-virtual/range {v31 .. v33}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_638

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "export is done ("

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v31

    sub-long v31, v31, v18

    invoke-virtual/range {v30 .. v32}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " ms)! dir="

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :cond_638
    const/16 v30, 0x1

    goto/16 :goto_21

    :catch_63c
    move-exception v31

    goto/16 :goto_495

    :catch_63f
    move-exception v31

    goto/16 :goto_489

    :catch_642
    move-exception v30

    goto/16 :goto_193

    :catch_645
    move-exception v31

    goto/16 :goto_501

    :catch_648
    move-exception v31

    goto/16 :goto_4f1

    :catch_64b
    move-exception v30

    goto/16 :goto_229

    :catch_64e
    move-exception v31

    goto/16 :goto_56d

    :catch_651
    move-exception v31

    goto/16 :goto_55d

    :catch_654
    move-exception v30

    goto/16 :goto_2bf

    :catch_657
    move-exception v31

    goto :goto_5d9

    :catch_659
    move-exception v31

    goto/16 :goto_5c9

    :catch_65c
    move-exception v30

    goto/16 :goto_355

    :catchall_65f
    move-exception v30

    move-object/from16 v22, v23

    goto/16 :goto_5d4

    :catchall_664
    move-exception v30

    goto/16 :goto_5d4

    :catch_667
    move-exception v6

    move-object/from16 v22, v23

    goto/16 :goto_577

    :catch_66c
    move-exception v6

    goto/16 :goto_577

    :catchall_66f
    move-exception v30

    move-object/from16 v22, v23

    goto/16 :goto_568

    :catchall_674
    move-exception v30

    goto/16 :goto_568

    :catch_677
    move-exception v6

    move-object/from16 v22, v23

    goto/16 :goto_50b

    :catch_67c
    move-exception v6

    goto/16 :goto_50b

    :catchall_67f
    move-exception v30

    move-object/from16 v22, v23

    goto/16 :goto_4fc

    :catchall_684
    move-exception v30

    goto/16 :goto_4fc

    :catch_687
    move-exception v6

    move-object/from16 v22, v23

    goto/16 :goto_49f

    :catch_68c
    move-exception v6

    goto/16 :goto_49f

    :catchall_68f
    move-exception v30

    move-object/from16 v27, v28

    goto/16 :goto_490

    :catchall_694
    move-exception v30

    move-object/from16 v22, v23

    move-object/from16 v27, v28

    goto/16 :goto_490

    :catch_69b
    move-exception v6

    move-object/from16 v27, v28

    goto/16 :goto_437

    :catch_6a0
    move-exception v6

    move-object/from16 v22, v23

    move-object/from16 v27, v28

    goto/16 :goto_437
.end method

.method private getConfig()Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;
    .registers 8

    new-instance v0, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;

    sget-wide v1, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mConfigBucketSize:J

    sget-wide v3, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mConfigRotateFileTime:J

    sget-wide v5, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mConfigRemoveFileTime:J

    invoke-direct/range {v0 .. v6}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;-><init>(JJJ)V

    return-object v0
.end method

.method private static getDebugLevel()I
    .registers 8

    const/4 v4, 0x2

    const/4 v3, 0x0

    const-string v5, "ro.debug_level"

    const-string v6, "Unknown"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v0, -0x1

    const-string v5, "NetworkStatsEx"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getDebugLevel  : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "Unknown"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_33

    const-string v4, "NetworkStatsEx"

    const-string v5, "(xxxz) NSS>> getDebugLevel: 0 - unknown state"

    invoke-static {v4, v5}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    :goto_32
    return v3

    :cond_33
    const/4 v5, 0x2

    :try_start_34
    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_3d
    .catch Ljava/lang/NumberFormatException; {:try_start_34 .. :try_end_3d} :catch_4a

    move-result v0

    const/16 v5, 0x4f4c

    if-ne v0, v5, :cond_6a

    const-string v4, "NetworkStatsEx"

    const-string v5, "(xxxz) NSS>> getDebugLevel: 0 - low"

    invoke-static {v4, v5}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_32

    :catch_4a
    move-exception v1

    const-string v4, "NetworkStatsEx"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "(xxxz) NSS>> getDebugLevel: 0 - state ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") is invalid"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_32

    :cond_6a
    const/16 v5, 0x494d

    if-ne v0, v5, :cond_77

    const-string v3, "NetworkStatsEx"

    const-string v4, "(xxxz) NSS>> getDebugLevel: 1 - mid"

    invoke-static {v3, v4}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    goto :goto_32

    :cond_77
    const/16 v5, 0x4948

    if-ne v0, v5, :cond_84

    const-string v3, "NetworkStatsEx"

    const-string v5, "(xxxz) NSS>> getDebugLevel: 2 - high"

    invoke-static {v3, v5}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v4

    goto :goto_32

    :cond_84
    const-string v4, "NetworkStatsEx"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "(xxxz) NSS>> getDebugLevel: 0 - level ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") is unknown"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_32
.end method

.method private getEndTimeFromSetting()J
    .registers 5

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "monitor_network_usage_end_time"

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private getOrCreateExportDir()Ljava/io/File;
    .registers 5

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/log/netstats"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_30

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_30

    const-string v1, "NetworkStatsEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(xxxz) NSS>> getOrCreateExportDir: Error-> failed to create "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_30
    return-object v0
.end method

.method private getOrCreateMonitorDir()Ljava/io/File;
    .registers 8

    const/4 v2, 0x0

    const/16 v6, 0x1f8

    const/4 v5, -0x1

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "monitor"

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_39

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_39

    const-string v3, "NetworkStatsEx"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "(xxxz) NSS>> getOrCreateMonitorDir: Error-> failed to create "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    :goto_38
    return-object v1

    :cond_39
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v6, v5, v5}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    new-instance v1, Ljava/io/File;

    const-string v3, "netstats"

    invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_71

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_71

    const-string v3, "NetworkStatsEx"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "(xxxz) NSS>> getOrCreateMonitorDir: Error-> failed to create "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    goto :goto_38

    :cond_71
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v6, v5, v5}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    goto :goto_38
.end method

.method private getSamplingRateFromSetting()I
    .registers 4

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "monitor_network_usage_sampling_rate"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getStartTimeFromSetting()J
    .registers 5

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "monitor_network_usage_start_time"

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private isInMonitoring()Z
    .registers 6

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mUidNameMap:Ljava/util/HashMap;

    if-eqz v1, :cond_36

    const/4 v0, 0x1

    :goto_5
    const-string v1, "NetworkStatsEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(xxxz) NSS>> isInMonitoring: start="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mMonitorStartTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", end="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mMonitorEndTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", started="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_36
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private performPoll(IZ)V
    .registers 7

    const-string v1, "NetworkStatsEx"

    const-string v2, "(xxxz) NSS>> performPoll: Begin..."

    invoke-static {v1, v2}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_7
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mStatsLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_a} :catch_37

    if-eqz p2, :cond_11

    :try_start_c
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_34

    :cond_11
    :try_start_11
    const-string v1, "NetworkStatsEx"

    const-string v3, "(xxxz) NSS>> performPoll: performPollLocked..."

    invoke-static {v1, v3}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->performPollLocked(I)V
    :try_end_1b
    .catchall {:try_start_11 .. :try_end_1b} :catchall_2b

    if-eqz p2, :cond_22

    :try_start_1d
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_22
    monitor-exit v2
    :try_end_23
    .catchall {:try_start_1d .. :try_end_23} :catchall_34

    :goto_23
    const-string v1, "NetworkStatsEx"

    const-string v2, "(xxxz) NSS>> performPoll: End!"

    invoke-static {v1, v2}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_2b
    move-exception v1

    if-eqz p2, :cond_33

    :try_start_2e
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_33
    throw v1

    :catchall_34
    move-exception v1

    monitor-exit v2
    :try_end_36
    .catchall {:try_start_2e .. :try_end_36} :catchall_34

    :try_start_36
    throw v1
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_37} :catch_37

    :catch_37
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v1, "NetworkStatsEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(xxxze) NSS>> performPoll: Warning! SHOULD NOT BE HERE!! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23
.end method

.method private performPollLocked(I)V
    .registers 24

    const-string v18, "NetworkStatsEx"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "(xxxz) NSS>> performPollLocked: Begin... flags=0x"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ")"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mServiceNetStats:Lcom/android/server/net/NetworkStatsService;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/net/NetworkStatsService;->isSystemReady()Z

    move-result v18

    if-nez v18, :cond_36

    const-string v18, "NetworkStatsEx"

    const-string v19, "(xxxz) NSS>> performPollLocked: End! System NOT ready!"

    invoke-static/range {v18 .. v19}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    :goto_35
    return-void

    :cond_36
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    move-object/from16 v18, v0

    if-nez v18, :cond_46

    const-string v18, "NetworkStatsEx"

    const-string v19, "(xxxz) NSS>> performPollLocked: End! Disabled!"

    invoke-static/range {v18 .. v19}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_35

    :cond_46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mLastPollTime:J

    and-int/lit8 v18, p1, 0x1

    if-eqz v18, :cond_14b

    const/4 v11, 0x1

    :goto_55
    and-int/lit8 v18, p1, 0x2

    if-eqz v18, :cond_14e

    const/4 v12, 0x1

    :goto_5a
    move/from16 v0, p1

    and-int/lit16 v0, v0, 0x100

    move/from16 v18, v0

    if-eqz v18, :cond_151

    const/4 v10, 0x1

    :goto_63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    :try_start_67
    const-string v18, "NetworkStatsEx"

    const-string v19, "(xxxz) NSS>> performPollLocked: recording..."

    invoke-static/range {v18 .. v19}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v17, 0x0

    const/4 v15, 0x3

    const/4 v14, 0x3

    const/4 v13, 0x0

    :goto_73
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mNetworkManager:Landroid/os/INetworkManagementService;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Landroid/os/INetworkManagementService;->getNetworkStatsSummaryXt()Landroid/net/NetworkStats;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v4, v5}, Lcom/android/server/net/NetworkStatsRecorder;->checkDataIntegrityInSnapshot(Landroid/net/NetworkStats;J)Z

    move-result v18

    if-eqz v18, :cond_154

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mServiceNetStats:Lcom/android/server/net/NetworkStatsService;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/net/NetworkStatsService;->getNetworkStatsUidDetail()Landroid/net/NetworkStats;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mNetworkManager:Landroid/os/INetworkManagementService;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Landroid/os/INetworkManagementService;->getNetworkStatsSummaryDev()Landroid/net/NetworkStats;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mServiceNetStats:Lcom/android/server/net/NetworkStatsService;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/net/NetworkStatsService;->getActiveIfaces()Ljava/util/HashMap;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6, v3, v4, v5}, Lcom/android/server/net/NetworkStatsRecorder;->recordSnapshotLocked(Landroid/net/NetworkStats;Ljava/util/Map;J)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v3, v4, v5}, Lcom/android/server/net/NetworkStatsRecorder;->recordSnapshotLocked(Landroid/net/NetworkStats;Ljava/util/Map;J)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v3, v4, v5}, Lcom/android/server/net/NetworkStatsRecorder;->recordSnapshotLocked(Landroid/net/NetworkStats;Ljava/util/Map;J)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v3, v4, v5}, Lcom/android/server/net/NetworkStatsRecorder;->recordSnapshotLocked(Landroid/net/NetworkStats;Ljava/util/Map;J)V

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->updateUidNameMap(Z)V
    :try_end_e8
    .catch Ljava/lang/IllegalStateException; {:try_start_67 .. :try_end_e8} :catch_172
    .catch Landroid/os/RemoteException; {:try_start_67 .. :try_end_e8} :catch_17f

    if-eqz v10, :cond_18c

    const-string v18, "NetworkStatsEx"

    const-string v19, "(xxxz) NSS>> performPollLocked: persistForce"

    invoke-static/range {v18 .. v19}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Lcom/android/server/net/NetworkStatsRecorder;->forcePersistLocked(J)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Lcom/android/server/net/NetworkStatsRecorder;->forcePersistLocked(J)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Lcom/android/server/net/NetworkStatsRecorder;->forcePersistLocked(J)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Lcom/android/server/net/NetworkStatsRecorder;->forcePersistLocked(J)V

    :cond_11d
    :goto_11d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mLastPollTime:J

    move-wide/from16 v20, v0

    sub-long v7, v18, v20

    const-string v18, "NetworkStatsEx"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "(xxxz) NSS>> performPollLocked: End! duration="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " ms"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_35

    :cond_14b
    const/4 v11, 0x0

    goto/16 :goto_55

    :cond_14e
    const/4 v12, 0x0

    goto/16 :goto_5a

    :cond_151
    const/4 v10, 0x0

    goto/16 :goto_63

    :cond_154
    if-ge v13, v14, :cond_169

    :try_start_156
    const-string v18, "NetworkStatsEx"

    const-string v19, "(xxxzt) NSS>> performPollLocked: xtSnapshot has data integrity problem. try next again..."

    invoke-static/range {v18 .. v19}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_15d
    .catch Ljava/lang/IllegalStateException; {:try_start_156 .. :try_end_15d} :catch_172
    .catch Landroid/os/RemoteException; {:try_start_156 .. :try_end_15d} :catch_17f

    int-to-long v0, v15

    move-wide/from16 v18, v0

    :try_start_160
    invoke-static/range {v18 .. v19}, Ljava/lang/Thread;->sleep(J)V
    :try_end_163
    .catch Ljava/lang/Exception; {:try_start_160 .. :try_end_163} :catch_1cc
    .catch Ljava/lang/IllegalStateException; {:try_start_160 .. :try_end_163} :catch_172
    .catch Landroid/os/RemoteException; {:try_start_160 .. :try_end_163} :catch_17f

    :goto_163
    :try_start_163
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    goto/16 :goto_73

    :cond_169
    const-string v18, "NetworkStatsEx"

    const-string v19, "(xxxzt) NSS>> performPollLocked: xtSnapshot has data integrity problem. try next poll..."

    invoke-static/range {v18 .. v19}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_170
    .catch Ljava/lang/IllegalStateException; {:try_start_163 .. :try_end_170} :catch_172
    .catch Landroid/os/RemoteException; {:try_start_163 .. :try_end_170} :catch_17f

    goto/16 :goto_35

    :catch_172
    move-exception v9

    const-string v18, "NetworkStatsEx"

    const-string v19, "(xxxz) NSS>> performPollLocked: Error-> problem reading network stats"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v9}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto/16 :goto_35

    :catch_17f
    move-exception v9

    const-string v18, "NetworkStatsEx"

    const-string v19, "(xxxz) NSS>> performPollLocked: Error-> RemoteException!"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v9}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_35

    :cond_18c
    if-eqz v11, :cond_1ab

    const-string v18, "NetworkStatsEx"

    const-string v19, "(xxxz) NSS>> performPollLocked: persistNetwork"

    invoke-static/range {v18 .. v19}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Lcom/android/server/net/NetworkStatsRecorder;->maybePersistLocked(J)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Lcom/android/server/net/NetworkStatsRecorder;->maybePersistLocked(J)V

    :cond_1ab
    if-eqz v12, :cond_11d

    const-string v18, "NetworkStatsEx"

    const-string v19, "(xxxz) NSS>> performPollLocked: persistUid"

    invoke-static/range {v18 .. v19}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Lcom/android/server/net/NetworkStatsRecorder;->maybePersistLocked(J)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Lcom/android/server/net/NetworkStatsRecorder;->maybePersistLocked(J)V

    goto/16 :goto_11d

    :catch_1cc
    move-exception v18

    goto :goto_163
.end method

.method private saveIf()V
    .registers 18

    const-string v13, "NetworkStatsEx"

    const-string v14, "(xxxz) NSS>> saveIf: Begin..."

    invoke-static {v13, v14}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->isInMonitoring()Z

    move-result v13

    if-nez v13, :cond_15

    const-string v13, "NetworkStatsEx"

    const-string v14, "(xxxz) NSS>> saveIf: End! not in monitoring."

    invoke-static {v13, v14}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    :goto_14
    return-void

    :cond_15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    new-instance v3, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mBaseDir:Ljava/io/File;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "ex_if-"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mMonitorStartTime:J

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "-"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v3, v13, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v11, 0x0

    const/4 v9, 0x0

    :try_start_41
    const-string v13, "NetworkStatsEx"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "(xxxz) NSS>> saveIf: writing "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "..."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v12, Ljava/io/PrintWriter;

    invoke-direct {v12, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/File;)V
    :try_end_68
    .catchall {:try_start_41 .. :try_end_68} :catchall_114
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_68} :catch_129

    :try_start_68
    new-instance v10, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v13, "  "

    invoke-direct {v10, v12, v13}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V
    :try_end_6f
    .catchall {:try_start_68 .. :try_end_6f} :catchall_122
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_6f} :catch_12b

    :try_start_6f
    const-string v13, "Active interfaces:"

    invoke-virtual {v10, v13}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mServiceNetStats:Lcom/android/server/net/NetworkStatsService;

    invoke-virtual {v13}, Lcom/android/server/net/NetworkStatsService;->getActiveIfaces()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_87
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_109

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/net/NetworkIdentitySet;

    const-string v13, "iface="

    invoke-virtual {v10, v13}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v10, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v13, " ident="

    invoke-virtual {v10, v13}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/android/server/net/NetworkIdentitySet;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_ad
    .catchall {:try_start_6f .. :try_end_ad} :catchall_125
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_ad} :catch_ae

    goto :goto_87

    :catch_ae
    move-exception v2

    move-object v9, v10

    move-object v11, v12

    :goto_b1
    :try_start_b1
    const-string v13, "NetworkStatsEx"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "(xxxz) NSS>> saveIf: Error-> failed to write "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "!!"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_d6
    .catchall {:try_start_b1 .. :try_end_d6} :catchall_114

    if-eqz v11, :cond_db

    :try_start_d8
    invoke-virtual {v11}, Ljava/io/PrintWriter;->close()V
    :try_end_db
    .catch Ljava/lang/Exception; {:try_start_d8 .. :try_end_db} :catch_11e

    :cond_db
    :goto_db
    const/4 v11, 0x0

    :goto_dc
    const-string v13, "NetworkStatsEx"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "(xxxz) NSS>> saveIf: End! "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " duration="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    sub-long/2addr v15, v7

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_14

    :cond_109
    :try_start_109
    invoke-virtual {v10}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V
    :try_end_10c
    .catchall {:try_start_109 .. :try_end_10c} :catchall_125
    .catch Ljava/lang/Exception; {:try_start_109 .. :try_end_10c} :catch_ae

    if-eqz v12, :cond_111

    :try_start_10e
    invoke-virtual {v12}, Ljava/io/PrintWriter;->close()V
    :try_end_111
    .catch Ljava/lang/Exception; {:try_start_10e .. :try_end_111} :catch_120

    :cond_111
    :goto_111
    const/4 v11, 0x0

    move-object v9, v10

    goto :goto_dc

    :catchall_114
    move-exception v13

    :goto_115
    if-eqz v11, :cond_11a

    :try_start_117
    invoke-virtual {v11}, Ljava/io/PrintWriter;->close()V
    :try_end_11a
    .catch Ljava/lang/Exception; {:try_start_117 .. :try_end_11a} :catch_11c

    :cond_11a
    :goto_11a
    const/4 v11, 0x0

    throw v13

    :catch_11c
    move-exception v14

    goto :goto_11a

    :catch_11e
    move-exception v13

    goto :goto_db

    :catch_120
    move-exception v13

    goto :goto_111

    :catchall_122
    move-exception v13

    move-object v11, v12

    goto :goto_115

    :catchall_125
    move-exception v13

    move-object v9, v10

    move-object v11, v12

    goto :goto_115

    :catch_129
    move-exception v2

    goto :goto_b1

    :catch_12b
    move-exception v2

    move-object v11, v12

    goto :goto_b1
.end method

.method private saveUidNameMap()V
    .registers 11

    const-string v6, "NetworkStatsEx"

    const-string v7, "(xxxz) NSS>> saveUidNameMap: Begin..."

    invoke-static {v6, v7}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    new-instance v1, Ljava/io/File;

    iget-object v6, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mBaseDir:Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ex_uidapp-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mMonitorStartTime:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v4, 0x0

    :try_start_2e
    const-string v6, "NetworkStatsEx"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "(xxxz) NSS>> saveUidNameMap: writing "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "..."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Ljava/io/PrintWriter;

    invoke-direct {v5, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/File;)V
    :try_end_55
    .catchall {:try_start_2e .. :try_end_55} :catchall_b8
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_55} :catch_8a

    :try_start_55
    invoke-direct {p0, v5}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->dumpUidNameMap(Ljava/io/PrintWriter;)V
    :try_end_58
    .catchall {:try_start_55 .. :try_end_58} :catchall_c4
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_58} :catch_c7

    if-eqz v5, :cond_5d

    :try_start_5a
    invoke-virtual {v5}, Ljava/io/PrintWriter;->close()V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_5d} :catch_c2

    :cond_5d
    :goto_5d
    const/4 v4, 0x0

    const-string v6, "NetworkStatsEx"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "(xxxz) NSS>> saveUidNameMap: End! "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " duration="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v2

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_8a
    move-exception v0

    :goto_8b
    :try_start_8b
    const-string v6, "NetworkStatsEx"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "(xxxz) NSS>> saveUidNameMap: Error-> failed to write "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "!!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b0
    .catchall {:try_start_8b .. :try_end_b0} :catchall_b8

    if-eqz v4, :cond_5d

    :try_start_b2
    invoke-virtual {v4}, Ljava/io/PrintWriter;->close()V
    :try_end_b5
    .catch Ljava/lang/Exception; {:try_start_b2 .. :try_end_b5} :catch_b6

    goto :goto_5d

    :catch_b6
    move-exception v6

    goto :goto_5d

    :catchall_b8
    move-exception v6

    :goto_b9
    if-eqz v4, :cond_be

    :try_start_bb
    invoke-virtual {v4}, Ljava/io/PrintWriter;->close()V
    :try_end_be
    .catch Ljava/lang/Exception; {:try_start_bb .. :try_end_be} :catch_c0

    :cond_be
    :goto_be
    const/4 v4, 0x0

    throw v6

    :catch_c0
    move-exception v7

    goto :goto_be

    :catch_c2
    move-exception v6

    goto :goto_5d

    :catchall_c4
    move-exception v6

    move-object v4, v5

    goto :goto_b9

    :catch_c7
    move-exception v0

    move-object v4, v5

    goto :goto_8b
.end method

.method private setEndTimeToSetting(J)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "monitor_network_usage_end_time"

    invoke-static {v0, v1, p1, p2}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    return-void
.end method

.method private setSamplingRateFromSetting(I)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "monitor_network_usage_sampling_rate"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private setStartTimeToSetting(J)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "monitor_network_usage_start_time"

    invoke-static {v0, v1, p1, p2}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    return-void
.end method

.method private test(Ljava/io/PrintWriter;Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 5

    const-string v0, "NetworkStatsEx"

    const-string v1, "(xxxz) NSS>> test: Begin..."

    invoke-static {v0, v1}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "NetworkStatsEx"

    const-string v1, "(xxxz) NSS>> test: End!"

    invoke-static {v0, v1}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private updateUidNameMap(Z)V
    .registers 9

    const-string v3, "NetworkStatsEx"

    const-string v4, "(xxxz) NSS>> updateUidNameMap: Begin..."

    invoke-static {v3, v4}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mUidNameMap:Ljava/util/HashMap;

    if-nez v3, :cond_13

    const-string v3, "NetworkStatsEx"

    const-string v4, "(xxxz) NSS>> updateUidNameMap: End! (null)"

    invoke-static {v3, v4}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    :goto_12
    return-void

    :cond_13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v3}, Lcom/android/server/net/NetworkStatsRecorder;->getUids()[I

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->updateUidNameMap([I)Z

    move-result v0

    iget-object v3, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v3}, Lcom/android/server/net/NetworkStatsRecorder;->getUids()[I

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->updateUidNameMap([I)Z

    move-result v3

    if-eqz v3, :cond_2e

    const/4 v0, 0x1

    :cond_2e
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v3}, Lcom/android/server/net/NetworkStatsRecorder;->getUids()[I

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->updateUidNameMap([I)Z

    move-result v3

    if-eqz v3, :cond_3b

    const/4 v0, 0x1

    :cond_3b
    if-eqz p1, :cond_42

    if-eqz v0, :cond_42

    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->saveUidNameMap()V

    :cond_42
    const-string v3, "NetworkStatsEx"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "(xxxz) NSS>> updateUidNameMap: End! duration="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12
.end method

.method private updateUidNameMap([I)Z
    .registers 8

    const/4 v2, 0x0

    if-eqz p1, :cond_7

    array-length v3, p1

    const/4 v4, 0x1

    if-ge v3, v4, :cond_10

    :cond_7
    const-string v3, "NetworkStatsEx"

    const-string v4, "(xxxz) NSS>> undateUidNameMap: End! no uids"

    invoke-static {v3, v4}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    :goto_f
    return v3

    :cond_10
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_12
    array-length v3, p1

    if-ge v1, v3, :cond_55

    iget-object v3, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mUidNameMap:Ljava/util/HashMap;

    aget v4, p1, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/NetworkStatsDetailedMonitor$UidDetail;

    if-nez v0, :cond_52

    const-string v3, "NetworkStatsEx"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "(xxxz) NSS>> undateUidNameMap: add uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, p1, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/server/net/NetworkStatsDetailedMonitor$UidDetail;

    aget v3, p1, v1

    invoke-direct {v0, p0, v3}, Lcom/android/server/net/NetworkStatsDetailedMonitor$UidDetail;-><init>(Lcom/android/server/net/NetworkStatsDetailedMonitor;I)V

    iget-object v3, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mUidNameMap:Ljava/util/HashMap;

    aget v4, p1, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    :cond_52
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_55
    move v3, v2

    goto :goto_f
.end method


# virtual methods
.method protected dump(Ljava/io/PrintWriter;Lcom/android/internal/util/IndentingPrintWriter;Ljava/util/HashSet;)Z
    .registers 16

    const/4 v6, 0x0

    const/4 v7, 0x1

    const-string v8, "--enablex"

    invoke-virtual {p3, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    const-string v8, "--disablex"

    invoke-virtual {p3, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v8, "--fullex"

    invoke-virtual {p3, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1e

    const-string v8, "fullex"

    invoke-virtual {p3, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_72

    :cond_1e
    move v4, v7

    :goto_1f
    const-string v8, "--exportex"

    invoke-virtual {p3, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3f

    const-string v8, "exportex"

    invoke-virtual {p3, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3f

    const-string v8, "--export"

    invoke-virtual {p3, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3f

    const-string v8, "--export"

    invoke-virtual {p3, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_74

    :cond_3f
    move v2, v7

    :goto_40
    const-string v8, "--exportexx"

    invoke-virtual {p3, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_50

    const-string v8, "exportexx"

    invoke-virtual {p3, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_76

    :cond_50
    move v3, v7

    :goto_51
    const-string v8, "--testex"

    invoke-virtual {p3, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_61

    const-string v8, "testex"

    invoke-virtual {p3, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_78

    :cond_61
    move v5, v7

    :goto_62
    if-eqz v5, :cond_7a

    const-string v6, "=== testex ===================================="

    invoke-virtual {p2, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->test(Ljava/io/PrintWriter;Lcom/android/internal/util/IndentingPrintWriter;)V

    const-string v6, "=== testex ===================================="

    invoke-virtual {p2, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :goto_71
    return v7

    :cond_72
    move v4, v6

    goto :goto_1f

    :cond_74
    move v2, v6

    goto :goto_40

    :cond_76
    move v3, v6

    goto :goto_51

    :cond_78
    move v5, v6

    goto :goto_62

    :cond_7a
    if-eqz v3, :cond_85

    const-string v8, "Exporting detailed network stats monitoring data... (keep raw data)"

    invoke-virtual {p2, v8}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-direct {p0, v6, p2}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->exportData(ZLcom/android/internal/util/IndentingPrintWriter;)Z

    goto :goto_71

    :cond_85
    if-eqz v2, :cond_90

    const-string v6, "Export detailed network stats monitoring data..."

    invoke-virtual {p2, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-direct {p0, v7, p2}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->exportData(ZLcom/android/internal/util/IndentingPrintWriter;)Z

    goto :goto_71

    :cond_90
    if-eqz v0, :cond_9b

    const-string v8, "Disable detailed network stats monitoring"

    invoke-virtual {p2, v8}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-direct {p0, v6}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->disable(Z)V

    goto :goto_71

    :cond_9b
    if-eqz v1, :cond_a8

    const-string v8, "Enable detailed network stats monitoring"

    invoke-virtual {p2, v8}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-wide/16 v8, -0x1

    invoke-direct {p0, v8, v9, v6}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->enable(JZ)V

    goto :goto_71

    :cond_a8
    if-eqz v4, :cond_102

    iget-wide v8, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mMonitorStartTime:J

    iget-wide v10, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mMonitorEndTime:J

    cmp-long v6, v8, v10

    if-gtz v6, :cond_d7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Monitoring is stopped! last start="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mMonitorStartTime:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", end="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mMonitorEndTime:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_71

    :cond_d7
    const-string v6, "netstats: begin ==="

    invoke-virtual {p2, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->dumpIf(Lcom/android/internal/util/IndentingPrintWriter;)V

    iget-object v6, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-direct {p0, p2, v6}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->dumpDev(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/net/NetworkStatsRecorder;)V

    iget-object v6, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-direct {p0, p2, v6}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->dumpXt(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/net/NetworkStatsRecorder;)V

    iget-object v6, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-direct {p0, p2, v6}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->dumpUid(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/net/NetworkStatsRecorder;)V

    iget-object v6, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-direct {p0, p2, v6}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->dumpUidTag(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/net/NetworkStatsRecorder;)V

    const-string v6, "UID-Name Mapping:"

    invoke-virtual {p2, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->dumpUidNameMap(Ljava/io/PrintWriter;)V

    const-string v6, "netstats: end ==="

    invoke-virtual {p2, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_71

    :cond_102
    move v7, v6

    goto/16 :goto_71
.end method

.method public reset()V
    .registers 3

    const-string v0, "NetworkStatsEx"

    const-string v1, "(xxxz) NSS>> reset: Begin..."

    invoke-static {v0, v1}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mReceiverMonitoringSetting:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->disable(Z)V

    const-string v0, "NetworkStatsEx"

    const-string v1, "(xxxz) NSS>> reset: End!"

    invoke-static {v0, v1}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public systemReady()V
    .registers 8

    const/4 v6, 0x1

    const-string v2, "NetworkStatsEx"

    const-string v3, "(xxxz) NSS>> systemReady: Begin..."

    invoke-static {v2, v3}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "action.NETWORK_MONITOR"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mReceiverMonitoringSetting:Landroid/content/BroadcastReceiver;

    const-string v4, "com.samsung.android.permission.AUTHORISED_FOR_NETWORK_WAKELOCK_MONITORING"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->checkShipAndDebugLevel()Z

    move-result v2

    if-eqz v2, :cond_57

    iget-object v2, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "persist.sys.monitor_network"

    const-string v4, "1"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->getSamplingRateFromSetting()I

    move-result v1

    if-ge v1, v6, :cond_33

    const/4 v1, 0x1

    :cond_33
    const-string v2, "NetworkStatsEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(xxxz) NSS>> systemReady: rate="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    int-to-long v2, v1

    invoke-direct {p0, v2, v3, v6}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->enable(JZ)V

    const-string v2, "NetworkStatsEx"

    const-string v3, "(xxxz) NSS>> systemReady: End!"

    invoke-static {v2, v3}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    :goto_56
    return-void

    :cond_57
    const-string v2, "NetworkStatsEx"

    const-string v3, "(xxxz) NSS>> systemReady: ship or debug is low. disable the monitoring!"

    invoke-static {v2, v3}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/net/NetworkStatsDetailedMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "persist.sys.monitor_network"

    const-string v4, "0"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/server/net/NetworkStatsDetailedMonitor;->disable(Z)V

    goto :goto_56
.end method
