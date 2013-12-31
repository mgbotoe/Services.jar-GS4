.class public Lcom/android/server/enterprise/email/ExchangeAccountPolicy;
.super Landroid/app/enterprise/IExchangeAccountPolicy$Stub;
.source "ExchangeAccountPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;
.implements Lcom/android/server/enterprise/EnterpriseContainerSubscriber;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/email/ExchangeAccountPolicy$ExchangeAccountBroadcastReceiver;,
        Lcom/android/server/enterprise/email/ExchangeAccountPolicy$IntentFieldName;
    }
.end annotation


# static fields
.field private static final PERMISSION_SMIME_CERTIFICATE:Ljava/lang/String; = "android.permission.sec.SMIME_CERTIFICATE"

.field private static final RESTART_DELAY:I = 0x1388

.field private static final RESTART_EMAIL_APP:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ExchangeAccountPolicy"

.field private static final TASK_AUTHORITY:Ljava/lang/String; = "tasks"

.field private static mDeviceId:[Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mExchangeServiceDisabled:Z

.field private mHandler:Landroid/os/Handler;

.field private mRestartExtendDelay:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mDeviceId:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 9

    const/4 v4, 0x0

    invoke-direct {p0}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;-><init>()V

    iput-boolean v4, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mExchangeServiceDisabled:Z

    iput-boolean v4, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mRestartExtendDelay:Z

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    new-instance v4, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$2;

    invoke-direct {v4, p0}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$2;-><init>(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;)V

    iput-object v4, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v5, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/4 v0, 0x0

    :try_start_1e
    iget-object v4, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    new-instance v3, Landroid/content/ComponentName;

    invoke-static {v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getEasPackageName(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getExchangeServiceName(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_46

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_46

    const-string v4, "ExchangeAccountPolicy"

    const-string v5, "Enabling EAS ExchangeService"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_46} :catch_47

    :cond_46
    :goto_46
    return-void

    :catch_47
    move-exception v1

    const-string v4, "ExchangeAccountPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Constructor EX : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_46
.end method

.method static synthetic access$000()[Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mDeviceId:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mExchangeServiceDisabled:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mExchangeServiceDisabled:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(I)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getExchangeServiceName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mRestartExtendDelay:Z

    return p1
.end method

.method private enforceExchangeAccountPermission(I)I
    .registers 4

    invoke-direct {p0}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_EXCHANGE"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/sec/enterprise/knox/EnterpriseContainerManager;->enforceContainerPermission(I)I

    move-result v0

    return v0
.end method

.method private fillInExchangeAccountData(ILcom/android/server/enterprise/email/AccountMetaData;)Landroid/app/enterprise/Account;
    .registers 14

    const/4 v10, -0x1

    const/4 v9, 0x0

    const-wide/16 v7, -0x1

    const/4 v6, 0x0

    new-instance v0, Landroid/app/enterprise/Account;

    invoke-direct {v0}, Landroid/app/enterprise/Account;-><init>()V

    iget v3, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mId:I

    iput v3, v0, Landroid/app/enterprise/Account;->mId:I

    iget-object v3, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mDisplayName:Ljava/lang/String;

    iput-object v3, v0, Landroid/app/enterprise/Account;->mDisplayName:Ljava/lang/String;

    iget-object v3, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    iput-object v3, v0, Landroid/app/enterprise/Account;->mEmailAddress:Ljava/lang/String;

    const-string v3, "0"

    iput-object v3, v0, Landroid/app/enterprise/Account;->mSyncKey:Ljava/lang/String;

    iget v3, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mSyncLookback:I

    iput v3, v0, Landroid/app/enterprise/Account;->mSyncLookback:I

    iget v3, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mSyncInterval:I

    iput v3, v0, Landroid/app/enterprise/Account;->mSyncInterval:I

    iput-wide v7, v0, Landroid/app/enterprise/Account;->mHostAuthKeyRecv:J

    iput-wide v7, v0, Landroid/app/enterprise/Account;->mHostAuthKeySend:J

    iget v3, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mFlags:I

    iput v3, v0, Landroid/app/enterprise/Account;->mFlags:I

    iget-boolean v3, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mIsDefault:Z

    iput-boolean v3, v0, Landroid/app/enterprise/Account;->mIsDefault:Z

    iput-object v6, v0, Landroid/app/enterprise/Account;->mCompatibilityUuid:Ljava/lang/String;

    iget-object v3, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mSenderName:Ljava/lang/String;

    iput-object v3, v0, Landroid/app/enterprise/Account;->mSenderName:Ljava/lang/String;

    iput-object v6, v0, Landroid/app/enterprise/Account;->mRingtoneUri:Ljava/lang/String;

    iget-object v3, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mProtocolVersion:Ljava/lang/String;

    iput-object v3, v0, Landroid/app/enterprise/Account;->mProtocolVersion:Ljava/lang/String;

    iput-object v6, v0, Landroid/app/enterprise/Account;->mSecuritySyncKey:Ljava/lang/String;

    iget-object v3, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mSignature:Ljava/lang/String;

    iput-object v3, v0, Landroid/app/enterprise/Account;->mSignature:Ljava/lang/String;

    iget v3, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakDays:I

    iput v3, v0, Landroid/app/enterprise/Account;->mPeakDays:I

    iget v3, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakStartMinute:I

    iput v3, v0, Landroid/app/enterprise/Account;->mPeakStartMinute:I

    iget v3, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakEndMinute:I

    iput v3, v0, Landroid/app/enterprise/Account;->mPeakEndMinute:I

    iget v3, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakSyncSchedule:I

    iput v3, v0, Landroid/app/enterprise/Account;->mPeakSyncSchedule:I

    iget v3, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mOffPeakSyncSchedule:I

    iput v3, v0, Landroid/app/enterprise/Account;->mOffPeakSyncSchedule:I

    iget v3, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mRoamingSyncSchedule:I

    iput v3, v0, Landroid/app/enterprise/Account;->mRoamingSyncSchedule:I

    :try_start_58
    new-instance v1, Landroid/accounts/Account;

    iget-object v3, v0, Landroid/app/enterprise/Account;->mEmailAddress:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/server/enterprise/email/SettingsUtils;->getEasPackageName(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "com.android.contacts"

    invoke-static {p1, v3}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v0, Landroid/app/enterprise/Account;->mSyncContacts:Z

    const-string v3, "com.android.calendar"

    invoke-static {p1, v3}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v0, Landroid/app/enterprise/Account;->mSyncCalendar:Z

    const-string v3, "tasks"

    invoke-static {p1, v3}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v0, Landroid/app/enterprise/Account;->mSyncTasks:Z
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_87} :catch_12e

    :goto_87
    iput-boolean v9, v0, Landroid/app/enterprise/Account;->mSyncNotes:Z

    new-instance v3, Landroid/app/enterprise/HostAuth;

    invoke-direct {v3}, Landroid/app/enterprise/HostAuth;-><init>()V

    iput-object v3, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iget-object v3, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iput v10, v3, Landroid/app/enterprise/HostAuth;->mId:I

    iget-object v3, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    const-string v4, "eas"

    iput-object v4, v3, Landroid/app/enterprise/HostAuth;->mProtocol:Ljava/lang/String;

    iget-object v3, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iget-object v4, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerAddress:Ljava/lang/String;

    iput-object v4, v3, Landroid/app/enterprise/HostAuth;->mAddress:Ljava/lang/String;

    iget-object v3, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iput v9, v3, Landroid/app/enterprise/HostAuth;->mPort:I

    iget-object v3, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iget v4, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerFlags:I

    iput v4, v3, Landroid/app/enterprise/HostAuth;->mFlags:I

    iget-object v4, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iget-object v3, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mEasDomain:Ljava/lang/String;

    if-eqz v3, :cond_14d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mEasDomain:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\\"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_cb
    iput-object v3, v4, Landroid/app/enterprise/HostAuth;->mLogin:Ljava/lang/String;

    iget-object v3, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iget-object v4, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPassword:Ljava/lang/String;

    iput-object v4, v3, Landroid/app/enterprise/HostAuth;->mPassword:Ljava/lang/String;

    iget-object v3, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iput-object v6, v3, Landroid/app/enterprise/HostAuth;->mDomain:Ljava/lang/String;

    iget-object v3, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iput-wide v7, v3, Landroid/app/enterprise/HostAuth;->mAccountKey:J

    new-instance v3, Landroid/app/enterprise/HostAuth;

    invoke-direct {v3}, Landroid/app/enterprise/HostAuth;-><init>()V

    iput-object v3, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iget-object v3, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iput v10, v3, Landroid/app/enterprise/HostAuth;->mId:I

    iget-object v3, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    const-string v4, "eas"

    iput-object v4, v3, Landroid/app/enterprise/HostAuth;->mProtocol:Ljava/lang/String;

    iget-object v3, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iget-object v4, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerAddress:Ljava/lang/String;

    iput-object v4, v3, Landroid/app/enterprise/HostAuth;->mAddress:Ljava/lang/String;

    iget-object v3, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iput v9, v3, Landroid/app/enterprise/HostAuth;->mPort:I

    iget-object v3, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iget v4, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerFlags:I

    iput v4, v3, Landroid/app/enterprise/HostAuth;->mFlags:I

    iget-object v4, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iget-object v3, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mEasDomain:Ljava/lang/String;

    if-eqz v3, :cond_151

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mEasDomain:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\\"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_11d
    iput-object v3, v4, Landroid/app/enterprise/HostAuth;->mLogin:Ljava/lang/String;

    iget-object v3, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iget-object v4, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPassword:Ljava/lang/String;

    iput-object v4, v3, Landroid/app/enterprise/HostAuth;->mPassword:Ljava/lang/String;

    iget-object v3, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iput-object v6, v3, Landroid/app/enterprise/HostAuth;->mDomain:Ljava/lang/String;

    iget-object v3, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iput-wide v7, v3, Landroid/app/enterprise/HostAuth;->mAccountKey:J

    return-object v0

    :catch_12e
    move-exception v2

    const-string v3, "ExchangeAccountPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fillInExchangeAccountData() EX : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_87

    :cond_14d
    iget-object v3, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    goto/16 :goto_cb

    :cond_151
    iget-object v3, p2, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    goto :goto_11d
.end method

.method private getDefaultValueState(Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    const-string v1, "ReqSigSmime"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v0, 0x0

    :cond_a
    :goto_a
    return v0

    :cond_b
    const-string v1, "ReqEncryptSmime"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    const/4 v0, 0x0

    goto :goto_a

    :cond_15
    const-string v1, "ForceSmimeCert"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v0, 0x0

    goto :goto_a
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .registers 3

    iget-object v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    :cond_10
    iget-object v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private static getExchangeServiceName(I)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/android/server/enterprise/email/SettingsUtils;->getEasPackageName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".ExchangeService"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPolicyState(IJLjava/lang/String;)Z
    .registers 16

    const/4 v6, 0x1

    const/4 v7, 0x0

    new-array v0, v6, [Ljava/lang/String;

    aput-object p4, v0, v7

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v8, "containerID"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v8, "AccountId"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v8, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "ExchangeAccountTable"

    invoke-virtual {v8, v9, v0, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_2d

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_32

    :cond_2d
    invoke-direct {p0, p4}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getDefaultValueState(Ljava/lang/String;)Z

    move-result v4

    :goto_31
    return v4

    :cond_32
    const-string v8, "ExchangeAccountPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getPolicyState: results = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p4}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getDefaultValueState(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_70

    move v4, v6

    :goto_51
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_55
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_75

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    invoke-virtual {v1, p4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v4, :cond_72

    const-string v8, "1"

    :goto_69
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_55

    goto :goto_31

    :cond_70
    move v4, v7

    goto :goto_51

    :cond_72
    const-string v8, "0"

    goto :goto_69

    :cond_75
    if-nez v4, :cond_79

    :goto_77
    move v4, v6

    goto :goto_31

    :cond_79
    move v6, v7

    goto :goto_77
.end method

.method private putPolicyState(IIJZLjava/lang/String;)Z
    .registers 13

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "adminUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "containerID"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "AccountId"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    if-eqz p5, :cond_68

    const-string v3, "1"

    :goto_24
    invoke-virtual {v0, p6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "adminUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "containerID"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "AccountId"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v3, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "ExchangeAccountTable"

    invoke-virtual {v3, v4, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v2

    const-string v3, "ExchangeAccountPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "putPolicyState: ret = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_68
    const-string v3, "0"

    goto :goto_24
.end method

.method private resetForcedSMIMECertificateStatusOnProvider(IJ)Z
    .registers 9

    const/4 v2, 0x0

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "ForceSmimeCert"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v3, "adminUid IN (SELECT adminUid  from admin where containerId=? ) "

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "AccountId =? "

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "ExchangeAccountTable"

    invoke-virtual {v3, v4, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/util/HashMap;)I

    move-result v3

    if-lez v3, :cond_31

    const/4 v2, 0x1

    :cond_31
    return v2
.end method

.method private sendReleaseSMIMECertificate(IJ)V
    .registers 9

    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.android.server.enterprise.email.RELEASE_SMIME_CERTIFICATE"

    invoke-static {p1, v3}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedAction(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "account_id"

    invoke-virtual {v0, v3, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.sec.SMIME_CERTIFICATE"

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method private updateAccount(ILcom/android/server/enterprise/email/AccountMetaData;JZLjava/lang/String;)J
    .registers 21

    const-wide/16 v2, -0x1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    const/4 v11, 0x1

    move-object/from16 v0, p2

    iput-boolean v11, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mIsEAS:Z

    const/4 v11, 0x1

    move/from16 v0, p5

    if-ne v0, v11, :cond_b2

    :try_start_10
    const-string v11, "ExchangeAccountPolicy"

    const-string v12, "Disabling EAS ExchangeService"

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    new-instance v8, Landroid/content/ComponentName;

    invoke-static {p1}, Lcom/android/server/enterprise/email/SettingsUtils;->getEasPackageName(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getExchangeServiceName(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v8, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v11, 0x2

    const/4 v12, 0x0

    invoke-virtual {v7, v8, v11, v12}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mExchangeServiceDisabled:Z

    iget-object v11, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    move-wide/from16 v0, p3

    invoke-static {p1, v0, v1, v11}, Lcom/android/server/enterprise/email/SettingsUtils;->getCBAAlias(IJLandroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    iget-object v11, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    move-wide/from16 v0, p3

    invoke-static {p1, v0, v1, v11}, Lcom/android/server/enterprise/email/SettingsUtils;->deleteAccount(IJLandroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_66

    const/4 v11, 0x1

    iget-object v12, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    invoke-static {p1, v0, v11, v12}, Lcom/android/server/enterprise/email/SettingsUtils;->addorUpdateAccount(ILcom/android/server/enterprise/email/AccountMetaData;ZLandroid/content/Context;)J

    move-result-wide v2

    :goto_4d
    const-wide/16 v11, -0x1

    cmp-long v11, v2, v11

    if-nez v11, :cond_69

    const-string v11, "ExchangeAccountPolicy"

    const-string v12, "Enabling EAS ExchangeService"

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-virtual {v7, v8, v11, v12}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mExchangeServiceDisabled:Z
    :try_end_62
    .catchall {:try_start_10 .. :try_end_62} :catchall_ad
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_62} :catch_8f

    :cond_62
    :goto_62
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-wide v2

    :cond_66
    const-wide/16 v2, -0x1

    goto :goto_4d

    :cond_69
    if-eqz v4, :cond_62

    :try_start_6b
    const-string v11, "ExchangeAccountPolicy"

    const-string v12, "updateAccount() : Sending intent to rename"

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Landroid/content/Intent;

    const-string v11, "com.android.email.RENAME_CERTIFICATE"

    invoke-static {p1, v11}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedAction(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v6, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v11, "accountid"

    invoke-virtual {v6, v11, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v11, "alias"

    invoke-virtual {v6, v11, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v11, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    const-string v12, "com.android.email.permission.ACCESS_PROVIDER"

    invoke-virtual {v11, v6, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_8e
    .catchall {:try_start_6b .. :try_end_8e} :catchall_ad
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_8e} :catch_8f

    goto :goto_62

    :catch_8f
    move-exception v5

    :try_start_90
    const-string v11, "ExchangeAccountPolicy"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "updateAccount() EX : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ac
    .catchall {:try_start_90 .. :try_end_ac} :catchall_ad

    goto :goto_62

    :catchall_ad
    move-exception v11

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v11

    :cond_b2
    const/4 v11, 0x0

    :try_start_b3
    iget-object v12, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    invoke-static {p1, v0, v11, v12}, Lcom/android/server/enterprise/email/SettingsUtils;->addorUpdateAccount(ILcom/android/server/enterprise/email/AccountMetaData;ZLandroid/content/Context;)J
    :try_end_ba
    .catchall {:try_start_b3 .. :try_end_ba} :catchall_ad
    .catch Ljava/lang/Exception; {:try_start_b3 .. :try_end_ba} :catch_8f

    move-result-wide v2

    goto :goto_62
.end method


# virtual methods
.method public addNewAccount(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;)J
    .registers 52

    const/16 v20, 0x1e0

    const/16 v21, 0x3fc

    const/16 v22, 0x3e

    const/16 v23, -0x2

    const/16 v24, 0x0

    const/16 v25, 0x3

    const/16 v26, 0x4

    const/16 v27, 0x1

    const/16 v28, 0x1

    const/16 v29, 0x1

    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move-object/from16 v14, p14

    move/from16 v15, p15

    move/from16 v16, p16

    move/from16 v17, p17

    move-object/from16 v18, p18

    move-object/from16 v19, p19

    invoke-virtual/range {v0 .. v31}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->addNewAccount_ex(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;IIIIIIIZII[BLjava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public addNewAccount_ex(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;IIIIIIIZII[BLjava/lang/String;)J
    .registers 46

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(I)I

    invoke-static/range {p2 .. p2}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static/range {p3 .. p3}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static/range {p14 .. p14}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p14

    invoke-static/range {p10 .. p10}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p10

    invoke-static/range {p9 .. p9}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p9

    invoke-static/range {p11 .. p11}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p11

    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-static/range {p5 .. p5}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-static/range {p18 .. p18}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p18

    invoke-static/range {p19 .. p19}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p19

    if-eqz p3, :cond_39

    invoke-static/range {p3 .. p3}, Lcom/android/server/enterprise/email/SettingsUtils;->isValidEmailAddress(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_39

    if-eqz p14, :cond_39

    if-eqz p10, :cond_39

    if-nez p4, :cond_43

    :cond_39
    const-string v1, "ExchangeAccountPolicy"

    const-string v2, "addNewAccount : Error :: Invalid input parameters."

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v8, -0x1

    :goto_42
    return-wide v8

    :cond_43
    const/4 v1, 0x1

    move/from16 v0, p12

    if-ne v1, v0, :cond_57

    const/4 v1, 0x1

    move/from16 v0, p13

    if-ne v1, v0, :cond_57

    const-string v1, "ExchangeAccountPolicy"

    const-string v2, "addNewAccount : Error :: Invalid input parameters. From the arguments \'emailNotificationVibrateAlways\' and \'emailNotificationVibrateWhenSilent\' only one will be true at a time"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v8, -0x1

    goto :goto_42

    :cond_57
    const-string v5, "eas"

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    move v1, p1

    move-object/from16 v2, p5

    move-object/from16 v3, p4

    move-object/from16 v4, p14

    invoke-static/range {v1 .. v7}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountId(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_77

    const-string v1, "ExchangeAccountPolicy"

    const-string v2, "addNewAccount : Error :: Account already exists."

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v8, -0x1

    goto :goto_42

    :cond_77
    const-wide/16 v8, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    :try_start_7d
    new-instance v11, Landroid/content/Intent;

    const-string v1, "android.intent.action.sec.CREATE_ACCOUNT_FROM_MDM"

    invoke-static {p1, v1}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedAction(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v11, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "user_id"

    move-object/from16 v0, p3

    invoke-virtual {v11, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "service"

    const-string v2, "eas"

    invoke-virtual {v11, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "server_name"

    move-object/from16 v0, p14

    invoke-virtual {v11, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "user_name"

    move-object/from16 v0, p4

    invoke-virtual {v11, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "user_passwd"

    move-object/from16 v0, p18

    invoke-virtual {v11, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "serverPathPrefix"

    move-object/from16 v0, p19

    invoke-virtual {v11, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "use_ssl"

    if-eqz p15, :cond_169

    const/4 v1, 0x1

    :goto_b7
    invoke-virtual {v11, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "use_tsl"

    if-eqz p16, :cond_16c

    const/4 v1, 0x1

    :goto_bf
    invoke-virtual {v11, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "trust_all"

    if-eqz p17, :cond_16f

    const/4 v1, 0x1

    :goto_c7
    invoke-virtual {v11, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "domain"

    move-object/from16 v0, p5

    invoke-virtual {v11, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "peak_starttime"

    move/from16 v0, p20

    invoke-virtual {v11, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "peak_endtime"

    move/from16 v0, p21

    invoke-virtual {v11, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "peak_days"

    move/from16 v0, p22

    invoke-virtual {v11, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "peak"

    move/from16 v0, p7

    invoke-virtual {v11, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "off_peak"

    move/from16 v0, p23

    invoke-virtual {v11, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "roaming_schedule"

    move/from16 v0, p24

    invoke-virtual {v11, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "period_email"

    move/from16 v0, p6

    invoke-virtual {v11, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "retrival_size"

    move/from16 v0, p25

    invoke-virtual {v11, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "period_calendar"

    move/from16 v0, p26

    invoke-virtual {v11, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "notify"

    move/from16 v0, p27

    invoke-virtual {v11, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "sync_contacts"

    move/from16 v0, p28

    invoke-virtual {v11, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "sync_calendar"

    move/from16 v0, p29

    invoke-virtual {v11, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "account_name"

    move-object/from16 v0, p2

    invoke-virtual {v11, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "signature"

    move-object/from16 v0, p11

    invoke-virtual {v11, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "vibrate_when_silent"

    move/from16 v0, p13

    invoke-virtual {v11, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "vibrate"

    move/from16 v0, p12

    invoke-virtual {v11, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "is_default"

    move/from16 v0, p8

    invoke-virtual {v11, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "certificate_data"

    move-object/from16 v0, p30

    invoke-virtual {v11, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string v1, "certificate_password"

    move-object/from16 v0, p31

    invoke-virtual {v11, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p1}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.sec.MDM_EMAIL"

    invoke-virtual {v1, v11, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_164
    .catchall {:try_start_7d .. :try_end_164} :catchall_190
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_164} :catch_172

    :goto_164
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_42

    :cond_169
    const/4 v1, 0x0

    goto/16 :goto_b7

    :cond_16c
    const/4 v1, 0x0

    goto/16 :goto_bf

    :cond_16f
    const/4 v1, 0x0

    goto/16 :goto_c7

    :catch_172
    move-exception v10

    :try_start_173
    const-string v1, "ExchangeAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addNewAccount() EX : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_18f
    .catchall {:try_start_173 .. :try_end_18f} :catchall_190

    goto :goto_164

    :catchall_190
    move-exception v1

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public createAccount(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .registers 27

    const/4 v2, 0x0

    const/4 v6, 0x1

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "2.5"

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v14, p5

    move-object/from16 v18, p6

    invoke-virtual/range {v0 .. v19}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->addNewAccount(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public deleteAccount(IJ)Z
    .registers 13

    const/4 v5, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(I)I

    const-string v6, "ExchangeAccountPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "deleteAccount() :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, p2, p3, v6}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(IJLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v0

    if-eqz v0, :cond_96

    iget-boolean v6, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mIsEAS:Z

    if-eqz v6, :cond_96

    const-string v6, "device_account_policy"

    invoke-static {v6}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/security/DeviceAccountPolicy;

    if-eqz v1, :cond_55

    const-string v6, "com.android.exchange"

    iget-object v7, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v1, p1, v6, v7, v5}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->isAccountRemovalAllowed(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_55

    const-string v6, "ExchangeAccountPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MDM policy restriction - Cannot delete account: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_54
    return v5

    :cond_55
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    const-string v5, "ExchangeAccountPolicy"

    const-string v6, ">>>>>>>>>>>>>>>>>        deleteAccount(long accId)"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.sec.DELETE_ACCOUNT_FROM_MDM"

    invoke-static {p1, v5}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedAction(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "account_id"

    invoke-virtual {v2, v5, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v5, "user_id"

    iget-object v6, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "service"

    const-string v6, "eas"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "server_name"

    iget-object v6, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerAddress:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p1}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.sec.MDM_EMAIL"

    invoke-virtual {v5, v2, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_96
    const/4 v5, 0x1

    goto :goto_54
.end method

.method public getAccountDetails(IJ)Landroid/app/enterprise/Account;
    .registers 11

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(I)I

    const-string v4, "ExchangeAccountPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getAccountDetails() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    invoke-static {p1, p2, p3, v4, v5}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(IJLandroid/content/Context;Z)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v0

    if-eqz v0, :cond_31

    iget-boolean v4, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mIsEAS:Z

    if-eqz v4, :cond_31

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->fillInExchangeAccountData(ILcom/android/server/enterprise/email/AccountMetaData;)Landroid/app/enterprise/Account;

    move-result-object v1

    :cond_31
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v1
.end method

.method public getAccountId(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .registers 12

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(I)I

    const-string v4, "eas"

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    move v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    invoke-static/range {v0 .. v6}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountId(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getAllEASAccounts(I)[Landroid/app/enterprise/Account;
    .registers 16

    const/4 v13, 0x1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(I)I

    const-string v11, "ExchangeAccountPolicy"

    const-string v12, "getEASAccounts()"

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    :try_start_14
    iget-object v11, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, v11}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountIds(ILandroid/content/Context;)[J

    move-result-object v6

    if-eqz v6, :cond_57

    move-object v1, v6

    array-length v7, v1

    const/4 v3, 0x0

    :goto_1f
    if-ge v3, v7, :cond_57

    aget-wide v4, v1, v3

    iget-object v11, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    const/4 v12, 0x1

    invoke-static {p1, v4, v5, v11, v12}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(IJLandroid/content/Context;Z)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v0

    if-eqz v0, :cond_37

    iget-boolean v11, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mIsEAS:Z

    if-ne v11, v13, :cond_37

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->fillInExchangeAccountData(ILcom/android/server/enterprise/email/AccountMetaData;)Landroid/app/enterprise/Account;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_37} :catch_3a

    :cond_37
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    :catch_3a
    move-exception v2

    const-string v11, "ExchangeAccountPolicy"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getEASAccounts() EX : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_57
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_6f

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v11, v11, [Landroid/app/enterprise/Account;

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Landroid/app/enterprise/Account;

    check-cast v11, [Landroid/app/enterprise/Account;

    :goto_6e
    return-object v11

    :cond_6f
    const/4 v11, 0x0

    goto :goto_6e
.end method

.method public getDeviceId(I)Ljava/lang/String;
    .registers 14

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(I)I

    invoke-direct {p0}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v9

    if-eqz v9, :cond_1b

    invoke-direct {p0}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/enterprise/EnterpriseDeviceManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v9

    invoke-static {p1}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/app/enterprise/ApplicationPolicy;->getApplicationStateEnabled(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1d

    :cond_1b
    const/4 v9, 0x0

    :goto_1c
    return-object v9

    :cond_1d
    sget-object v9, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mDeviceId:[Ljava/lang/String;

    aget-object v9, v9, p1

    if-eqz v9, :cond_28

    sget-object v9, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mDeviceId:[Ljava/lang/String;

    aget-object v9, v9, p1

    goto :goto_1c

    :cond_28
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    new-instance v6, Ljava/lang/Object;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    monitor-enter v6

    :try_start_32
    new-instance v4, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$1;

    invoke-direct {v4, p0, v6}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$1;-><init>(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;Ljava/lang/Object;)V

    const-string v9, "com.android.email.GET_DEVICEID"

    invoke-static {p1, v9}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedAction(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v9, "android.intent.action.enterprise.GET_DEVICEID"

    invoke-static {p1, v9}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedAction(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    const-string v10, "com.android.email.permission.ACCESS_PROVIDER"

    invoke-virtual {v9, v3, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_59
    .catchall {:try_start_32 .. :try_end_59} :catchall_9c
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_59} :catch_7e

    :try_start_59
    sget-object v9, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mDeviceId:[Ljava/lang/String;

    aget-object v9, v9, p1

    if-nez v9, :cond_6b

    const-string v9, "ExchangeAccountPolicy"

    const-string v10, "Device id is still null, waiting 5 seconds..."

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v9, 0x1388

    invoke-virtual {v6, v9, v10}, Ljava/lang/Object;->wait(J)V
    :try_end_6b
    .catchall {:try_start_59 .. :try_end_6b} :catchall_9c
    .catch Ljava/lang/InterruptedException; {:try_start_59 .. :try_end_6b} :catch_79
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_6b} :catch_7e

    :cond_6b
    :goto_6b
    :try_start_6b
    iget-object v9, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_70
    .catchall {:try_start_6b .. :try_end_70} :catchall_9c
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_70} :catch_7e

    :goto_70
    :try_start_70
    monitor-exit v6
    :try_end_71
    .catchall {:try_start_70 .. :try_end_71} :catchall_9c

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    sget-object v9, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mDeviceId:[Ljava/lang/String;

    aget-object v9, v9, p1

    goto :goto_1c

    :catch_79
    move-exception v1

    :try_start_7a
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_7d
    .catchall {:try_start_7a .. :try_end_7d} :catchall_9c
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_7d} :catch_7e

    goto :goto_6b

    :catch_7e
    move-exception v1

    :try_start_7f
    const-string v9, "ExchangeAccountPolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getDeviceId() EX : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_70

    :catchall_9c
    move-exception v9

    monitor-exit v6
    :try_end_9e
    .catchall {:try_start_7f .. :try_end_9e} :catchall_9c

    throw v9
.end method

.method public getForceSMIMECertificate(IJ)Z
    .registers 5

    const-string v0, "ForceSmimeCert"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getPolicyState(IJLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getRequireEncryptedSMIMEMessages(IJ)Z
    .registers 5

    const-string v0, "ReqEncryptSmime"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getPolicyState(IJLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getRequireSignedSMIMEMessages(IJ)Z
    .registers 5

    const-string v0, "ReqSigSmime"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getPolicyState(IJLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onAdminAdded(I)V
    .registers 2

    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 2

    return-void
.end method

.method public onContainerCreation(II)V
    .registers 6

    const-string v0, "ExchangeAccountPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ExchangeAccountPolicy.onContainerCreation("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onContainerRemoved(II)V
    .registers 6

    const-string v0, "ExchangeAccountPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ExchangeAccountPolicy.onContainerRemoved("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 12

    const/4 v9, 0x0

    const/4 v7, 0x2

    new-array v2, v7, [Ljava/lang/String;

    const-string v7, "AccountId"

    aput-object v7, v2, v9

    const/4 v7, 0x1

    const-string v8, "ForceSmimeCert"

    aput-object v8, v2, v7

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v7, "adminUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v7, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "ExchangeAccountTable"

    invoke-virtual {v7, v8, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_4f

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_29
    :goto_29
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    const-string v7, "ForceSmimeCert"

    invoke-virtual {v4, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-lez v7, :cond_29

    const-string v7, "AccountId"

    invoke-virtual {v4, v7}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v9, v0, v1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->sendReleaseSMIMECertificate(IJ)V

    goto :goto_29

    :cond_4f
    return-void
.end method

.method public onPreContainerRemoval(II)V
    .registers 13

    const-string v7, "ExchangeAccountPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ExchangeAccountPolicy.onPreContainerRemoval("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x2

    new-array v2, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "AccountId"

    aput-object v8, v2, v7

    const/4 v7, 0x1

    const-string v8, "ForceSmimeCert"

    aput-object v8, v2, v7

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v7, "containerID"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v7, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "ExchangeAccountTable"

    invoke-virtual {v7, v8, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_77

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_51
    :goto_51
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_77

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    const-string v7, "ForceSmimeCert"

    invoke-virtual {v4, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-lez v7, :cond_51

    const-string v7, "AccountId"

    invoke-virtual {v4, v7}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->sendReleaseSMIMECertificate(IJ)V

    goto :goto_51

    :cond_77
    return-void
.end method

.method public removePendingAccount(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(I)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.sec.DELETE_NOT_VALIDATED_ACCOUNT_FROM_MDM"

    invoke-static {p1, v1}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedAction(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "user_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "service"

    const-string v2, "eas"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "server_name"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "user_name"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "domain"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p1}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.sec.MDM_EMAIL"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method public sendAccountsChangedBroadcast(I)V
    .registers 6

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(I)I

    iget-object v1, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/android/server/enterprise/email/SettingsUtils;->sendAccountsChangedBroadcast(ILandroid/content/Context;)V

    iget-object v1, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    iget-boolean v1, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mRestartExtendDelay:Z

    if-nez v1, :cond_1d

    iget-object v1, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_1c
    return-void

    :cond_1d
    const-string v1, "ExchangeAccountPolicy"

    const-string v2, "Delayed Broadcast"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3a98

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1c
.end method

.method public setAcceptAllCertificates(IZJ)Z
    .registers 14

    const/4 v5, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(I)I

    const-string v0, "ExchangeAccountPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAcceptAllCertificates() : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, p3, p4, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(IJLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v2

    if-nez v2, :cond_25

    :cond_24
    :goto_24
    return v5

    :cond_25
    iput-boolean p2, v2, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerAcceptAllCertificates:Z

    iput-boolean p2, v2, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerAcceptAllCertificates:Z

    const-wide/16 v7, -0x1

    const-string v6, "trust_all"

    move-object v0, p0

    move v1, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->updateAccount(ILcom/android/server/enterprise/email/AccountMetaData;JZLjava/lang/String;)J

    move-result-wide v0

    cmp-long v0, v7, v0

    if-eqz v0, :cond_24

    const/4 v5, 0x1

    goto :goto_24
.end method

.method public setAccountBaseParameters(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)J
    .registers 13

    const-wide/16 v3, -0x1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(I)I

    invoke-static {p4}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lcom/android/server/enterprise/email/SettingsUtils;->isValidEmailAddress(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_10

    const/4 p4, 0x0

    :cond_10
    invoke-static {p5}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-static {p2}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p3}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-nez p4, :cond_2a

    if-nez p5, :cond_2a

    if-nez p2, :cond_2a

    const-string v1, "ExchangeAccountPolicy"

    const-string v2, "setAccountBaseParameters : Error :: Invalid input parameters."

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_29
    :goto_29
    return-wide v3

    :cond_2a
    iget-object v1, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, p6, p7, v1}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(IJLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v0

    if-eqz v0, :cond_29

    iput-object p3, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mEasDomain:Ljava/lang/String;

    if-eqz p4, :cond_38

    iput-object p4, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    :cond_38
    if-eqz p2, :cond_3e

    iput-object p2, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    iput-object p2, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerLogin:Ljava/lang/String;

    :cond_3e
    if-eqz p5, :cond_29

    iput-object p5, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerAddress:Ljava/lang/String;

    iput-object p5, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerAddress:Ljava/lang/String;

    goto :goto_29
.end method

.method public setAccountName(ILjava/lang/String;J)Z
    .registers 14

    const/4 v5, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(I)I

    invoke-static {p2}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, p3, p4, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(IJLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v2

    if-nez v2, :cond_11

    :cond_10
    :goto_10
    return v5

    :cond_11
    if-nez p2, :cond_1b

    const-string v0, "ExchangeAccountPolicy"

    const-string v1, " accountName is null"

    invoke-static {v0, v1}, Landroid/util/secutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    :cond_1b
    iput-object p2, v2, Lcom/android/server/enterprise/email/AccountMetaData;->mDisplayName:Ljava/lang/String;

    const-wide/16 v7, -0x1

    const-string v6, "account_name"

    move-object v0, p0

    move v1, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->updateAccount(ILcom/android/server/enterprise/email/AccountMetaData;JZLjava/lang/String;)J

    move-result-wide v0

    cmp-long v0, v7, v0

    if-eqz v0, :cond_10

    const/4 v5, 0x1

    goto :goto_10
.end method

.method public setAlwaysVibrateOnEmailNotification(IZJ)Z
    .registers 15

    const/4 v7, 0x1

    const/4 v5, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(I)I

    const-string v0, "ExchangeAccountPolicy"

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

    iget-object v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, p3, p4, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(IJLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v2

    if-nez v2, :cond_26

    :cond_25
    :goto_25
    return v5

    :cond_26
    if-eqz p2, :cond_3d

    iput-boolean v7, v2, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailNotificationVibrateAlways:Z

    iput-boolean v5, v2, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailNotificationVibrateWhenSilent:Z

    :goto_2c
    const-wide/16 v8, -0x1

    const-string v6, "vibrate"

    move-object v0, p0

    move v1, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->updateAccount(ILcom/android/server/enterprise/email/AccountMetaData;JZLjava/lang/String;)J

    move-result-wide v0

    cmp-long v0, v8, v0

    if-eqz v0, :cond_25

    move v5, v7

    goto :goto_25

    :cond_3d
    iput-boolean v5, v2, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailNotificationVibrateAlways:Z

    goto :goto_2c
.end method

.method public setAsDefaultAccount(IJ)Z
    .registers 7

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(I)I

    const-string v0, "ExchangeAccountPolicy"

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

    iget-object v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, p2, p3, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->setAsDefaultAccount(IJLandroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public setClientAuthCert(I[BLjava/lang/String;J)V
    .registers 13

    const/4 v6, 0x1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(I)I

    const-string v3, "ExchangeAccountPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setClientAuthCert() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_26

    if-eqz p3, :cond_26

    const-wide/16 v3, 0x1

    cmp-long v3, p4, v3

    if-gez v3, :cond_27

    :cond_26
    :goto_26
    return-void

    :cond_27
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    iput-boolean v6, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mRestartExtendDelay:Z

    iget-object v3, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.android.email.INSTALL_CERTIFICATE"

    invoke-static {p1, v3}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedAction(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "password"

    invoke-virtual {v0, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "data"

    invoke-virtual {v0, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string v3, "accountid"

    invoke-virtual {v0, v3, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    const-string v4, "com.android.email.permission.ACCESS_PROVIDER"

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_26
.end method

.method public setDataSyncs(IZZZZJ)Z
    .registers 16

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(I)I

    iget-object v5, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, p6, p7, v5}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(IJLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v0

    if-nez v0, :cond_d

    const/4 v5, 0x0

    :goto_c
    return v5

    :cond_d
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    :try_start_11
    new-instance v1, Landroid/accounts/Account;

    iget-object v5, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/server/enterprise/email/SettingsUtils;->getEasPackageName(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v5, v6}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "com.android.contacts"

    invoke-static {p1, v5}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v1, v5, v6}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    const-string v5, "com.android.contacts"

    invoke-static {p1, v5}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5, p3}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    const-string v5, "com.android.calendar"

    invoke-static {p1, v5}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v1, v5, v6}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    const-string v5, "com.android.calendar"

    invoke-static {p1, v5}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5, p2}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    const-string v5, "tasks"

    invoke-static {p1, v5}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v1, v5, v6}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    const-string v5, "tasks"

    invoke-static {p1, v5}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5, p4}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_55} :catch_5a

    :goto_55
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v5, 0x1

    goto :goto_c

    :catch_5a
    move-exception v2

    const-string v5, "ExchangeAccountPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setDataSyncs() EX : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_55
.end method

.method public setForceSMIMECertificate(IJLjava/lang/String;Ljava/lang/String;)I
    .registers 24

    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(I)I

    move-result v13

    const/4 v15, 0x0

    monitor-enter p0

    :try_start_6
    new-instance v5, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$ExchangeAccountBroadcastReceiver;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v2}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$ExchangeAccountBroadcastReceiver;-><init>(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;Lcom/android/server/enterprise/email/ExchangeAccountPolicy$1;)V

    new-instance v3, Landroid/content/Intent;

    const-string v2, "com.android.server.enterprise.email.FORCE_SMIME_CERTIFICATE"

    move/from16 v0, p1

    invoke-static {v0, v2}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedAction(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "account_id"

    move-wide/from16 v0, p2

    invoke-virtual {v3, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v2, "cert_path"

    move-object/from16 v0, p4

    invoke-virtual {v3, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "cert_password"

    move-object/from16 v0, p5

    invoke-virtual {v3, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.sec.SMIME_CERTIFICATE"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_44
    iget-boolean v2, v5, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$ExchangeAccountBroadcastReceiver;->mHaveResult:Z
    :try_end_46
    .catchall {:try_start_6 .. :try_end_46} :catchall_55

    if-nez v2, :cond_58

    :try_start_48
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->wait()V
    :try_end_4b
    .catchall {:try_start_48 .. :try_end_4b} :catchall_55
    .catch Ljava/lang/InterruptedException; {:try_start_48 .. :try_end_4b} :catch_4c

    goto :goto_44

    :catch_4c
    move-exception v14

    :try_start_4d
    const-string v2, "ExchangeAccountPolicy"

    const-string v4, "Exception while waiting for Email\'s response"

    invoke-static {v2, v4, v14}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_44

    :catchall_55
    move-exception v2

    monitor-exit p0
    :try_end_57
    .catchall {:try_start_4d .. :try_end_57} :catchall_55

    throw v2

    :cond_58
    :try_start_58
    invoke-virtual {v5}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$ExchangeAccountBroadcastReceiver;->getResultCode()I

    move-result v15

    if-gez v15, :cond_76

    invoke-direct/range {p0 .. p3}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->resetForcedSMIMECertificateStatusOnProvider(IJ)Z

    const/4 v11, 0x1

    const-string v12, "ForceSmimeCert"

    move-object/from16 v6, p0

    move v7, v13

    move/from16 v8, p1

    move-wide/from16 v9, p2

    invoke-direct/range {v6 .. v12}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->putPolicyState(IIJZLjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_74

    const/4 v15, -0x1

    :goto_72
    monitor-exit p0

    return v15

    :cond_74
    const/4 v15, 0x0

    goto :goto_72

    :cond_76
    const-string v2, "ExchangeAccountPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Result code from Email: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8e
    .catchall {:try_start_58 .. :try_end_8e} :catchall_55

    goto :goto_72
.end method

.method public setPassword(ILjava/lang/String;J)Z
    .registers 11

    const/4 v5, 0x1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(I)I

    invoke-static {p2}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_13

    const-string v0, "ExchangeAccountPolicy"

    const-string v1, "setPassword : Error :: Invalid input parameter."

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    :goto_12
    return v5

    :cond_13
    iget-object v4, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    move v0, p1

    move-wide v1, p3

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lcom/android/server/enterprise/email/SettingsUtils;->setPassword(IJLjava/lang/String;Landroid/content/Context;Z)V

    goto :goto_12
.end method

.method public setPastDaysToSync(IIJ)Z
    .registers 15

    const/4 v7, 0x1

    const/4 v5, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(I)I

    const-string v0, "ExchangeAccountPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPastDaysToSync() : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-gt v7, p2, :cond_22

    const/4 v0, 0x6

    if-ge v0, p2, :cond_2a

    :cond_22
    const-string v0, "ExchangeAccountPolicy"

    const-string v1, "setPastDaysToSync : Error :: Invalid input parameter."

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_29
    :goto_29
    return v5

    :cond_2a
    iget-object v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, p3, p4, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(IJLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v2

    if-eqz v2, :cond_29

    iput p2, v2, Lcom/android/server/enterprise/email/AccountMetaData;->mSyncLookback:I

    const-wide/16 v8, -0x1

    const-string v6, "period_email"

    move-object v0, p0

    move v1, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->updateAccount(ILcom/android/server/enterprise/email/AccountMetaData;JZLjava/lang/String;)J

    move-result-wide v0

    cmp-long v0, v8, v0

    if-eqz v0, :cond_29

    move v5, v7

    goto :goto_29
.end method

.method public setProtocolVersion(ILjava/lang/String;J)Z
    .registers 9

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(I)I

    invoke-static {p2}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_12

    const-string v1, "ExchangeAccountPolicy"

    const-string v2, "setProtocolVersion : Error :: Invalid input parameter."

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    :goto_11
    return v3

    :cond_12
    iget-object v1, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, p3, p4, v1}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(IJLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v0

    if-eqz v0, :cond_11

    iput-object p2, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mProtocolVersion:Ljava/lang/String;

    goto :goto_11
.end method

.method public setReleaseSMIMECertificate(IJ)Z
    .registers 8

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(I)I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getForceSMIMECertificate(IJ)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_13

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->resetForcedSMIMECertificateStatusOnProvider(IJ)Z

    move-result v1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->sendReleaseSMIMECertificate(IJ)V

    :cond_13
    return v1
.end method

.method public setRequireEncryptedSMIMEMessages(IJZ)Z
    .registers 12

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(I)I

    move-result v1

    const-string v6, "ReqEncryptSmime"

    move-object v0, p0

    move v2, p1

    move-wide v3, p2

    move v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->putPolicyState(IIJZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setRequireSignedSMIMEMessages(IJZ)Z
    .registers 12

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(I)I

    move-result v1

    const-string v6, "ReqSigSmime"

    move-object v0, p0

    move v2, p1

    move-wide v3, p2

    move v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->putPolicyState(IIJZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setSSL(IZJ)Z
    .registers 14

    const/4 v5, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(I)I

    const-string v0, "ExchangeAccountPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSSL() : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, p3, p4, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(IJLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v2

    if-nez v2, :cond_25

    :cond_24
    :goto_24
    return v5

    :cond_25
    iput-boolean p2, v2, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerUseSSL:Z

    iput-boolean p2, v2, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerUseSSL:Z

    const-wide/16 v7, -0x1

    const-string v6, "use_ssl"

    move-object v0, p0

    move v1, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->updateAccount(ILcom/android/server/enterprise/email/AccountMetaData;JZLjava/lang/String;)J

    move-result-wide v0

    cmp-long v0, v7, v0

    if-eqz v0, :cond_24

    const/4 v5, 0x1

    goto :goto_24
.end method

.method public setSenderName(ILjava/lang/String;J)Z
    .registers 8

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(I)I

    invoke-static {p2}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, p3, p4, v1}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(IJLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v0

    if-nez v0, :cond_11

    :goto_10
    return v2

    :cond_11
    iput-object p2, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mSenderName:Ljava/lang/String;

    goto :goto_10
.end method

.method public setSignature(ILjava/lang/String;J)Z
    .registers 15

    const/4 v5, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(I)I

    new-instance v7, Landroid/content/Intent;

    const-string v0, "com.android.email.SIGNATURE_UPDATED"

    invoke-static {p1, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedAction(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "signature"

    invoke-virtual {v7, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    const-string v1, "com.android.email.permission.ACCESS_PROVIDER"

    invoke-virtual {v0, v7, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, p3, p4, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(IJLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v2

    if-nez v2, :cond_28

    :cond_27
    :goto_27
    return v5

    :cond_28
    iput-object p2, v2, Lcom/android/server/enterprise/email/AccountMetaData;->mSignature:Ljava/lang/String;

    const-wide/16 v8, -0x1

    const-string v6, "signature"

    move-object v0, p0

    move v1, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->updateAccount(ILcom/android/server/enterprise/email/AccountMetaData;JZLjava/lang/String;)J

    move-result-wide v0

    cmp-long v0, v8, v0

    if-eqz v0, :cond_27

    const/4 v5, 0x1

    goto :goto_27
.end method

.method public setSilentVibrateOnEmailNotification(IZJ)Z
    .registers 15

    const/4 v7, 0x1

    const/4 v5, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(I)I

    const-string v0, "ExchangeAccountPolicy"

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

    iget-object v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, p3, p4, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(IJLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v2

    if-nez v2, :cond_26

    :cond_25
    :goto_25
    return v5

    :cond_26
    if-eqz p2, :cond_3d

    iput-boolean v7, v2, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailNotificationVibrateWhenSilent:Z

    iput-boolean v5, v2, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailNotificationVibrateAlways:Z

    :goto_2c
    const-wide/16 v8, -0x1

    const-string v6, "vibrate_when_silent"

    move-object v0, p0

    move v1, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->updateAccount(ILcom/android/server/enterprise/email/AccountMetaData;JZLjava/lang/String;)J

    move-result-wide v0

    cmp-long v0, v8, v0

    if-eqz v0, :cond_25

    move v5, v7

    goto :goto_25

    :cond_3d
    iput-boolean v5, v2, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailNotificationVibrateWhenSilent:Z

    goto :goto_2c
.end method

.method public setSyncInterval(IIJ)Z
    .registers 10

    const/4 v4, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(I)I

    const-string v1, "ExchangeAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSyncInterval() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, p3, p4, v1}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(IJLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v0

    if-nez v0, :cond_25

    :goto_24
    return v4

    :cond_25
    iput p2, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mSyncInterval:I

    iput p2, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOffPeakSyncSchedule:I

    goto :goto_24
.end method

.method public setSyncPeakTimings(IIIIJ)Z
    .registers 16

    const/16 v1, 0x5a0

    const/4 v5, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(I)I

    iget-object v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, p5, p6, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(IJLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v2

    if-nez v2, :cond_f

    :cond_e
    :goto_e
    return v5

    :cond_f
    if-gez p2, :cond_1d

    const/16 v0, 0x7f

    if-le p2, v0, :cond_1d

    const-string v0, "ExchangeAccountPolicy"

    const-string v1, " peakDays is invalid"

    invoke-static {v0, v1}, Landroid/util/secutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    :cond_1d
    if-gez p3, :cond_29

    if-le p3, v1, :cond_29

    const-string v0, "ExchangeAccountPolicy"

    const-string v1, " peakStartMinute is invalid"

    invoke-static {v0, v1}, Landroid/util/secutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    :cond_29
    if-gez p4, :cond_35

    if-le p4, v1, :cond_35

    const-string v0, "ExchangeAccountPolicy"

    const-string v1, " peakEndMinute is invalid"

    invoke-static {v0, v1}, Landroid/util/secutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    :cond_35
    iput p2, v2, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakDays:I

    iput p3, v2, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakStartMinute:I

    iput p4, v2, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakEndMinute:I

    const-wide/16 v7, -0x1

    const-string v6, "peak_days"

    move-object v0, p0

    move v1, p1

    move-wide v3, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->updateAccount(ILcom/android/server/enterprise/email/AccountMetaData;JZLjava/lang/String;)J

    move-result-wide v0

    cmp-long v0, v7, v0

    if-eqz v0, :cond_e

    const/4 v5, 0x1

    goto :goto_e
.end method

.method public setSyncSchedules(IIIIJ)Z
    .registers 16

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->enforceExchangeAccountPermission(I)I

    iget-object v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, p5, p6, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountDetails(IJLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object v2

    if-nez v2, :cond_d

    const/4 v0, 0x0

    :goto_c
    return v0

    :cond_d
    iput p2, v2, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakSyncSchedule:I

    iput p3, v2, Lcom/android/server/enterprise/email/AccountMetaData;->mOffPeakSyncSchedule:I

    const/4 v0, 0x1

    if-ne p4, v0, :cond_29

    const/4 v0, 0x1

    :goto_15
    iput v0, v2, Lcom/android/server/enterprise/email/AccountMetaData;->mRoamingSyncSchedule:I

    const-wide/16 v7, -0x1

    const/4 v5, 0x0

    const-string v6, "peak"

    move-object v0, p0

    move v1, p1

    move-wide v3, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->updateAccount(ILcom/android/server/enterprise/email/AccountMetaData;JZLjava/lang/String;)J

    move-result-wide v0

    cmp-long v0, v7, v0

    if-eqz v0, :cond_2b

    const/4 v0, 0x1

    goto :goto_c

    :cond_29
    const/4 v0, 0x0

    goto :goto_15

    :cond_2b
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public systemReady()V
    .registers 1

    return-void
.end method
