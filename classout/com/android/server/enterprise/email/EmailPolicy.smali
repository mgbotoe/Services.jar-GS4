.class public Lcom/android/server/enterprise/email/EmailPolicy;
.super Landroid/app/enterprise/IEmailPolicy$Stub;
.source "EmailPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field private static final TAG:Ljava/lang/String; = "EmailPolicyService"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Landroid/app/enterprise/IEmailPolicy$Stub;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/email/EmailPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object p1, p0, Lcom/android/server/enterprise/email/EmailPolicy;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, Lcom/android/server/enterprise/email/EmailPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/email/EmailPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    return-void
.end method

.method private enforceEmailPermission()I
    .registers 3

    invoke-direct {p0}, Lcom/android/server/enterprise/email/EmailPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_EMAIL"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method private getDefaultValueState(Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    const-string v1, "EmailAllowForward"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v0, 0x1

    :cond_a
    :goto_a
    return v0

    :cond_b
    const-string v1, "EmailAllowHTML"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v0, 0x1

    goto :goto_a
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .registers 3

    iget-object v0, p0, Lcom/android/server/enterprise/email/EmailPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/android/server/enterprise/email/EmailPolicy;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/email/EmailPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    :cond_10
    iget-object v0, p0, Lcom/android/server/enterprise/email/EmailPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getPolicyState(ILjava/lang/String;Ljava/lang/String;)Z
    .registers 16

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz p2, :cond_12

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_12

    if-eqz p3, :cond_12

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1a

    :cond_12
    const-string v7, "EmailPolicyService"

    const-string v9, "getPolicyState: Invalid entry"

    invoke-static {v7, v9}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_19
    return v8

    :cond_1a
    const-string v0, "^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$"

    invoke-virtual {p2, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2a

    const-string v7, "EmailPolicyService"

    const-string v9, "getPolicyState: Invalid entry by regex"

    invoke-static {v7, v9}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_19

    :cond_2a
    new-array v1, v7, [Ljava/lang/String;

    aput-object p3, v1, v8

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v9, "containerID"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v9, "EmailAddress"

    invoke-virtual {v3, v9, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/server/enterprise/email/EmailPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "EmailSettingsTable"

    invoke-virtual {v9, v10, v1, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_51

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_56

    :cond_51
    invoke-direct {p0, p3}, Lcom/android/server/enterprise/email/EmailPolicy;->getDefaultValueState(Ljava/lang/String;)Z

    move-result v8

    goto :goto_19

    :cond_56
    const-string v9, "EmailPolicyService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getPolicyState: results = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p3}, Lcom/android/server/enterprise/email/EmailPolicy;->getDefaultValueState(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_95

    move v5, v7

    :goto_75
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_79
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    invoke-virtual {v2, p3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v5, :cond_97

    const-string v9, "1"

    :goto_8d
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_79

    move v8, v5

    goto :goto_19

    :cond_95
    move v5, v8

    goto :goto_75

    :cond_97
    const-string v9, "0"

    goto :goto_8d

    :cond_9a
    if-nez v5, :cond_9f

    :goto_9c
    move v8, v7

    goto/16 :goto_19

    :cond_9f
    move v7, v8

    goto :goto_9c
.end method

.method private putPolicyState(IILjava/lang/String;ZLjava/lang/String;)Z
    .registers 13

    const/4 v3, 0x0

    if-eqz p3, :cond_9

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_11

    :cond_9
    const-string v4, "EmailPolicyService"

    const-string v5, "putPolicyState: Invalid entry"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_10
    return v3

    :cond_11
    const-string v0, "^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$"

    invoke-virtual {p3, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_21

    const-string v4, "EmailPolicyService"

    const-string v5, "putPolicyState: Invalid entry by regex"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    :cond_21
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "adminUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "containerID"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "EmailAddress"

    invoke-virtual {v1, v4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_81

    const-string v4, "1"

    :goto_41
    invoke-virtual {v1, p5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "adminUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "containerID"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "EmailAddress"

    invoke-virtual {v2, v4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/enterprise/email/EmailPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "EmailSettingsTable"

    invoke-virtual {v4, v5, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v3

    const-string v4, "EmailPolicyService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "putPolicyState: ret = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    :cond_81
    const-string v4, "0"

    goto :goto_41
.end method


# virtual methods
.method public allowAccountAddition(IZ)Z
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/email/EmailPolicy;->enforceEmailPermission()I

    move-result v0

    const/4 v4, 0x0

    const/4 v7, 0x1

    :try_start_8
    new-array v3, v7, [B

    const/4 v7, 0x0

    if-eqz p2, :cond_44

    :goto_d
    int-to-byte v5, v5

    aput-byte v5, v3, v7

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "policyName"

    invoke-static {p1}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "accountObject"

    invoke-virtual {v1, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    iget-object v5, p0, Lcom/android/server/enterprise/email/EmailPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "ADMIN_REF"

    invoke-virtual {v5, v0, p1, v6, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(IILjava/lang/String;Landroid/content/ContentValues;)Z

    move-result v4

    const-string v5, "EmailPolicyService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "allowAccountAddition: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_43} :catch_46

    :goto_43
    return v4

    :cond_44
    move v5, v6

    goto :goto_d

    :catch_46
    move-exception v2

    const-string v5, "EmailPolicyService"

    const-string v6, "Exception in allowAccountAddition"

    invoke-static {v5, v6, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_43
.end method

.method public allowPopImapEmail(IZ)Z
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/email/EmailPolicy;->enforceEmailPermission()I

    move-result v0

    const/4 v4, 0x0

    const/4 v7, 0x1

    :try_start_8
    new-array v3, v7, [B

    const/4 v7, 0x0

    if-eqz p2, :cond_42

    :goto_d
    int-to-byte v5, v5

    aput-byte v5, v3, v7

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "policyName"

    const-string v6, "allowPopImapEmail"

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "accountObject"

    invoke-virtual {v1, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    iget-object v5, p0, Lcom/android/server/enterprise/email/EmailPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "ADMIN_REF"

    invoke-virtual {v5, v0, p1, v6, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(IILjava/lang/String;Landroid/content/ContentValues;)Z

    move-result v4

    const-string v5, "EmailPolicyService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "allowPopImapEmail: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_41} :catch_44

    :goto_41
    return v4

    :cond_42
    move v5, v6

    goto :goto_d

    :catch_44
    move-exception v2

    const-string v5, "EmailPolicyService"

    const-string v6, "Exception in allowPopImapEmail"

    invoke-static {v5, v6, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_41
.end method

.method public getAllowEmailForwarding(ILjava/lang/String;)Z
    .registers 4

    const-string v0, "EmailAllowForward"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/email/EmailPolicy;->getPolicyState(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getAllowHTMLEmail(ILjava/lang/String;)Z
    .registers 4

    const-string v0, "EmailAllowHTML"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/email/EmailPolicy;->getPolicyState(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isAccountAdditionAllowed(I)Z
    .registers 11

    const/4 v4, 0x1

    :try_start_1
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "containerID"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v6, "policyName"

    invoke-static {p1}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/enterprise/email/EmailPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "ADMIN_REF"

    const-string v8, "accountObject"

    invoke-virtual {v6, v7, v8, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBlobList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_3d

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_3d

    const/4 v3, 0x0

    :goto_2b
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_3d

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    const/4 v6, 0x0

    aget-byte v6, v0, v6
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_3a} :catch_41

    if-nez v6, :cond_3e

    const/4 v4, 0x0

    :cond_3d
    :goto_3d
    return v4

    :cond_3e
    add-int/lit8 v3, v3, 0x1

    goto :goto_2b

    :catch_41
    move-exception v2

    const-string v6, "EmailPolicyService"

    const-string v7, "Exception in isAccountAdditionAllowed"

    invoke-static {v6, v7, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3d
.end method

.method public isPopImapEmailAllowed(I)Z
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v4, 0x1

    :try_start_1
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "containerID"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v6, "policyName"

    const-string v7, "allowPopImapEmail"

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/enterprise/email/EmailPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "ADMIN_REF"

    const-string v8, "accountObject"

    invoke-virtual {v6, v7, v8, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBlobList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_3b

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_3b

    const/4 v3, 0x0

    :goto_29
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_3b

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    const/4 v6, 0x0

    aget-byte v6, v0, v6
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_38} :catch_3f

    if-nez v6, :cond_3c

    const/4 v4, 0x0

    :cond_3b
    :goto_3b
    return v4

    :cond_3c
    add-int/lit8 v3, v3, 0x1

    goto :goto_29

    :catch_3f
    move-exception v2

    const-string v6, "EmailPolicyService"

    const-string v7, "Exception in isPopImapEmailAllowed"

    invoke-static {v6, v7, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3b
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

.method public setAllowEmailForwarding(ILjava/lang/String;Z)Z
    .registers 10

    invoke-direct {p0}, Lcom/android/server/enterprise/email/EmailPolicy;->enforceEmailPermission()I

    move-result v1

    const-string v5, "EmailAllowForward"

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/email/EmailPolicy;->putPolicyState(IILjava/lang/String;ZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setAllowHTMLEmail(ILjava/lang/String;Z)Z
    .registers 10

    invoke-direct {p0}, Lcom/android/server/enterprise/email/EmailPolicy;->enforceEmailPermission()I

    move-result v1

    const-string v5, "EmailAllowHTML"

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/email/EmailPolicy;->putPolicyState(IILjava/lang/String;ZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public systemReady()V
    .registers 1

    return-void
.end method
