.class public Lcom/android/server/ConnectivityService$VpnCallback;
.super Ljava/lang/Object;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VpnCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method protected constructor <init>(Lcom/android/server/ConnectivityService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/ConnectivityService$VpnCallback;->this$0:Lcom/android/server/ConnectivityService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(Landroid/net/NetworkInfo;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/ConnectivityService$VpnCallback;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;
    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$4100(Lcom/android/server/ConnectivityService;)Lcom/android/server/ConnectivityService$InternalHandler;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {v0, v1, p1}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public override(Ljava/util/List;Ljava/util/List;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_6

    invoke-virtual {p0}, Lcom/android/server/ConnectivityService$VpnCallback;->restore()V

    :goto_5
    return-void

    :cond_6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_25

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :try_start_1b
    invoke-static {v0}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_22} :catch_23

    goto :goto_f

    :catch_23
    move-exception v6

    goto :goto_f

    :cond_25
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2f

    invoke-virtual {p0}, Lcom/android/server/ConnectivityService$VpnCallback;->restore()V

    goto :goto_5

    :cond_2f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p2, :cond_50

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_50

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x20

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3a

    :cond_50
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/ConnectivityService$VpnCallback;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mDnsLock:Ljava/lang/Object;
    invoke-static {v6}, Lcom/android/server/ConnectivityService;->access$4200(Lcom/android/server/ConnectivityService;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    :try_start_5f
    iget-object v6, p0, Lcom/android/server/ConnectivityService$VpnCallback;->this$0:Lcom/android/server/ConnectivityService;

    const-string v8, "VPN"

    const-string v9, "VPN"

    #calls: Lcom/android/server/ConnectivityService;->updateDnsLocked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;)V
    invoke-static {v6, v8, v9, v1, v4}, Lcom/android/server/ConnectivityService;->access$4300(Lcom/android/server/ConnectivityService;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/ConnectivityService$VpnCallback;->this$0:Lcom/android/server/ConnectivityService;

    const/4 v8, 0x1

    #setter for: Lcom/android/server/ConnectivityService;->mDnsOverridden:Z
    invoke-static {v6, v8}, Lcom/android/server/ConnectivityService;->access$4402(Lcom/android/server/ConnectivityService;Z)Z

    monitor-exit v7
    :try_end_6f
    .catchall {:try_start_5f .. :try_end_6f} :catchall_98

    iget-object v6, p0, Lcom/android/server/ConnectivityService$VpnCallback;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mProxyLock:Ljava/lang/Object;
    invoke-static {v6}, Lcom/android/server/ConnectivityService;->access$4500(Lcom/android/server/ConnectivityService;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    :try_start_76
    iget-object v6, p0, Lcom/android/server/ConnectivityService$VpnCallback;->this$0:Lcom/android/server/ConnectivityService;

    const/4 v8, 0x1

    #setter for: Lcom/android/server/ConnectivityService;->mDefaultProxyDisabled:Z
    invoke-static {v6, v8}, Lcom/android/server/ConnectivityService;->access$4602(Lcom/android/server/ConnectivityService;Z)Z

    iget-object v6, p0, Lcom/android/server/ConnectivityService$VpnCallback;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyProperties;
    invoke-static {v6}, Lcom/android/server/ConnectivityService;->access$4700(Lcom/android/server/ConnectivityService;)Landroid/net/ProxyProperties;

    move-result-object v6

    if-nez v6, :cond_92

    iget-object v6, p0, Lcom/android/server/ConnectivityService$VpnCallback;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mDefaultProxy:Landroid/net/ProxyProperties;
    invoke-static {v6}, Lcom/android/server/ConnectivityService;->access$4800(Lcom/android/server/ConnectivityService;)Landroid/net/ProxyProperties;

    move-result-object v6

    if-eqz v6, :cond_92

    iget-object v6, p0, Lcom/android/server/ConnectivityService$VpnCallback;->this$0:Lcom/android/server/ConnectivityService;

    const/4 v8, 0x0

    #calls: Lcom/android/server/ConnectivityService;->sendProxyBroadcast(Landroid/net/ProxyProperties;)V
    invoke-static {v6, v8}, Lcom/android/server/ConnectivityService;->access$4900(Lcom/android/server/ConnectivityService;Landroid/net/ProxyProperties;)V

    :cond_92
    monitor-exit v7

    goto/16 :goto_5

    :catchall_95
    move-exception v6

    monitor-exit v7
    :try_end_97
    .catchall {:try_start_76 .. :try_end_97} :catchall_95

    throw v6

    :catchall_98
    move-exception v6

    :try_start_99
    monitor-exit v7
    :try_end_9a
    .catchall {:try_start_99 .. :try_end_9a} :catchall_98

    throw v6
.end method

.method public restore()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/ConnectivityService$VpnCallback;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mDnsLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$4200(Lcom/android/server/ConnectivityService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_7
    iget-object v0, p0, Lcom/android/server/ConnectivityService$VpnCallback;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mDnsOverridden:Z
    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$4400(Lcom/android/server/ConnectivityService;)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/server/ConnectivityService$VpnCallback;->this$0:Lcom/android/server/ConnectivityService;

    const/4 v2, 0x0

    #setter for: Lcom/android/server/ConnectivityService;->mDnsOverridden:Z
    invoke-static {v0, v2}, Lcom/android/server/ConnectivityService;->access$4402(Lcom/android/server/ConnectivityService;Z)Z

    iget-object v0, p0, Lcom/android/server/ConnectivityService$VpnCallback;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;
    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$4100(Lcom/android/server/ConnectivityService;)Lcom/android/server/ConnectivityService$InternalHandler;

    move-result-object v0

    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Lcom/android/server/ConnectivityService$InternalHandler;->sendEmptyMessage(I)Z

    :cond_20
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_7 .. :try_end_21} :catchall_4b

    iget-object v0, p0, Lcom/android/server/ConnectivityService$VpnCallback;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mProxyLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$4500(Lcom/android/server/ConnectivityService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_28
    iget-object v0, p0, Lcom/android/server/ConnectivityService$VpnCallback;->this$0:Lcom/android/server/ConnectivityService;

    const/4 v2, 0x0

    #setter for: Lcom/android/server/ConnectivityService;->mDefaultProxyDisabled:Z
    invoke-static {v0, v2}, Lcom/android/server/ConnectivityService;->access$4602(Lcom/android/server/ConnectivityService;Z)Z

    iget-object v0, p0, Lcom/android/server/ConnectivityService$VpnCallback;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mGlobalProxy:Landroid/net/ProxyProperties;
    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$4700(Lcom/android/server/ConnectivityService;)Landroid/net/ProxyProperties;

    move-result-object v0

    if-nez v0, :cond_49

    iget-object v0, p0, Lcom/android/server/ConnectivityService$VpnCallback;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mDefaultProxy:Landroid/net/ProxyProperties;
    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$4800(Lcom/android/server/ConnectivityService;)Landroid/net/ProxyProperties;

    move-result-object v0

    if-eqz v0, :cond_49

    iget-object v0, p0, Lcom/android/server/ConnectivityService$VpnCallback;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v2, p0, Lcom/android/server/ConnectivityService$VpnCallback;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mDefaultProxy:Landroid/net/ProxyProperties;
    invoke-static {v2}, Lcom/android/server/ConnectivityService;->access$4800(Lcom/android/server/ConnectivityService;)Landroid/net/ProxyProperties;

    move-result-object v2

    #calls: Lcom/android/server/ConnectivityService;->sendProxyBroadcast(Landroid/net/ProxyProperties;)V
    invoke-static {v0, v2}, Lcom/android/server/ConnectivityService;->access$4900(Lcom/android/server/ConnectivityService;Landroid/net/ProxyProperties;)V

    :cond_49
    monitor-exit v1
    :try_end_4a
    .catchall {:try_start_28 .. :try_end_4a} :catchall_4e

    return-void

    :catchall_4b
    move-exception v0

    :try_start_4c
    monitor-exit v1
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4b

    throw v0

    :catchall_4e
    move-exception v0

    :try_start_4f
    monitor-exit v1
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_4e

    throw v0
.end method
