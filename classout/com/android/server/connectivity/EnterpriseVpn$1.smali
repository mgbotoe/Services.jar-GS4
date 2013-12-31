.class Lcom/android/server/connectivity/EnterpriseVpn$1;
.super Lcom/android/server/net/BaseNetworkObserver;
.source "EnterpriseVpn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/EnterpriseVpn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/EnterpriseVpn;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/EnterpriseVpn;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/connectivity/EnterpriseVpn$1;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    invoke-direct {p0}, Lcom/android/server/net/BaseNetworkObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public interfaceRemoved(Ljava/lang/String;)V
    .registers 8

    const-string v2, "EnterpriseVpn"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "interface Removed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/connectivity/EnterpriseVpn$1;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    monitor-enter v3

    :try_start_1b
    iget-object v2, p0, Lcom/android/server/connectivity/EnterpriseVpn$1;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    #getter for: Lcom/android/server/connectivity/EnterpriseVpn;->mInterface:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/connectivity/EnterpriseVpn;->access$200(Lcom/android/server/connectivity/EnterpriseVpn;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5b

    iget-object v2, p0, Lcom/android/server/connectivity/EnterpriseVpn$1;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    #calls: Lcom/android/server/connectivity/EnterpriseVpn;->jniCheck(Ljava/lang/String;)I
    invoke-static {v2, p1}, Lcom/android/server/connectivity/EnterpriseVpn;->access$300(Lcom/android/server/connectivity/EnterpriseVpn;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_5b

    const-string v2, "connectivity"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;
    :try_end_38
    .catchall {:try_start_1b .. :try_end_38} :catchall_66

    move-result-object v1

    :try_start_39
    const-string v2, "EnterpriseVpn"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "interface Removed calling disconnect: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/connectivity/EnterpriseVpn$1;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    #getter for: Lcom/android/server/connectivity/EnterpriseVpn;->profileName:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/connectivity/EnterpriseVpn;->access$400(Lcom/android/server/connectivity/EnterpriseVpn;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    invoke-interface {v1, v2, v4}, Landroid/net/IConnectivityManager;->disconnect(Ljava/lang/String;Z)Z
    :try_end_5b
    .catchall {:try_start_39 .. :try_end_5b} :catchall_66
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_5b} :catch_5d

    :cond_5b
    :goto_5b
    :try_start_5b
    monitor-exit v3

    return-void

    :catch_5d
    move-exception v0

    const-string v2, "EnterpriseVpn"

    const-string v4, "Exception while calling disconnect"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5b

    :catchall_66
    move-exception v2

    monitor-exit v3
    :try_end_68
    .catchall {:try_start_5b .. :try_end_68} :catchall_66

    throw v2
.end method
