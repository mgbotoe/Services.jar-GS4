.class Lcom/android/server/connectivity/Vpn$3;
.super Lcom/android/server/net/BaseNetworkObserver;
.source "Vpn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Vpn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/Vpn;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/Vpn;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/connectivity/Vpn$3;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-direct {p0}, Lcom/android/server/net/BaseNetworkObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public interfaceRemoved(Ljava/lang/String;)V
    .registers 8

    const-string v2, "Vpn"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "interface Removed : interface = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/connectivity/Vpn$3;->this$0:Lcom/android/server/connectivity/Vpn;

    monitor-enter v3

    :try_start_1b
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$3;->this$0:Lcom/android/server/connectivity/Vpn;

    #getter for: Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$600(Lcom/android/server/connectivity/Vpn;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_83

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$3;->this$0:Lcom/android/server/connectivity/Vpn;

    #calls: Lcom/android/server/connectivity/Vpn;->jniCheck(Ljava/lang/String;)I
    invoke-static {v2, p1}, Lcom/android/server/connectivity/Vpn;->access$700(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_83

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_32
    .catchall {:try_start_1b .. :try_end_32} :catchall_8a

    move-result-wide v0

    :try_start_33
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$3;->this$0:Lcom/android/server/connectivity/Vpn;

    #getter for: Lcom/android/server/connectivity/Vpn;->mMvpOn:Z
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$800(Lcom/android/server/connectivity/Vpn;)Z

    move-result v2

    if-nez v2, :cond_44

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$3;->this$0:Lcom/android/server/connectivity/Vpn;

    #getter for: Lcom/android/server/connectivity/Vpn;->mCallback:Lcom/android/server/ConnectivityService$VpnCallback;
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$900(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/ConnectivityService$VpnCallback;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/ConnectivityService$VpnCallback;->restore()V

    :cond_44
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$3;->this$0:Lcom/android/server/connectivity/Vpn;

    #calls: Lcom/android/server/connectivity/Vpn;->hideNotification()V
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$1000(Lcom/android/server/connectivity/Vpn;)V
    :try_end_49
    .catchall {:try_start_33 .. :try_end_49} :catchall_85

    :try_start_49
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$3;->this$0:Lcom/android/server/connectivity/Vpn;

    const/4 v4, 0x0

    #setter for: Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;
    invoke-static {v2, v4}, Lcom/android/server/connectivity/Vpn;->access$602(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$3;->this$0:Lcom/android/server/connectivity/Vpn;

    #getter for: Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$1100(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/connectivity/Vpn$Connection;

    move-result-object v2

    if-eqz v2, :cond_8d

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$3;->this$0:Lcom/android/server/connectivity/Vpn;

    #getter for: Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$1200(Lcom/android/server/connectivity/Vpn;)Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/connectivity/Vpn$3;->this$0:Lcom/android/server/connectivity/Vpn;

    #getter for: Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;
    invoke-static {v4}, Lcom/android/server/connectivity/Vpn;->access$1100(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/connectivity/Vpn$Connection;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$3;->this$0:Lcom/android/server/connectivity/Vpn;

    const/4 v4, 0x0

    #setter for: Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;
    invoke-static {v2, v4}, Lcom/android/server/connectivity/Vpn;->access$1102(Lcom/android/server/connectivity/Vpn;Lcom/android/server/connectivity/Vpn$Connection;)Lcom/android/server/connectivity/Vpn$Connection;

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$3;->this$0:Lcom/android/server/connectivity/Vpn;

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const-string v5, "interfaceRemoved"

    #calls: Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V
    invoke-static {v2, v4, v5}, Lcom/android/server/connectivity/Vpn;->access$1300(Lcom/android/server/connectivity/Vpn;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$3;->this$0:Lcom/android/server/connectivity/Vpn;

    const/4 v4, 0x2

    #calls: Lcom/android/server/connectivity/Vpn;->sendInterfaceStateToKnoxVpn(I)V
    invoke-static {v2, v4}, Lcom/android/server/connectivity/Vpn;->access$1400(Lcom/android/server/connectivity/Vpn;I)V

    :cond_7e
    :goto_7e
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$3;->this$0:Lcom/android/server/connectivity/Vpn;

    #calls: Lcom/android/server/connectivity/Vpn;->mvpInterfaceRemoved()V
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$1500(Lcom/android/server/connectivity/Vpn;)V

    :cond_83
    monitor-exit v3

    return-void

    :catchall_85
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    :catchall_8a
    move-exception v2

    monitor-exit v3
    :try_end_8c
    .catchall {:try_start_49 .. :try_end_8c} :catchall_8a

    throw v2

    :cond_8d
    :try_start_8d
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$3;->this$0:Lcom/android/server/connectivity/Vpn;

    #getter for: Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$500(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    move-result-object v2

    if-eqz v2, :cond_7e

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$3;->this$0:Lcom/android/server/connectivity/Vpn;

    #getter for: Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$500(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->exit()V

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$3;->this$0:Lcom/android/server/connectivity/Vpn;

    const/4 v4, 0x0

    #setter for: Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
    invoke-static {v2, v4}, Lcom/android/server/connectivity/Vpn;->access$502(Lcom/android/server/connectivity/Vpn;Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;)Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
    :try_end_a4
    .catchall {:try_start_8d .. :try_end_a4} :catchall_8a

    goto :goto_7e
.end method

.method public interfaceStatusChanged(Ljava/lang/String;Z)V
    .registers 5

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$3;->this$0:Lcom/android/server/connectivity/Vpn;

    monitor-enter v1

    if-nez p2, :cond_16

    :try_start_5
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$3;->this$0:Lcom/android/server/connectivity/Vpn;

    #getter for: Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
    invoke-static {v0}, Lcom/android/server/connectivity/Vpn;->access$500(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$3;->this$0:Lcom/android/server/connectivity/Vpn;

    #getter for: Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
    invoke-static {v0}, Lcom/android/server/connectivity/Vpn;->access$500(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->check(Ljava/lang/String;)V

    :cond_16
    monitor-exit v1

    return-void

    :catchall_18
    move-exception v0

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_18

    throw v0
.end method
