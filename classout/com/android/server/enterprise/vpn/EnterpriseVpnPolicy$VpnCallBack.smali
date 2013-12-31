.class Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnCallBack;
.super Lcom/mocana/vpn/android/velo/IEnterpriseStatusCallback$Stub;
.source "EnterpriseVpnPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VpnCallBack"
.end annotation


# instance fields
.field private adminCheck:Z

.field private mEnterpriseVpnCallback:Lcom/mocana/vpn/android/velo/IEnterpriseStatusCallback;

.field final synthetic this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;Lcom/mocana/vpn/android/velo/IEnterpriseStatusCallback;)V
    .registers 4

    iput-object p1, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnCallBack;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    invoke-direct {p0}, Lcom/mocana/vpn/android/velo/IEnterpriseStatusCallback$Stub;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnCallBack;->mEnterpriseVpnCallback:Lcom/mocana/vpn/android/velo/IEnterpriseStatusCallback;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnCallBack;->adminCheck:Z

    iput-object p2, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnCallBack;->mEnterpriseVpnCallback:Lcom/mocana/vpn/android/velo/IEnterpriseStatusCallback;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;Z)V
    .registers 4

    iput-object p1, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnCallBack;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    invoke-direct {p0}, Lcom/mocana/vpn/android/velo/IEnterpriseStatusCallback$Stub;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnCallBack;->mEnterpriseVpnCallback:Lcom/mocana/vpn/android/velo/IEnterpriseStatusCallback;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnCallBack;->adminCheck:Z

    iput-boolean p2, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnCallBack;->adminCheck:Z

    return-void
.end method


# virtual methods
.method public updateStatus(Ljava/lang/String;ILjava/lang/String;)V
    .registers 14

    const/4 v9, 0x0

    const/4 v8, 0x1

    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Update: Admin Check for Remove Connection Callback"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnCallBack;->adminCheck:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x6

    if-ne p2, v4, :cond_95

    iget-object v4, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnCallBack;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    #getter for: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;
    invoke-static {v4}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$1500(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v4

    const-string v5, "Vpn_table"

    new-array v6, v8, [Ljava/lang/String;

    const-string v7, "profile"

    aput-object v7, v6, v9

    new-array v7, v8, [Ljava/lang/String;

    aput-object p1, v7, v9

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$900()Z

    move-result v4

    if-eqz v4, :cond_61

    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Update: The status for removing the profile from profile database is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_61
    iget-boolean v4, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnCallBack;->adminCheck:Z

    if-nez v4, :cond_a3

    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Update: VPN Callback : Vpn profile deleted successfully. status = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " data = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    iget-object v4, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnCallBack;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->removeVpnConnectionForPerAppVpn(Ljava/lang/String;)Z
    invoke-static {v4, p1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$1600(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;Ljava/lang/String;)Z

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_95
    :goto_95
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnCallBack;->mEnterpriseVpnCallback:Lcom/mocana/vpn/android/velo/IEnterpriseStatusCallback;

    if-eqz v4, :cond_a2

    iget-boolean v4, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnCallBack;->adminCheck:Z

    if-nez v4, :cond_a2

    :try_start_9d
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnCallBack;->mEnterpriseVpnCallback:Lcom/mocana/vpn/android/velo/IEnterpriseStatusCallback;

    invoke-interface {v4, p1, p2, p3}, Lcom/mocana/vpn/android/velo/IEnterpriseStatusCallback;->updateStatus(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_a2
    .catch Ljava/lang/Exception; {:try_start_9d .. :try_end_a2} :catch_b4

    :cond_a2
    :goto_a2
    return-void

    :cond_a3
    iget-boolean v4, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnCallBack;->adminCheck:Z

    if-ne v4, v8, :cond_95

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    iget-object v4, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$VpnCallBack;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    #calls: Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->removeVpnConnectionAfterAdminRemoval(Ljava/lang/String;)V
    invoke-static {v4, p1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$1700(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;Ljava/lang/String;)V

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_95

    :catch_b4
    move-exception v0

    invoke-static {}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;->access$100()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Update: VPN Callback  : Exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a2
.end method
