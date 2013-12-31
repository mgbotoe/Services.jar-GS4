.class Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;
.super Ljava/lang/Object;
.source "EnterpriseVpnPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VpnInterfaceList"
.end annotation


# instance fields
.field private ciscoInterface:Landroid/app/enterprise/IEnterpriseVpnInterface;

.field public mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

.field final synthetic this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V
    .registers 3

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;->ciscoInterface:Landroid/app/enterprise/IEnterpriseVpnInterface;

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;->mocanaInterface:Lcom/mocana/vpn/android/velo/IEnterpriseMocanaVpnService;

    return-void
.end method


# virtual methods
.method getPreparedCiscoInterface()Landroid/app/enterprise/IEnterpriseVpnInterface;
    .registers 9

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    #getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->mLooperThread:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$LooperThread;
    invoke-static {v4}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$1800(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$LooperThread;

    move-result-object v4

    if-eqz v4, :cond_34

    iget-object v4, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    #getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->mLooperThread:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$LooperThread;
    invoke-static {v4}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$1800(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$LooperThread;

    move-result-object v4

    iget-object v1, v4, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$LooperThread;->mAnyconnectMessenger:Landroid/os/Messenger;

    :goto_11
    :try_start_11
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    #getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->mAnyconnectService:Landroid/app/enterprise/IEnterpriseVpnInterface;
    invoke-static {v4}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$000(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Landroid/app/enterprise/IEnterpriseVpnInterface;

    move-result-object v4

    invoke-interface {v4, v1}, Landroid/app/enterprise/IEnterpriseVpnInterface;->prepareService(Landroid/os/Messenger;)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_31

    iget-object v4, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    #getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->mAnyconnectService:Landroid/app/enterprise/IEnterpriseVpnInterface;
    invoke-static {v4}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$000(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Landroid/app/enterprise/IEnterpriseVpnInterface;

    move-result-object v5

    monitor-enter v5
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_25} :catch_39
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_25} :catch_46

    :try_start_25
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    #getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->mAnyconnectService:Landroid/app/enterprise/IEnterpriseVpnInterface;
    invoke-static {v4}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$000(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Landroid/app/enterprise/IEnterpriseVpnInterface;

    move-result-object v4

    const-wide/16 v6, 0x1388

    invoke-virtual {v4, v6, v7}, Ljava/lang/Object;->wait(J)V

    monitor-exit v5
    :try_end_31
    .catchall {:try_start_25 .. :try_end_31} :catchall_36

    :cond_31
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;->ciscoInterface:Landroid/app/enterprise/IEnterpriseVpnInterface;

    :goto_33
    return-object v3

    :cond_34
    move-object v1, v3

    goto :goto_11

    :catchall_36
    move-exception v4

    :try_start_37
    monitor-exit v5
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    :try_start_38
    throw v4
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_38 .. :try_end_39} :catch_39
    .catch Ljava/lang/InterruptedException; {:try_start_38 .. :try_end_39} :catch_46

    :catch_39
    move-exception v0

    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33

    :catch_46
    move-exception v0

    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33
.end method

.method setCiscoInterface(Landroid/app/enterprise/IEnterpriseVpnInterface;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnInterfaceList;->ciscoInterface:Landroid/app/enterprise/IEnterpriseVpnInterface;

    return-void
.end method
