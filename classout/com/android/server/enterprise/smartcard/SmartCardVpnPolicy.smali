.class public Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;
.super Lcom/sec/enterprise/knox/smartcard/policy/ISmartCardVpnPolicy$Stub;
.source "SmartCardVpnPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mVpnProfiles:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "SmartCardVpnPolicy"

    sput-object v0, Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/sec/enterprise/knox/smartcard/policy/ISmartCardVpnPolicy$Stub;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iput-object v0, p0, Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;->mVpnProfiles:I

    iput-object p1, p0, Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    return-void
.end method

.method private broadcastIntent()V
    .registers 5

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;->mVpnProfiles:I

    invoke-direct {p0}, Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;->getVpnProfileCount()I

    move-result v2

    iput v2, p0, Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;->mVpnProfiles:I

    if-lez v1, :cond_22

    iget v2, p0, Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;->mVpnProfiles:I

    if-nez v2, :cond_22

    new-instance v0, Landroid/content/Intent;

    const-string v2, "edm.intent.action.smartcard.vpn.authentication"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "edm.intent.extra.smartcard.authentication.enabled"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_21
    :goto_21
    return-void

    :cond_22
    if-nez v1, :cond_21

    iget v2, p0, Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;->mVpnProfiles:I

    if-lez v2, :cond_21

    new-instance v0, Landroid/content/Intent;

    const-string v2, "edm.intent.action.smartcard.vpn.authentication"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "edm.intent.extra.smartcard.authentication.enabled"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_21
.end method

.method private enforcePermission()I
    .registers 3

    invoke-direct {p0}, Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_SMARTCARD"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .registers 3

    iget-object v0, p0, Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    :cond_10
    iget-object v0, p0, Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getVpnProfileCount()I
    .registers 5

    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "vpnAuthEnabled"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v2, p0, Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "SmartCardVpnTable"

    invoke-virtual {v2, v3, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_18

    move-result v2

    :goto_17
    return v2

    :catch_18
    move-exception v1

    sget-object v2, Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;->TAG:Ljava/lang/String;

    const-string v3, "getVpnProfileCount() failed"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, -0x1

    goto :goto_17
.end method


# virtual methods
.method public isAuthenticationEnabled()Z
    .registers 4

    sget-object v0, Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAuthenticationEnabled(): Number of VPN profiles = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;->mVpnProfiles:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;->mVpnProfiles:I

    if-lez v0, :cond_20

    const/4 v0, 0x1

    :goto_1f
    return v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method public isCredentialRequired(Ljava/lang/String;)Z
    .registers 9

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_5

    :goto_4
    return v3

    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    :try_start_d
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "vpnProfile"

    invoke-virtual {v1, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "vpnAuthEnabled"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v5, p0, Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "SmartCardVpnTable"

    invoke-virtual {v5, v6, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v0

    if-gtz v0, :cond_3c

    sget-object v4, Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;->TAG:Ljava/lang/String;

    const-string v5, "isCredentialRequired() : entry does not exist"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_32} :catch_33

    goto :goto_4

    :catch_33
    move-exception v2

    sget-object v4, Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;->TAG:Ljava/lang/String;

    const-string v5, "isCredentialRequired() failed"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_3c
    :try_start_3c
    sget-object v5, Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;->TAG:Ljava/lang/String;

    const-string v6, "isCredentialRequired() : entry exists"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_43} :catch_33

    move v3, v4

    goto :goto_4
.end method

.method public onAdminAdded(I)V
    .registers 2

    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;->broadcastIntent()V

    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 2

    return-void
.end method

.method public requireCredentials(Ljava/lang/String;Z)Z
    .registers 13

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;->enforcePermission()I

    move-result v0

    if-nez p1, :cond_a

    move v5, v6

    :goto_9
    return v5

    :cond_a
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    :try_start_12
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v8, "adminUid"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v8, "vpnProfile"

    invoke-virtual {v3, v8, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    iget-object v8, p0, Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "SmartCardVpnTable"

    invoke-virtual {v8, v9, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v1

    if-lez v1, :cond_5a

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v8, "vpnAuthEnabled"

    if-ne p2, v7, :cond_58

    :goto_39
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v7, p0, Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "SmartCardVpnTable"

    invoke-virtual {v7, v8, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v5

    :goto_48
    if-eqz v5, :cond_56

    invoke-direct {p0}, Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;->broadcastIntent()V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_4d} :catch_4e

    goto :goto_9

    :catch_4e
    move-exception v4

    sget-object v7, Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;->TAG:Ljava/lang/String;

    const-string v8, "requireCredentials() failed"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_56
    move v5, v6

    goto :goto_9

    :cond_58
    move v7, v6

    goto :goto_39

    :cond_5a
    :try_start_5a
    const-string v8, "vpnAuthEnabled"

    if-ne p2, v7, :cond_6e

    :goto_5e
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v7, p0, Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "SmartCardVpnTable"

    invoke-virtual {v7, v8, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_6c} :catch_4e

    move-result v5

    goto :goto_48

    :cond_6e
    move v7, v6

    goto :goto_5e
.end method

.method public systemReady()V
    .registers 3

    invoke-direct {p0}, Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;->getVpnProfileCount()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    iput v0, p0, Lcom/android/server/enterprise/smartcard/SmartCardVpnPolicy;->mVpnProfiles:I

    :cond_9
    return-void
.end method
