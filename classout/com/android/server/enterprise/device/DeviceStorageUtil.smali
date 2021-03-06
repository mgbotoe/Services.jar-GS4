.class public Lcom/android/server/enterprise/device/DeviceStorageUtil;
.super Ljava/lang/Object;
.source "DeviceStorageUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DeviceStorageUtil"

.field private static mStorageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;


# instance fields
.field final ERROR:I

.field private final SIZE_INVALID:I

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, -0x1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/server/enterprise/device/DeviceStorageUtil;->ERROR:I

    iput v0, p0, Lcom/android/server/enterprise/device/DeviceStorageUtil;->SIZE_INVALID:I

    iput-object p1, p0, Lcom/android/server/enterprise/device/DeviceStorageUtil;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/enterprise/device/DeviceStorageUtil;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/device/DeviceStorageUtil;->mStorageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;

    return-void
.end method

.method private externalSdCardAvailable()Z
    .registers 3

    sget-object v1, Lcom/android/server/enterprise/device/DeviceStorageUtil;->mStorageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;

    invoke-virtual {v1}, Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;->getExternalSdCardState()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v1, 0x0

    :goto_9
    return v1

    :cond_a
    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_9
.end method

.method private getExternalSdCardDirectory()Ljava/io/File;
    .registers 3

    sget-object v1, Lcom/android/server/enterprise/device/DeviceStorageUtil;->mStorageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;

    invoke-virtual {v1}, Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;->getExternalSdCardPath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v1, 0x0

    :goto_9
    return-object v1

    :cond_a
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_9
.end method

.method private getInternalSdCardDirectory()Ljava/io/File;
    .registers 3

    sget-object v1, Lcom/android/server/enterprise/device/DeviceStorageUtil;->mStorageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;

    invoke-virtual {v1}, Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;->getInternalSdCardPath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v1, 0x0

    :goto_9
    return-object v1

    :cond_a
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_9
.end method

.method private getSizeStr(J)Ljava/lang/String;
    .registers 7

    const-wide/16 v2, -0x1

    cmp-long v2, p1, v2

    if-nez v2, :cond_8

    const/4 v1, 0x0

    :goto_7
    return-object v1

    :cond_8
    const/4 v1, 0x0

    :try_start_9
    iget-object v2, p0, Lcom/android/server/enterprise/device/DeviceStorageUtil;->mContext:Landroid/content/Context;

    invoke-static {v2, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_e} :catch_10

    move-result-object v1

    goto :goto_7

    :catch_10
    move-exception v0

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7
.end method


# virtual methods
.method public getAvailableExternalMemorySize()J
    .registers 11

    const-wide/16 v7, -0x1

    :try_start_2
    invoke-direct {p0}, Lcom/android/server/enterprise/device/DeviceStorageUtil;->externalSdCardAvailable()Z

    move-result v9

    if-eqz v9, :cond_e

    invoke-direct {p0}, Lcom/android/server/enterprise/device/DeviceStorageUtil;->getExternalSdCardDirectory()Ljava/io/File;

    move-result-object v5

    if-nez v5, :cond_f

    :cond_e
    :goto_e
    return-wide v7

    :cond_f
    new-instance v6, Landroid/os/StatFs;

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v9}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockSize()I

    move-result v9

    int-to-long v2, v9

    invoke-virtual {v6}, Landroid/os/StatFs;->getAvailableBlocks()I
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_20} :catch_25

    move-result v7

    int-to-long v0, v7

    mul-long v7, v0, v2

    goto :goto_e

    :catch_25
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_e
.end method

.method public getAvailableExternalMemorySizeFormated()Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lcom/android/server/enterprise/device/DeviceStorageUtil;->getAvailableExternalMemorySize()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/device/DeviceStorageUtil;->getSizeStr(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAvailableInternalMemorySize()J
    .registers 13

    const-wide/16 v9, -0x1

    const-wide/16 v6, 0x0

    :try_start_4
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v5

    new-instance v8, Landroid/os/StatFs;

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v11}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Landroid/os/StatFs;->getBlockSize()I

    move-result v11

    int-to-long v2, v11

    invoke-virtual {v8}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v11

    int-to-long v0, v11

    mul-long v6, v0, v2

    invoke-direct {p0}, Lcom/android/server/enterprise/device/DeviceStorageUtil;->getInternalSdCardDirectory()Ljava/io/File;

    move-result-object v5

    if-nez v5, :cond_24

    :goto_23
    return-wide v9

    :cond_24
    new-instance v8, Landroid/os/StatFs;

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v11}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Landroid/os/StatFs;->getBlockSize()I

    move-result v11

    int-to-long v2, v11

    invoke-virtual {v8}, Landroid/os/StatFs;->getAvailableBlocks()I
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_35} :catch_3c

    move-result v9

    int-to-long v0, v9

    mul-long v9, v0, v2

    add-long/2addr v6, v9

    move-wide v9, v6

    goto :goto_23

    :catch_3c
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_23
.end method

.method public getAvailableInternalMemorySizeFormated()Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lcom/android/server/enterprise/device/DeviceStorageUtil;->getAvailableInternalMemorySize()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/device/DeviceStorageUtil;->getSizeStr(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTotalExternalMemorySize()J
    .registers 11

    const-wide/16 v7, -0x1

    :try_start_2
    invoke-direct {p0}, Lcom/android/server/enterprise/device/DeviceStorageUtil;->externalSdCardAvailable()Z

    move-result v9

    if-eqz v9, :cond_e

    invoke-direct {p0}, Lcom/android/server/enterprise/device/DeviceStorageUtil;->getExternalSdCardDirectory()Ljava/io/File;

    move-result-object v3

    if-nez v3, :cond_f

    :cond_e
    :goto_e
    return-wide v7

    :cond_f
    new-instance v4, Landroid/os/StatFs;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v4, v9}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I

    move-result v9

    int-to-long v0, v9

    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockCount()I
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_20} :catch_25

    move-result v7

    int-to-long v5, v7

    mul-long v7, v5, v0

    goto :goto_e

    :catch_25
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_e
.end method

.method public getTotalExternalMemorySizeFormated()Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lcom/android/server/enterprise/device/DeviceStorageUtil;->getTotalExternalMemorySize()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/device/DeviceStorageUtil;->getSizeStr(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTotalInternalMemorySize()J
    .registers 13

    const-wide/16 v9, -0x1

    const-wide/16 v4, 0x0

    :try_start_4
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    new-instance v6, Landroid/os/StatFs;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v6, v11}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockSize()I

    move-result v11

    int-to-long v0, v11

    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockCount()I

    move-result v11

    int-to-long v7, v11

    mul-long v4, v7, v0

    invoke-direct {p0}, Lcom/android/server/enterprise/device/DeviceStorageUtil;->getInternalSdCardDirectory()Ljava/io/File;

    move-result-object v3

    if-nez v3, :cond_24

    :goto_23
    return-wide v9

    :cond_24
    new-instance v6, Landroid/os/StatFs;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v6, v11}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockSize()I

    move-result v11

    int-to-long v0, v11

    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockCount()I
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_35} :catch_3c

    move-result v9

    int-to-long v7, v9

    mul-long v9, v7, v0

    add-long/2addr v4, v9

    move-wide v9, v4

    goto :goto_23

    :catch_3c
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_23
.end method

.method public getTotalInternalMemorySizeFormated()Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lcom/android/server/enterprise/device/DeviceStorageUtil;->getTotalInternalMemorySize()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/device/DeviceStorageUtil;->getSizeStr(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
