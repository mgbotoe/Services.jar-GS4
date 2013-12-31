.class public Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;
.super Lcom/sec/knox/container/contentprovider/ContainerDatabase;
.source "EnterpriseContainerCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache$ContainerInprogressData;
    }
.end annotation


# static fields
.field public static final CACHE_CONTAINER_STATUS_ERROR:I = -0x1


# instance fields
.field private CONTAINER_ID_ONE:I

.field private CONTAINER_LIMIT_REACHED:I

.field private CONTAINER_MAX_LIMIT:I

.field private CONTAINER_NONE:I

.field private final TAG:Ljava/lang/String;

.field dbHandle:Lcom/sec/knox/container/contentprovider/ContainerDatabase;

.field private mContainerCacheHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;",
            ">;"
        }
    .end annotation
.end field

.field mContainerInProgressData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache$ContainerInprogressData;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/sec/knox/container/contentprovider/ContainerDatabase;-><init>()V

    iput-object v2, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    const-string v1, "EnterpriseContainerCacheData"

    iput-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    iput v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->CONTAINER_ID_ONE:I

    const/4 v1, 0x3

    iput v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->CONTAINER_MAX_LIMIT:I

    iget v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->CONTAINER_MAX_LIMIT:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->CONTAINER_LIMIT_REACHED:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->CONTAINER_NONE:I

    iput-object v2, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContext:Landroid/content/Context;

    iput-object v2, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->dbHandle:Lcom/sec/knox/container/contentprovider/ContainerDatabase;

    iput-object v2, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerInProgressData:Ljava/util/HashMap;

    :try_start_1f
    const-string v1, "EnterpriseContainerCacheData"

    const-string v2, "EnterpriseContainerCache initialise"

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->initializeContainersOnBoot(Landroid/content/Context;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerInProgressData:Ljava/util/HashMap;
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_34} :catch_35

    :goto_34
    return-void

    :catch_35
    move-exception v0

    const-string v1, "EnterpriseContainerCacheData"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_34
.end method

.method private getContainers(IZ)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/knox/EnterpriseContainerObject;",
            ">;"
        }
    .end annotation

    const-string v5, "EnterpriseContainerCacheData"

    const-string v6, "Container cache getContainers "

    invoke-static {v5, v6}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    if-eqz v5, :cond_d6

    const-string v5, "EnterpriseContainerCacheData"

    const-string v6, "Container cache getContainers not null"

    invoke-static {v5, v6}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :cond_21
    :goto_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_de

    const-string v5, "EnterpriseContainerCacheData"

    const-string v6, "getContainerStatus while loop"

    invoke-static {v5, v6}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "--key--"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "----"

    invoke-static {v5, v6}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;

    new-instance v3, Lcom/sec/enterprise/knox/EnterpriseContainerObject;

    invoke-direct {v3}, Lcom/sec/enterprise/knox/EnterpriseContainerObject;-><init>()V

    invoke-virtual {v0}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->getContainerId()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->setContainerId(I)V

    invoke-virtual {v0}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->setContainerName(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->getAdmin()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->setContainerAdmin(I)V

    invoke-virtual {v0}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->getEmail()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->setContainerEmail(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->getLockType()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->setContainerLockType(I)V

    invoke-virtual {v0}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->getContainerType()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->setContainerType(I)V

    const-string v5, "EnterpriseContainerCacheData"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getContainerStatus of: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->getContainerId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " status: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->getContainerStatus()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "--flag--"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x1

    if-eq p2, v5, :cond_d1

    invoke-virtual {v0}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->getContainerStatus()I

    move-result v5

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v5, v6, :cond_21

    :cond_d1
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_21

    :cond_d6
    const-string v5, "EnterpriseContainerCacheData"

    const-string v6, "getActiveContainersreturn NULL"

    invoke-static {v5, v6}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_de
    return-object v2
.end method

.method private initializeContainersOnBoot(Landroid/content/Context;)V
    .registers 6

    invoke-virtual {p0, p1}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->getPasswordContainerdataFromDB(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    if-eqz v2, :cond_2f

    iget-object v2, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-string v2, "EnterpriseContainerCacheData"

    const-string v3, "initializeContainersOnBoot()"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->updateContainerPackageCache(I)Z

    goto :goto_1b

    :cond_2f
    return-void
.end method

.method private updateContainerPackageCache(I)Z
    .registers 7

    iget-object v2, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    if-eqz v2, :cond_37

    iget-object v2, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;

    if-eqz v0, :cond_1d

    iget-object v2, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2, p1}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->getContainerPackagesInfo(Landroid/content/Context;I)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->setContainerPackagesInfo(Ljava/util/HashMap;)V

    const/4 v2, 0x1

    :goto_1c
    return v2

    :cond_1d
    const-string v2, "EnterpriseContainerCacheData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "There is no entry in cache for containerId"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_35
    const/4 v2, 0x0

    goto :goto_1c

    :cond_37
    const-string v2, "EnterpriseContainerCacheData"

    const-string v3, "Container hashmap is null...hmmm"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_35
.end method


# virtual methods
.method public clearContainerRequestId(I)V
    .registers 7

    iget-object v3, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerInProgressData:Ljava/util/HashMap;

    if-eqz v3, :cond_34

    iget-object v3, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerInProgressData:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const-string v3, "EnterpriseContainerCacheData"

    const-string v4, "initializeContainersOnBoot()"

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_16
    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_34

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v3, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerInProgressData:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache$ContainerInprogressData;

    iget v3, v1, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache$ContainerInprogressData;->mRequestId:I

    if-ne v3, p1, :cond_16

    iget-object v3, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerInProgressData:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_16

    :cond_34
    return-void
.end method

.method public declared-synchronized containerCanceled(I)Z
    .registers 8

    const/4 v3, 0x1

    monitor-enter p0

    :try_start_2
    iget-object v4, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerInProgressData:Ljava/util/HashMap;

    if-eqz v4, :cond_35

    iget-object v4, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerInProgressData:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const-string v4, "EnterpriseContainerCacheData"

    const-string v5, "initializeContainersOnBoot()"

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_35

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v4, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerInProgressData:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache$ContainerInprogressData;

    iget v4, v1, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache$ContainerInprogressData;->mRequestId:I

    if-ne v4, p1, :cond_18

    const/4 v4, 0x1

    iput-boolean v4, v1, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache$ContainerInprogressData;->mIsCanceled:Z
    :try_end_33
    .catchall {:try_start_2 .. :try_end_33} :catchall_37

    :goto_33
    monitor-exit p0

    return v3

    :cond_35
    const/4 v3, 0x0

    goto :goto_33

    :catchall_37
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public getContainerFirmwareVersion(I)Ljava/lang/String;
    .registers 6

    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;

    if-eqz v0, :cond_2f

    const-string v1, "EnterpriseContainerCacheData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFirmwareVersion: getting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->getFirmwareVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->getFirmwareVersion()Ljava/lang/String;

    move-result-object v1

    :goto_2e
    return-object v1

    :cond_2f
    const-string v1, "EnterpriseContainerCacheData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFailedPasswordAttempts: There is no container with containerId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_2e
.end method

.method public getContainerId(Ljava/lang/String;)I
    .registers 3

    iget-object v0, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p1}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->getContainerId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getContainerIdForCreation()I
    .registers 6

    iget-object v2, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->getPasswordContainerdataFromDB(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    iget v0, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->CONTAINER_ID_ONE:I

    iget-object v2, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    iget v3, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->CONTAINER_MAX_LIMIT:I

    if-ne v2, v3, :cond_1e

    const-string v2, "EnterpriseContainerCacheData"

    const-string v3, "getContainerIdForCreation -Maximum 3 reached"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget v2, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->CONTAINER_LIMIT_REACHED:I

    :goto_1d
    return v2

    :cond_1e
    iget-object v2, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    if-eqz v2, :cond_5b

    iget-object v2, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_5b

    :goto_2a
    iget v2, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->CONTAINER_MAX_LIMIT:I

    add-int/lit8 v2, v2, 0x1

    if-ge v0, v2, :cond_3e

    iget-object v2, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;

    if-nez v1, :cond_58

    :cond_3e
    const-string v2, "EnterpriseContainerCacheData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getContainerId"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v0

    goto :goto_1d

    :cond_58
    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    :cond_5b
    iget-object v2, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    iget v3, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->CONTAINER_NONE:I

    if-ne v2, v3, :cond_3e

    const-string v2, "EnterpriseContainerCacheData"

    const-string v3, "get container ID 1"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget v2, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->CONTAINER_ID_ONE:I

    goto :goto_1d
.end method

.method public getContainerIdForRequestId(I)I
    .registers 7

    iget-object v3, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerInProgressData:Ljava/util/HashMap;

    if-eqz v3, :cond_31

    iget-object v3, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerInProgressData:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const-string v3, "EnterpriseContainerCacheData"

    const-string v4, "initializeContainersOnBoot()"

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_31

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v3, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerInProgressData:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache$ContainerInprogressData;

    iget v3, v1, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache$ContainerInprogressData;->mRequestId:I

    if-ne v3, p1, :cond_16

    iget v3, v1, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache$ContainerInprogressData;->mContainerId:I

    :goto_30
    return v3

    :cond_31
    const/4 v3, -0x1

    goto :goto_30
.end method

.method public getContainerLockOnScreenLock(I)Z
    .registers 6

    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;

    if-eqz v0, :cond_2f

    const-string v1, "EnterpriseContainerCacheData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getContainerLockOnScreenLock: getting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->getContainerLockOnScreenLock()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->getContainerLockOnScreenLock()Z

    move-result v1

    :goto_2e
    return v1

    :cond_2f
    const-string v1, "EnterpriseContainerCacheData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getContainerLockOnScreenLock: There is no container with containerId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_2e
.end method

.method public getContainerObjectFromCache(I)Lcom/sec/enterprise/knox/EnterpriseContainerObject;
    .registers 6

    iget-object v2, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    if-eqz v2, :cond_42

    iget-object v2, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;

    if-eqz v1, :cond_42

    new-instance v0, Lcom/sec/enterprise/knox/EnterpriseContainerObject;

    invoke-direct {v0}, Lcom/sec/enterprise/knox/EnterpriseContainerObject;-><init>()V

    invoke-virtual {v1}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->getContainerId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->setContainerId(I)V

    invoke-virtual {v1}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->setContainerName(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->getAdmin()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->setContainerAdmin(I)V

    invoke-virtual {v1}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->getEmail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->setContainerEmail(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->getLockType()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->setContainerLockType(I)V

    invoke-virtual {v1}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->getContainerType()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->setContainerType(I)V

    :goto_41
    return-object v0

    :cond_42
    const/4 v0, 0x0

    goto :goto_41
.end method

.method public getContainerPackages(I)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;

    if-eqz v5, :cond_33

    invoke-virtual {v5}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->getContainerPackagesInfo()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_33

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    if-eqz v3, :cond_33

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_23
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_33

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_23

    :cond_33
    return-object v2
.end method

.method public declared-synchronized getContainerPackagesInfoFromCache()Ljava/util/HashMap;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v4, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    if-eqz v4, :cond_3a

    iget-object v4, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v1, 0x0

    :cond_15
    :goto_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iget-object v4, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;

    invoke-virtual {v1}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->getContainerPackagesInfo()Ljava/util/HashMap;

    move-result-object v4

    if-eqz v4, :cond_15

    invoke-virtual {v1}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->getContainerPackagesInfo()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V
    :try_end_36
    .catchall {:try_start_1 .. :try_end_36} :catchall_37

    goto :goto_15

    :catchall_37
    move-exception v4

    monitor-exit p0

    throw v4

    :cond_3a
    monitor-exit p0

    return-object v0
.end method

.method public getContainerPackagesInfoFromCache(I)Ljava/util/HashMap;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->getContainerPackagesInfo()Ljava/util/HashMap;

    move-result-object v1

    :goto_16
    return-object v1

    :cond_17
    const/4 v1, 0x0

    goto :goto_16
.end method

.method protected getContainerStatus(IZ)I
    .registers 7

    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    if-eqz v1, :cond_31

    if-eqz p2, :cond_31

    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->getContainerStatus()I

    move-result v1

    :goto_18
    return v1

    :cond_19
    const-string v1, "EnterpriseContainerCacheData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "There is no entry in cache for containerId"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_31
    const/4 v1, -0x1

    goto :goto_18
.end method

.method public getContainerVerifyOnlyOnChangeMode(I)Z
    .registers 6

    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;

    if-eqz v0, :cond_2f

    const-string v1, "EnterpriseContainerCacheData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getContainerVerifyOnlyOnChangeMode: getting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->getVerifyPwdOnlyOnChangeMode()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->getVerifyPwdOnlyOnChangeMode()Z

    move-result v1

    :goto_2e
    return v1

    :cond_2f
    const-string v1, "EnterpriseContainerCacheData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getContainerVerifyOnlyOnChangeMode: There is no container with containerId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_2e
.end method

.method public getContainers()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/knox/EnterpriseContainerObject;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->getContainers(IZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getContainers(I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/knox/EnterpriseContainerObject;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->getContainers(IZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getContainers(Lcom/sec/knox/container/constants/CSState;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/knox/container/constants/CSState;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/knox/EnterpriseContainerObject;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->getContainers(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFailedPasswordAttempts(I)I
    .registers 6

    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;

    if-eqz v0, :cond_2f

    const-string v1, "EnterpriseContainerCacheData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFailedPasswordAttempts: getting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->getFailedPasswordAttempts()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->getFailedPasswordAttempts()I

    move-result v1

    :goto_2e
    return v1

    :cond_2f
    const-string v1, "EnterpriseContainerCacheData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFailedPasswordAttempts: There is no container with containerId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_2e
.end method

.method public getFeatureFlagForContainer(I)I
    .registers 5

    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerInProgressData:Ljava/util/HashMap;

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerInProgressData:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache$ContainerInprogressData;

    if-eqz v0, :cond_15

    iget v1, v0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache$ContainerInprogressData;->mCreateFlag:I

    :goto_14
    return v1

    :cond_15
    const/4 v1, 0x0

    goto :goto_14
.end method

.method public getMaximumTimeToLock(I)J
    .registers 7

    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;

    if-eqz v0, :cond_2f

    const-string v1, "EnterpriseContainerCacheData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMaximumTimeToLock: getting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->getMaximumTimeToLock()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->getMaximumTimeToLock()J

    move-result-wide v1

    :goto_2e
    return-wide v1

    :cond_2f
    const-string v1, "EnterpriseContainerCacheData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMaximumTimeToLock: There is no container with containerId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    goto :goto_2e
.end method

.method public getPasswordEnabledContainerLockTimeout(I)J
    .registers 7

    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;

    if-eqz v0, :cond_2f

    const-string v1, "EnterpriseContainerCacheData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPasswordEnabledContainerLockTimeout: getting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->getPasswordEnabledContainerLockTimeout()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->getPasswordEnabledContainerLockTimeout()J

    move-result-wide v1

    :goto_2e
    return-wide v1

    :cond_2f
    const-string v1, "EnterpriseContainerCacheData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPasswordEnabledContainerLockTimeout: There is no container with containerId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    goto :goto_2e
.end method

.method public getPasswordExpirationDate(I)J
    .registers 7

    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;

    if-eqz v0, :cond_2f

    const-string v1, "EnterpriseContainerCacheData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPasswordExpirationDate: getting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->getPasswordExpirationDate()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->getPasswordExpirationDate()J

    move-result-wide v1

    :goto_2e
    return-wide v1

    :cond_2f
    const-string v1, "EnterpriseContainerCacheData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPasswordExpirationDate: There is no container with containerId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    goto :goto_2e
.end method

.method public getPasswordExpirationTimeout(I)J
    .registers 7

    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;

    if-eqz v0, :cond_2f

    const-string v1, "EnterpriseContainerCacheData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPasswordExpirationTimeout: getting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->getPasswordExpirationTimeout()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->getPasswordExpirationTimeout()J

    move-result-wide v1

    :goto_2e
    return-wide v1

    :cond_2f
    const-string v1, "EnterpriseContainerCacheData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPasswordExpirationTimeout: There is no container with containerId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    goto :goto_2e
.end method

.method public getPasswordHasExpired(I)Z
    .registers 6

    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;

    if-eqz v0, :cond_2f

    const-string v1, "EnterpriseContainerCacheData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPasswordHasExpired: getting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->getPasswordHasExpired()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->getPasswordHasExpired()Z

    move-result v1

    :goto_2e
    return v1

    :cond_2f
    const-string v1, "EnterpriseContainerCacheData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPasswordHasExpired: There is no container with containerId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_2e
.end method

.method public getPasswordStateInfoCache(I)Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;
    .registers 5

    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->getPasswordStateInfo()Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;

    move-result-object v1

    :goto_16
    return-object v1

    :cond_17
    const/4 v1, 0x0

    goto :goto_16
.end method

.method public getRequestIdForContainer(I)I
    .registers 5

    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerInProgressData:Ljava/util/HashMap;

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerInProgressData:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache$ContainerInprogressData;

    if-eqz v0, :cond_15

    iget v1, v0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache$ContainerInprogressData;->mRequestId:I

    :goto_14
    return v1

    :cond_15
    const/4 v1, -0x1

    goto :goto_14
.end method

.method public isContainerCanceled(I)Z
    .registers 5

    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerInProgressData:Ljava/util/HashMap;

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerInProgressData:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache$ContainerInprogressData;

    if-eqz v0, :cond_15

    iget-boolean v1, v0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache$ContainerInprogressData;->mIsCanceled:Z

    :goto_14
    return v1

    :cond_15
    const/4 v1, 0x0

    goto :goto_14
.end method

.method public isCreationInProgress()Z
    .registers 2

    iget-object v0, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerInProgressData:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public removeContainer(I)Z
    .registers 6

    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    if-eqz v1, :cond_44

    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;

    if-eqz v0, :cond_2c

    const-string v1, "EnterpriseContainerCacheData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " RemoveContiner- containerid success "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    :goto_2b
    return v1

    :cond_2c
    const-string v1, "EnterpriseContainerCacheData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " RemoveContiner- Cannot remove containerid"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_44
    const/4 v1, 0x0

    goto :goto_2b
.end method

.method public setContainerLockOnScreenLock(IZ)Z
    .registers 10

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;

    if-eqz v0, :cond_46

    const-string v4, "EnterpriseContainerCacheData"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setContainerLockOnScreenLock: setting "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->setContainerLockOnScreenLock(Z)V

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "containerLockOnScreenLock"

    if-ne p2, v2, :cond_44

    :goto_34
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v2, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/sec/knox/container/contentprovider/DBConstants;->CONTAINER_ACTIVE_STATUS_URI:Landroid/net/Uri;

    invoke-virtual {p0, v2, v3, v1, p1}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->updateValuesForContainer(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;I)Z

    move-result v3

    :goto_43
    return v3

    :cond_44
    move v2, v3

    goto :goto_34

    :cond_46
    const-string v2, "EnterpriseContainerCacheData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setContainerLockOnScreenLock: There is no container with containerId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_43
.end method

.method protected setContainerStatus(II)V
    .registers 7

    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;

    if-eqz v0, :cond_16

    invoke-virtual {v0, p2}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->setContainerStatus(I)V

    :cond_15
    :goto_15
    return-void

    :cond_16
    const-string v1, "EnterpriseContainerCacheData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "There is no entry in cache for containerId"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15
.end method

.method public setContainerVerifyOnlyOnChangeMode(IZ)Z
    .registers 10

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;

    if-eqz v0, :cond_46

    const-string v4, "EnterpriseContainerCacheData"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setContainerVerifyOnlyOnChangeMode: setting "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->setVerifyPwdOnlyOnChangeMode(Z)V

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "containerPwdVerfyOnModeChange"

    if-ne p2, v2, :cond_44

    :goto_34
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v2, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/sec/knox/container/contentprovider/DBConstants;->CONTAINER_ACTIVE_STATUS_URI:Landroid/net/Uri;

    invoke-virtual {p0, v2, v3, v1, p1}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->updateValuesForContainer(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;I)Z

    move-result v3

    :goto_43
    return v3

    :cond_44
    move v2, v3

    goto :goto_34

    :cond_46
    const-string v2, "EnterpriseContainerCacheData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setContainerVerifyOnlyOnChangeMode: There is no container with containerId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_43
.end method

.method public setFailedPasswordAttempts(II)Z
    .registers 7

    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;

    if-eqz v0, :cond_2b

    const-string v1, "EnterpriseContainerCacheData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setFailedPasswordAttempts: setting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->setFailedPasswordAttempts(I)V

    const/4 v1, 0x1

    :goto_2a
    return v1

    :cond_2b
    const-string v1, "EnterpriseContainerCacheData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setFailedPasswordAttempts: There is no container with containerId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_2a
.end method

.method public setFeatureFlagForContainer(II)V
    .registers 6

    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerInProgressData:Ljava/util/HashMap;

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerInProgressData:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache$ContainerInprogressData;

    if-eqz v0, :cond_1e

    iput p2, v0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache$ContainerInprogressData;->mCreateFlag:I

    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerInProgressData:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1e
    return-void
.end method

.method public setFirmwareVersion(ILjava/lang/String;)Z
    .registers 7

    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;

    if-eqz v0, :cond_2b

    const-string v1, "EnterpriseContainerCacheData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setFirmwareVersion: setting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->setFirmwareVersion(Ljava/lang/String;)V

    const/4 v1, 0x1

    :goto_2a
    return v1

    :cond_2b
    const-string v1, "EnterpriseContainerCacheData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setFailedPasswordAttempts: There is no container with containerId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_2a
.end method

.method public setMaximumTimeToLock(IJ)Z
    .registers 8

    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;

    if-eqz v0, :cond_2b

    const-string v1, "EnterpriseContainerCacheData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMaximumTimeToLock: setting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p2, p3}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->setMaximumTimeToLock(J)V

    const/4 v1, 0x1

    :goto_2a
    return v1

    :cond_2b
    const-string v1, "EnterpriseContainerCacheData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMaximumTimeToLock: There is no container with containerId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_2a
.end method

.method public setPasswordEnabledContainerLockTimeout(IJ)Z
    .registers 8

    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;

    if-eqz v0, :cond_2b

    const-string v1, "EnterpriseContainerCacheData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPasswordEnabledContainerLockTimeout: setting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p2, p3}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->setPasswordEnabledContainerLockTimeout(J)V

    const/4 v1, 0x1

    :goto_2a
    return v1

    :cond_2b
    const-string v1, "EnterpriseContainerCacheData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPasswordEnabledContainerLockTimeout: There is no container with containerId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_2a
.end method

.method public setPasswordExpirationDate(IJ)Z
    .registers 8

    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;

    if-eqz v0, :cond_2b

    const-string v1, "EnterpriseContainerCacheData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPasswordExpirationDate: setting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p2, p3}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->setPasswordExpirationDate(J)V

    const/4 v1, 0x1

    :goto_2a
    return v1

    :cond_2b
    const-string v1, "EnterpriseContainerCacheData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPasswordExpirationDate: There is no container with containerId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_2a
.end method

.method public setPasswordExpirationTimeout(IJ)Z
    .registers 8

    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;

    if-eqz v0, :cond_2b

    const-string v1, "EnterpriseContainerCacheData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPasswordExpirationTimeout: setting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p2, p3}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->setPasswordExpirationTimeout(J)V

    const/4 v1, 0x1

    :goto_2a
    return v1

    :cond_2b
    const-string v1, "EnterpriseContainerCacheData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPasswordExpirationTimeout: There is no container with containerId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_2a
.end method

.method public setPasswordHasExpired(IZ)Z
    .registers 7

    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;

    if-eqz v0, :cond_2b

    const-string v1, "EnterpriseContainerCacheData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPasswordHasExpired: setting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->setPasswordHasExpired(Z)V

    const/4 v1, 0x1

    :goto_2a
    return v1

    :cond_2b
    const-string v1, "EnterpriseContainerCacheData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPasswordHasExpired: There is no container with containerId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_2a
.end method

.method public setRequestIdForContainer(II)V
    .registers 6

    new-instance v0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache$ContainerInprogressData;

    invoke-direct {v0, p0}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache$ContainerInprogressData;-><init>(Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;)V

    iput p2, v0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache$ContainerInprogressData;->mRequestId:I

    iput p1, v0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache$ContainerInprogressData;->mContainerId:I

    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerInProgressData:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public updateCacheAddContainerObject(Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;)V
    .registers 4

    iget-object v0, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->getContainerId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11
    return-void
.end method

.method public updateContainerPackageCache(Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;)Z
    .registers 7

    iget-object v2, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    if-eqz v2, :cond_6a

    iget-object v2, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;->getContainerId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;

    if-eqz v0, :cond_4c

    invoke-virtual {v0}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->getContainerPackagesInfo()Ljava/util/HashMap;

    move-result-object v1

    if-nez v1, :cond_21

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    :cond_21
    invoke-virtual {p1}, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;->getAppPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_44

    invoke-virtual {p1}, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;->getAppPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_32
    invoke-virtual {v0, v1}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->setContainerPackagesInfo(Ljava/util/HashMap;)V

    iget-object v2, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;->getContainerId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    :goto_43
    return v2

    :cond_44
    invoke-virtual {p1}, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;->getAppPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_32

    :cond_4c
    const-string v2, "EnterpriseContainerCacheData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "There is no entry in cache for containerId"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;->getContainerId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_68
    const/4 v2, 0x0

    goto :goto_43

    :cond_6a
    const-string v2, "EnterpriseContainerCacheData"

    const-string v3, "there is error in updating the cache"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_68
.end method

.method public updateContainerType(II)Z
    .registers 7

    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    if-eqz v1, :cond_3a

    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;

    if-eqz v0, :cond_20

    invoke-virtual {v0, p2}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->setContainerType(I)V

    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    :goto_1f
    return v1

    :cond_20
    const-string v1, "EnterpriseContainerCacheData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "There is no entry in cache for containerId"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_38
    const/4 v1, 0x0

    goto :goto_1f

    :cond_3a
    const-string v1, "EnterpriseContainerCacheData"

    const-string v2, "there is error in updating the cache"

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_38
.end method

.method public updateEmailId(ILjava/lang/String;)Z
    .registers 7

    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    if-eqz v1, :cond_3a

    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;

    if-eqz v0, :cond_20

    invoke-virtual {v0, p2}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->setEmail(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    :goto_1f
    return v1

    :cond_20
    const-string v1, "EnterpriseContainerCacheData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "There is no entry in cache for containerId"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_38
    const/4 v1, 0x0

    goto :goto_1f

    :cond_3a
    const-string v1, "EnterpriseContainerCacheData"

    const-string v2, "there is error in updating the cache"

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_38
.end method

.method public updateLockType(II)Z
    .registers 7

    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    if-eqz v1, :cond_3a

    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;

    if-eqz v0, :cond_20

    invoke-virtual {v0, p2}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->setLockType(I)V

    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    :goto_1f
    return v1

    :cond_20
    const-string v1, "EnterpriseContainerCacheData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "There is no entry in cache for containerId"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_38
    const/4 v1, 0x0

    goto :goto_1f

    :cond_3a
    const-string v1, "EnterpriseContainerCacheData"

    const-string v2, "there is error in updating the cache"

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_38
.end method

.method public updatePasswordStateInfoCache(Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;)Z
    .registers 6

    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    if-eqz v1, :cond_46

    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->getContainerId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;

    if-eqz v0, :cond_28

    invoke-virtual {v0, p1}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->setPasswordStateInfo(Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;)V

    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->getContainerId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    :goto_27
    return v1

    :cond_28
    const-string v1, "EnterpriseContainerCacheData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "There is no entry in cache for containerId"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->getContainerId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_44
    const/4 v1, 0x0

    goto :goto_27

    :cond_46
    const-string v1, "EnterpriseContainerCacheData"

    const-string v2, "there is error in updating the cache"

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_44
.end method

.method public updatePasswordStatus(ILjava/lang/Integer;)Z
    .registers 7

    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    if-eqz v1, :cond_3e

    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;

    if-eqz v0, :cond_24

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->setPasswordStatus(I)V

    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    :goto_23
    return v1

    :cond_24
    const-string v1, "EnterpriseContainerCacheData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "There is no entry in cache for containerId"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3c
    const/4 v1, 0x0

    goto :goto_23

    :cond_3e
    const-string v1, "EnterpriseContainerCacheData"

    const-string v2, "there is error in updating the cache"

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3c
.end method
