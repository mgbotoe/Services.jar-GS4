.class public Lcom/android/server/enterprise/vpn/VpnInfoPolicy;
.super Landroid/app/enterprise/IVpnInfoPolicy$Stub;
.source "VpnInfoPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    }
.end annotation


# static fields
.field private static final DNS_SERVERS:I = 0x0

.field private static final FORWARD_ROUTES:I = 0x2

.field private static final SEARCH_DOMAINS:I = 0x1


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mConnectivityService:Landroid/net/IConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mInfo:Lcom/android/internal/net/LegacyVpnInfo;

.field private mKeyStore:Landroid/security/KeyStore;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 11

    const/4 v8, 0x0

    invoke-direct {p0}, Landroid/app/enterprise/IVpnInfoPolicy$Stub;-><init>()V

    const-string v6, "VpnPolicy"

    iput-object v6, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->TAG:Ljava/lang/String;

    iput-object v8, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mConnectivityService:Landroid/net/IConnectivityManager;

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mKeyStore:Landroid/security/KeyStore;

    iput-object v8, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v8, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iput-object p1, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mContext:Landroid/content/Context;

    new-instance v6, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v7, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_c3

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_c3

    const-string v6, "setup_wizard_has_run"

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c3

    iget-object v6, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "VPN"

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_41
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_51
    :goto_51
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_41

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;

    const-string v6, "VpnID"

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_51

    const-string v6, "VpnID"

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v4, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_51

    const-string v6, "UsrName"

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_89

    const-string v6, "UsrName"

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v4, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->username:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9f

    :cond_89
    const-string v6, "UsrPwd"

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_51

    const-string v6, "UsrPwd"

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v4, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->password:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_51

    :cond_9f
    iget-object v6, v4, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->username:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_b2

    const/4 v6, 0x1

    iput-boolean v6, v4, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->saveLogin:Z

    const-string v6, "UsrName"

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->username:Ljava/lang/String;

    :cond_b2
    iget-object v6, v4, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->password:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_51

    const-string v6, "UsrPwd"

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->password:Ljava/lang/String;

    goto :goto_51

    :cond_c3
    return-void
.end method

.method private addProfile(Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->saveProfileToStorage(Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;)Z

    move-result v3

    if-eqz v3, :cond_19

    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.android.server.enterprise.VPN_NEW_PROFILE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_19
    return-void
.end method

.method private checkDuplicateName(Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;I)Z
    .registers 9

    const/4 v4, 0x0

    if-lez p2, :cond_2b

    :try_start_3
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_31

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_31

    const/4 v1, 0x0

    :goto_10
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_31

    iget-object v5, p1, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;

    iget-object v3, v3, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_23} :catch_2d

    move-result v3

    if-eqz v3, :cond_28

    const/4 v3, 0x1

    :goto_27
    return v3

    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_2b
    move v3, v4

    goto :goto_27

    :catch_2d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_31
    move v3, v4

    goto :goto_27
.end method

.method private declared-synchronized disconnect()V
    .registers 7

    monitor-enter p0

    :try_start_1
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mConnectivityService:Landroid/net/IConnectivityManager;

    if-nez v3, :cond_8

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->startVpnService()V

    :cond_8
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mConnectivityService:Landroid/net/IConnectivityManager;

    if-eqz v3, :cond_1c

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mConnectivityService:Landroid/net/IConnectivityManager;

    const-string v4, "[Legacy VPN]"

    const-string v5, "[Legacy VPN]"

    invoke-interface {v3, v4, v5}, Landroid/net/IConnectivityManager;->prepareVpn(Ljava/lang/String;Ljava/lang/String;)Z

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_23
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1c} :catch_1e

    :cond_1c
    :goto_1c
    monitor-exit p0

    return-void

    :catch_1e
    move-exception v0

    :try_start_1f
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_23

    goto :goto_1c

    :catchall_23
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private enforceSystemUser()V
    .registers 3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_12

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Can only be called by system user"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    return-void
.end method

.method private enforceVpnPermission()I
    .registers 3

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_VPN"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .registers 3

    iget-object v0, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    :cond_10
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getProfileIndexFromName(Ljava/lang/String;)I
    .registers 6

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_29

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_29

    const/4 v1, 0x0

    :goto_d
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_29

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;

    iget-object v3, v3, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_25

    move-result v3

    if-eqz v3, :cond_22

    :goto_21
    return v1

    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :catch_25
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_29
    const/4 v1, -0x1

    goto :goto_21
.end method

.method private getProfileProperty(Ljava/lang/String;I)Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission()I

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_72

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v8

    if-eqz v8, :cond_72

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_72

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_72

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;

    iget-object v9, v7, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_19

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    packed-switch p2, :pswitch_data_74

    :cond_35
    :goto_35
    return-object v6

    :pswitch_36
    iget-object v9, v7, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->dnsServers:Ljava/lang/String;

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v5, v0

    const/4 v1, 0x0

    :goto_40
    if-ge v1, v5, :cond_35

    aget-object v2, v0, v1

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_40

    :pswitch_4a
    iget-object v9, v7, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->searchDomains:Ljava/lang/String;

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v5, v0

    const/4 v1, 0x0

    :goto_54
    if-ge v1, v5, :cond_35

    aget-object v4, v0, v1

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_54

    :pswitch_5e
    iget-object v9, v7, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->routes:Ljava/lang/String;

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v5, v0

    const/4 v1, 0x0

    :goto_68
    if-ge v1, v5, :cond_35

    aget-object v3, v0, v1

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_68

    :cond_72
    const/4 v6, 0x0

    goto :goto_35

    :pswitch_data_74
    .packed-switch 0x0
        :pswitch_36
        :pswitch_4a
        :pswitch_5e
    .end packed-switch
.end method

.method private isCredentialsLocked()Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v0}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v0

    sget-object v1, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    if-eq v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private removeProfileFromStorage(Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;)V
    .registers 11

    const/4 v6, 0x1

    :try_start_1
    new-array v0, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "VpnID"

    aput-object v7, v0, v6

    const/4 v6, 0x1

    new-array v1, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v7, p1, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->key:Ljava/lang/String;

    aput-object v7, v1, v6

    iget-object v6, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "VPN"

    invoke-virtual {v6, v7, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    iget-object v6, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mKeyStore:Landroid/security/KeyStore;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "VPN_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/security/KeyStore;->delete(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_47

    new-instance v3, Landroid/content/Intent;

    const-string v6, "com.android.server.enterprise.VPN_NEW_PROFILE"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_47} :catch_48

    :cond_47
    :goto_47
    return-void

    :catch_48
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_47
.end method

.method private replaceProfile(ILcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_37

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_37

    iget-object v3, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mKeyStore:Landroid/security/KeyStore;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VPN_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;

    iget-object v2, v2, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/security/KeyStore;->delete(Ljava/lang/String;)Z

    invoke-virtual {v1, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;

    if-eqz v0, :cond_37

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->saveProfileToStorage(Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;)Z

    :cond_37
    return-void
.end method

.method private retrieveVpnListFromStorage()Ljava/util/ArrayList;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->isCredentialsLocked()Z

    move-result v7

    if-nez v7, :cond_4a

    iget-object v7, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mKeyStore:Landroid/security/KeyStore;

    const-string v8, "VPN_"

    invoke-virtual {v7, v8}, Landroid/security/KeyStore;->saw(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4a

    array-length v7, v4

    if-lez v7, :cond_4a

    move-object v1, v4

    array-length v5, v1

    const/4 v2, 0x0

    :goto_1b
    if-ge v2, v5, :cond_4a

    aget-object v3, v1, v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_47

    iget-object v7, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mKeyStore:Landroid/security/KeyStore;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "VPN_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v7

    invoke-static {v3, v7}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->decode(Ljava/lang/String;[B)Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;

    move-result-object v6

    if-eqz v6, :cond_47

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_47
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    :cond_4a
    return-object v0
.end method

.method private saveProfileToStorage(Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;)Z
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mKeyStore:Landroid/security/KeyStore;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "VPN_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->encode()[B

    move-result-object v13

    const/4 v14, -0x1

    const/4 v15, 0x1

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    move-result v11

    if-eqz v11, :cond_a2

    new-instance v4, Landroid/content/Intent;

    const-string v11, "com.android.server.enterprise.VPN_NEW_PROFILE"

    invoke-direct {v4, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission()I

    move-result v8

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->name:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getUserName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->name:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getUserPwd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v11, 0x2

    new-array v1, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "adminUid"

    aput-object v12, v1, v11

    const/4 v11, 0x1

    const-string v12, "VpnID"

    aput-object v12, v1, v11

    const/4 v11, 0x2

    new-array v10, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->key:Ljava/lang/String;

    aput-object v12, v10, v11

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v11, "adminUid"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v2, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v11, "VpnID"

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v2, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "UsrName"

    invoke-virtual {v2, v11, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "UsrPwd"

    invoke-virtual {v2, v11, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v12, "VPN"

    invoke-virtual {v11, v12, v1, v10, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9c} :catch_9e

    move-result v11

    :goto_9d
    return v11

    :catch_9e
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :cond_a2
    const/4 v11, 0x0

    goto :goto_9d
.end method

.method private setProfileId()J
    .registers 8

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mKeyStore:Landroid/security/KeyStore;

    const-string v6, "VPN_"

    invoke-virtual {v5, v6}, Landroid/security/KeyStore;->saw(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2b

    const/4 v1, 0x0

    :goto_f
    array-length v5, v2

    if-ge v1, v5, :cond_2b

    aget-object v5, v2, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_25

    move-result v5

    if-eqz v5, :cond_22

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    const/4 v1, 0x0

    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :catch_25
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-wide/16 v3, -0x1

    :cond_2b
    return-wide v3
.end method

.method private setProfileProperty(Ljava/lang/String;Ljava/util/List;I)Z
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission()I

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_d

    if-nez p2, :cond_e

    :cond_d
    :goto_d
    return v8

    :cond_e
    const-string v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v10, ""

    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_32

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_d

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1b

    :cond_32
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    if-le v10, v9, :cond_46

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v1, v8, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_46
    if-nez p3, :cond_54

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_54

    invoke-direct {p0, v1, v8}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->validateAddresses(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_d

    :cond_54
    const/4 v10, 0x2

    if-ne p3, v10, :cond_63

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_63

    invoke-direct {p0, v1, v9}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->validateAddresses(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_d

    :cond_63
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getProfileIndexFromName(Ljava/lang/String;)I

    move-result v4

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v7

    if-eqz v7, :cond_d

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_d

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;

    if-eqz v6, :cond_d

    packed-switch p3, :pswitch_data_96

    :goto_7e
    :try_start_7e
    invoke-direct {p0, v4, v6}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->replaceProfile(ILcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;)V
    :try_end_81
    .catch Ljava/io/IOException; {:try_start_7e .. :try_end_81} :catch_8c

    move v8, v9

    goto :goto_d

    :pswitch_83
    iput-object v1, v6, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->dnsServers:Ljava/lang/String;

    goto :goto_7e

    :pswitch_86
    iput-object v1, v6, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->searchDomains:Ljava/lang/String;

    goto :goto_7e

    :pswitch_89
    iput-object v1, v6, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->routes:Ljava/lang/String;

    goto :goto_7e

    :catch_8c
    move-exception v0

    const-string v9, "VpnPolicy"

    const-string v10, "VpnInfoPolicy.setProfileProperty() - Error to save profile !"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d

    :pswitch_data_96
    .packed-switch 0x0
        :pswitch_83
        :pswitch_86
        :pswitch_89
    .end packed-switch
.end method

.method private declared-synchronized startVpnService()V
    .registers 3

    monitor-enter p0

    :try_start_1
    const-string v1, "connectivity"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mConnectivityService:Landroid/net/IConnectivityManager;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_14
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_f

    :goto_d
    monitor-exit p0

    return-void

    :catch_f
    move-exception v0

    :try_start_10
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_14

    goto :goto_d

    :catchall_14
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private validateAddresses(Ljava/lang/String;Z)Z
    .registers 14

    :try_start_0
    const-string v9, " "

    invoke-virtual {p1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v6, v1

    const/4 v4, 0x0

    :goto_8
    if-ge v4, v6, :cond_67

    aget-object v0, v1, v4

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_15

    :cond_12
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_15
    const/16 v8, 0x20

    if-eqz p2, :cond_2a

    const-string v9, "/"

    const/4 v10, 0x2

    invoke-virtual {v0, v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    aget-object v0, v7, v9

    const/4 v9, 0x1

    aget-object v9, v7, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    :cond_2a
    invoke-static {v0}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v9

    invoke-virtual {v9}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    const/4 v9, 0x3

    aget-byte v9, v2, v9

    and-int/lit16 v9, v9, 0xff

    const/4 v10, 0x2

    aget-byte v10, v2, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    or-int/2addr v9, v10

    const/4 v10, 0x1

    aget-byte v10, v2, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x10

    or-int/2addr v9, v10

    const/4 v10, 0x0

    aget-byte v10, v2, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x18

    or-int v5, v9, v10

    array-length v9, v2
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_51} :catch_64

    const/4 v10, 0x4

    if-ne v9, v10, :cond_62

    if-ltz v8, :cond_62

    const/16 v9, 0x20

    if-gt v8, v9, :cond_62

    const/16 v9, 0x20

    if-ge v8, v9, :cond_12

    shl-int v9, v5, v8

    if-eqz v9, :cond_12

    :cond_62
    const/4 v9, 0x0

    :goto_63
    return v9

    :catch_64
    move-exception v3

    const/4 v9, 0x0

    goto :goto_63

    :cond_67
    const/4 v9, 0x1

    goto :goto_63
.end method


# virtual methods
.method public allowOnlySecureConnections(Z)Z
    .registers 11

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission()I

    move-result v5

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_42

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_12
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_42

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;

    iget-object v6, v1, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v6, v1, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v4, :cond_12

    const-string v6, "PPTP"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    if-eqz v3, :cond_12

    const-string v6, "CONNECTED"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->disconnect()V

    goto :goto_12

    :cond_42
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "RESTRICTION"

    const-string v8, "allowOnlySecureVPN"

    invoke-virtual {v6, v5, v7, v8, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    return v6
.end method

.method public checkRacoonSecurity([Ljava/lang/String;)Z
    .registers 7

    const/4 v4, 0x2

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission()I

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.enterprise.SHOW_UI"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->isOnlySecureConnectionsAllowed()Z

    move-result v2

    if-eqz v2, :cond_64

    if-eqz p1, :cond_65

    array-length v2, p1

    const/4 v3, 0x1

    if-le v2, v3, :cond_65

    aget-object v2, p1, v4

    if-eqz v2, :cond_65

    aget-object v2, p1, v4

    const-string v3, "udprsa"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4e

    aget-object v2, p1, v4

    const-string v3, "xauthrsa"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4e

    aget-object v2, p1, v4

    const-string v3, "hybridrsa"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4e

    aget-object v2, p1, v4

    const-string v3, "udppsk"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4e

    aget-object v2, p1, v4

    const-string v3, "xauthpsk"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_65

    :cond_4e
    const/4 v1, 0x1

    :goto_4f
    if-nez v1, :cond_64

    const-string v2, "message"

    iget-object v3, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mContext:Landroid/content/Context;

    const v4, 0x1040299

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_64
    return v1

    :cond_65
    const/4 v1, 0x0

    goto :goto_4f
.end method

.method public declared-synchronized createProfile(Landroid/app/enterprise/VpnAdminProfile;)Z
    .registers 16

    const/4 v12, 0x3

    const/4 v11, 0x1

    const/4 v9, 0x0

    monitor-enter p0

    :try_start_4
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission()I
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_af

    :try_start_7
    iget-object v10, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mConnectivityService:Landroid/net/IConnectivityManager;

    if-nez v10, :cond_e

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->startVpnService()V

    :cond_e
    iget-object v10, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mConnectivityService:Landroid/net/IConnectivityManager;

    if-eqz v10, :cond_2e

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    iget-object v10, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mConnectivityService:Landroid/net/IConnectivityManager;

    invoke-interface {v10}, Landroid/net/IConnectivityManager;->getLegacyVpnInfo()Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object v10

    iput-object v10, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    iget-object v10, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    if-eqz v10, :cond_2e

    iget-object v10, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    iget v10, v10, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    if-ne v10, v12, :cond_2e

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->disconnect()V

    :cond_2e
    iget-object v10, p1, Landroid/app/enterprise/VpnAdminProfile;->profileName:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_60

    iget-object v10, p1, Landroid/app/enterprise/VpnAdminProfile;->serverName:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_60

    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0xe

    if-ge v10, v12, :cond_4e

    iget-object v10, p1, Landroid/app/enterprise/VpnAdminProfile;->profileName:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    const/16 v12, 0x40

    if-gt v10, v12, :cond_60

    :cond_4e
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->isCredentialsLocked()Z

    move-result v10

    if-nez v10, :cond_60

    iget-object v10, p1, Landroid/app/enterprise/VpnAdminProfile;->profileName:Ljava/lang/String;

    invoke-virtual {p0, v10}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_5d
    .catchall {:try_start_7 .. :try_end_5d} :catchall_af
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_5d} :catch_aa
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_5d} :catch_fe

    move-result v10

    if-nez v10, :cond_62

    :cond_60
    :goto_60
    monitor-exit p0

    return v9

    :cond_62
    :try_start_62
    new-instance v8, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->setProfileId()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;-><init>(Ljava/lang/String;)V

    if-eqz v8, :cond_60

    iget-object v10, p1, Landroid/app/enterprise/VpnAdminProfile;->profileName:Ljava/lang/String;

    iput-object v10, v8, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->name:Ljava/lang/String;

    iget-object v10, p1, Landroid/app/enterprise/VpnAdminProfile;->serverName:Ljava/lang/String;

    iput-object v10, v8, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->server:Ljava/lang/String;

    iget-object v10, p1, Landroid/app/enterprise/VpnAdminProfile;->userName:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_b2

    move v10, v11

    :goto_82
    iput-boolean v10, v8, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->saveLogin:Z

    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v10, ""

    invoke-direct {v1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p1, Landroid/app/enterprise/VpnAdminProfile;->dnsServers:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_93
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_b4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_60

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_a9
    .catchall {:try_start_62 .. :try_end_a9} :catchall_af
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_a9} :catch_aa
    .catch Landroid/os/RemoteException; {:try_start_62 .. :try_end_a9} :catch_fe

    goto :goto_93

    :catch_aa
    move-exception v2

    :try_start_ab
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_ae
    .catchall {:try_start_ab .. :try_end_ae} :catchall_af

    goto :goto_60

    :catchall_af
    move-exception v9

    monitor-exit p0

    throw v9

    :cond_b2
    move v10, v9

    goto :goto_82

    :cond_b4
    :try_start_b4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    if-le v10, v11, :cond_c9

    const/4 v10, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v0, v10, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_c9
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_d6

    const/4 v10, 0x0

    invoke-direct {p0, v0, v10}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->validateAddresses(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_60

    :cond_d6
    iput-object v0, v8, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->dnsServers:Ljava/lang/String;

    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v10, ""

    invoke-direct {v1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p1, Landroid/app/enterprise/VpnAdminProfile;->forwardRoutes:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_e7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_104

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_60

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_fd
    .catchall {:try_start_b4 .. :try_end_fd} :catchall_af
    .catch Ljava/io/IOException; {:try_start_b4 .. :try_end_fd} :catch_aa
    .catch Landroid/os/RemoteException; {:try_start_b4 .. :try_end_fd} :catch_fe

    goto :goto_e7

    :catch_fe
    move-exception v2

    :try_start_ff
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_102
    .catchall {:try_start_ff .. :try_end_102} :catchall_af

    goto/16 :goto_60

    :cond_104
    :try_start_104
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    if-le v10, v11, :cond_119

    const/4 v10, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v0, v10, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_119
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_126

    const/4 v10, 0x1

    invoke-direct {p0, v0, v10}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->validateAddresses(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_60

    :cond_126
    iput-object v0, v8, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->routes:Ljava/lang/String;

    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v10, ""

    invoke-direct {v1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p1, Landroid/app/enterprise/VpnAdminProfile;->searchDomains:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_137
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_14e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_60

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_137

    :cond_14e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    if-le v10, v11, :cond_163

    const/4 v10, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v0, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_163
    iput-object v0, v8, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->searchDomains:Ljava/lang/String;

    iget-object v10, p1, Landroid/app/enterprise/VpnAdminProfile;->userName:Ljava/lang/String;

    if-eqz v10, :cond_16d

    iget-object v10, p1, Landroid/app/enterprise/VpnAdminProfile;->userName:Ljava/lang/String;

    iput-object v10, v8, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->username:Ljava/lang/String;

    :cond_16d
    iget-object v10, p1, Landroid/app/enterprise/VpnAdminProfile;->userPassword:Ljava/lang/String;

    if-eqz v10, :cond_175

    iget-object v10, p1, Landroid/app/enterprise/VpnAdminProfile;->userPassword:Ljava/lang/String;

    iput-object v10, v8, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->password:Ljava/lang/String;

    :cond_175
    iget-object v10, p1, Landroid/app/enterprise/VpnAdminProfile;->vpnType:Ljava/lang/String;

    const-string v11, "PPTP"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_19a

    const/4 v10, 0x0

    iput v10, v8, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->type:I

    iget-boolean v10, p1, Landroid/app/enterprise/VpnAdminProfile;->PPTPEncryptionEnable:Z

    iput-boolean v10, v8, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->mppe:Z

    :goto_186
    iget-object v10, v8, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->name:Ljava/lang/String;

    invoke-direct {p0, v10}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getProfileIndexFromName(Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_60

    invoke-direct {p0, v8, v4}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->checkDuplicateName(Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;I)Z

    move-result v10

    if-nez v10, :cond_60

    invoke-direct {p0, v8}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->saveProfileToStorage(Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;)Z

    move-result v9

    goto/16 :goto_60

    :cond_19a
    iget-object v10, p1, Landroid/app/enterprise/VpnAdminProfile;->vpnType:Ljava/lang/String;

    const-string v11, "L2TP_IPSEC_PSK"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1b8

    iget-object v10, p1, Landroid/app/enterprise/VpnAdminProfile;->IPSecPreSharedKey:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_60

    const/4 v10, 0x1

    iput v10, v8, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->type:I

    iget-object v10, p1, Landroid/app/enterprise/VpnAdminProfile;->IPSecPreSharedKey:Ljava/lang/String;

    iput-object v10, v8, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->ipsecSecret:Ljava/lang/String;

    iget-object v10, p1, Landroid/app/enterprise/VpnAdminProfile;->ipsecIdentifier:Ljava/lang/String;

    iput-object v10, v8, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    goto :goto_186

    :cond_1b8
    iget-object v10, p1, Landroid/app/enterprise/VpnAdminProfile;->vpnType:Ljava/lang/String;

    const-string v11, "L2TP_IPSEC"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1d6

    iget-object v10, p1, Landroid/app/enterprise/VpnAdminProfile;->IPSecUserCertificate:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_60

    iget-object v10, p1, Landroid/app/enterprise/VpnAdminProfile;->IPSecUserCertificate:Ljava/lang/String;

    iput-object v10, v8, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->ipsecUserCert:Ljava/lang/String;

    iget-object v10, p1, Landroid/app/enterprise/VpnAdminProfile;->IPSecCaCertificate:Ljava/lang/String;

    iput-object v10, v8, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->ipsecCaCert:Ljava/lang/String;

    const/4 v10, 0x2

    iput v10, v8, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->type:I

    goto :goto_186

    :cond_1d6
    iget-object v10, p1, Landroid/app/enterprise/VpnAdminProfile;->vpnType:Ljava/lang/String;

    const-string v11, "IPSEC_HYBRID_RSA"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1e8

    iget-object v10, p1, Landroid/app/enterprise/VpnAdminProfile;->IPSecCaCertificate:Ljava/lang/String;

    iput-object v10, v8, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->ipsecCaCert:Ljava/lang/String;

    const/4 v10, 0x5

    iput v10, v8, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->type:I

    goto :goto_186

    :cond_1e8
    iget-object v10, p1, Landroid/app/enterprise/VpnAdminProfile;->vpnType:Ljava/lang/String;

    const-string v11, "IPSEC_XAUTH_PSK"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_206

    iget-object v10, p1, Landroid/app/enterprise/VpnAdminProfile;->IPSecPreSharedKey:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_60

    const/4 v10, 0x3

    iput v10, v8, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->type:I

    iget-object v10, p1, Landroid/app/enterprise/VpnAdminProfile;->IPSecPreSharedKey:Ljava/lang/String;

    iput-object v10, v8, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->ipsecSecret:Ljava/lang/String;

    iget-object v10, p1, Landroid/app/enterprise/VpnAdminProfile;->ipsecIdentifier:Ljava/lang/String;

    iput-object v10, v8, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    goto :goto_186

    :cond_206
    iget-object v10, p1, Landroid/app/enterprise/VpnAdminProfile;->vpnType:Ljava/lang/String;

    const-string v11, "IPSEC_XAUTH_RSA"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_60

    iget-object v10, p1, Landroid/app/enterprise/VpnAdminProfile;->IPSecUserCertificate:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_60

    const/4 v10, 0x4

    iput v10, v8, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->type:I

    iget-object v10, p1, Landroid/app/enterprise/VpnAdminProfile;->IPSecUserCertificate:Ljava/lang/String;

    iput-object v10, v8, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->ipsecUserCert:Ljava/lang/String;

    iget-object v10, p1, Landroid/app/enterprise/VpnAdminProfile;->IPSecCaCertificate:Ljava/lang/String;

    iput-object v10, v8, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->ipsecCaCert:Ljava/lang/String;
    :try_end_223
    .catchall {:try_start_104 .. :try_end_223} :catchall_af
    .catch Ljava/io/IOException; {:try_start_104 .. :try_end_223} :catch_aa
    .catch Landroid/os/RemoteException; {:try_start_104 .. :try_end_223} :catch_fe

    goto/16 :goto_186
.end method

.method public declared-synchronized deleteProfile(Ljava/lang/String;)Z
    .registers 10

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission()I
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_68

    :try_start_4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_66

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_66

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_66

    const/4 v1, 0x0

    :goto_17
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_66

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;

    iget-object v6, v6, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5f

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;

    iget-object v6, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mConnectivityService:Landroid/net/IConnectivityManager;

    if-nez v6, :cond_38

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->startVpnService()V

    :cond_38
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mConnectivityService:Landroid/net/IConnectivityManager;

    if-eqz v6, :cond_5f

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mConnectivityService:Landroid/net/IConnectivityManager;

    invoke-interface {v6}, Landroid/net/IConnectivityManager;->getLegacyVpnInfo()Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    iget-object v6, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    if-eqz v6, :cond_59

    iget-object v6, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    iget v6, v6, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_59

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->disconnect()V

    :cond_59
    invoke-direct {p0, v2}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->removeProfileFromStorage(Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;)V
    :try_end_5c
    .catchall {:try_start_4 .. :try_end_5c} :catchall_68
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_5c} :catch_62

    const/4 v6, 0x1

    :goto_5d
    monitor-exit p0

    return v6

    :cond_5f
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :catch_62
    move-exception v0

    :try_start_63
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_66
    .catchall {:try_start_63 .. :try_end_66} :catchall_68

    :cond_66
    const/4 v6, 0x0

    goto :goto_5d

    :catchall_68
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method public disconnectActiveVpnConnections()V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->disconnect()V

    return-void
.end method

.method public declared-synchronized getCaCertificate(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const/4 v4, 0x0

    monitor-enter p0

    :try_start_2
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission()I

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_35

    move-result v5

    if-eqz v5, :cond_e

    :cond_c
    :goto_c
    monitor-exit p0

    return-object v4

    :cond_e
    :try_start_e
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_c

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_c

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;

    iget-object v5, v2, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e

    iget-object v4, v2, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->ipsecCaCert:Ljava/lang/String;
    :try_end_34
    .catchall {:try_start_e .. :try_end_34} :catchall_35

    goto :goto_c

    :catchall_35
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public getDnsDomains(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getProfileProperty(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDnsServers(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getProfileProperty(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getForwardRoutes(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getProfileProperty(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getId(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const/4 v3, 0x0

    monitor-enter p0

    :try_start_2
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission()I

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_34

    move-result v4

    if-eqz v4, :cond_d

    :cond_b
    :goto_b
    monitor-exit p0

    return-object v3

    :cond_d
    :try_start_d
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_b

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;

    iget-object v4, v1, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    iget-object v3, v1, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->key:Ljava/lang/String;
    :try_end_33
    .catchall {:try_start_d .. :try_end_33} :catchall_34

    goto :goto_b

    :catchall_34
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public getIpSecIdentifier(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission()I

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_30

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_30

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_30

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;

    iget-object v3, v1, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    iget-object v3, v1, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    :goto_2f
    return-object v3

    :cond_30
    const/4 v3, 0x0

    goto :goto_2f
.end method

.method public getL2TPSecret(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission()I

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    move-object v2, v3

    :goto_b
    return-object v2

    :cond_c
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_39

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_39

    const/4 v0, 0x0

    :goto_19
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_39

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;

    iget-object v2, v2, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;

    iget-object v2, v2, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->l2tpSecret:Ljava/lang/String;

    goto :goto_b

    :cond_36
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    :cond_39
    move-object v2, v3

    goto :goto_b
.end method

.method public declared-synchronized getName(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const/4 v3, 0x0

    monitor-enter p0

    :try_start_2
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission()I
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_30

    if-nez p1, :cond_9

    :cond_7
    :goto_7
    monitor-exit p0

    return-object v3

    :cond_9
    :try_start_9
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_7

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;

    iget-object v4, v1, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    iget-object v3, v1, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->name:Ljava/lang/String;
    :try_end_2f
    .catchall {:try_start_9 .. :try_end_2f} :catchall_30

    goto :goto_7

    :catchall_30
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized getPresharedKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission()I

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_32

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_32

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_32

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_32

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;

    iget-object v3, v1, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    iget-object v3, v1, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->ipsecSecret:Ljava/lang/String;
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_34

    :goto_30
    monitor-exit p0

    return-object v3

    :cond_32
    const/4 v3, 0x0

    goto :goto_30

    :catchall_34
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized getServerName(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const/4 v3, 0x0

    monitor-enter p0

    :try_start_2
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission()I

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_34

    move-result v4

    if-eqz v4, :cond_d

    :cond_b
    :goto_b
    monitor-exit p0

    return-object v3

    :cond_d
    :try_start_d
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_b

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;

    iget-object v4, v1, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    iget-object v3, v1, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->server:Ljava/lang/String;
    :try_end_33
    .catchall {:try_start_d .. :try_end_33} :catchall_34

    goto :goto_b

    :catchall_34
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized getState(Ljava/lang/String;)Ljava/lang/String;
    .registers 12

    const/4 v8, 0x0

    monitor-enter p0

    :try_start_2
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission()I
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_87

    if-nez p1, :cond_9

    :cond_7
    :goto_7
    monitor-exit p0

    return-object v8

    :cond_9
    const/4 v1, 0x0

    :try_start_a
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_2f

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_2f

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;

    iget-object v9, v4, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2b
    .catchall {:try_start_a .. :try_end_2b} :catchall_87

    move-result v9

    if-eqz v9, :cond_1a

    const/4 v1, 0x1

    :cond_2f
    if-eqz v1, :cond_7

    :try_start_31
    iget-object v9, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mConnectivityService:Landroid/net/IConnectivityManager;

    if-nez v9, :cond_38

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->startVpnService()V

    :cond_38
    iget-object v9, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mConnectivityService:Landroid/net/IConnectivityManager;

    if-eqz v9, :cond_7f

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    iget-object v9, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mConnectivityService:Landroid/net/IConnectivityManager;

    invoke-interface {v9}, Landroid/net/IConnectivityManager;->getLegacyVpnInfo()Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object v9

    iput-object v9, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v3, 0x0

    iget-object v9, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    if-eqz v9, :cond_58

    iget-object v9, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    iget-object v9, v9, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    invoke-virtual {p0, v9}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_58
    if-eqz v3, :cond_7c

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7c

    iget-object v9, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    iget v9, v9, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    packed-switch v9, :pswitch_data_8a

    const-string v8, "IDLE"

    goto :goto_7

    :pswitch_6a
    const-string v8, "DISCONNECTED"

    goto :goto_7

    :pswitch_6d
    const-string v8, "INITIALIZING"

    goto :goto_7

    :pswitch_70
    const-string v8, "CONNECTING"

    goto :goto_7

    :pswitch_73
    const-string v8, "CONNECTED"

    goto :goto_7

    :pswitch_76
    const-string v8, "TIMEOUT"

    goto :goto_7

    :pswitch_79
    const-string v8, "FAILED"

    goto :goto_7

    :cond_7c
    const-string v8, "IDLE"

    goto :goto_7

    :cond_7f
    const-string v8, "IDLE"
    :try_end_81
    .catchall {:try_start_31 .. :try_end_81} :catchall_87
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_81} :catch_82

    goto :goto_7

    :catch_82
    move-exception v0

    :try_start_83
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_86
    .catchall {:try_start_83 .. :try_end_86} :catchall_87

    goto :goto_7

    :catchall_87
    move-exception v8

    monitor-exit p0

    throw v8

    :pswitch_data_8a
    .packed-switch 0x0
        :pswitch_6a
        :pswitch_6d
        :pswitch_70
        :pswitch_73
        :pswitch_76
        :pswitch_79
    .end packed-switch
.end method

.method public declared-synchronized getType(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission()I

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_41

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_41

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_14
    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_41

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;

    iget-object v3, v1, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    iget v3, v1, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->type:I

    packed-switch v3, :pswitch_data_46

    goto :goto_14

    :pswitch_2e
    const-string v3, "PPTP"
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_43

    :goto_30
    monitor-exit p0

    return-object v3

    :pswitch_32
    :try_start_32
    const-string v3, "L2TP_IPSEC_PSK"

    goto :goto_30

    :pswitch_35
    const-string v3, "L2TP_IPSEC"

    goto :goto_30

    :pswitch_38
    const-string v3, "IPSEC_XAUTH_PSK"

    goto :goto_30

    :pswitch_3b
    const-string v3, "IPSEC_XAUTH_RSA"

    goto :goto_30

    :pswitch_3e
    const-string v3, "IPSEC_HYBRID_RSA"
    :try_end_40
    .catchall {:try_start_32 .. :try_end_40} :catchall_43

    goto :goto_30

    :cond_41
    const/4 v3, 0x0

    goto :goto_30

    :catchall_43
    move-exception v3

    monitor-exit p0

    throw v3

    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_2e
        :pswitch_32
        :pswitch_35
        :pswitch_38
        :pswitch_3b
        :pswitch_3e
    .end packed-switch
.end method

.method public declared-synchronized getUserCertificate(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const/4 v3, 0x0

    monitor-enter p0

    :try_start_2
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission()I

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_34

    move-result v4

    if-eqz v4, :cond_d

    :cond_b
    :goto_b
    monitor-exit p0

    return-object v3

    :cond_d
    :try_start_d
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_b

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;

    iget-object v4, v1, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    iget-object v3, v1, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->ipsecUserCert:Ljava/lang/String;
    :try_end_33
    .catchall {:try_start_d .. :try_end_33} :catchall_34

    goto :goto_b

    :catchall_34
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized getUserName(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission()I

    move-result v3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_33

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_33

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_33

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_33

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;

    iget-object v4, v1, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    iget-object v4, v1, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->username:Ljava/lang/String;
    :try_end_31
    .catchall {:try_start_1 .. :try_end_31} :catchall_35

    :goto_31
    monitor-exit p0

    return-object v4

    :cond_33
    const/4 v4, 0x0

    goto :goto_31

    :catchall_35
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized getUserNameById(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission()I

    iget-object v0, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "VPN"

    const-string v2, "VpnID"

    const-string v3, "UsrName"

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_12

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUserPwd(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission()I

    move-result v3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_33

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_33

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_33

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_33

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;

    iget-object v4, v1, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    iget-object v4, v1, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->password:Ljava/lang/String;
    :try_end_31
    .catchall {:try_start_1 .. :try_end_31} :catchall_35

    :goto_31
    monitor-exit p0

    return-object v4

    :cond_33
    const/4 v4, 0x0

    goto :goto_31

    :catchall_35
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized getUserPwdById(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission()I

    iget-object v0, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "VPN"

    const-string v2, "VpnID"

    const-string v3, "UsrPwd"

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_12

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getVPNList()[Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission()I

    move-result v4

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v3

    if-nez v3, :cond_c

    :cond_b
    return-object v0

    :cond_c
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_b

    const/4 v2, 0x0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v0, v5, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_1a
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_b

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;

    iget-object v5, v5, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->name:Ljava/lang/String;

    aput-object v5, v0, v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1a
.end method

.method public isAdminProfile(Ljava/lang/String;)Z
    .registers 9

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission()I

    iget-object v4, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "VPN"

    const-string v6, "VpnID"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_11

    :cond_10
    :goto_10
    return v3

    :cond_11
    if-eqz p1, :cond_10

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_17

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_17

    const/4 v3, 0x1

    goto :goto_10
.end method

.method public isL2TPSecretEnabled(Ljava/lang/String;)Z
    .registers 6

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission()I

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_a
    :goto_a
    return v3

    :cond_b
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_a

    const/4 v0, 0x0

    :goto_18
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_a

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;

    iget-object v2, v2, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;

    iget-object v2, v2, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->l2tpSecret:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3d

    const/4 v2, 0x1

    :goto_3b
    move v3, v2

    goto :goto_a

    :cond_3d
    move v2, v3

    goto :goto_3b

    :cond_3f
    add-int/lit8 v0, v0, 0x1

    goto :goto_18
.end method

.method public isOnlySecureConnectionsAllowed()Z
    .registers 4

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission()I

    iget-object v0, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "RESTRICTION"

    const-string v2, "allowOnlySecureVPN"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isPPTPEncryptionEnabled(Ljava/lang/String;)Z
    .registers 6

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission()I

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    move v2, v3

    :goto_b
    return v2

    :cond_c
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_45

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_45

    const/4 v0, 0x0

    :goto_19
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_45

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;

    iget-object v2, v2, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_42

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;

    iget v2, v2, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->type:I

    if-nez v2, :cond_40

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;

    iget-boolean v2, v2, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->mppe:Z

    goto :goto_b

    :cond_40
    move v2, v3

    goto :goto_b

    :cond_42
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    :cond_45
    move v2, v3

    goto :goto_b
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

.method public declared-synchronized setCaCertificate(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9

    monitor-enter p0

    const/4 v4, 0x0

    :try_start_2
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission()I

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_33

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_33

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->isCredentialsLocked()Z

    move-result v5

    if-nez v5, :cond_33

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getProfileIndexFromName(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_33

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_33

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;

    iput-object p2, v2, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->ipsecCaCert:Ljava/lang/String;
    :try_end_2f
    .catchall {:try_start_2 .. :try_end_2f} :catchall_39

    :try_start_2f
    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->replaceProfile(ILcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;)V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_39
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_32} :catch_36

    const/4 v4, 0x1

    :cond_33
    move v5, v4

    :goto_34
    monitor-exit p0

    return v5

    :catch_36
    move-exception v0

    const/4 v5, 0x0

    goto :goto_34

    :catchall_39
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public setDnsDomains(Ljava/lang/String;Ljava/util/List;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->setProfileProperty(Ljava/lang/String;Ljava/util/List;I)Z

    move-result v0

    return v0
.end method

.method public setDnsServers(Ljava/lang/String;Ljava/util/List;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->setProfileProperty(Ljava/lang/String;Ljava/util/List;I)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized setEncryptionEnabledForPPTP(Ljava/lang/String;Z)Z
    .registers 10

    const/4 v5, 0x0

    monitor-enter p0

    :try_start_2
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission()I

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_36

    move-result v6

    if-eqz v6, :cond_d

    :cond_b
    :goto_b
    monitor-exit p0

    return v5

    :cond_d
    :try_start_d
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getProfileIndexFromName(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_b

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_b

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;

    if-eqz v3, :cond_b

    iget v6, v3, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->type:I

    if-nez v6, :cond_b

    move-object v2, v3

    iput-boolean p2, v2, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->mppe:Z
    :try_end_2c
    .catchall {:try_start_d .. :try_end_2c} :catchall_36

    :try_start_2c
    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->replaceProfile(ILcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;)V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_36
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2f} :catch_31

    const/4 v5, 0x1

    goto :goto_b

    :catch_31
    move-exception v0

    :try_start_32
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_36

    goto :goto_b

    :catchall_36
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public setForwardRoutes(Ljava/lang/String;Ljava/util/List;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->setProfileProperty(Ljava/lang/String;Ljava/util/List;I)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized setId(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 14

    const/4 v8, 0x0

    monitor-enter p0

    :try_start_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7c

    move-result v9

    if-eqz v9, :cond_a

    :cond_8
    :goto_8
    monitor-exit p0

    return v8

    :cond_a
    :try_start_a
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission()I

    move-result v6

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V
    :try_end_13
    .catchall {:try_start_a .. :try_end_13} :catchall_7c

    :try_start_13
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_8

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getProfileIndexFromName(Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_8

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_8

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;

    if-eqz v4, :cond_8

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_8

    iput-object p2, v4, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->key:Ljava/lang/String;

    invoke-direct {p0, v4, v3}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->checkDuplicateName(Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;I)Z

    move-result v9

    if-nez v9, :cond_8

    invoke-direct {p0, v3, v4}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->replaceProfile(ILcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;)V

    const-string v9, "adminUid"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v9, "VpnID"

    iget-object v10, v4, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v1, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x2

    new-array v0, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "adminUid"

    aput-object v10, v0, v9

    const/4 v9, 0x1

    const-string v10, "VpnID"

    aput-object v10, v0, v9

    const/4 v9, 0x2

    new-array v7, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v9

    const/4 v9, 0x1

    iget-object v10, v4, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->key:Ljava/lang/String;

    aput-object v10, v7, v9

    iget-object v9, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "VPN"

    invoke-virtual {v9, v10, v0, v7, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z
    :try_end_75
    .catchall {:try_start_13 .. :try_end_75} :catchall_7c
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_75} :catch_77

    move-result v8

    goto :goto_8

    :catch_77
    move-exception v2

    :try_start_78
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7b
    .catchall {:try_start_78 .. :try_end_7b} :catchall_7c

    goto :goto_8

    :catchall_7c
    move-exception v8

    monitor-exit p0

    throw v8
.end method

.method public setIpSecIdentifier(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission()I

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3a

    if-eqz p2, :cond_3a

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_3a

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_3a

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;

    iget-object v6, v3, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1c

    iput-object p2, v3, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getProfileIndexFromName(Ljava/lang/String;)I

    move-result v2

    :try_start_36
    invoke-direct {p0, v2, v3}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->replaceProfile(ILcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_39} :catch_3b

    const/4 v5, 0x1

    :cond_3a
    :goto_3a
    return v5

    :catch_3b
    move-exception v0

    const-string v6, "VpnPolicy"

    const-string v7, "VpnInfoPolicy.setIpSecIdentifier() - failed to save profile !"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3a
.end method

.method public declared-synchronized setL2TPSecret(Ljava/lang/String;ZLjava/lang/String;)Z
    .registers 11

    const/4 v5, 0x0

    monitor-enter p0

    :try_start_2
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission()I

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_33

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getProfileIndexFromName(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_33

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_33

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;

    const/4 v2, 0x0

    if-eqz v3, :cond_33

    move-object v2, v3

    if-eqz p2, :cond_35

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_35

    iput-object p3, v2, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->l2tpSecret:Ljava/lang/String;
    :try_end_2f
    .catchall {:try_start_2 .. :try_end_2f} :catchall_3c

    :goto_2f
    :try_start_2f
    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->replaceProfile(ILcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;)V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_3c
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_32} :catch_3f

    const/4 v5, 0x1

    :cond_33
    :goto_33
    monitor-exit p0

    return v5

    :cond_35
    if-nez p2, :cond_33

    :try_start_37
    const-string v6, ""

    iput-object v6, v2, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->l2tpSecret:Ljava/lang/String;
    :try_end_3b
    .catchall {:try_start_37 .. :try_end_3b} :catchall_3c

    goto :goto_2f

    :catchall_3c
    move-exception v5

    monitor-exit p0

    throw v5

    :catch_3f
    move-exception v0

    :try_start_40
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_3c

    goto :goto_33
.end method

.method public declared-synchronized setName(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission()I
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_4c

    :try_start_4
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4a

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4a

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x41

    if-lt v5, v6, :cond_1e

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xe

    if-lt v5, v6, :cond_4a

    :cond_1e
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getProfileIndexFromName(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_4a

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_4a

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;

    const/4 v2, 0x0

    if-eqz v3, :cond_4a

    move-object v2, v3

    iput-object p2, v2, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->name:Ljava/lang/String;

    invoke-direct {p0, v2, v1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->checkDuplicateName(Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;I)Z

    move-result v5

    if-nez v5, :cond_4a

    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->replaceProfile(ILcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;)V
    :try_end_43
    .catchall {:try_start_4 .. :try_end_43} :catchall_4c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_43} :catch_46

    const/4 v5, 0x1

    :goto_44
    monitor-exit p0

    return v5

    :catch_46
    move-exception v0

    :try_start_47
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4a
    .catchall {:try_start_47 .. :try_end_4a} :catchall_4c

    :cond_4a
    const/4 v5, 0x0

    goto :goto_44

    :catchall_4c
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized setPresharedKey(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission()I

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->isCredentialsLocked()Z

    move-result v6

    if-nez v6, :cond_37

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_37

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_3c

    move-result v6

    if-nez v6, :cond_37

    :try_start_17
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getProfileIndexFromName(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_37

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_37

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;

    const/4 v2, 0x0

    if-eqz v3, :cond_36

    move-object v2, v3

    iput-object p2, v2, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->ipsecSecret:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->replaceProfile(ILcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;)V
    :try_end_36
    .catchall {:try_start_17 .. :try_end_36} :catchall_3c
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_36} :catch_39

    :cond_36
    const/4 v5, 0x1

    :cond_37
    :goto_37
    monitor-exit p0

    return v5

    :catch_39
    move-exception v0

    const/4 v5, 0x0

    goto :goto_37

    :catchall_3c
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method public declared-synchronized setServerName(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission()I
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_38

    :try_start_4
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_36

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_36

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getProfileIndexFromName(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_36

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_36

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;

    const/4 v2, 0x0

    if-eqz v3, :cond_36

    move-object v2, v3

    iput-object p2, v2, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->server:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->replaceProfile(ILcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;)V
    :try_end_2f
    .catchall {:try_start_4 .. :try_end_2f} :catchall_38
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_2f} :catch_32

    const/4 v5, 0x1

    :goto_30
    monitor-exit p0

    return v5

    :catch_32
    move-exception v0

    :try_start_33
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_38

    :cond_36
    const/4 v5, 0x0

    goto :goto_30

    :catchall_38
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized setUserCertificate(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9

    monitor-enter p0

    const/4 v4, 0x0

    :try_start_2
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission()I

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_33

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_33

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->isCredentialsLocked()Z

    move-result v5

    if-nez v5, :cond_33

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getProfileIndexFromName(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_33

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_33

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;

    iput-object p2, v2, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->ipsecUserCert:Ljava/lang/String;
    :try_end_2f
    .catchall {:try_start_2 .. :try_end_2f} :catchall_39

    :try_start_2f
    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->replaceProfile(ILcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;)V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_39
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_32} :catch_36

    const/4 v4, 0x1

    :cond_33
    move v5, v4

    :goto_34
    monitor-exit p0

    return v5

    :catch_36
    move-exception v0

    const/4 v5, 0x0

    goto :goto_34

    :catchall_39
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized setUserName(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 14

    const/4 v8, 0x0

    monitor-enter p0

    :try_start_2
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission()I

    move-result v6

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_e
    .catchall {:try_start_2 .. :try_end_e} :catchall_81

    move-result v9

    if-nez v9, :cond_72

    :try_start_11
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getProfileIndexFromName(Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_72

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_72

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;

    if-eqz v4, :cond_72

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_74

    iput-object p2, v4, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->username:Ljava/lang/String;

    const/4 v9, 0x1

    iput-boolean v9, v4, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->saveLogin:Z

    :goto_34
    invoke-direct {p0, v3, v4}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->replaceProfile(ILcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;)V

    const-string v9, "adminUid"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v9, "VpnID"

    iget-object v10, v4, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v1, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "UsrName"

    iget-object v10, v4, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->username:Ljava/lang/String;

    invoke-virtual {v1, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x2

    new-array v0, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "adminUid"

    aput-object v10, v0, v9

    const/4 v9, 0x1

    const-string v10, "VpnID"

    aput-object v10, v0, v9

    const/4 v9, 0x2

    new-array v7, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v9

    const/4 v9, 0x1

    iget-object v10, v4, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->key:Ljava/lang/String;

    aput-object v10, v7, v9

    iget-object v9, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "VPN"

    invoke-virtual {v9, v10, v0, v7, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z
    :try_end_71
    .catchall {:try_start_11 .. :try_end_71} :catchall_81
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_71} :catch_7c

    move-result v8

    :cond_72
    :goto_72
    monitor-exit p0

    return v8

    :cond_74
    const/4 v9, 0x0

    :try_start_75
    iput-boolean v9, v4, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->saveLogin:Z

    const-string v9, ""

    iput-object v9, v4, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->username:Ljava/lang/String;
    :try_end_7b
    .catchall {:try_start_75 .. :try_end_7b} :catchall_81
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_7b} :catch_7c

    goto :goto_34

    :catch_7c
    move-exception v2

    :try_start_7d
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_80
    .catchall {:try_start_7d .. :try_end_80} :catchall_81

    goto :goto_72

    :catchall_81
    move-exception v8

    monitor-exit p0

    throw v8
.end method

.method public declared-synchronized setUserPassword(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 15

    const/4 v9, 0x0

    monitor-enter p0

    :try_start_2
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission()I
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_74

    move-result v7

    if-eqz p2, :cond_6d

    :try_start_8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_6d

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getProfileIndexFromName(Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v6

    if-eqz v6, :cond_6d

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_6d

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;

    const/4 v4, 0x0

    if-eqz v5, :cond_6d

    move-object v4, v5

    iput-object p2, v4, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->password:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->replaceProfile(ILcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;)V

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v10, "UsrPwd"

    iget-object v11, v4, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->password:Ljava/lang/String;

    invoke-virtual {v1, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "adminUid"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v10, "VpnID"

    iget-object v11, v4, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v1, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v10, 0x2

    new-array v0, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "adminUid"

    aput-object v11, v0, v10

    const/4 v10, 0x1

    const-string v11, "VpnID"

    aput-object v11, v0, v10

    const/4 v10, 0x2

    new-array v8, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v8, v10

    const/4 v10, 0x1

    iget-object v11, v4, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->key:Ljava/lang/String;

    aput-object v11, v8, v10

    iget-object v10, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v11, "VPN"

    invoke-virtual {v10, v11, v0, v8, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z
    :try_end_6c
    .catchall {:try_start_8 .. :try_end_6c} :catchall_74
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_6c} :catch_6f

    move-result v9

    :cond_6d
    :goto_6d
    monitor-exit p0

    return v9

    :catch_6f
    move-exception v2

    :try_start_70
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_73
    .catchall {:try_start_70 .. :try_end_73} :catchall_74

    goto :goto_6d

    :catchall_74
    move-exception v9

    monitor-exit p0

    throw v9
.end method

.method public declared-synchronized setVpnProfile(Ljava/lang/String;)Z
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission()I
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_7

    const/4 v0, 0x0

    monitor-exit p0

    return v0

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public systemReady()V
    .registers 1

    return-void
.end method
