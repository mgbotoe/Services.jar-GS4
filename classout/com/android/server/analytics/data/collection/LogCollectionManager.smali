.class public Lcom/android/server/analytics/data/collection/LogCollectionManager;
.super Ljava/lang/Object;
.source "LogCollectionManager.java"

# interfaces
.implements Lcom/sec/analytics/data/collection/serviceif/LogCollector$LogCollectorCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/analytics/data/collection/LogCollectionManager$LogClient;
    }
.end annotation


# static fields
.field private static final ANALYTICS_FOLDER:Ljava/lang/String; = "/data/system/analytics/"

.field private static final APPLICATION_LOG_FILE:Ljava/lang/String; = "application.log"

.field private static final BROWSER_LOG_FILE:Ljava/lang/String; = "browser.log"

.field private static final INPUT_LOG_FILE:Ljava/lang/String; = "input.log"

.field public static final LINE_SEPARATOR:Ljava/lang/String; = null

.field private static final LOG_GROUPS:[I = null

.field private static final TAG:Ljava/lang/String; = "LogCollectionManager"

.field private static final mLogCollectorSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/sec/analytics/data/collection/serviceif/LogCollector;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActiveGroups:I

.field private final mClientGroupMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/analytics/data/collection/LogCollectionManager$LogClient;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_30

    sput-object v0, Lcom/android/server/analytics/data/collection/LogCollectionManager;->LOG_GROUPS:[I

    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/analytics/data/collection/LogCollectionManager;->LINE_SEPARATOR:Ljava/lang/String;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/analytics/data/collection/LogCollectionManager;->mLogCollectorSet:Ljava/util/Set;

    invoke-static {}, Lcom/android/server/analytics/data/collection/LogCollectionManager;->init()V

    sget-object v0, Lcom/android/server/analytics/data/collection/LogCollectionManager;->mLogCollectorSet:Ljava/util/Set;

    new-instance v1, Lcom/android/server/analytics/data/collection/logcat/LogcatDataCollector;

    invoke-direct {v1}, Lcom/android/server/analytics/data/collection/logcat/LogcatDataCollector;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/analytics/data/collection/LogCollectionManager;->mLogCollectorSet:Ljava/util/Set;

    new-instance v1, Lcom/android/server/analytics/data/collection/input/InputEventDataCollector;

    invoke-direct {v1}, Lcom/android/server/analytics/data/collection/input/InputEventDataCollector;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    nop

    :array_30
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/analytics/data/collection/LogCollectionManager;->mClientGroupMap:Ljava/util/Map;

    iput-object p1, p0, Lcom/android/server/analytics/data/collection/LogCollectionManager;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/server/analytics/data/collection/LogCollectionManager;->init()V

    return-void
.end method

.method static synthetic access$000(Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/analytics/data/collection/LogCollectionManager;->closeOutputStream(Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/analytics/data/collection/LogCollectionManager;)Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/android/server/analytics/data/collection/LogCollectionManager;->mClientGroupMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/analytics/data/collection/LogCollectionManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/analytics/data/collection/LogCollectionManager;->reconcileLogCollection()V

    return-void
.end method

.method private static closeOutputStream(Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;)V
    .registers 3

    :try_start_0
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->flush()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_e

    :goto_3
    :try_start_3
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->sync()V
    :try_end_a
    .catch Ljava/io/SyncFailedException; {:try_start_3 .. :try_end_a} :catch_13
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_a} :catch_18

    :goto_a
    :try_start_a
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_d} :catch_1d

    :goto_d
    return-void

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catch_13
    move-exception v0

    invoke-virtual {v0}, Ljava/io/SyncFailedException;->printStackTrace()V

    goto :goto_a

    :catch_18
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    :catch_1d
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d
.end method

.method private static getMissingGroups(II)I
    .registers 4

    and-int v0, p0, p1

    xor-int v1, v0, p1

    return v1
.end method

.method private declared-synchronized getOutputStreams(I)Ljava/util/Set;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set",
            "<",
            "Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    new-instance v3, Ljava/util/LinkedHashSet;

    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    iget-object v4, p0, Lcom/android/server/analytics/data/collection/LogCollectionManager;->mClientGroupMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_10
    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/analytics/data/collection/LogCollectionManager$LogClient;

    #getter for: Lcom/android/server/analytics/data/collection/LogCollectionManager$LogClient;->files:Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/android/server/analytics/data/collection/LogCollectionManager$LogClient;->access$300(Lcom/android/server/analytics/data/collection/LogCollectionManager$LogClient;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    if-eqz v0, :cond_10

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_2c

    goto :goto_10

    :catchall_2c
    move-exception v4

    monitor-exit p0

    throw v4

    :cond_2f
    monitor-exit p0

    return-object v3
.end method

.method private static init()V
    .registers 3

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/analytics/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_10

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_10
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Finished creating directories"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method private static isValidLogGroups(I)I
    .registers 6

    sget-object v0, Lcom/android/server/analytics/data/collection/LogCollectionManager;->LOG_GROUPS:[I

    array-length v3, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v3, :cond_e

    aget v1, v0, v2

    xor-int/lit8 v4, v1, -0x1

    and-int/2addr p0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_e
    return p0
.end method

.method private static logGroupCount(I)I
    .registers 7

    const/4 v1, 0x0

    sget-object v0, Lcom/android/server/analytics/data/collection/LogCollectionManager;->LOG_GROUPS:[I

    array-length v4, v0

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v4, :cond_12

    aget v2, v0, v3

    and-int v5, v2, p0

    if-eqz v5, :cond_f

    add-int/lit8 v1, v1, 0x1

    :cond_f
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_12
    return v1
.end method

.method private declared-synchronized reconcileLogCollection()V
    .registers 9

    monitor-enter p0

    const/4 v4, 0x0

    :try_start_2
    iget-object v7, p0, Lcom/android/server/analytics/data/collection/LogCollectionManager;->mClientGroupMap:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/analytics/data/collection/LogCollectionManager$LogClient;

    iget v7, v1, Lcom/android/server/analytics/data/collection/LogCollectionManager$LogClient;->logGroups:I

    or-int/2addr v4, v7

    goto :goto_c

    :cond_1c
    iget v7, p0, Lcom/android/server/analytics/data/collection/LogCollectionManager;->mActiveGroups:I
    :try_end_1e
    .catchall {:try_start_2 .. :try_end_1e} :catchall_49

    if-ne v4, v7, :cond_22

    :goto_20
    monitor-exit p0

    return-void

    :cond_22
    :try_start_22
    sget-object v7, Lcom/android/server/analytics/data/collection/LogCollectionManager;->mLogCollectorSet:Ljava/util/Set;

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_28
    :goto_28
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/analytics/data/collection/serviceif/LogCollector;

    invoke-interface {v2}, Lcom/sec/analytics/data/collection/serviceif/LogCollector;->getSupportedLogGroups()I

    move-result v6

    invoke-interface {v2}, Lcom/sec/analytics/data/collection/serviceif/LogCollector;->getActiveLogGroups()I

    move-result v0

    and-int v5, v4, v6

    if-nez v5, :cond_4c

    if-eqz v0, :cond_4c

    invoke-interface {v2, p0}, Lcom/sec/analytics/data/collection/serviceif/LogCollector;->unregisterLogCollectorCallback(Lcom/sec/analytics/data/collection/serviceif/LogCollector$LogCollectorCallback;)V

    invoke-interface {v2}, Lcom/sec/analytics/data/collection/serviceif/LogCollector;->stopLogCollection()V
    :try_end_48
    .catchall {:try_start_22 .. :try_end_48} :catchall_49

    goto :goto_28

    :catchall_49
    move-exception v7

    monitor-exit p0

    throw v7

    :cond_4c
    if-eqz v5, :cond_57

    if-nez v0, :cond_57

    :try_start_50
    invoke-interface {v2, p0}, Lcom/sec/analytics/data/collection/serviceif/LogCollector;->registerLogCollectorCallback(Lcom/sec/analytics/data/collection/serviceif/LogCollector$LogCollectorCallback;)V

    invoke-interface {v2, v5}, Lcom/sec/analytics/data/collection/serviceif/LogCollector;->startLogCollection(I)V

    goto :goto_28

    :cond_57
    if-eq v5, v0, :cond_28

    invoke-interface {v2, v5}, Lcom/sec/analytics/data/collection/serviceif/LogCollector;->restartLogCollection(I)V

    goto :goto_28

    :cond_5d
    iput v4, p0, Lcom/android/server/analytics/data/collection/LogCollectionManager;->mActiveGroups:I
    :try_end_5f
    .catchall {:try_start_50 .. :try_end_5f} :catchall_49

    goto :goto_20
.end method


# virtual methods
.method public declared-synchronized disableLogCollection(Lcom/sec/analytics/data/collection/serviceif/IDataCollectionManagerCb;ILandroid/os/ParcelFileDescriptor;)V
    .registers 12

    monitor-enter p0

    if-eqz p2, :cond_7

    if-eqz p1, :cond_7

    if-nez p3, :cond_12

    :cond_7
    :try_start_7
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Arguments are either null or 0."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_f

    :catchall_f
    move-exception v5

    monitor-exit p0

    throw v5

    :cond_12
    :try_start_12
    invoke-static {p2}, Lcom/android/server/analytics/data/collection/LogCollectionManager;->isValidLogGroups(I)I

    move-result v3

    if-eqz v3, :cond_31

    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " log groups not supported."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_31
    invoke-static {p2}, Lcom/android/server/analytics/data/collection/LogCollectionManager;->logGroupCount(I)I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_40

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Only single log group should be disabled at a time."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_40
    iget-object v5, p0, Lcom/android/server/analytics/data/collection/LogCollectionManager;->mClientGroupMap:Ljava/util/Map;

    invoke-interface {p1}, Lcom/sec/analytics/data/collection/serviceif/IDataCollectionManagerCb;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5e

    iget-object v5, p0, Lcom/android/server/analytics/data/collection/LogCollectionManager;->mClientGroupMap:Ljava/util/Map;

    invoke-interface {p1}, Lcom/sec/analytics/data/collection/serviceif/IDataCollectionManagerCb;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/analytics/data/collection/LogCollectionManager$LogClient;

    iget v2, v1, Lcom/android/server/analytics/data/collection/LogCollectionManager$LogClient;->logGroups:I
    :try_end_5a
    .catchall {:try_start_12 .. :try_end_5a} :catchall_f

    and-int v4, v2, p2

    if-nez v4, :cond_60

    :cond_5e
    :goto_5e
    monitor-exit p0

    return-void

    :cond_60
    xor-int/lit8 v5, p2, -0x1

    and-int/2addr v5, v2

    :try_start_63
    iput v5, v1, Lcom/android/server/analytics/data/collection/LogCollectionManager$LogClient;->logGroups:I

    #getter for: Lcom/android/server/analytics/data/collection/LogCollectionManager$LogClient;->files:Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/android/server/analytics/data/collection/LogCollectionManager$LogClient;->access$300(Lcom/android/server/analytics/data/collection/LogCollectionManager$LogClient;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-static {v0}, Lcom/android/server/analytics/data/collection/LogCollectionManager;->closeOutputStream(Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;)V

    #getter for: Lcom/android/server/analytics/data/collection/LogCollectionManager$LogClient;->files:Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/android/server/analytics/data/collection/LogCollectionManager$LogClient;->access$300(Lcom/android/server/analytics/data/collection/LogCollectionManager$LogClient;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, p2}, Landroid/util/SparseArray;->remove(I)V

    iget v5, v1, Lcom/android/server/analytics/data/collection/LogCollectionManager$LogClient;->logGroups:I

    if-nez v5, :cond_8e

    invoke-interface {p1}, Lcom/sec/analytics/data/collection/serviceif/IDataCollectionManagerCb;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v1, v6}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    iget-object v5, p0, Lcom/android/server/analytics/data/collection/LogCollectionManager;->mClientGroupMap:Ljava/util/Map;

    invoke-interface {p1}, Lcom/sec/analytics/data/collection/serviceif/IDataCollectionManagerCb;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8e
    invoke-direct {p0}, Lcom/android/server/analytics/data/collection/LogCollectionManager;->reconcileLogCollection()V
    :try_end_91
    .catchall {:try_start_63 .. :try_end_91} :catchall_f

    goto :goto_5e
.end method

.method public declared-synchronized enableLogCollection(Lcom/sec/analytics/data/collection/serviceif/IDataCollectionManagerCb;ILandroid/os/ParcelFileDescriptor;)V
    .registers 14

    monitor-enter p0

    if-eqz p2, :cond_7

    if-eqz p1, :cond_7

    if-nez p3, :cond_12

    :cond_7
    :try_start_7
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Arguments are either null or 0."

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_f

    :catchall_f
    move-exception v7

    monitor-exit p0

    throw v7

    :cond_12
    :try_start_12
    invoke-static {p2}, Lcom/android/server/analytics/data/collection/LogCollectionManager;->isValidLogGroups(I)I

    move-result v4

    if-eqz v4, :cond_31

    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " log groups not supported."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_31
    invoke-static {p2}, Lcom/android/server/analytics/data/collection/LogCollectionManager;->logGroupCount(I)I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_40

    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Only single log group should be enabled at a time."

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_40
    .catchall {:try_start_12 .. :try_end_40} :catchall_f

    :cond_40
    :try_start_40
    new-instance v6, Ljava/lang/SecurityManager;

    invoke-direct {v6}, Ljava/lang/SecurityManager;-><init>()V

    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/SecurityManager;->checkWrite(Ljava/io/FileDescriptor;)V
    :try_end_4c
    .catchall {:try_start_40 .. :try_end_4c} :catchall_f
    .catch Ljava/lang/SecurityException; {:try_start_40 .. :try_end_4c} :catch_6e

    :try_start_4c
    iget-object v7, p0, Lcom/android/server/analytics/data/collection/LogCollectionManager;->mClientGroupMap:Ljava/util/Map;

    invoke-interface {p1}, Lcom/sec/analytics/data/collection/serviceif/IDataCollectionManagerCb;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_98

    iget-object v7, p0, Lcom/android/server/analytics/data/collection/LogCollectionManager;->mClientGroupMap:Ljava/util/Map;

    invoke-interface {p1}, Lcom/sec/analytics/data/collection/serviceif/IDataCollectionManagerCb;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/analytics/data/collection/LogCollectionManager$LogClient;

    iget v3, v0, Lcom/android/server/analytics/data/collection/LogCollectionManager$LogClient;->logGroups:I

    invoke-static {v3, p2}, Lcom/android/server/analytics/data/collection/LogCollectionManager;->getMissingGroups(II)I
    :try_end_69
    .catchall {:try_start_4c .. :try_end_69} :catchall_f

    move-result v7

    if-nez v7, :cond_77

    :goto_6c
    monitor-exit p0

    return-void

    :catch_6e
    move-exception v2

    :try_start_6f
    const-string v7, "LogCollectionManager"

    const-string v8, "can\'t write to file descriptor"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    throw v2

    :cond_77
    invoke-static {v3, p2}, Lcom/android/server/analytics/data/collection/LogCollectionManager;->getMissingGroups(II)I

    move-result v5

    or-int v7, v3, v5

    iput v7, v0, Lcom/android/server/analytics/data/collection/LogCollectionManager$LogClient;->logGroups:I

    #getter for: Lcom/android/server/analytics/data/collection/LogCollectionManager$LogClient;->files:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/android/server/analytics/data/collection/LogCollectionManager$LogClient;->access$300(Lcom/android/server/analytics/data/collection/LogCollectionManager$LogClient;)Landroid/util/SparseArray;

    move-result-object v7

    new-instance v8, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v8, p3}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    invoke-virtual {v7, p2, v8}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    iget-object v7, p0, Lcom/android/server/analytics/data/collection/LogCollectionManager;->mClientGroupMap:Ljava/util/Map;

    invoke-interface {p1}, Lcom/sec/analytics/data/collection/serviceif/IDataCollectionManagerCb;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/server/analytics/data/collection/LogCollectionManager;->reconcileLogCollection()V

    goto :goto_6c

    :cond_98
    new-instance v0, Lcom/android/server/analytics/data/collection/LogCollectionManager$LogClient;

    invoke-interface {p1}, Lcom/sec/analytics/data/collection/serviceif/IDataCollectionManagerCb;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-direct {v0, p0, v7}, Lcom/android/server/analytics/data/collection/LogCollectionManager$LogClient;-><init>(Lcom/android/server/analytics/data/collection/LogCollectionManager;Landroid/os/IBinder;)V

    iput p2, v0, Lcom/android/server/analytics/data/collection/LogCollectionManager$LogClient;->logGroups:I

    #getter for: Lcom/android/server/analytics/data/collection/LogCollectionManager$LogClient;->files:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/android/server/analytics/data/collection/LogCollectionManager$LogClient;->access$300(Lcom/android/server/analytics/data/collection/LogCollectionManager$LogClient;)Landroid/util/SparseArray;

    move-result-object v7

    new-instance v8, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v8, p3}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    invoke-virtual {v7, p2, v8}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    iget-object v7, p0, Lcom/android/server/analytics/data/collection/LogCollectionManager;->mClientGroupMap:Ljava/util/Map;

    invoke-interface {p1}, Lcom/sec/analytics/data/collection/serviceif/IDataCollectionManagerCb;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b8
    .catchall {:try_start_6f .. :try_end_b8} :catchall_f

    :try_start_b8
    invoke-interface {p1}, Lcom/sec/analytics/data/collection/serviceif/IDataCollectionManagerCb;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v7, v0, v8}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_c0
    .catchall {:try_start_b8 .. :try_end_c0} :catchall_f
    .catch Landroid/os/RemoteException; {:try_start_b8 .. :try_end_c0} :catch_c4

    :goto_c0
    :try_start_c0
    invoke-direct {p0}, Lcom/android/server/analytics/data/collection/LogCollectionManager;->reconcileLogCollection()V

    goto :goto_6c

    :catch_c4
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_c8
    .catchall {:try_start_c0 .. :try_end_c8} :catchall_f

    goto :goto_c0
.end method

.method public processLog(ILjava/lang/String;)V
    .registers 8

    invoke-direct {p0, p1}, Lcom/android/server/analytics/data/collection/LogCollectionManager;->getOutputStreams(I)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    :try_start_14
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->write([B)V

    sget-object v4, Lcom/android/server/analytics/data/collection/LogCollectionManager;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->write([B)V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_24} :catch_25

    goto :goto_8

    :catch_25
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    :cond_2a
    return-void
.end method
