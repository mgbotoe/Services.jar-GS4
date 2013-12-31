.class Lcom/android/server/ConnectivityService$2;
.super Landroid/net/INetworkPolicyListener$Stub;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method constructor <init>(Lcom/android/server/ConnectivityService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    invoke-direct {p0}, Landroid/net/INetworkPolicyListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onMeteredIfacesChanged([Ljava/lang/String;)V
    .registers 11

    iget-object v6, p0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mRulesLock:Ljava/lang/Object;
    invoke-static {v6}, Lcom/android/server/ConnectivityService;->access$600(Lcom/android/server/ConnectivityService;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    :try_start_7
    iget-object v6, p0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mMeteredIfaces:Ljava/util/HashSet;
    invoke-static {v6}, Lcom/android/server/ConnectivityService;->access$800(Lcom/android/server/ConnectivityService;)Ljava/util/HashSet;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashSet;->clear()V

    move-object v0, p1

    array-length v3, v0

    const/4 v1, 0x0

    :goto_13
    if-ge v1, v3, :cond_23

    aget-object v2, v0, v1

    iget-object v6, p0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mMeteredIfaces:Ljava/util/HashSet;
    invoke-static {v6}, Lcom/android/server/ConnectivityService;->access$800(Lcom/android/server/ConnectivityService;)Ljava/util/HashSet;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_23
    iget-object v6, p0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static {v6}, Lcom/android/server/ConnectivityService;->access$900(Lcom/android/server/ConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v6

    const/16 v8, 0xb

    aget-object v5, v6, v8

    if-eqz v5, :cond_5d

    invoke-interface {v5}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v4

    if-eqz v4, :cond_5d

    invoke-virtual {v4}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5d

    iget-object v6, p0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mMeteredIfaces:Ljava/util/HashSet;
    invoke-static {v6}, Lcom/android/server/ConnectivityService;->access$800(Lcom/android/server/ConnectivityService;)Ljava/util/HashSet;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    :try_end_48
    .catchall {:try_start_7 .. :try_end_48} :catchall_5f

    move-result v6

    if-eqz v6, :cond_5d

    :try_start_4b
    iget-object v6, p0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;
    invoke-static {v6}, Lcom/android/server/ConnectivityService;->access$1000(Lcom/android/server/ConnectivityService;)Landroid/os/INetworkManagementService;

    move-result-object v6

    invoke-interface {v6, v2}, Landroid/os/INetworkManagementService;->removeInterfaceQuota(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mMeteredIfaces:Ljava/util/HashSet;
    invoke-static {v6}, Lcom/android/server/ConnectivityService;->access$800(Lcom/android/server/ConnectivityService;)Ljava/util/HashSet;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_5d
    .catchall {:try_start_4b .. :try_end_5d} :catchall_5f
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_5d} :catch_62

    :cond_5d
    :goto_5d
    :try_start_5d
    monitor-exit v7

    return-void

    :catchall_5f
    move-exception v6

    monitor-exit v7
    :try_end_61
    .catchall {:try_start_5d .. :try_end_61} :catchall_5f

    throw v6

    :catch_62
    move-exception v6

    goto :goto_5d
.end method

.method public onRestrictBackgroundChanged(Z)V
    .registers 6

    iget-object v3, p0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mActiveDefaultNetwork:I
    invoke-static {v3}, Lcom/android/server/ConnectivityService;->access$1100(Lcom/android/server/ConnectivityService;)I

    move-result v1

    invoke-static {v1}, Landroid/net/ConnectivityManager;->isNetworkTypeValidEx(I)Z

    move-result v3

    if-eqz v3, :cond_27

    iget-object v3, p0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static {v3}, Lcom/android/server/ConnectivityService;->access$900(Lcom/android/server/ConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v3

    aget-object v2, v3, v1

    if-eqz v2, :cond_27

    invoke-interface {v2}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_27

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_27

    iget-object v3, p0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    invoke-virtual {v3, v0}, Lcom/android/server/ConnectivityService;->sendConnectedBroadcast(Landroid/net/NetworkInfo;)V

    :cond_27
    return-void
.end method

.method public onUidRulesChanged(II)V
    .registers 7

    iget-object v1, p0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mRulesLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$600(Lcom/android/server/ConnectivityService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_7
    iget-object v1, p0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mUidRules:Landroid/util/SparseIntArray;
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$700(Lcom/android/server/ConnectivityService;)Landroid/util/SparseIntArray;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-ne v0, p2, :cond_16

    monitor-exit v2

    :goto_15
    return-void

    :cond_16
    iget-object v1, p0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mUidRules:Landroid/util/SparseIntArray;
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$700(Lcom/android/server/ConnectivityService;)Landroid/util/SparseIntArray;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    monitor-exit v2

    goto :goto_15

    :catchall_21
    move-exception v1

    monitor-exit v2
    :try_end_23
    .catchall {:try_start_7 .. :try_end_23} :catchall_21

    throw v1
.end method
