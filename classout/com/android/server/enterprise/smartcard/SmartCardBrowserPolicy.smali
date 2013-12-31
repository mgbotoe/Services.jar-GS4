.class public Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;
.super Lcom/sec/enterprise/knox/smartcard/policy/ISmartCardBrowserPolicy$Stub;
.source "SmartCardBrowserPolicy.java"

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

    const-string v0, "SmartCardBrowserPolicy"

    sput-object v0, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/sec/enterprise/knox/smartcard/policy/ISmartCardBrowserPolicy$Stub;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iput-object v0, p0, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->preAdminRemoval_auth_state:Z

    iput-object p1, p0, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    return-void
.end method

.method private broadcastIntent(ZI)V
    .registers 5

    new-instance v0, Landroid/content/Intent;

    const-string v1, "edm.intent.action.smartcard.browser.authentication"

    invoke-static {p2, v1}, Lcom/sec/enterprise/knox/EnterpriseContainerManager;->getContainerizedString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "edm.intent.extra.smartcard.authentication.enabled"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private enforcePermission(I)I
    .registers 4

    invoke-direct {p0}, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_SMARTCARD"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/sec/enterprise/knox/EnterpriseContainerManager;->enforceContainerPermission(I)I

    move-result v0

    return v0
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .registers 3

    iget-object v0, p0, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    :cond_10
    iget-object v0, p0, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method


# virtual methods
.method public disableAuthentication(I)Z
    .registers 13

    const/4 v10, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->enforcePermission(I)I

    move-result v1

    :try_start_5
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->isAuthenticationEnabled(I)Z

    move-result v8

    iget-object v0, p0, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "SmartCardBrowserTable"

    const-string v4, "browserAuthEnabled"

    const/4 v5, 0x0

    move v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(IILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v9

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->isAuthenticationEnabled(I)Z

    move-result v7

    if-eq v7, v8, :cond_1f

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->broadcastIntent(ZI)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1f} :catch_20

    :cond_1f
    :goto_1f
    return v9

    :catch_20
    move-exception v6

    sget-object v0, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->TAG:Ljava/lang/String;

    const-string v2, "disableAuthentication() failed"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v10

    goto :goto_1f
.end method

.method public enableAuthentication(I)Z
    .registers 12

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->enforcePermission(I)I

    move-result v1

    :try_start_4
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->isAuthenticationEnabled(I)Z

    move-result v8

    iget-object v0, p0, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "SmartCardBrowserTable"

    const-string v4, "browserAuthEnabled"

    const/4 v5, 0x1

    move v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(IILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v9

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->isAuthenticationEnabled(I)Z

    move-result v7

    if-eq v7, v8, :cond_1e

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->broadcastIntent(ZI)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1e} :catch_1f

    :cond_1e
    :goto_1e
    return v9

    :catch_1f
    move-exception v6

    sget-object v0, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->TAG:Ljava/lang/String;

    const-string v2, "enableAuthentication() failed"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    goto :goto_1e
.end method

.method public isAuthenticationEnabled(I)Z
    .registers 10

    const/4 v2, 0x0

    :try_start_1
    iget-object v5, p0, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "SmartCardBrowserTable"

    const-string v7, "browserAuthEnabled"

    invoke-virtual {v5, p1, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(ILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

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
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1e} :catch_23

    move-result v3

    if-eqz v3, :cond_f

    move v2, v3

    :cond_22
    :goto_22
    return v2

    :catch_23
    move-exception v0

    sget-object v5, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->TAG:Ljava/lang/String;

    const-string v6, "isAuthenticationEnabled() failed"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22
.end method

.method public onAdminAdded(I)V
    .registers 2

    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 5

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->isAuthenticationEnabled(I)Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->preAdminRemoval_auth_state:Z

    if-eq v0, v1, :cond_e

    invoke-direct {p0, v0, v2}, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->broadcastIntent(ZI)V

    iput-boolean v2, p0, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->preAdminRemoval_auth_state:Z

    :cond_e
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->isAuthenticationEnabled(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->preAdminRemoval_auth_state:Z

    return-void
.end method

.method public systemReady()V
    .registers 1

    return-void
.end method
