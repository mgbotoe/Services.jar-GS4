.class public Lcom/android/server/enterprise/multiuser/MultiUserManagerService;
.super Landroid/app/enterprise/multiuser/IMultiUserManager$Stub;
.source "MultiUserManagerService.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field private static final TAG:Ljava/lang/String; = "MultiUserManagerService"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Landroid/app/enterprise/multiuser/IMultiUserManager$Stub;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object p1, p0, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    return-void
.end method

.method private enforceMultiUserManagementPermission()I
    .registers 3

    invoke-direct {p0}, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_MULTI_USER_MGMT"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .registers 3

    iget-object v0, p0, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    :cond_10
    iget-object v0, p0, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method


# virtual methods
.method public allowMultipleUsers(Z)I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->enforceMultiUserManagementPermission()I

    move-result v0

    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v6

    if-nez v6, :cond_d

    const/4 v5, -0x1

    :cond_c
    :goto_c
    return v5

    :cond_d
    const/4 v1, 0x1

    iget-object v6, p0, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "MULTI_USER_MGMT"

    const-string v8, "multiUserAllowed"

    invoke-virtual {v6, v0, v7, v8, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    and-int/2addr v1, v6

    if-eqz v1, :cond_37

    invoke-virtual {p0, v5}, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->multipleUsersAllowed(Z)I

    move-result v6

    if-nez v6, :cond_37

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    iget-object v6, p0, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->mContext:Landroid/content/Context;

    const-string v7, "user"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    if-eqz v4, :cond_34

    invoke-virtual {v4, v5}, Landroid/os/UserManager;->setGuestEnabled(Z)V

    :cond_34
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_37
    if-eqz v1, :cond_c

    const/4 v5, 0x1

    goto :goto_c
.end method

.method public multipleUsersAllowed(Z)I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v5

    if-nez v5, :cond_a

    const/4 v3, -0x1

    :cond_9
    :goto_9
    return v3

    :cond_a
    iget-object v5, p0, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "MULTI_USER_MGMT"

    const-string v7, "multiUserAllowed"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_41

    move v1, v3

    :goto_1f
    if-eqz p1, :cond_3d

    if-nez v1, :cond_3d

    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.enterprise.SHOW_UI"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "message"

    iget-object v6, p0, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->mContext:Landroid/content/Context;

    const v7, 0x10402c5

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_3d
    if-nez v1, :cond_9

    move v3, v4

    goto :goto_9

    :cond_41
    move v1, v4

    goto :goto_1f
.end method

.method public multipleUsersSupported()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z
    :try_end_3
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_3} :catch_5

    move-result v1

    :goto_4
    return v1

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Error;->printStackTrace()V

    const/4 v1, 0x0

    goto :goto_4
.end method

.method public onAdminAdded(I)V
    .registers 2

    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 2

    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 2

    return-void
.end method

.method public systemReady()V
    .registers 1

    return-void
.end method
