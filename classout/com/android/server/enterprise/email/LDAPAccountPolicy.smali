.class public Lcom/android/server/enterprise/email/LDAPAccountPolicy;
.super Landroid/app/enterprise/ILDAPAccountPolicy$Stub;
.source "LDAPAccountPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field private static final ACTION_LDAP_INTERFACE_SERVICE:Ljava/lang/String; = "com.android.email.MDM_LDAP"

.field private static final TAG:Ljava/lang/String; = "LDAPAccountPolicyService"


# instance fields
.field mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mIsBound:Z

.field private mLDAPInterfaceReceiver:Landroid/content/BroadcastReceiver;

.field private mService:Landroid/app/enterprise/ILDAPInterface;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/enterprise/ILDAPAccountPolicy$Stub;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mService:Landroid/app/enterprise/ILDAPInterface;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mIsBound:Z

    new-instance v0, Lcom/android/server/enterprise/email/LDAPAccountPolicy$1;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/email/LDAPAccountPolicy$1;-><init>(Lcom/android/server/enterprise/email/LDAPAccountPolicy;)V

    iput-object v0, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mConnection:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/android/server/enterprise/email/LDAPAccountPolicy$2;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/email/LDAPAccountPolicy$2;-><init>(Lcom/android/server/enterprise/email/LDAPAccountPolicy;)V

    iput-object v0, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mLDAPInterfaceReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->bindLDAPInterfaceService()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/email/LDAPAccountPolicy;)Landroid/app/enterprise/ILDAPInterface;
    .registers 2

    iget-object v0, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mService:Landroid/app/enterprise/ILDAPInterface;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/server/enterprise/email/LDAPAccountPolicy;Landroid/app/enterprise/ILDAPInterface;)Landroid/app/enterprise/ILDAPInterface;
    .registers 2

    iput-object p1, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mService:Landroid/app/enterprise/ILDAPInterface;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/server/enterprise/email/LDAPAccountPolicy;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mIsBound:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/email/LDAPAccountPolicy;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private bindLDAPInterfaceService()V
    .registers 5

    const-string v0, "LDAPAccountPolicyService"

    const-string v1, "bindLDAPInterfaceService()"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.email.MDM_LDAP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mIsBound:Z

    return-void
.end method

.method private enforceLDAPPermission()I
    .registers 3

    invoke-direct {p0}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_LDAP"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .registers 3

    iget-object v0, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    :cond_10
    iget-object v0, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private registerLDAPInterfaceReceiver()V
    .registers 4

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "edm.intent.action.ldap.createacct.internal"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mLDAPInterfaceReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public declared-synchronized createLDAPAccount(Landroid/app/enterprise/LDAPAccount;)V
    .registers 6

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->enforceLDAPPermission()I

    iget-boolean v2, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mIsBound:Z

    if-nez v2, :cond_b

    invoke-direct {p0}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->bindLDAPInterfaceService()V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_39

    :cond_b
    :try_start_b
    iget-object v2, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mService:Landroid/app/enterprise/ILDAPInterface;

    if-eqz v2, :cond_1e

    iget-object v2, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mService:Landroid/app/enterprise/ILDAPInterface;

    invoke-interface {v2, p1}, Landroid/app/enterprise/ILDAPInterface;->createLDAPAccount(Landroid/app/enterprise/LDAPAccount;)V
    :try_end_14
    .catchall {:try_start_b .. :try_end_14} :catchall_39
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_14} :catch_16

    :goto_14
    monitor-exit p0

    return-void

    :catch_16
    move-exception v0

    :try_start_17
    const-string v2, "LDAPAccountPolicyService"

    const-string v3, "Failed talking to EDM LDAP service "

    invoke-static {v2, v3, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1e
    new-instance v1, Landroid/content/Intent;

    const-string v2, "edm.intent.action.ldap.createacct.result"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "edm.intent.extra.ldap.result"

    const/4 v3, -0x8

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "edm.intent.extra.ldap.acct.id"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.sec.MDM_LDAP"

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_38
    .catchall {:try_start_17 .. :try_end_38} :catchall_39

    goto :goto_14

    :catchall_39
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized deleteLDAPAccount(J)Z
    .registers 7

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_2
    invoke-direct {p0}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->enforceLDAPPermission()I

    const-wide/16 v2, 0x1

    cmp-long v2, p1, v2

    if-gez v2, :cond_14

    const-string v2, "LDAPAccountPolicyService"

    const-string v3, "LDAPAccountPolicy.deleteLDAPAccount : ldapId is invalid"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_2 .. :try_end_12} :catchall_2f

    :cond_12
    :goto_12
    monitor-exit p0

    return v1

    :cond_14
    :try_start_14
    iget-boolean v2, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mIsBound:Z

    if-nez v2, :cond_1b

    invoke-direct {p0}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->bindLDAPInterfaceService()V
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_2f

    :cond_1b
    :try_start_1b
    iget-object v2, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mService:Landroid/app/enterprise/ILDAPInterface;

    if-eqz v2, :cond_12

    iget-object v2, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mService:Landroid/app/enterprise/ILDAPInterface;

    invoke-interface {v2, p1, p2}, Landroid/app/enterprise/ILDAPInterface;->deleteLDAPAccount(J)Z
    :try_end_24
    .catchall {:try_start_1b .. :try_end_24} :catchall_2f
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_24} :catch_26

    move-result v1

    goto :goto_12

    :catch_26
    move-exception v0

    :try_start_27
    const-string v2, "LDAPAccountPolicyService"

    const-string v3, "Failed talking to EDM LDAP service "

    invoke-static {v2, v3, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2e
    .catchall {:try_start_27 .. :try_end_2e} :catchall_2f

    goto :goto_12

    :catchall_2f
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getAllLDAPAccounts()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/LDAPAccount;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->enforceLDAPPermission()I

    iget-boolean v1, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mIsBound:Z

    if-nez v1, :cond_a

    invoke-direct {p0}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->bindLDAPInterfaceService()V

    :cond_a
    :try_start_a
    iget-object v1, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mService:Landroid/app/enterprise/ILDAPInterface;

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mService:Landroid/app/enterprise/ILDAPInterface;

    invoke-interface {v1}, Landroid/app/enterprise/ILDAPInterface;->getAllLDAPAccounts()Ljava/util/List;
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_13} :catch_15

    move-result-object v1

    :goto_14
    return-object v1

    :catch_15
    move-exception v0

    const-string v1, "LDAPAccountPolicyService"

    const-string v2, "Failed talking to EDM LDAP service "

    invoke-static {v1, v2, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1d
    const/4 v1, 0x0

    goto :goto_14
.end method

.method public getLDAPAccount(J)Landroid/app/enterprise/LDAPAccount;
    .registers 7

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->enforceLDAPPermission()I

    const-wide/16 v2, 0x1

    cmp-long v2, p1, v2

    if-gez v2, :cond_12

    const-string v2, "LDAPAccountPolicyService"

    const-string v3, "LDAPAccountPolicy.getLDAPAccount : ldapId is invalid"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    :goto_11
    return-object v1

    :cond_12
    iget-boolean v2, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mIsBound:Z

    if-nez v2, :cond_19

    invoke-direct {p0}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->bindLDAPInterfaceService()V

    :cond_19
    :try_start_19
    iget-object v2, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mService:Landroid/app/enterprise/ILDAPInterface;

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mService:Landroid/app/enterprise/ILDAPInterface;

    invoke-interface {v2, p1, p2}, Landroid/app/enterprise/ILDAPInterface;->getLDAPAccount(J)Landroid/app/enterprise/LDAPAccount;
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_22} :catch_24

    move-result-object v1

    goto :goto_11

    :catch_24
    move-exception v0

    const-string v2, "LDAPAccountPolicyService"

    const-string v3, "Failed talking to EDM LDAP service "

    invoke-static {v2, v3, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_11
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
    .registers 3

    const-string v0, "LDAPAccountPolicyService"

    const-string v1, "LDAPAccountPolicy:systemReady()"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->registerLDAPInterfaceReceiver()V

    return-void
.end method
