.class public Lcom/android/server/enterprise/email/EmailAccountPolicy;
.super Landroid/app/enterprise/IEmailAccountPolicy$Stub;
.source "EmailAccountPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/email/EmailAccountPolicy$IntentFieldName;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "EmailAccountPolicy"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Landroid/app/enterprise/IEmailAccountPolicy$Stub;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object p1, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    return-void
.end method

.method private enforceEmailAccountPermission(I)I
    .registers 4

    invoke-direct {p0}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_EMAIL"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/sec/enterprise/knox/EnterpriseContainerManager;->enforceContainerPermission(I)I

    move-result v0

    return v0
.end method

.method private fillInEmailAccountData(Lcom/android/server/enterprise/email/AccountMetaData;)Landroid/app/enterprise/Account;
    .registers 8

    const/4 v5, -0x1

    const-wide/16 v3, -0x1

    const/4 v2, 0x0

    new-instance v0, Landroid/app/enterprise/Account;

    invoke-direct {v0}, Landroid/app/enterprise/Account;-><init>()V

    iget v1, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mId:I

    iput v1, v0, Landroid/app/enterprise/Account;->mId:I

    iget-object v1, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mDisplayName:Ljava/lang/String;

    iput-object v1, v0, Landroid/app/enterprise/Account;->mDisplayName:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    iput-object v1, v0, Landroid/app/enterprise/Account;->mEmailAddress:Ljava/lang/String;

    const-string v1, "0"

    iput-object v1, v0, Landroid/app/enterprise/Account;->mSyncKey:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, v0, Landroid/app/enterprise/Account;->mSyncLookback:I

    iget v1, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mSyncInterval:I

    iput v1, v0, Landroid/app/enterprise/Account;->mSyncInterval:I

    iput-wide v3, v0, Landroid/app/enterprise/Account;->mHostAuthKeyRecv:J

    iput-wide v3, v0, Landroid/app/enterprise/Account;->mHostAuthKeySend:J

    iget v1, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mFlags:I

    iput v1, v0, Landroid/app/enterprise/Account;->mFlags:I

    iget-boolean v1, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mIsDefault:Z

    iput-boolean v1, v0, Landroid/app/enterprise/Account;->mIsDefault:Z

    iput-object v2, v0, Landroid/app/enterprise/Account;->mCompatibilityUuid:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mSenderName:Ljava/lang/String;

    iput-object v1, v0, Landroid/app/enterprise/Account;->mSenderName:Ljava/lang/String;

    iput-object v2, v0, Landroid/app/enterprise/Account;->mRingtoneUri:Ljava/lang/String;

    iput-object v2, v0, Landroid/app/enterprise/Account;->mProtocolVersion:Ljava/lang/String;

    iput-object v2, v0, Landroid/app/enterprise/Account;->mSecuritySyncKey:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mSignature:Ljava/lang/String;

    iput-object v1, v0, Landroid/app/enterprise/Account;->mSignature:Ljava/lang/String;

    new-instance v1, Landroid/app/enterprise/HostAuth;

    invoke-direct {v1}, Landroid/app/enterprise/HostAuth;-><init>()V

    iput-object v1, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iget-object v1, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iput v5, v1, Landroid/app/enterprise/HostAuth;->mId:I

    iget-object v1, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iget-object v2, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingProtocol:Ljava/lang/String;

    iput-object v2, v1, Landroid/app/enterprise/HostAuth;->mProtocol:Ljava/lang/String;

    iget-object v1, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iget-object v2, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerAddress:Ljava/lang/String;

    iput-object v2, v1, Landroid/app/enterprise/HostAuth;->mAddress:Ljava/lang/String;

    iget-object v1, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iget v2, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPort:I

    iput v2, v1, Landroid/app/enterprise/HostAuth;->mPort:I

    iget-object v1, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iget v2, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerFlags:I

    iput v2, v1, Landroid/app/enterprise/HostAuth;->mFlags:I

    iget-object v1, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iget-object v2, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    iput-object v2, v1, Landroid/app/enterprise/HostAuth;->mLogin:Ljava/lang/String;

    iget-object v1, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iget-object v2, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPassword:Ljava/lang/String;

    iput-object v2, v1, Landroid/app/enterprise/HostAuth;->mPassword:Ljava/lang/String;

    iget-object v1, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iget-object v2, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPathPrefix:Ljava/lang/String;

    iput-object v2, v1, Landroid/app/enterprise/HostAuth;->mDomain:Ljava/lang/String;

    iget-object v1, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iput-wide v3, v1, Landroid/app/enterprise/HostAuth;->mAccountKey:J

    new-instance v1, Landroid/app/enterprise/HostAuth;

    invoke-direct {v1}, Landroid/app/enterprise/HostAuth;-><init>()V

    iput-object v1, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iget-object v1, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iput v5, v1, Landroid/app/enterprise/HostAuth;->mId:I

    iget-object v1, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iget-object v2, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingProtocol:Ljava/lang/String;

    iput-object v2, v1, Landroid/app/enterprise/HostAuth;->mProtocol:Ljava/lang/String;

    iget-object v1, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iget-object v2, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerAddress:Ljava/lang/String;

    iput-object v2, v1, Landroid/app/enterprise/HostAuth;->mAddress:Ljava/lang/String;

    iget-object v1, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iget v2, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerPort:I

    iput v2, v1, Landroid/app/enterprise/HostAuth;->mPort:I

    iget-object v1, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iget v2, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerFlags:I

    iput v2, v1, Landroid/app/enterprise/HostAuth;->mFlags:I

    iget-object v1, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iget-object v2, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerLogin:Ljava/lang/String;

    iput-object v2, v1, Landroid/app/enterprise/HostAuth;->mLogin:Ljava/lang/String;

    iget-object v1, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iget-object v2, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerPassword:Ljava/lang/String;

    iput-object v2, v1, Landroid/app/enterprise/HostAuth;->mPassword:Ljava/lang/String;

    iget-object v1, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iget-object v2, p1, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerPathPrefix:Ljava/lang/String;

    iput-object v2, v1, Landroid/app/enterprise/HostAuth;->mDomain:Ljava/lang/String;

    iget-object v1, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iput-wide v3, v1, Landroid/app/enterprise/HostAuth;->mAccountKey:J

    return-object v0
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .registers 3

    iget-object v0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    :cond_10
    iget-object v0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getValidIncomingProtocol(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    invoke-static {p1}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1b

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, "pop3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string v0, "imap"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    const/4 p1, 0x0

    :cond_1b
    const-string v0, "EmailAccountPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getValidIncomingProtocol returned  protocol : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method private getValidOutgoingProtocol(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    invoke-static {p1}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_13

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, "smtp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    const/4 p1, 0x0

    :cond_13
    const-string v0, "EmailAccountPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getValidOutgoingProtocol returned  protocol : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method private updateAccount(ILcom/android/server/enterprise/email/AccountMetaData;JZLjava/lang/String;)J
    .registers 15

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v6, "EmailAccountPolicy"

    const-string v7, ">>>>>>>>>>>>>>>>>\t\tupdateAccount for normal Email"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-ne p5, v4, :cond_1d

    iget-object v6, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, p3, p4, v6}, Lcom/android/server/enterprise/email/SettingsUtils;->deleteAccount(IJLandroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_1d

    const-string v4, "EmailAccountPolicy"

    const-string v5, "updateAccount : Error :: Failed during update"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, -0x1

    :goto_1c
    return-wide v0

    :cond_1d
    iput-boolean v5, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mIsEAS:Z

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    if-eqz p5, :cond_2f

    :goto_25
    iget-object v5, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, p2, v4, v5}, Lcom/android/server/enterprise/email/SettingsUtils;->addorUpdateAccount(ILcom/android/server/enterprise/email/AccountMetaData;ZLandroid/content/Context;)J

    move-result-wide v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1c

    :cond_2f
    move v4, v5

    goto :goto_25
.end method


# virtual methods
.method public addNewAccount(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)J
    .registers 34

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-string v19, "Send from SamsungMobile"

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    invoke-virtual/range {v0 .. v20}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->addNewAccount_ex(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZZZZZLjava/lang/String;Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public addNewAccount_ex(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZZZZZLjava/lang/String;Z)J
    .registers 34

    const-string v1, "EmailAccountPolicy"

    const-string v2, ">>>>>>>>>>>>>>>>>\t\taddAccount for normal Email : Broadcasting "

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(I)I

    invoke-static {p2}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-static/range {p9 .. p9}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p9

    move-object/from16 v0, p3

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->getValidIncomingProtocol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    move-object/from16 v0, p8

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->getValidOutgoingProtocol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p8

    invoke-static/range {p11 .. p11}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p11

    invoke-static/range {p6 .. p6}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p6

    invoke-static/range {p12 .. p12}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p12

    invoke-static/range {p7 .. p7}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p7

    if-eqz p2, :cond_50

    invoke-static {p2}, Lcom/android/server/enterprise/email/SettingsUtils;->isValidEmailAddress(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_50

    if-eqz p4, :cond_50

    if-eqz p9, :cond_50

    if-eqz p3, :cond_50

    if-eqz p8, :cond_50

    const/4 v1, 0x1

    move/from16 v0, p5

    if-gt v1, v0, :cond_50

    const/4 v1, 0x1

    move/from16 v0, p10

    if-gt v1, v0, :cond_50

    if-eqz p11, :cond_50

    if-nez p6, :cond_5a

    :cond_50
    const-string v1, "EmailAccountPolicy"

    const-string v2, "addNewAccount : Error :: Invalid input parameters."

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v1, -0x1

    :goto_59
    return-wide v1

    :cond_5a
    const/4 v2, 0x0

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    move v1, p1

    move-object v3, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p3

    invoke-static/range {v1 .. v7}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountId(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_78

    const-string v1, "EmailAccountPolicy"

    const-string v2, "addNewAccount : Error :: Account already exists."

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v1, -0x1

    goto :goto_59

    :cond_78
    const-string v10, "none"

    const-string v9, "none"

    if-eqz p13, :cond_84

    if-nez p14, :cond_84

    if-nez p15, :cond_84

    const-string v10, "ssl"

    :cond_84
    if-nez p13, :cond_8c

    if-eqz p14, :cond_8c

    if-nez p15, :cond_8c

    const-string v10, "tls"

    :cond_8c
    if-eqz p13, :cond_94

    if-nez p14, :cond_94

    if-eqz p15, :cond_94

    const-string v10, "ssl+trustallcerts"

    :cond_94
    if-nez p13, :cond_9c

    if-eqz p14, :cond_9c

    if-eqz p15, :cond_9c

    const-string v10, "tls+trustallcerts"

    :cond_9c
    if-eqz p16, :cond_a4

    if-nez p17, :cond_a4

    if-nez p18, :cond_a4

    const-string v9, "ssl"

    :cond_a4
    if-nez p16, :cond_ac

    if-eqz p17, :cond_ac

    if-nez p18, :cond_ac

    const-string v9, "tls"

    :cond_ac
    if-eqz p16, :cond_b4

    if-nez p17, :cond_b4

    if-eqz p18, :cond_b4

    const-string v9, "ssl+trustallcerts"

    :cond_b4
    if-nez p16, :cond_bc

    if-eqz p17, :cond_bc

    if-eqz p18, :cond_bc

    const-string v9, "tls+trustallcerts"

    :cond_bc
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11

    new-instance v8, Landroid/content/Intent;

    const-string v1, "android.intent.action.sec.CREATE_ACCOUNT_FROM_MDM"

    invoke-static {p1, v1}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedAction(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "user_id"

    invoke-virtual {v8, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "user_passwd"

    move-object/from16 v0, p7

    invoke-virtual {v8, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "outgoing_user_passwd"

    move-object/from16 v0, p12

    invoke-virtual {v8, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "service"

    move-object/from16 v0, p3

    invoke-virtual {v8, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "outgoing_service"

    move-object/from16 v0, p8

    invoke-virtual {v8, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "receive_host"

    move-object/from16 v0, p4

    invoke-virtual {v8, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "receive_security"

    invoke-virtual {v8, v1, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "receive_port"

    move/from16 v0, p5

    invoke-virtual {v8, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "send_host"

    move-object/from16 v0, p9

    invoke-virtual {v8, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "send_security"

    invoke-virtual {v8, v1, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "send_port"

    move/from16 v0, p10

    invoke-virtual {v8, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "sender_name"

    move-object/from16 v0, p6

    invoke-virtual {v8, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "outgoing_sender_name"

    move-object/from16 v0, p11

    invoke-virtual {v8, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "signature"

    move-object/from16 v0, p19

    invoke-virtual {v8, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "notify"

    move/from16 v0, p20

    invoke-virtual {v8, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {p1}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.sec.MDM_EMAIL"

    invoke-virtual {v1, v8, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const-string v1, "EmailAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<<<<<<<<<<<<<<<<\t\taddAccount for normal Email : Broadcasting +  recvSecurityStr "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    goto/16 :goto_59
.end method

.method public deleteAccount(IJ)Z
    .registers 11

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(I)I

    const-string v4, "EmailAccountPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deleteAccount() :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, p2, p3, v4}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(IJLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v0

    if-nez v0, :cond_25

    const/4 v4, 0x0

    :goto_24
    return v4

    :cond_25
    if-eqz v0, :cond_65

    iget-boolean v4, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mIsEAS:Z

    if-nez v4, :cond_65

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.sec.DELETE_ACCOUNT_FROM_MDM"

    invoke-static {p1, v4}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedAction(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "account_id"

    invoke-virtual {v1, v4, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v4, "user_id"

    iget-object v5, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "service"

    iget-object v5, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingProtocol:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "receive_host"

    iget-object v5, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerAddress:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p1}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.sec.MDM_EMAIL"

    invoke-virtual {v4, v1, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_65
    const/4 v4, 0x1

    goto :goto_24
.end method

.method public getAccountDetails(IJ)Landroid/app/enterprise/Account;
    .registers 8

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(I)I

    const-string v1, "EmailAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAccountDetails() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {p1, p2, p3, v1, v2}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(IJLandroid/content/Context;Z)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v0

    if-eqz v0, :cond_2d

    iget-boolean v1, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mIsEAS:Z

    if-nez v1, :cond_2d

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->fillInEmailAccountData(Lcom/android/server/enterprise/email/AccountMetaData;)Landroid/app/enterprise/Account;

    move-result-object v1

    :goto_2c
    return-object v1

    :cond_2d
    const/4 v1, 0x0

    goto :goto_2c
.end method

.method public getAccountId(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .registers 12

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(I)I

    const/4 v1, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    move v0, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v6}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountId(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getAllEmailAccounts(I)[Landroid/app/enterprise/Account;
    .registers 16

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(I)I

    const-string v11, "EmailAccountPolicy"

    const-string v12, "getAllEmailAccounts()"

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    :try_start_13
    iget-object v11, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, v11}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountIds(ILandroid/content/Context;)[J

    move-result-object v6

    if-eqz v6, :cond_56

    move-object v1, v6

    array-length v7, v1

    const/4 v3, 0x0

    :goto_1e
    if-ge v3, v7, :cond_56

    aget-wide v4, v1, v3

    iget-object v11, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    const/4 v12, 0x1

    invoke-static {p1, v4, v5, v11, v12}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(IJLandroid/content/Context;Z)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v0

    if-eqz v0, :cond_36

    iget-boolean v11, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mIsEAS:Z

    if-nez v11, :cond_36

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->fillInEmailAccountData(Lcom/android/server/enterprise/email/AccountMetaData;)Landroid/app/enterprise/Account;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_36} :catch_39

    :cond_36
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    :catch_39
    move-exception v2

    const-string v11, "EmailAccountPolicy"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getAllEmailAccounts() EX : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_56
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_6e

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v11, v11, [Landroid/app/enterprise/Account;

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Landroid/app/enterprise/Account;

    check-cast v11, [Landroid/app/enterprise/Account;

    :goto_6d
    return-object v11

    :cond_6e
    const/4 v11, 0x0

    goto :goto_6d
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

.method public removePendingAccount(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(I)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.sec.DELETE_NOT_VALIDATED_ACCOUNT_FROM_MDM"

    invoke-static {p1, v1}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedAction(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "user_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "service"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "receive_host"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p1}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.sec.MDM_EMAIL"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method public sendAccountsChangedBroadcast(I)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(I)I

    iget-object v0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->sendAccountsChangedBroadcast(ILandroid/content/Context;)V

    return-void
.end method

.method public setAccountName(ILjava/lang/String;J)Z
    .registers 14

    const/4 v5, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(I)I

    invoke-static {p2}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, p3, p4, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(IJLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v2

    if-nez v2, :cond_18

    const-string v0, "EmailAccountPolicy"

    const-string v1, " accountMData is null"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_17
    :goto_17
    return v5

    :cond_18
    if-nez p2, :cond_22

    const-string v0, "EmailAccountPolicy"

    const-string v1, " accountName is null"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17

    :cond_22
    iput-object p2, v2, Lcom/android/server/enterprise/email/AccountMetaData;->mDisplayName:Ljava/lang/String;

    const-string v0, "EmailAccountPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAccountName returned"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v7, -0x1

    const-string v6, "account_name"

    move-object v0, p0

    move v1, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->updateAccount(ILcom/android/server/enterprise/email/AccountMetaData;JZLjava/lang/String;)J

    move-result-wide v0

    cmp-long v0, v7, v0

    if-eqz v0, :cond_17

    const/4 v5, 0x1

    goto :goto_17
.end method

.method public setAlwaysVibrateOnEmailNotification(IZJ)Z
    .registers 15

    const/4 v7, 0x1

    const/4 v5, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(I)I

    const-string v0, "EmailAccountPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAlwaysVibrateOnEmailNotification() : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, p3, p4, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(IJLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v2

    if-nez v2, :cond_2d

    const-string v0, "EmailAccountPolicy"

    const-string v1, " accountMData is null"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2c
    :goto_2c
    return v5

    :cond_2d
    if-eqz p2, :cond_66

    iput-boolean v7, v2, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailNotificationVibrateAlways:Z

    iput-boolean v5, v2, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailNotificationVibrateWhenSilent:Z

    :goto_33
    const-string v0, "EmailAccountPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAlwaysVibrateOnEmailNotification returned  enable : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " accId  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v8, -0x1

    const-string v6, "vibrate"

    move-object v0, p0

    move v1, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->updateAccount(ILcom/android/server/enterprise/email/AccountMetaData;JZLjava/lang/String;)J

    move-result-wide v0

    cmp-long v0, v8, v0

    if-eqz v0, :cond_2c

    move v5, v7

    goto :goto_2c

    :cond_66
    iput-boolean v5, v2, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailNotificationVibrateAlways:Z

    goto :goto_33
.end method

.method public setAsDefaultAccount(IJ)Z
    .registers 7

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(I)I

    const-string v0, "EmailAccountPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAsDefaultAccount() :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, p2, p3, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->setAsDefaultAccount(IJLandroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public setEmailAddress(ILjava/lang/String;J)J
    .registers 12

    const-wide/16 v0, -0x1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(I)I

    invoke-static {p2}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_11

    invoke-static {p2}, Lcom/android/server/enterprise/email/SettingsUtils;->isValidEmailAddress(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_19

    :cond_11
    const-string v3, "EmailAccountPolicy"

    const-string v4, "setEmailAddress : Error :: Invalid input parameter."

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_18
    return-wide v0

    :cond_19
    iget-object v3, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, p3, p4, v3}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(IJLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v2

    if-nez v2, :cond_29

    const-string v3, "EmailAccountPolicy"

    const-string v4, " accountMData is null"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_18

    :cond_29
    iput-object p2, v2, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    const-string v0, "EmailAccountPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setEmailAddress returned"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x1

    const-string v6, "user_id"

    move-object v0, p0

    move v1, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->updateAccount(ILcom/android/server/enterprise/email/AccountMetaData;JZLjava/lang/String;)J

    move-result-wide v0

    goto :goto_18
.end method

.method public setInComingProtocol(ILjava/lang/String;J)Z
    .registers 14

    const/4 v5, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(I)I

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->getValidIncomingProtocol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_12

    const-string v0, "EmailAccountPolicy"

    const-string v1, "setInComingProtocol : Error :: Invalid input parameter."

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    :goto_11
    return v5

    :cond_12
    iget-object v0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, p3, p4, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(IJLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v2

    if-eqz v2, :cond_11

    iput-object p2, v2, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingProtocol:Ljava/lang/String;

    const-string v0, "EmailAccountPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getValidIncomingProtocol returned  protocol : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v7, -0x1

    const-string v6, "service"

    move-object v0, p0

    move v1, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->updateAccount(ILcom/android/server/enterprise/email/AccountMetaData;JZLjava/lang/String;)J

    move-result-wide v0

    cmp-long v0, v7, v0

    if-eqz v0, :cond_11

    const/4 v5, 0x1

    goto :goto_11
.end method

.method public setInComingServerAcceptAllCertificates(IZJ)Z
    .registers 14

    const/4 v5, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(I)I

    iget-object v0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, p3, p4, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(IJLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v2

    if-nez v2, :cond_d

    :cond_c
    :goto_c
    return v5

    :cond_d
    iput-boolean p2, v2, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerAcceptAllCertificates:Z

    const-string v0, "EmailAccountPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setInComingServerAcceptAllCertificates returned  acceptAllCertificates : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v7, -0x1

    const-string v6, "send_security"

    move-object v0, p0

    move v1, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->updateAccount(ILcom/android/server/enterprise/email/AccountMetaData;JZLjava/lang/String;)J

    move-result-wide v0

    cmp-long v0, v7, v0

    if-eqz v0, :cond_c

    const/4 v5, 0x1

    goto :goto_c
.end method

.method public setInComingServerAddress(ILjava/lang/String;J)J
    .registers 12

    const-wide/16 v0, -0x1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(I)I

    invoke-static {p2}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_13

    const-string v3, "EmailAccountPolicy"

    const-string v4, "setInComingServerAddress : Error :: Invalid input parameter."

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    :goto_12
    return-wide v0

    :cond_13
    iget-object v3, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, p3, p4, v3}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(IJLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v2

    if-eqz v2, :cond_12

    iput-object p2, v2, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerAddress:Ljava/lang/String;

    const-string v0, "EmailAccountPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setInComingServerAddress returned  serverAddress : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x1

    const-string v6, "receive_host"

    move-object v0, p0

    move v1, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->updateAccount(ILcom/android/server/enterprise/email/AccountMetaData;JZLjava/lang/String;)J

    move-result-wide v0

    goto :goto_12
.end method

.method public setInComingServerLogin(ILjava/lang/String;J)J
    .registers 10

    const-wide/16 v3, -0x1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(I)I

    invoke-static {p2}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_13

    const-string v1, "EmailAccountPolicy"

    const-string v2, "setInComingServerLogin : Error :: Invalid input parameter."

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    :goto_12
    return-wide v3

    :cond_13
    iget-object v1, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, p3, p4, v1}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(IJLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v0

    if-eqz v0, :cond_12

    const-string v1, "EmailAccountPolicy"

    const-string v2, "setInComingServerLogin deprecated "

    invoke-static {v1, v2}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p2, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    goto :goto_12
.end method

.method public setInComingServerPassword(ILjava/lang/String;J)Z
    .registers 12

    const/4 v5, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(I)I

    iget-object v1, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, p3, p4, v1}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(IJLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v6

    if-nez v6, :cond_f

    move v5, v0

    :goto_e
    return v5

    :cond_f
    invoke-static {p2}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1e

    const-string v1, "EmailAccountPolicy"

    const-string v2, "setInComingServerPassword : Error :: Invalid input parameter."

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v0

    goto :goto_e

    :cond_1e
    iget-object v4, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    move v0, p1

    move-wide v1, p3

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lcom/android/server/enterprise/email/SettingsUtils;->setPassword(IJLjava/lang/String;Landroid/content/Context;Z)V

    goto :goto_e
.end method

.method public setInComingServerPathPrefix(ILjava/lang/String;J)Z
    .registers 8

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(I)I

    invoke-static {p2}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, p3, p4, v1}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(IJLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v0

    if-nez v0, :cond_11

    :goto_10
    return v2

    :cond_11
    iput-object p2, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPathPrefix:Ljava/lang/String;

    goto :goto_10
.end method

.method public setInComingServerPort(IIJ)Z
    .registers 14

    const/4 v5, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(I)I

    if-gez p2, :cond_e

    const-string v0, "EmailAccountPolicy"

    const-string v1, "setInComingServerPort : Error :: Invalid input parameter."

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    :goto_d
    return v5

    :cond_e
    iget-object v0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, p3, p4, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(IJLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v2

    if-eqz v2, :cond_d

    iput p2, v2, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPort:I

    const-string v0, "EmailAccountPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setInComingServerPort returned  port : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v7, -0x1

    const-string v6, "receive_port"

    move-object v0, p0

    move v1, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->updateAccount(ILcom/android/server/enterprise/email/AccountMetaData;JZLjava/lang/String;)J

    move-result-wide v0

    cmp-long v0, v7, v0

    if-eqz v0, :cond_d

    const/4 v5, 0x1

    goto :goto_d
.end method

.method public setInComingServerSSL(IZJ)Z
    .registers 14

    const/4 v5, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(I)I

    iget-object v0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, p3, p4, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(IJLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v2

    if-nez v2, :cond_d

    :cond_c
    :goto_c
    return v5

    :cond_d
    iput-boolean p2, v2, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerUseSSL:Z

    const-string v0, "EmailAccountPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setInComingServerSSL returned  enableSSL : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v7, -0x1

    const-string v6, "send_security"

    move-object v0, p0

    move v1, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->updateAccount(ILcom/android/server/enterprise/email/AccountMetaData;JZLjava/lang/String;)J

    move-result-wide v0

    cmp-long v0, v7, v0

    if-eqz v0, :cond_c

    const/4 v5, 0x1

    goto :goto_c
.end method

.method public setOutGoingProtocol(ILjava/lang/String;J)Z
    .registers 9

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(I)I

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->getValidOutgoingProtocol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_12

    const-string v1, "EmailAccountPolicy"

    const-string v2, "setOutGoingProtocol : Error :: Invalid input parameter."

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    :goto_11
    return v3

    :cond_12
    iget-object v1, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, p3, p4, v1}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(IJLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v0

    if-eqz v0, :cond_11

    iput-object p2, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingProtocol:Ljava/lang/String;

    goto :goto_11
.end method

.method public setOutGoingServerAcceptAllCertificates(IZJ)Z
    .registers 14

    const/4 v5, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(I)I

    const-string v0, "EmailAccountPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setOutGoingServerAcceptAllCertificates() : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, p3, p4, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(IJLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v2

    if-nez v2, :cond_25

    :cond_24
    :goto_24
    return v5

    :cond_25
    iput-boolean p2, v2, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerAcceptAllCertificates:Z

    const-string v0, "EmailAccountPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setOutGoingServerAcceptAllCertificates returned  acceptAllCertificates : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v7, -0x1

    const-string v6, "send_security"

    move-object v0, p0

    move v1, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->updateAccount(ILcom/android/server/enterprise/email/AccountMetaData;JZLjava/lang/String;)J

    move-result-wide v0

    cmp-long v0, v7, v0

    if-eqz v0, :cond_24

    const/4 v5, 0x1

    goto :goto_24
.end method

.method public setOutGoingServerAddress(ILjava/lang/String;J)J
    .registers 12

    const-wide/16 v0, -0x1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(I)I

    invoke-static {p2}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_13

    const-string v3, "EmailAccountPolicy"

    const-string v4, "setOutGoingServerAddress : Error :: Invalid input parameter."

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    :goto_12
    return-wide v0

    :cond_13
    iget-object v3, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, p3, p4, v3}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(IJLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v2

    if-eqz v2, :cond_12

    const-string v0, "EmailAccountPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setOutGoingServerAddress returned  serverAddress : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p2, v2, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerAddress:Ljava/lang/String;

    const/4 v5, 0x1

    const-string v6, "send_host"

    move-object v0, p0

    move v1, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->updateAccount(ILcom/android/server/enterprise/email/AccountMetaData;JZLjava/lang/String;)J

    move-result-wide v0

    goto :goto_12
.end method

.method public setOutGoingServerLogin(ILjava/lang/String;J)J
    .registers 10

    const-wide/16 v3, -0x1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(I)I

    invoke-static {p2}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_13

    const-string v1, "EmailAccountPolicy"

    const-string v2, "setOutGoingServerLogin : Error :: Invalid input parameter."

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    :goto_12
    return-wide v3

    :cond_13
    iget-object v1, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, p3, p4, v1}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(IJLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v0

    if-eqz v0, :cond_12

    iput-object p2, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerLogin:Ljava/lang/String;

    goto :goto_12
.end method

.method public setOutGoingServerPassword(ILjava/lang/String;J)Z
    .registers 12

    const/4 v5, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(I)I

    iget-object v0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, p3, p4, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(IJLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v6

    if-nez v6, :cond_d

    :goto_c
    return v5

    :cond_d
    invoke-static {p2}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1b

    const-string v0, "EmailAccountPolicy"

    const-string v1, "setOutGoingServerPassword : Error :: Invalid input parameter."

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    :cond_1b
    iget-object v4, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    move v0, p1

    move-wide v1, p3

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lcom/android/server/enterprise/email/SettingsUtils;->setPassword(IJLjava/lang/String;Landroid/content/Context;Z)V

    const/4 v5, 0x1

    goto :goto_c
.end method

.method public setOutGoingServerPathPrefix(ILjava/lang/String;J)Z
    .registers 8

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(I)I

    invoke-static {p2}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, p3, p4, v1}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(IJLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v0

    if-nez v0, :cond_11

    :goto_10
    return v2

    :cond_11
    iput-object p2, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerPathPrefix:Ljava/lang/String;

    goto :goto_10
.end method

.method public setOutGoingServerPort(IIJ)Z
    .registers 14

    const/4 v5, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(I)I

    if-gez p2, :cond_e

    const-string v0, "EmailAccountPolicy"

    const-string v1, "setOutGoingServerPort : Error :: Invalid input parameter."

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    :goto_d
    return v5

    :cond_e
    iget-object v0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, p3, p4, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(IJLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v2

    if-eqz v2, :cond_d

    iput p2, v2, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerPort:I

    const-string v0, "EmailAccountPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setOutGoingServerPort returned  port : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v7, -0x1

    const-string v6, "send_port"

    move-object v0, p0

    move v1, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->updateAccount(ILcom/android/server/enterprise/email/AccountMetaData;JZLjava/lang/String;)J

    move-result-wide v0

    cmp-long v0, v7, v0

    if-eqz v0, :cond_d

    const/4 v5, 0x1

    goto :goto_d
.end method

.method public setOutGoingServerSSL(IZJ)Z
    .registers 14

    const/4 v5, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(I)I

    const-string v0, "EmailAccountPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setOutGoingServerSSL() : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, p3, p4, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(IJLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v2

    if-nez v2, :cond_25

    :cond_24
    :goto_24
    return v5

    :cond_25
    iput-boolean p2, v2, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerUseSSL:Z

    const-string v0, "EmailAccountPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setOutGoingServerSSL returned  enableSSL : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v7, -0x1

    const-string v6, "send_security"

    move-object v0, p0

    move v1, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->updateAccount(ILcom/android/server/enterprise/email/AccountMetaData;JZLjava/lang/String;)J

    move-result-wide v0

    cmp-long v0, v7, v0

    if-eqz v0, :cond_24

    const/4 v5, 0x1

    goto :goto_24
.end method

.method public setSenderName(ILjava/lang/String;J)Z
    .registers 14

    const/4 v5, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(I)I

    invoke-static {p2}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, p3, p4, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(IJLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v2

    if-nez v2, :cond_18

    const-string v0, "EmailAccountPolicy"

    const-string v1, " accountMData is null"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_17
    :goto_17
    return v5

    :cond_18
    if-nez p2, :cond_22

    const-string v0, "EmailAccountPolicy"

    const-string v1, " senderName is null"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17

    :cond_22
    iput-object p2, v2, Lcom/android/server/enterprise/email/AccountMetaData;->mSenderName:Ljava/lang/String;

    const-string v0, "EmailAccountPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSenderName returned"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v7, -0x1

    const-string v6, "sender_name"

    move-object v0, p0

    move v1, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->updateAccount(ILcom/android/server/enterprise/email/AccountMetaData;JZLjava/lang/String;)J

    move-result-wide v0

    cmp-long v0, v7, v0

    if-eqz v0, :cond_17

    const/4 v5, 0x1

    goto :goto_17
.end method

.method public setSignature(ILjava/lang/String;J)Z
    .registers 14

    const/4 v5, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(I)I

    invoke-static {p2}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, p3, p4, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(IJLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v2

    if-nez v2, :cond_18

    const-string v0, "EmailAccountPolicy"

    const-string v1, " accountMData is null"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_17
    :goto_17
    return v5

    :cond_18
    if-nez p2, :cond_22

    const-string v0, "EmailAccountPolicy"

    const-string v1, " signature is null"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17

    :cond_22
    iput-object p2, v2, Lcom/android/server/enterprise/email/AccountMetaData;->mSignature:Ljava/lang/String;

    const-string v0, "EmailAccountPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSignature returned"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v7, -0x1

    const-string v6, "signature"

    move-object v0, p0

    move v1, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->updateAccount(ILcom/android/server/enterprise/email/AccountMetaData;JZLjava/lang/String;)J

    move-result-wide v0

    cmp-long v0, v7, v0

    if-eqz v0, :cond_17

    const/4 v5, 0x1

    goto :goto_17
.end method

.method public setSilentVibrateOnEmailNotification(IZJ)Z
    .registers 15

    const/4 v7, 0x1

    const/4 v5, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(I)I

    const-string v0, "EmailAccountPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSilentVibrateOnEmailNotification() : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, p3, p4, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(IJLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v2

    if-nez v2, :cond_2d

    const-string v0, "EmailAccountPolicy"

    const-string v1, " accountMData is null"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2c
    :goto_2c
    return v5

    :cond_2d
    if-eqz p2, :cond_66

    iput-boolean v7, v2, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailNotificationVibrateWhenSilent:Z

    iput-boolean v5, v2, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailNotificationVibrateAlways:Z

    :goto_33
    const-string v0, "EmailAccountPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSilentVibrateOnEmailNotification returned  enable : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " accId  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v8, -0x1

    const-string v6, "vibrate_when_silent"

    move-object v0, p0

    move v1, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->updateAccount(ILcom/android/server/enterprise/email/AccountMetaData;JZLjava/lang/String;)J

    move-result-wide v0

    cmp-long v0, v8, v0

    if-eqz v0, :cond_2c

    move v5, v7

    goto :goto_2c

    :cond_66
    iput-boolean v5, v2, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailNotificationVibrateWhenSilent:Z

    goto :goto_33
.end method

.method public setSyncInterval(IIJ)Z
    .registers 9

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->enforceEmailAccountPermission(I)I

    iget-object v1, p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, p3, p4, v1}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(IJLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v0

    if-nez v0, :cond_d

    :goto_c
    return v3

    :cond_d
    iput p2, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mSyncInterval:I

    const-string v1, "EmailAccountPolicy"

    const-string v2, "setSyncInterval deprecated"

    invoke-static {v1, v2}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c
.end method

.method public systemReady()V
    .registers 1

    return-void
.end method
