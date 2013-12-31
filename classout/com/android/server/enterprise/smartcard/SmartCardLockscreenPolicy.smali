.class public Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;
.super Lcom/sec/enterprise/knox/smartcard/policy/ISmartCardLockscreenPolicy$Stub;
.source "SmartCardLockscreenPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private preAdminRemoval_auth_state:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "SmartCardLockscreenPolicy"

    sput-object v0, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/sec/enterprise/knox/smartcard/policy/ISmartCardLockscreenPolicy$Stub;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iput-object v0, p0, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;->preAdminRemoval_auth_state:Z

    iput-object p1, p0, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    return-void
.end method

.method private broadcastIntent(Z)V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "edm.intent.action.smartcard.lockscreen.authentication"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "edm.intent.extra.smartcard.authentication.enabled"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private enforcePermission()I
    .registers 3

    invoke-direct {p0}, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_SMARTCARD"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .registers 3

    iget-object v0, p0, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    :cond_10
    iget-object v0, p0, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method


# virtual methods
.method public disableAuthentication()Z
    .registers 11

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;->enforcePermission()I

    move-result v0

    :try_start_5
    invoke-virtual {p0}, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;->isAuthenticationEnabled()Z

    move-result v3

    iget-object v6, p0, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "SmartCardLockscreenTable"

    const-string v8, "smartcardAuth"

    const/4 v9, 0x0

    invoke-virtual {v6, v0, v7, v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {p0}, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;->isAuthenticationEnabled()Z

    move-result v2

    if-eq v2, v3, :cond_1e

    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;->broadcastIntent(Z)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1e} :catch_1f

    :cond_1e
    :goto_1e
    return v4

    :catch_1f
    move-exception v1

    sget-object v6, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;->TAG:Ljava/lang/String;

    const-string v7, "disableAuthentication() failed"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    goto :goto_1e
.end method

.method public enableAuthentication()Z
    .registers 10

    invoke-direct {p0}, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;->enforcePermission()I

    move-result v0

    :try_start_4
    invoke-virtual {p0}, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;->isAuthenticationEnabled()Z

    move-result v3

    iget-object v5, p0, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "SmartCardLockscreenTable"

    const-string v7, "smartcardAuth"

    const/4 v8, 0x1

    invoke-virtual {v5, v0, v6, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {p0}, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;->isAuthenticationEnabled()Z

    move-result v2

    if-eq v2, v3, :cond_1d

    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;->broadcastIntent(Z)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1d} :catch_1e

    :cond_1d
    :goto_1d
    return v4

    :catch_1e
    move-exception v1

    sget-object v5, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;->TAG:Ljava/lang/String;

    const-string v6, "enableAuthentication() failed"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    goto :goto_1d
.end method

.method public isAuthenticationEnabled()Z
    .registers 9

    const/4 v2, 0x0

    :try_start_1
    iget-object v5, p0, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "SmartCardLockscreenTable"

    const-string v7, "smartcardAuth"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1e} :catch_24

    move-result v3

    if-eqz v3, :cond_f

    move v2, v3

    :cond_22
    move v5, v2

    :goto_23
    return v5

    :catch_24
    move-exception v0

    sget-object v5, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;->TAG:Ljava/lang/String;

    const-string v6, "isAuthenticationEnabled() failed"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    goto :goto_23
.end method

.method public onAdminAdded(I)V
    .registers 2

    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 4

    invoke-virtual {p0}, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;->isAuthenticationEnabled()Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;->preAdminRemoval_auth_state:Z

    if-eq v0, v1, :cond_e

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;->broadcastIntent(Z)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;->preAdminRemoval_auth_state:Z

    :cond_e
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 3

    invoke-virtual {p0}, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;->isAuthenticationEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/enterprise/smartcard/SmartCardLockscreenPolicy;->preAdminRemoval_auth_state:Z

    return-void
.end method

.method public systemReady()V
    .registers 1

    return-void
.end method
