.class public Lcom/android/server/DirEncryptServiceHelper;
.super Ljava/lang/Object;
.source "DirEncryptServiceHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/DirEncryptServiceHelper$AppliedPolicies;,
        Lcom/android/server/DirEncryptServiceHelper$SDStorageEventListener;,
        Lcom/android/server/DirEncryptServiceHelper$Notify;,
        Lcom/android/server/DirEncryptServiceHelper$VoldResponse;,
        Lcom/android/server/DirEncryptServiceHelper$VoldCommand;,
        Lcom/android/server/DirEncryptServiceHelper$Command;,
        Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;,
        Lcom/android/server/DirEncryptServiceHelper$DirEncryptServiceBinderListener;
    }
.end annotation


# static fields
.field private static final APPLIED_POLICIES:Ljava/lang/String; = "applied_sdcard_policies"

.field private static final BATCH_INTENT:Ljava/lang/String; = "android.dirEncryption.DirEncryptionManager.BATCH_ENCRYPT"

.field private static final DELAY:I = 0x1f4

.field private static final FIPS_EDK_PATH_SD:Ljava/lang/String; = "edk_p_sd"

#the value of this static final field might be set in the static constructor
.field private static final LOCAL_LOGD:Z = false

#the value of this static final field might be set in the static constructor
.field private static final LOCAL_LOGE:Z = false

.field private static final SECURE_MOUNT_PATH:Ljava/lang/String; = "/mnt/secure/staging"

.field private static final TAG:Ljava/lang/String; = "DirEncryptService"

.field private static final UNMOUNT_POLICY_INTENT:Ljava/lang/String; = "android.dirEncryption.DirEncryptionManager.UNMOUNT_POLICY"

.field private static mSaveProgressNotification:Landroid/app/Notification;


# instance fields
.field demCallback:Landroid/dirEncryption/IDirEncryptionManagerCallBack;

.field private mAnimateSync:Ljava/lang/Object;

.field private mAnimator:Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;

.field private mBatchDecrypting:Z

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mConnector:Lcom/android/server/NativeDaemonConnector;

.field mContainerEncryption:Z

.field private mContext:Landroid/content/Context;

.field private mCryptPath:Ljava/lang/String;

.field private mDecryptDialog:Landroid/app/AlertDialog;

.field private mDep:Lcom/android/server/DirEncryptPrefs;

.field private mDew:Landroid/dirEncryption/DirEncryptionWrapper;

.field private mDialogBuilder:Landroid/app/AlertDialog$Builder;

.field private mErrAdditionalSpace:I

.field private mFirstUnlockLockscreen:Z

.field private mHandler:Landroid/os/Handler;

.field private mLabel:Ljava/lang/String;

.field private mLastError:I

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/DirEncryptServiceHelper$DirEncryptServiceBinderListener;",
            ">;"
        }
    .end annotation
.end field

.field private mNormalPath:Ljava/lang/String;

.field public mPassword:Ljava/lang/String;

.field private mPendingDMCheck:Z

.field private mPendingMountPath:Ljava/lang/String;

.field private mProgressTime:J

.field private mRemoteProgressView:Landroid/widget/RemoteViews;

.field private mSelfSDMountRequested:Z

.field private mServiceStatus:I

.field private mStorageEventListener:Lcom/android/server/DirEncryptServiceHelper$SDStorageEventListener;

.field private mSync:Ljava/lang/Object;

.field private mUnnmountRequested:Z

.field private mWasEncryptedCard:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/DirEncryptServiceHelper;->LOCAL_LOGE:Z

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/DirEncryptServiceHelper;->LOCAL_LOGD:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/lang/Object;

    invoke-direct/range {v1 .. v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mSync:Ljava/lang/Object;

    new-instance v1, Lcom/android/server/DirEncryptServiceHelper$SDStorageEventListener;

    invoke-direct {v1, p0, v3}, Lcom/android/server/DirEncryptServiceHelper$SDStorageEventListener;-><init>(Lcom/android/server/DirEncryptServiceHelper;Lcom/android/server/DirEncryptServiceHelper$1;)V

    iput-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mStorageEventListener:Lcom/android/server/DirEncryptServiceHelper$SDStorageEventListener;

    iput-object v3, p0, Lcom/android/server/DirEncryptServiceHelper;->mHandler:Landroid/os/Handler;

    iput-object v3, p0, Lcom/android/server/DirEncryptServiceHelper;->mRemoteProgressView:Landroid/widget/RemoteViews;

    iput-object v3, p0, Lcom/android/server/DirEncryptServiceHelper;->mDep:Lcom/android/server/DirEncryptPrefs;

    iput-object v3, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    iput-boolean v4, p0, Lcom/android/server/DirEncryptServiceHelper;->mSelfSDMountRequested:Z

    iput-boolean v4, p0, Lcom/android/server/DirEncryptServiceHelper;->mUnnmountRequested:Z

    iput-boolean v4, p0, Lcom/android/server/DirEncryptServiceHelper;->mFirstUnlockLockscreen:Z

    iput-boolean v4, p0, Lcom/android/server/DirEncryptServiceHelper;->mWasEncryptedCard:Z

    iput-boolean v4, p0, Lcom/android/server/DirEncryptServiceHelper;->mBatchDecrypting:Z

    iput-boolean v4, p0, Lcom/android/server/DirEncryptServiceHelper;->mPendingDMCheck:Z

    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mPassword:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/server/DirEncryptServiceHelper;->mCryptPath:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/server/DirEncryptServiceHelper;->mNormalPath:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/server/DirEncryptServiceHelper;->mPendingMountPath:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/server/DirEncryptServiceHelper;->mLabel:Ljava/lang/String;

    iput v4, p0, Lcom/android/server/DirEncryptServiceHelper;->mErrAdditionalSpace:I

    iput v4, p0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    iput v4, p0, Lcom/android/server/DirEncryptServiceHelper;->mServiceStatus:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mListeners:Ljava/util/ArrayList;

    iput-object v3, p0, Lcom/android/server/DirEncryptServiceHelper;->mAnimator:Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;

    new-instance v1, Ljava/lang/Object;

    invoke-direct/range {v1 .. v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mAnimateSync:Ljava/lang/Object;

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mProgressTime:J

    iput-object v3, p0, Lcom/android/server/DirEncryptServiceHelper;->demCallback:Landroid/dirEncryption/IDirEncryptionManagerCallBack;

    iput-boolean v4, p0, Lcom/android/server/DirEncryptServiceHelper;->mContainerEncryption:Z

    new-instance v1, Lcom/android/server/DirEncryptServiceHelper$1;

    invoke-direct {v1, p0}, Lcom/android/server/DirEncryptServiceHelper$1;-><init>(Lcom/android/server/DirEncryptServiceHelper;)V

    iput-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/DirEncryptPrefs;->getPreferences(Landroid/content/Context;)Lcom/android/server/DirEncryptPrefs;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mDep:Lcom/android/server/DirEncryptPrefs;

    new-instance v1, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;

    iget-object v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;-><init>(Lcom/android/server/DirEncryptServiceHelper;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mAnimator:Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;

    new-instance v1, Landroid/dirEncryption/DirEncryptionWrapper;

    iget-object v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/dirEncryption/DirEncryptionWrapper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.dirEncryption.DirEncryptionManager.BATCH_ENCRYPT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.dirEncryption.DirEncryptionManager.UNMOUNT_POLICY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/DirEncryptServiceHelper;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/DirEncryptServiceHelper;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/DirEncryptServiceHelper;ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/DirEncryptServiceHelper;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mAnimateSync:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500()Landroid/app/Notification;
    .registers 1

    sget-object v0, Lcom/android/server/DirEncryptServiceHelper;->mSaveProgressNotification:Landroid/app/Notification;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/DirEncryptServiceHelper;)Landroid/dirEncryption/DirEncryptionWrapper;
    .registers 2

    iget-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    return-object v0
.end method

.method private clearNotification()V
    .registers 4

    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    sget v1, Landroid/dirEncryption/DirEncryptionManager;->SECURITY_POLICY_NOTIFICATION_ID:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method private doBatchDecrypt()V
    .registers 8

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mStorageEventListener:Lcom/android/server/DirEncryptServiceHelper$SDStorageEventListener;

    invoke-virtual {v0, v1}, Landroid/dirEncryption/DirEncryptionWrapper;->registerStorageEventListener(Landroid/os/storage/StorageEventListener;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "RegisterStorageEventListner fail"

    invoke-static {v0}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    :cond_13
    const/16 v0, 0xe

    const-string v1, "batch_start"

    invoke-direct {p0, v0, v1}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mPassword:Ljava/lang/String;

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mPassword:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_44

    const-string v0, "dir_crypto"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "batchDecrypt"

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mNormalPath:Ljava/lang/String;

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mCryptPath:Ljava/lang/String;

    aput-object v2, v1, v5

    new-instance v2, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    iget-object v3, p0, Lcom/android/server/DirEncryptServiceHelper;->mPassword:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    aput-object v2, v1, v6

    invoke-direct {p0, v0, v1}, Lcom/android/server/DirEncryptServiceHelper;->sendCommand(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_43
    return-void

    :cond_44
    const-string v0, "dir_crypto"

    new-array v1, v6, [Ljava/lang/Object;

    const-string v2, "batchDecrypt"

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mNormalPath:Ljava/lang/String;

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mCryptPath:Ljava/lang/String;

    aput-object v2, v1, v5

    invoke-direct {p0, v0, v1}, Lcom/android/server/DirEncryptServiceHelper;->sendCommand(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_43
.end method

.method private doChangeEncryptPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 10

    if-nez p1, :cond_4

    const-string p1, ""

    :cond_4
    if-nez p2, :cond_8

    const-string p2, ""

    :cond_8
    const-string v0, "dir_crypto"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "changeEcryptfsPassword"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0, p3}, Lcom/android/server/DirEncryptServiceHelper;->addEscapeChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-instance v3, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    invoke-virtual {p0, p1}, Lcom/android/server/DirEncryptServiceHelper;->addEscapeChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    aput-object v3, v1, v2

    const/4 v2, 0x3

    new-instance v3, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    invoke-virtual {p0, p2}, Lcom/android/server/DirEncryptServiceHelper;->addEscapeChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    aput-object v3, v1, v2

    const/4 v2, 0x4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/android/server/DirEncryptServiceHelper;->sendCommand(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private doCheckEncMeta()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    invoke-virtual {v0}, Landroid/dirEncryption/DirEncryptionWrapper;->getVolumeState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "checking"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    const-string v0, "dir_crypto"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "encMetaCheck"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "/mnt/secure/staging"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/android/server/DirEncryptServiceHelper;->sendCommand(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_20
    return-void
.end method

.method private doEncryption()V
    .registers 14

    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget-object v7, p0, Lcom/android/server/DirEncryptServiceHelper;->mDep:Lcom/android/server/DirEncryptPrefs;

    invoke-virtual {v7}, Lcom/android/server/DirEncryptPrefs;->restorePrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;

    move-result-object v2

    iget v7, v2, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    if-ne v7, v10, :cond_2f

    move v3, v5

    :goto_10
    iget v7, v2, Landroid/dirEncryption/SDCardEncryptionPolicies;->mFullEnc:I

    if-ne v7, v12, :cond_31

    move v4, v5

    :goto_15
    iget v7, v2, Landroid/dirEncryption/SDCardEncryptionPolicies;->mExcludeMedia:I

    const/4 v8, 0x6

    if-ne v7, v8, :cond_33

    move v1, v5

    :goto_1b
    iget-object v7, p0, Lcom/android/server/DirEncryptServiceHelper;->mPassword:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v7, v5, :cond_35

    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    const-string v7, "Assert!!! SD card encryption doesn\'t work in factory mode"

    invoke-static {v6, v7, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    :goto_2e
    return-void

    :cond_2f
    move v3, v6

    goto :goto_10

    :cond_31
    move v4, v6

    goto :goto_15

    :cond_33
    move v1, v6

    goto :goto_1b

    :cond_35
    const-wide/16 v7, 0xbb8

    :try_start_37
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_3a} :catch_7a

    :goto_3a
    const-string v7, ""

    invoke-direct {p0, v5, v3, v7}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    if-ne v3, v5, :cond_95

    invoke-direct {p0, v10}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    const-string v7, "free"

    invoke-direct {p0, v6, v7}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V

    :goto_49
    const-string v7, "dir_crypto"

    const/4 v8, 0x6

    new-array v8, v8, [Ljava/lang/Object;

    const-string v9, "encrypt"

    aput-object v9, v8, v6

    new-instance v6, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    iget-object v9, p0, Lcom/android/server/DirEncryptServiceHelper;->mPassword:Ljava/lang/String;

    invoke-virtual {p0, v9}, Lcom/android/server/DirEncryptServiceHelper;->addEscapeChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v9}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    aput-object v6, v8, v5

    const-string v5, "/mnt/secure/staging"

    aput-object v5, v8, v10

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v8, v11

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v8, v12

    const/4 v5, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v8, v5

    invoke-direct {p0, v7, v8}, Lcom/android/server/DirEncryptServiceHelper;->sendCommand(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2e

    :catch_7a
    move-exception v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "doEncryption Exception "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/DirEncryptServiceHelper;->logE(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3a

    :cond_95
    invoke-direct {p0, v11}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    goto :goto_49
.end method

.method private doMountEcryptfs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIII)V
    .registers 13

    const-string v1, "dir_crypto"

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v3, "mount"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    invoke-virtual {p0, p1}, Lcom/android/server/DirEncryptServiceHelper;->addEscapeChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x2

    aput-object p2, v2, v0

    const/4 v0, 0x3

    new-instance v3, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    invoke-virtual {p0, p3}, Lcom/android/server/DirEncryptServiceHelper;->addEscapeChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    aput-object v3, v2, v0

    const/4 v0, 0x4

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x5

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v3, 0x6

    if-eqz p4, :cond_41

    const-string v0, "1"

    :goto_34
    aput-object v0, v2, v3

    const/4 v0, 0x7

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-direct {p0, v1, v2}, Lcom/android/server/DirEncryptServiceHelper;->sendCommand(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_41
    const-string v0, "0"

    goto :goto_34
.end method

.method private doMountPointMounted(Ljava/lang/String;)V
    .registers 6

    const-string v0, "dir_crypto"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "isPathMounted"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0, p1}, Lcom/android/server/DirEncryptServiceHelper;->addEscapeChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/android/server/DirEncryptServiceHelper;->sendCommand(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private doUnMountEcryptfs(Ljava/lang/String;II)V
    .registers 8

    const-string v0, "dir_crypto"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "unmount"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0, p1}, Lcom/android/server/DirEncryptServiceHelper;->addEscapeChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/android/server/DirEncryptServiceHelper;->sendCommand(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private doUnMountEcryptfs(Ljava/lang/String;IIZ)V
    .registers 10

    const/4 v4, 0x1

    if-nez p4, :cond_7

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/DirEncryptServiceHelper;->doUnMountEcryptfs(Ljava/lang/String;II)V

    :goto_6
    return-void

    :cond_7
    const-string v0, "dir_crypto"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "unmount"

    aput-object v3, v1, v2

    invoke-virtual {p0, p1}, Lcom/android/server/DirEncryptServiceHelper;->addEscapeChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/android/server/DirEncryptServiceHelper;->sendCommand(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_6
.end method

.method private doWorkForPassword(Ljava/lang/String;)V
    .registers 12

    const/4 v9, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-nez p1, :cond_7

    const-string p1, ""

    :cond_7
    const-string v4, ""

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    const-string v4, ""

    iput-object v4, p0, Lcom/android/server/DirEncryptServiceHelper;->mPassword:Ljava/lang/String;

    const-string v4, "dir_crypto"

    new-array v5, v8, [Ljava/lang/Object;

    const-string v6, "password"

    aput-object v6, v5, v7

    invoke-direct {p0, v4, v5}, Lcom/android/server/DirEncryptServiceHelper;->sendCommand(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1e
    :goto_1e
    return-void

    :cond_1f
    iget-object v4, p0, Lcom/android/server/DirEncryptServiceHelper;->mPassword:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v4, v8, :cond_c6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doWorkForPassword mPendingDMCheck="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/DirEncryptServiceHelper;->mPendingDMCheck:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mNormalPath="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/DirEncryptServiceHelper;->mPendingMountPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    const-string v4, "/efs/"

    const-string v5, "edk_p_sd"

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    const-string v4, "/data/system/"

    const-string v5, "edk_p_sd"

    invoke-direct {v1, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v5, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v2

    if-eqz v2, :cond_ae

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_ae

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_ae

    iput-object p1, p0, Lcom/android/server/DirEncryptServiceHelper;->mPassword:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->handlePendingSDBatch()Z

    iget-boolean v4, p0, Lcom/android/server/DirEncryptServiceHelper;->mBatchDecrypting:Z

    if-nez v4, :cond_1e

    iget-object v4, p0, Lcom/android/server/DirEncryptServiceHelper;->mDep:Lcom/android/server/DirEncryptPrefs;

    invoke-virtual {v4}, Lcom/android/server/DirEncryptPrefs;->haveEncPrefs()Z

    move-result v4

    if-eqz v4, :cond_1e

    iget-object v4, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    invoke-virtual {v4}, Landroid/dirEncryption/DirEncryptionWrapper;->getVolumeState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/server/DirEncryptServiceHelper;->isStorageCardEncryptionPoliciesApplied()I

    move-result v4

    if-nez v4, :cond_a2

    const-string v4, "mounted"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a2

    iput-boolean v8, p0, Lcom/android/server/DirEncryptServiceHelper;->mFirstUnlockLockscreen:Z

    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->unmountSDCard()V

    goto/16 :goto_1e

    :cond_a2
    iget-object v4, p0, Lcom/android/server/DirEncryptServiceHelper;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1e

    :cond_ae
    const-string v4, "dir_crypto"

    new-array v5, v9, [Ljava/lang/Object;

    const-string v6, "password"

    aput-object v6, v5, v7

    new-instance v6, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    invoke-virtual {p0, p1}, Lcom/android/server/DirEncryptServiceHelper;->addEscapeChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    aput-object v6, v5, v8

    invoke-direct {p0, v4, v5}, Lcom/android/server/DirEncryptServiceHelper;->sendCommand(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1e

    :cond_c6
    iget-object v4, p0, Lcom/android/server/DirEncryptServiceHelper;->mPassword:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1e

    const-string v4, "dir_crypto"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "password"

    aput-object v6, v5, v7

    new-instance v6, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    iget-object v7, p0, Lcom/android/server/DirEncryptServiceHelper;->mPassword:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/android/server/DirEncryptServiceHelper;->addEscapeChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    aput-object v6, v5, v8

    new-instance v6, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    invoke-virtual {p0, p1}, Lcom/android/server/DirEncryptServiceHelper;->addEscapeChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    aput-object v6, v5, v9

    invoke-direct {p0, v4, v5}, Lcom/android/server/DirEncryptServiceHelper;->sendCommand(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/server/DirEncryptServiceHelper;->mPassword:Ljava/lang/String;

    goto/16 :goto_1e
.end method

.method private doWorkForUSBState(Ljava/lang/String;)V
    .registers 14

    const/4 v8, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v6, "vold.decrypt"

    const-string v7, "0"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v6, "1"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b

    const-string v4, "Do not work if encryption lock page"

    invoke-static {v4}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    :cond_1a
    :goto_1a
    return-void

    :cond_1b
    const-string v6, "unmounted"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4f

    iget-boolean v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mSelfSDMountRequested:Z

    if-nez v6, :cond_2f

    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    invoke-virtual {v6}, Landroid/dirEncryption/DirEncryptionWrapper;->getUserDiff()Z

    move-result v6

    if-eqz v6, :cond_4f

    :cond_2f
    iget-boolean v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mFirstUnlockLockscreen:Z

    if-ne v6, v4, :cond_37

    iput-boolean v5, p0, Lcom/android/server/DirEncryptServiceHelper;->mFirstUnlockLockscreen:Z

    iput-boolean v5, p0, Lcom/android/server/DirEncryptServiceHelper;->mSelfSDMountRequested:Z

    :cond_37
    const-string v4, "clearNotification"

    invoke-static {v4}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->clearNotification()V

    iget-object v4, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    invoke-virtual {v4, v5}, Landroid/dirEncryption/DirEncryptionWrapper;->setUserDiff(Z)V

    :try_start_44
    iget-object v4, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    invoke-virtual {v4}, Landroid/dirEncryption/DirEncryptionWrapper;->mountVolume()Z
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_49} :catch_4a

    goto :goto_1a

    :catch_4a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1a

    :cond_4f
    const-string v6, "checking"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a7

    const-string v4, "clearNotification"

    invoke-static {v4}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->clearNotification()V

    new-instance v4, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-direct {v4, v6}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v2

    iget-object v4, p0, Lcom/android/server/DirEncryptServiceHelper;->mPassword:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_82

    iget-boolean v4, p0, Lcom/android/server/DirEncryptServiceHelper;->mSelfSDMountRequested:Z

    if-eqz v4, :cond_82

    iput-boolean v5, p0, Lcom/android/server/DirEncryptServiceHelper;->mSelfSDMountRequested:Z

    iget-object v4, p0, Lcom/android/server/DirEncryptServiceHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1a

    :cond_82
    if-eqz v2, :cond_8c

    iget-object v4, p0, Lcom/android/server/DirEncryptServiceHelper;->mPassword:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1a

    :cond_8c
    iget-object v4, p0, Lcom/android/server/DirEncryptServiceHelper;->mDep:Lcom/android/server/DirEncryptPrefs;

    invoke-virtual {v4}, Lcom/android/server/DirEncryptPrefs;->haveEncPrefs()Z

    move-result v4

    if-eqz v4, :cond_a0

    iget-object v4, p0, Lcom/android/server/DirEncryptServiceHelper;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1a

    :cond_a0
    const-string v4, "encPrefs Not found"

    invoke-static {v4}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    goto/16 :goto_1a

    :cond_a7
    const-string v6, "mounted"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12e

    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->getStorageCardEncryptionInternal()I

    move-result v6

    if-ne v6, v10, :cond_109

    iget-boolean v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mWasEncryptedCard:Z

    if-eqz v6, :cond_d4

    const-string v4, "looks like encryption policies were received while SD card decryption was on going!!"

    invoke-static {v4}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    const-string v4, "success"

    invoke-direct {p0, v10, v5, v4}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    iput-boolean v5, p0, Lcom/android/server/DirEncryptServiceHelper;->mWasEncryptedCard:Z

    invoke-direct {p0, v5}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    const-string v4, "free"

    invoke-direct {p0, v11, v4}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V

    :goto_cd
    const-string v4, "free"

    invoke-direct {p0, v5, v4}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V

    goto/16 :goto_1a

    :cond_d4
    const-string v6, "Since encrypt is ON: final mount command"

    invoke-static {v6}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    const-string v6, "dir_crypto"

    new-array v7, v8, [Ljava/lang/Object;

    const-string v8, "mount"

    aput-object v8, v7, v5

    iget-object v8, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    invoke-virtual {v8}, Landroid/dirEncryption/DirEncryptionWrapper;->getExternalSdPath()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    new-instance v8, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    iget-object v9, p0, Lcom/android/server/DirEncryptServiceHelper;->mPassword:Ljava/lang/String;

    invoke-virtual {p0, v9}, Lcom/android/server/DirEncryptServiceHelper;->addEscapeChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    aput-object v8, v7, v10

    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->getStorageCardMediaExclusionInternal()I

    move-result v8

    const/4 v9, 0x6

    if-ne v8, v9, :cond_107

    :goto_fd
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v11

    invoke-direct {p0, v6, v7}, Lcom/android/server/DirEncryptServiceHelper;->sendCommand(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_cd

    :cond_107
    move v4, v5

    goto :goto_fd

    :cond_109
    const-string v4, "Since encrypt is OFF: no final mount command"

    invoke-static {v4}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/DirEncryptServiceHelper$AppliedPolicies;->setPoliciesApplied()Z

    invoke-direct {p0, v5}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    const-string v4, "free"

    invoke-direct {p0, v11, v4}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/DirEncryptServiceHelper;->mDep:Lcom/android/server/DirEncryptPrefs;

    invoke-virtual {v4}, Lcom/android/server/DirEncryptPrefs;->haveEncPrefs()Z

    move-result v4

    if-eqz v4, :cond_1a

    iget-boolean v4, p0, Lcom/android/server/DirEncryptServiceHelper;->mWasEncryptedCard:Z

    if-eqz v4, :cond_1a

    const-string v4, "success"

    invoke-direct {p0, v10, v5, v4}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    iput-boolean v5, p0, Lcom/android/server/DirEncryptServiceHelper;->mWasEncryptedCard:Z

    goto/16 :goto_1a

    :cond_12e
    const-string v6, "removed"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_177

    iput-boolean v5, p0, Lcom/android/server/DirEncryptServiceHelper;->mUnnmountRequested:Z

    iput-boolean v5, p0, Lcom/android/server/DirEncryptServiceHelper;->mSelfSDMountRequested:Z

    iput v5, p0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    invoke-static {}, Lcom/android/server/DirEncryptServiceHelper$AppliedPolicies;->setPoliciesRemoved()Z

    const-string v4, "SD card removed"

    invoke-static {v4}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    const-string v4, "clearNotification"

    invoke-static {v4}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->clearNotification()V

    invoke-direct {p0, v5}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    const-string v4, "free"

    invoke-direct {p0, v5, v4}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V

    :try_start_154
    const-string v4, "SD card removed, removing the hidden drive if any"

    invoke-static {v4}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    invoke-virtual {v4}, Landroid/dirEncryption/DirEncryptionWrapper;->unmountHiddenVolume()Z
    :try_end_15e
    .catch Ljava/lang/Exception; {:try_start_154 .. :try_end_15e} :catch_172

    :goto_15e
    iget-object v4, p0, Lcom/android/server/DirEncryptServiceHelper;->mLabel:Ljava/lang/String;

    if-eqz v4, :cond_1a

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    iget-object v5, p0, Lcom/android/server/DirEncryptServiceHelper;->mLabel:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/dirEncryption/DirEncryptionWrapper;->removeCryptMapper(Ljava/lang/String;)Z

    move-result v3

    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->initializeBatchVariable()V

    if-nez v3, :cond_1a

    goto/16 :goto_1a

    :catch_172
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_15e

    :cond_177
    const-string v6, "unmounted"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1a1

    invoke-static {}, Lcom/android/server/DirEncryptServiceHelper$AppliedPolicies;->setPoliciesRemoved()Z

    const-string v6, "SD card unmounted"

    invoke-static {v6}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    iget v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    if-nez v6, :cond_193

    const-string v6, "clearNotification"

    invoke-static {v6}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->clearNotification()V

    :cond_193
    iget-boolean v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mUnnmountRequested:Z

    if-ne v6, v4, :cond_1a

    iput-boolean v5, p0, Lcom/android/server/DirEncryptServiceHelper;->mUnnmountRequested:Z

    const/16 v4, 0xb

    const/4 v6, 0x0

    invoke-direct {p0, v4, v5, v6}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    goto/16 :goto_1a

    :cond_1a1
    const-string v4, "nofs"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1bd

    iget-object v4, p0, Lcom/android/server/DirEncryptServiceHelper;->mLabel:Ljava/lang/String;

    if-eqz v4, :cond_1a

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    iget-object v5, p0, Lcom/android/server/DirEncryptServiceHelper;->mLabel:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/dirEncryption/DirEncryptionWrapper;->removeCryptMapper(Ljava/lang/String;)Z

    move-result v3

    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->initializeBatchVariable()V

    if-nez v3, :cond_1a

    goto/16 :goto_1a

    :cond_1bd
    const-string v4, "bad_removal"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    iput-boolean v5, p0, Lcom/android/server/DirEncryptServiceHelper;->mUnnmountRequested:Z

    const-string v4, "SD card bad removed"

    invoke-static {v4}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    if-nez v4, :cond_1a

    const-string v4, "clearNotification"

    invoke-static {v4}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->clearNotification()V

    const-string v4, "free"

    invoke-direct {p0, v5, v4}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V

    goto/16 :goto_1a
.end method

.method private getFullStorageCardEncryptionInternal()I
    .registers 2

    iget-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mDep:Lcom/android/server/DirEncryptPrefs;

    invoke-virtual {v0}, Lcom/android/server/DirEncryptPrefs;->restorePrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;

    move-result-object v0

    iget v0, v0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mFullEnc:I

    return v0
.end method

.method private getRemoteProgressView(Ljava/lang/String;II)Landroid/widget/RemoteViews;
    .registers 9

    const v4, 0x1020466

    const-string v0, ""

    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mRemoteProgressView:Landroid/widget/RemoteViews;

    if-nez v1, :cond_19

    new-instance v1, Landroid/widget/RemoteViews;

    iget-object v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x10900eb

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mRemoteProgressView:Landroid/widget/RemoteViews;

    :cond_19
    const/4 v1, 0x1

    if-ne p2, v1, :cond_64

    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mRemoteProgressView:Landroid/widget/RemoteViews;

    const v2, 0x10802fa

    invoke-virtual {v1, v4, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040846

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_31
    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mRemoteProgressView:Landroid/widget/RemoteViews;

    const v2, 0x1020467

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mRemoteProgressView:Landroid/widget/RemoteViews;

    const v2, 0x1020468

    const/16 v3, 0x64

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, p3, v4}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mRemoteProgressView:Landroid/widget/RemoteViews;

    return-object v1

    :cond_64
    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mRemoteProgressView:Landroid/widget/RemoteViews;

    const v2, 0x10802a4

    invoke-virtual {v1, v4, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x104084a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_31
.end method

.method private getSDCardEncryptionPrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mDep:Lcom/android/server/DirEncryptPrefs;

    invoke-virtual {v1}, Lcom/android/server/DirEncryptPrefs;->haveEncPrefs()Z

    move-result v1

    if-eqz v1, :cond_15

    const-string v1, "EncPrefs found"

    invoke-static {v1}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mDep:Lcom/android/server/DirEncryptPrefs;

    invoke-virtual {v1}, Lcom/android/server/DirEncryptPrefs;->restorePrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;

    move-result-object v0

    :goto_14
    return-object v0

    :cond_15
    const-string v1, "EncPrefs not found"

    invoke-static {v1}, Lcom/android/server/DirEncryptServiceHelper;->logE(Ljava/lang/String;)V

    goto :goto_14
.end method

.method private getSecurityIntent()Landroid/content/Intent;
    .registers 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.action.START_SDCARD_ENCRYPTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "adminStart"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private getStorageCardEncryptionInternal()I
    .registers 2

    iget-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mDep:Lcom/android/server/DirEncryptPrefs;

    invoke-virtual {v0}, Lcom/android/server/DirEncryptPrefs;->restorePrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;

    move-result-object v0

    iget v0, v0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    return v0
.end method

.method private getStorageCardMediaExclusionInternal()I
    .registers 2

    iget-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mDep:Lcom/android/server/DirEncryptPrefs;

    invoke-virtual {v0}, Lcom/android/server/DirEncryptPrefs;->restorePrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;

    move-result-object v0

    iget v0, v0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mExcludeMedia:I

    return v0
.end method

.method private handlePendingSDBatch()Z
    .registers 6

    const/4 v1, 0x0

    iget-boolean v3, p0, Lcom/android/server/DirEncryptServiceHelper;->mPendingDMCheck:Z

    if-eqz v3, :cond_39

    iget-object v3, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    invoke-virtual {v3}, Landroid/dirEncryption/DirEncryptionWrapper;->getVolumeState()Ljava/lang/String;

    move-result-object v2

    const-string v3, "unmounted"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_23

    const-string v3, "nofs"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_23

    const-string v3, "unmountable"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_39

    :cond_23
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/DirEncryptServiceHelper;->mPendingDMCheck:Z

    iget-object v3, p0, Lcom/android/server/DirEncryptServiceHelper;->mPendingMountPath:Ljava/lang/String;

    const-string v4, "mounting"

    invoke-virtual {p0, v3, v4}, Lcom/android/server/DirEncryptServiceHelper;->onStorageAskPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/16 v3, -0x64

    if-ne v0, v3, :cond_3a

    const/16 v3, 0xe

    const-string v4, "batch_no_fs"

    invoke-direct {p0, v3, v4}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V

    :cond_39
    :goto_39
    return v1

    :cond_3a
    const/4 v1, 0x1

    goto :goto_39
.end method

.method private initializeBatchVariable()V
    .registers 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-boolean v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mPendingDMCheck:Z

    iput-boolean v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mBatchDecrypting:Z

    iput-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mCryptPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mNormalPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mPendingMountPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mLabel:Ljava/lang/String;

    return-void
.end method

.method private isAdminApplied()Z
    .registers 7

    const/4 v5, 0x2

    new-instance v0, Landroid/dirEncryption/SDCardEncryptionPolicies;

    invoke-direct {v0}, Landroid/dirEncryption/SDCardEncryptionPolicies;-><init>()V

    iget-object v3, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    const-string v4, "device_policy"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/app/admin/DevicePolicyManager;->getRequireStorageCardEncryption(Landroid/content/ComponentName;)Z

    move-result v3

    if-eqz v3, :cond_1d

    iput v5, v0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    const/4 v3, 0x4

    iput v3, v0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mFullEnc:I

    :cond_1d
    iget v3, v0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    if-ne v5, v3, :cond_22

    const/4 v2, 0x1

    :cond_22
    return v2
.end method

.method private isEncryptionApplied()Z
    .registers 5

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->getSDCardEncryptionPrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/DirEncryptServiceHelper;->isStorageCardEncryptionPoliciesApplied()I

    move-result v2

    if-ne v2, v1, :cond_15

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroid/dirEncryption/SDCardEncryptionPolicies;->getDefaultEnc()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_15

    :goto_14
    return v1

    :cond_15
    const/4 v1, 0x0

    goto :goto_14
.end method

.method public static logD(Ljava/lang/String;)V
    .registers 2

    sget-boolean v0, Lcom/android/server/DirEncryptServiceHelper;->LOCAL_LOGD:Z

    if-eqz v0, :cond_9

    const-string v0, "DirEncryptService"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-void
.end method

.method public static logE(Ljava/lang/String;)V
    .registers 2

    sget-boolean v0, Lcom/android/server/DirEncryptServiceHelper;->LOCAL_LOGE:Z

    if-eqz v0, :cond_9

    const-string v0, "DirEncryptService"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-void
.end method

.method private notifyEncryptionStatusChanged(ILjava/lang/String;)V
    .registers 10

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyEncryptionStatusChanged: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/DirEncryptServiceHelper;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/DirEncryptServiceHelper;->mListeners:Ljava/util/ArrayList;

    monitor-enter v5

    :try_start_33
    iget-object v4, p0, Lcom/android/server/DirEncryptServiceHelper;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    :goto_3b
    if-ltz v2, :cond_7a

    iget-object v4, p0, Lcom/android/server/DirEncryptServiceHelper;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DirEncryptServiceHelper$DirEncryptServiceBinderListener;
    :try_end_45
    .catchall {:try_start_33 .. :try_end_45} :catchall_5f

    :try_start_45
    iget-object v4, v0, Lcom/android/server/DirEncryptServiceHelper$DirEncryptServiceBinderListener;->mListener:Landroid/os/storage/IDirEncryptServiceListener;

    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    invoke-virtual {v6}, Landroid/dirEncryption/DirEncryptionWrapper;->getExternalSdPath()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6, p1, p2}, Landroid/os/storage/IDirEncryptServiceListener;->onEncryptionStatusChanged(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_50
    .catchall {:try_start_45 .. :try_end_50} :catchall_5f
    .catch Landroid/os/RemoteException; {:try_start_45 .. :try_end_50} :catch_53
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_50} :catch_62

    :goto_50
    add-int/lit8 v2, v2, -0x1

    goto :goto_3b

    :catch_53
    move-exception v3

    :try_start_54
    const-string v4, "Listener dead"

    invoke-static {v4}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/DirEncryptServiceHelper;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_50

    :catchall_5f
    move-exception v4

    monitor-exit v5
    :try_end_61
    .catchall {:try_start_54 .. :try_end_61} :catchall_5f

    throw v4

    :catch_62
    move-exception v1

    :try_start_63
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Listener failed: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    goto :goto_50

    :cond_7a
    monitor-exit v5
    :try_end_7b
    .catchall {:try_start_63 .. :try_end_7b} :catchall_5f

    return-void
.end method

.method private varargs sendCommand(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 6

    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mConnector:Lcom/android/server/NativeDaemonConnector;

    if-eqz v1, :cond_9

    :try_start_4
    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_9
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_4 .. :try_end_9} :catch_a

    :cond_9
    :goto_9
    return-void

    :catch_a
    move-exception v0

    const-string v1, "DirEncryptService"

    const-string v2, "Failed to send command"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method private setStatus(I)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setStatus:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    iput p1, p0, Lcom/android/server/DirEncryptServiceHelper;->mServiceStatus:I

    return-void
.end method

.method private showNotification(IILjava/lang/String;)V
    .registers 16

    const/4 v1, 0x0

    const/4 v3, 0x0

    const-string v5, ""

    const-string v0, ""

    packed-switch p1, :pswitch_data_474

    :goto_9
    :pswitch_9
    const/4 v6, 0x5

    if-eq p1, v6, :cond_1c

    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mAnimator:Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;

    invoke-virtual {v6}, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->isInProgress()Z

    move-result v6

    if-eqz v6, :cond_1c

    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mAnimator:Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;

    invoke-virtual {v6}, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->stop()V

    const/4 v6, 0x0

    sput-object v6, Lcom/android/server/DirEncryptServiceHelper;->mSaveProgressNotification:Landroid/app/Notification;

    :cond_1c
    if-eqz v1, :cond_45

    iget v6, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v6, v6, 0x1

    iput v6, v1, Landroid/app/Notification;->flags:I

    iget v6, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v6, v6, 0x20

    iput v6, v1, Landroid/app/Notification;->flags:I

    iget v6, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v6, v6, 0x10

    iput v6, v1, Landroid/app/Notification;->flags:I

    iget v6, v1, Landroid/app/Notification;->defaults:I

    or-int/lit8 v6, v6, 0x4

    iput v6, v1, Landroid/app/Notification;->defaults:I

    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    const-string v7, "notification"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    sget v6, Landroid/dirEncryption/DirEncryptionManager;->SECURITY_POLICY_NOTIFICATION_ID:I

    invoke-virtual {v2, v6, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_45
    return-void

    :pswitch_46
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1040842

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1040843

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->getSecurityIntent()Landroid/content/Intent;

    move-result-object v8

    const/high16 v9, 0x800

    invoke-static {v6, v7, v8, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    new-instance v1, Landroid/app/Notification;

    const v6, 0x10802fa

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-direct {v1, v6, v5, v7, v8}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v6, v5, v0, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    goto :goto_9

    :pswitch_7f
    const/4 v6, 0x1

    if-ne p2, v6, :cond_f9

    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1040846

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "success"

    invoke-virtual {v6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_ca

    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1040848

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    const/high16 v9, 0x800

    invoke-static {v6, v7, v8, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    const/4 v6, 0x0

    iput v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    new-instance v1, Landroid/app/Notification;

    const v6, 0x10802fa

    const-string v7, ""

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v1, v6, v7, v8, v9}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    :goto_c3
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v6, v5, v0, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    goto/16 :goto_9

    :cond_ca
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.app.action.START_SDCARD_ENCRYPTION"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v9, 0x800

    invoke-static {v6, v7, v8, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1040849

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x5

    iput v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    new-instance v1, Landroid/app/Notification;

    const v6, 0x10802f9

    const-string v7, ""

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v1, v6, v7, v8, v9}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    goto :goto_c3

    :cond_f9
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x104084a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "success"

    invoke-virtual {v6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13b

    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x104084c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    const/high16 v9, 0x800

    invoke-static {v6, v7, v8, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    const/4 v6, 0x0

    iput v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    new-instance v1, Landroid/app/Notification;

    const v6, 0x10802a4

    const-string v7, ""

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v1, v6, v7, v8, v9}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    goto :goto_c3

    :cond_13b
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.app.action.START_SDCARD_ENCRYPTION"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v9, 0x800

    invoke-static {v6, v7, v8, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x104084d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x6

    iput v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    new-instance v1, Landroid/app/Notification;

    const v6, 0x10802a3

    const-string v7, ""

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v1, v6, v7, v8, v9}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    goto/16 :goto_c3

    :pswitch_16b
    const/4 v6, 0x1

    if-ne p2, v6, :cond_1ab

    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1040846

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1040847

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/app/Notification;

    const v6, 0x10802fa

    const-string v7, ""

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v1, v6, v7, v8, v9}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    :goto_196
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    const/high16 v9, 0x800

    invoke-static {v6, v7, v8, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v6, v5, v0, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    goto/16 :goto_9

    :cond_1ab
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x104084a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x104084b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/app/Notification;

    const v6, 0x10802a4

    const-string v7, ""

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v1, v6, v7, v8, v9}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    goto :goto_196

    :pswitch_1d4
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iget-object v7, p0, Lcom/android/server/DirEncryptServiceHelper;->mAnimateSync:Ljava/lang/Object;

    monitor-enter v7

    :try_start_1db
    iget-wide v8, p0, Lcom/android/server/DirEncryptServiceHelper;->mProgressTime:J

    const-wide/16 v10, -0x1

    cmp-long v6, v8, v10

    if-nez v6, :cond_1e9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/server/DirEncryptServiceHelper;->mProgressTime:J

    :cond_1e9
    sget-object v6, Lcom/android/server/DirEncryptServiceHelper;->mSaveProgressNotification:Landroid/app/Notification;

    if-nez v6, :cond_20b

    const/4 v6, 0x1

    if-ne p2, v6, :cond_249

    new-instance v6, Landroid/app/Notification;

    const v8, 0x10802f8

    const-string v9, ""

    iget-wide v10, p0, Lcom/android/server/DirEncryptServiceHelper;->mProgressTime:J

    invoke-direct {v6, v8, v9, v10, v11}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    sput-object v6, Lcom/android/server/DirEncryptServiceHelper;->mSaveProgressNotification:Landroid/app/Notification;

    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x1040847

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_20b
    :goto_20b
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    const/high16 v10, 0x800

    invoke-static {v6, v8, v9, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    sget-object v6, Lcom/android/server/DirEncryptServiceHelper;->mSaveProgressNotification:Landroid/app/Notification;

    iget-object v8, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v8, v0, v0, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    sget-object v6, Lcom/android/server/DirEncryptServiceHelper;->mSaveProgressNotification:Landroid/app/Notification;

    invoke-direct {p0, v0, p2, v4}, Lcom/android/server/DirEncryptServiceHelper;->getRemoteProgressView(Ljava/lang/String;II)Landroid/widget/RemoteViews;

    move-result-object v8

    iput-object v8, v6, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    sget-object v6, Lcom/android/server/DirEncryptServiceHelper;->mSaveProgressNotification:Landroid/app/Notification;

    iget v8, v6, Landroid/app/Notification;->flags:I

    or-int/lit8 v8, v8, 0x2

    iput v8, v6, Landroid/app/Notification;->flags:I

    if-nez v4, :cond_265

    sget-object v6, Lcom/android/server/DirEncryptServiceHelper;->mSaveProgressNotification:Landroid/app/Notification;

    const/4 v8, 0x0

    iput v8, v6, Landroid/app/Notification;->iconLevel:I

    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mAnimator:Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;

    invoke-virtual {v6}, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->start()V

    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/android/server/DirEncryptServiceHelper;->mAnimator:Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;

    invoke-virtual {v6, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_243
    :goto_243
    monitor-exit v7

    goto/16 :goto_9

    :catchall_246
    move-exception v6

    monitor-exit v7
    :try_end_248
    .catchall {:try_start_1db .. :try_end_248} :catchall_246

    throw v6

    :cond_249
    :try_start_249
    new-instance v6, Landroid/app/Notification;

    const v8, 0x10802a2

    const-string v9, ""

    iget-wide v10, p0, Lcom/android/server/DirEncryptServiceHelper;->mProgressTime:J

    invoke-direct {v6, v8, v9, v10, v11}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    sput-object v6, Lcom/android/server/DirEncryptServiceHelper;->mSaveProgressNotification:Landroid/app/Notification;

    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x104084b

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_20b

    :cond_265
    const/16 v6, 0x64

    if-ne v6, v4, :cond_243

    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mAnimator:Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;

    invoke-virtual {v6}, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->stop()V

    const/4 v6, 0x0

    sput-object v6, Lcom/android/server/DirEncryptServiceHelper;->mSaveProgressNotification:Landroid/app/Notification;
    :try_end_271
    .catchall {:try_start_249 .. :try_end_271} :catchall_246

    goto :goto_243

    :pswitch_272
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mErrAdditionalSpace:I

    const/4 v6, 0x1

    if-ne p2, v6, :cond_2bd

    new-instance v1, Landroid/app/Notification;

    const v6, 0x10802f9

    const-string v7, ""

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v1, v6, v7, v8, v9}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1040846

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.app.action.START_SDCARD_ENCRYPTION"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v9, 0x800

    invoke-static {v6, v7, v8, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1040849

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2b3
    const/4 v6, 0x4

    iput v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v6, v5, v0, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    goto/16 :goto_9

    :cond_2bd
    new-instance v1, Landroid/app/Notification;

    const v6, 0x10802a3

    const-string v7, ""

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v1, v6, v7, v8, v9}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x104084a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.app.action.START_SDCARD_ENCRYPTION"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v9, 0x800

    invoke-static {v6, v7, v8, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x104084d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2b3

    :pswitch_2f6
    const/4 v6, 0x1

    if-ne p2, v6, :cond_33c

    new-instance v1, Landroid/app/Notification;

    const v6, 0x10802f9

    const-string v7, ""

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v1, v6, v7, v8, v9}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1040846

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.app.action.START_SDCARD_ENCRYPTION"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v9, 0x800

    invoke-static {v6, v7, v8, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1040849

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_331
    const/16 v6, 0x8

    iput v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v6, v5, v0, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    goto/16 :goto_9

    :cond_33c
    new-instance v1, Landroid/app/Notification;

    const v6, 0x10802a3

    const-string v7, ""

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v1, v6, v7, v8, v9}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x104084a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.app.action.START_SDCARD_ENCRYPTION"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v9, 0x800

    invoke-static {v6, v7, v8, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x104084d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_331

    :pswitch_375
    const/4 v6, 0x1

    if-ne p2, v6, :cond_3b7

    new-instance v1, Landroid/app/Notification;

    const v6, 0x10802f9

    const-string v7, ""

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v1, v6, v7, v8, v9}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1040846

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.app.action.START_SDCARD_ENCRYPTION"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v9, 0x800

    invoke-static {v6, v7, v8, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1040849

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_3b0
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v6, v5, v0, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    goto/16 :goto_9

    :cond_3b7
    new-instance v1, Landroid/app/Notification;

    const v6, 0x10802f9

    const-string v7, ""

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v1, v6, v7, v8, v9}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x104084a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.app.action.START_SDCARD_ENCRYPTION"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v9, 0x800

    invoke-static {v6, v7, v8, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x104084d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3b0

    :pswitch_3f0
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x104084e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x104084f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.dirEncryption.DirEncryptionManager.BATCH_ENCRYPT"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v9, 0x800

    invoke-static {v6, v7, v8, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    const/4 v6, 0x0

    iput v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    new-instance v1, Landroid/app/Notification;

    const v6, 0x10802a4

    const-string v7, ""

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v1, v6, v7, v8, v9}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v6, v5, v0, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    goto/16 :goto_9

    :pswitch_432
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1040844

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1040845

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.dirEncryption.DirEncryptionManager.UNMOUNT_POLICY"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v9, 0x800

    invoke-static {v6, v7, v8, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    const/4 v6, 0x0

    iput v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    new-instance v1, Landroid/app/Notification;

    const v6, 0x108007b

    const-string v7, ""

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v1, v6, v7, v8, v9}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v6, v5, v0, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    goto/16 :goto_9

    :pswitch_data_474
    .packed-switch 0x1
        :pswitch_16b
        :pswitch_7f
        :pswitch_375
        :pswitch_9
        :pswitch_1d4
        :pswitch_272
        :pswitch_46
        :pswitch_9
        :pswitch_9
        :pswitch_3f0
        :pswitch_432
        :pswitch_2f6
    .end packed-switch
.end method

.method private unmountSDCard()V
    .registers 3

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mSelfSDMountRequested:Z

    :try_start_3
    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    invoke-virtual {v1}, Landroid/dirEncryption/DirEncryptionWrapper;->unmountVolume()Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_8} :catch_9

    :goto_8
    return-void

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8
.end method


# virtual methods
.method public addEscapeChar(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    if-nez p1, :cond_5

    const-string v0, ""

    :goto_4
    return-object v0

    :cond_5
    const-string v0, "\\\\"

    const-string v1, "\\\\\\\\"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\""

    const-string v2, "\\\\\""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method public doHandleMessage(Landroid/os/Message;)V
    .registers 13

    iget-object v10, p0, Lcom/android/server/DirEncryptServiceHelper;->mSync:Ljava/lang/Object;

    monitor-enter v10

    const/4 v0, 0x0

    :try_start_4
    iput v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ServiceHelper: command received:: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_d6

    const-string v0, "Invalid command!!!"

    invoke-static {v0}, Lcom/android/server/DirEncryptServiceHelper;->logE(Ljava/lang/String;)V

    :cond_28
    :goto_28
    monitor-exit v10

    return-void

    :pswitch_2a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/DirEncryptServiceHelper;->doWorkForPassword(Ljava/lang/String;)V

    goto :goto_28

    :catchall_32
    move-exception v0

    monitor-exit v10
    :try_end_34
    .catchall {:try_start_4 .. :try_end_34} :catchall_32

    throw v0

    :pswitch_35
    :try_start_35
    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->unmountSDCard()V

    goto :goto_28

    :pswitch_39
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Command.USB_STATE:: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    invoke-direct {p0, v9}, Lcom/android/server/DirEncryptServiceHelper;->doWorkForUSBState(Ljava/lang/String;)V

    goto :goto_28

    :pswitch_57
    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->doEncryption()V

    goto :goto_28

    :pswitch_5b
    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->doCheckEncMeta()V

    goto :goto_28

    :pswitch_5f
    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->doBatchDecrypt()V

    goto :goto_28

    :pswitch_63
    invoke-virtual {p0}, Lcom/android/server/DirEncryptServiceHelper;->showPopup()V

    goto :goto_28

    :pswitch_67
    iget-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    invoke-virtual {v0}, Landroid/dirEncryption/DirEncryptionWrapper;->mountVolume()Z

    goto :goto_28

    :pswitch_6d
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/android/server/EcryptfsMountParams;

    iget-object v0, v8, Lcom/android/server/EcryptfsMountParams;->password:Ljava/lang/String;

    if-eqz v0, :cond_28

    iget-object v0, v8, Lcom/android/server/EcryptfsMountParams;->callback:Landroid/dirEncryption/IDirEncryptionManagerCallBack;

    iput-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->demCallback:Landroid/dirEncryption/IDirEncryptionManagerCallBack;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mContainerEncryption:Z

    iget-object v1, v8, Lcom/android/server/EcryptfsMountParams;->sourcePath:Ljava/lang/String;

    iget-object v2, v8, Lcom/android/server/EcryptfsMountParams;->mountPath:Ljava/lang/String;

    iget-object v3, v8, Lcom/android/server/EcryptfsMountParams;->password:Ljava/lang/String;

    iget-boolean v4, v8, Lcom/android/server/EcryptfsMountParams;->mountAndEncrypt:Z

    iget v5, v8, Lcom/android/server/EcryptfsMountParams;->excludeMediaTypes:I

    iget v6, v8, Lcom/android/server/EcryptfsMountParams;->containerId:I

    iget v7, v8, Lcom/android/server/EcryptfsMountParams;->state:I

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/server/DirEncryptServiceHelper;->doMountEcryptfs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIII)V

    goto :goto_28

    :pswitch_8f
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/android/server/EcryptfsMountParams;

    iget-object v0, v8, Lcom/android/server/EcryptfsMountParams;->callback:Landroid/dirEncryption/IDirEncryptionManagerCallBack;

    iput-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->demCallback:Landroid/dirEncryption/IDirEncryptionManagerCallBack;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mContainerEncryption:Z

    iget-object v0, v8, Lcom/android/server/EcryptfsMountParams;->sourcePath:Ljava/lang/String;

    iget v1, v8, Lcom/android/server/EcryptfsMountParams;->uninstallOrStop:I

    iget v2, v8, Lcom/android/server/EcryptfsMountParams;->containerId:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/DirEncryptServiceHelper;->doUnMountEcryptfs(Ljava/lang/String;II)V

    goto :goto_28

    :pswitch_a4
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/android/server/EcryptfsMountParams;

    iget-object v0, v8, Lcom/android/server/EcryptfsMountParams;->password:Ljava/lang/String;

    if-eqz v0, :cond_28

    iget-object v0, v8, Lcom/android/server/EcryptfsMountParams;->newPassword:Ljava/lang/String;

    if-eqz v0, :cond_28

    iget-object v0, v8, Lcom/android/server/EcryptfsMountParams;->callback:Landroid/dirEncryption/IDirEncryptionManagerCallBack;

    iput-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->demCallback:Landroid/dirEncryption/IDirEncryptionManagerCallBack;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mContainerEncryption:Z

    iget-object v0, v8, Lcom/android/server/EcryptfsMountParams;->password:Ljava/lang/String;

    iget-object v1, v8, Lcom/android/server/EcryptfsMountParams;->newPassword:Ljava/lang/String;

    iget-object v2, v8, Lcom/android/server/EcryptfsMountParams;->mountPath:Ljava/lang/String;

    iget v3, v8, Lcom/android/server/EcryptfsMountParams;->containerId:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/DirEncryptServiceHelper;->doChangeEncryptPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_28

    :pswitch_c4
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/android/server/EcryptfsMountParams;

    iget-object v0, v8, Lcom/android/server/EcryptfsMountParams;->callback:Landroid/dirEncryption/IDirEncryptionManagerCallBack;

    iput-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->demCallback:Landroid/dirEncryption/IDirEncryptionManagerCallBack;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mContainerEncryption:Z

    iget-object v0, v8, Lcom/android/server/EcryptfsMountParams;->sourcePath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/DirEncryptServiceHelper;->doMountPointMounted(Ljava/lang/String;)V
    :try_end_d4
    .catchall {:try_start_35 .. :try_end_d4} :catchall_32

    goto/16 :goto_28

    :pswitch_data_d6
    .packed-switch 0x1
        :pswitch_2a
        :pswitch_35
        :pswitch_39
        :pswitch_57
        :pswitch_5b
        :pswitch_6d
        :pswitch_8f
        :pswitch_a4
        :pswitch_c4
        :pswitch_5f
        :pswitch_63
        :pswitch_67
    .end packed-switch
.end method

.method public getAdditionalSpaceRequired()I
    .registers 2

    iget v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mErrAdditionalSpace:I

    return v0
.end method

.method public getCurrentStatus()I
    .registers 2

    iget v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mServiceStatus:I

    return v0
.end method

.method public getLastError()I
    .registers 2

    iget v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    return v0
.end method

.method public isStorageCardEncryptionPoliciesApplied()I
    .registers 2

    invoke-static {}, Lcom/android/server/DirEncryptServiceHelper$AppliedPolicies;->checkPoliciesApplied()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public onEventInner(ILjava/lang/String;[Ljava/lang/String;)Z
    .registers 29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mSync:Ljava/lang/Object;

    move-object/from16 v21, v0

    monitor-enter v21

    packed-switch p1, :pswitch_data_c04

    :cond_a
    :goto_a
    :pswitch_a
    :try_start_a
    monitor-exit v21

    const/16 v20, 0x1

    :goto_d
    return v20

    :pswitch_e
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v20, v0

    const/16 v22, 0x3

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_c0

    const/16 v20, 0x1

    aget-object v14, p3, v20

    const/16 v20, 0x2

    aget-object v20, p3, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_4c

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    invoke-static {}, Lcom/android/server/DirEncryptServiceHelper$AppliedPolicies;->setPoliciesRemoved()Z

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/DirEncryptServiceHelper;->doWorkForPassword(Ljava/lang/String;)V

    :cond_3f
    :goto_3f
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    goto :goto_a

    :catchall_49
    move-exception v20

    monitor-exit v21
    :try_end_4b
    .catchall {:try_start_a .. :try_end_4b} :catchall_49

    throw v20

    :cond_4c
    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_64

    const/16 v20, 0x0

    :try_start_56
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/DirEncryptServiceHelper;->mPassword:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/DirEncryptServiceHelper;->handlePendingSDBatch()Z

    goto :goto_3f

    :cond_64
    const-string v20, "unable to save DEK"

    invoke-static/range {v20 .. v20}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mPendingDMCheck:Z

    move/from16 v20, v0

    if-eqz v20, :cond_3f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/dirEncryption/DirEncryptionWrapper;->getVolumeState()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {p0 .. p0}, Lcom/android/server/DirEncryptServiceHelper;->initializeBatchVariable()V

    const-string v20, "unmounted"

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_aa

    const-string v20, "nofs"

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_aa

    const-string v20, "unmountable"

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_3f

    :cond_aa
    const/16 v20, 0xe

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/dirEncryption/DirEncryptionWrapper;->getExternalSdPath()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V

    goto :goto_3f

    :cond_c0
    const-string v20, "RESP_PWD extra data recvd, please fix!!"

    invoke-static/range {v20 .. v20}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    goto/16 :goto_3f

    :pswitch_c7
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v20, v0

    const/16 v22, 0x2

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_10a

    const/16 v20, 0x1

    aget-object v20, p3, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_fc

    const-string v20, "Unable to update DEK"

    invoke-static/range {v20 .. v20}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    const/16 v20, 0x2

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    :goto_f1
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    goto/16 :goto_a

    :cond_fc
    const-string v20, "DEK successfully updated"

    invoke-static/range {v20 .. v20}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    goto :goto_f1

    :cond_10a
    const-string v20, "RESP_PWD extra data recvd, please fix!!"

    invoke-static/range {v20 .. v20}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    goto :goto_f1

    :pswitch_110
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v20, v0

    const/16 v22, 0x2

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_15c

    const/16 v20, 0x1

    aget-object v20, p3, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_145

    const-string v20, "Unable to delete DEK"

    invoke-static/range {v20 .. v20}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    const/16 v20, 0x3

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    :goto_13a
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    goto/16 :goto_a

    :cond_145
    const-string v20, "DEK successfully deleted"

    invoke-static/range {v20 .. v20}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mDep:Lcom/android/server/DirEncryptPrefs;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/DirEncryptPrefs;->clearPrefs()V

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    goto :goto_13a

    :cond_15c
    const-string v20, "RESP_PWD extra data recvd, please fix!!"

    invoke-static/range {v20 .. v20}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    goto :goto_13a

    :pswitch_162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v22, "notification"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/NotificationManager;

    sget v20, Landroid/dirEncryption/DirEncryptionManager;->SECURITY_POLICY_NOTIFICATION_ID:I

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/app/NotificationManager;->cancel(I)V

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mWasEncryptedCard:Z

    goto/16 :goto_a

    :pswitch_185
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v20, v0

    const/16 v22, 0x4

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_37c

    const/16 v20, 0x2

    aget-object v20, p3, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    const/16 v20, 0x3

    aget-object v19, p3, v20

    const-string v20, "success"

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_27a

    const-string v20, "RESP_ENCRYPT success"

    invoke-static/range {v20 .. v20}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    if-nez v16, :cond_23d

    const/16 v20, 0x2ab

    move/from16 v0, p1

    move/from16 v1, v20

    if-ne v0, v1, :cond_23d

    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mWasEncryptedCard:Z

    :goto_1c9
    new-instance v7, Landroid/content/Intent;

    const-string v20, "android.intent.action.SDCARD_ENCRYPTION_COMPLETED"

    move-object/from16 v0, v20

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v22, "what"

    const/16 v20, 0x1

    move/from16 v0, v16

    move/from16 v1, v20

    if-ne v0, v1, :cond_246

    const-string v20, "encryption"

    :goto_1de
    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v22, "android.permission.RECEIVE_SDCARD_ENCRYPTION"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v7, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->demCallback:Landroid/dirEncryption/IDirEncryptionManagerCallBack;

    move-object/from16 v20, v0

    if-eqz v20, :cond_267

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mContainerEncryption:Z

    move/from16 v20, v0
    :try_end_202
    .catchall {:try_start_56 .. :try_end_202} :catchall_49

    const/16 v22, 0x1

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_267

    :try_start_20a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->demCallback:Landroid/dirEncryption/IDirEncryptionManagerCallBack;

    move-object/from16 v20, v0

    const/16 v22, 0x1

    const/16 v23, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-interface {v0, v1, v2}, Landroid/dirEncryption/IDirEncryptionManagerCallBack;->updateStatus(ZI)V
    :try_end_21d
    .catchall {:try_start_20a .. :try_end_21d} :catchall_49
    .catch Landroid/os/RemoteException; {:try_start_20a .. :try_end_21d} :catch_249

    :goto_21d
    :try_start_21d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->demCallback:Landroid/dirEncryption/IDirEncryptionManagerCallBack;

    move-object/from16 v20, v0

    if-eqz v20, :cond_35b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mContainerEncryption:Z

    move/from16 v20, v0

    const/16 v22, 0x1

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_35b

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mContainerEncryption:Z

    goto/16 :goto_a

    :cond_23d
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mWasEncryptedCard:Z

    goto :goto_1c9

    :cond_246
    const-string v20, "decryption"

    goto :goto_1de

    :catch_249
    move-exception v4

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "RemoteException"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/server/DirEncryptServiceHelper;->logE(Ljava/lang/String;)V

    goto :goto_21d

    :cond_267
    if-nez v16, :cond_277

    const/16 v20, 0x3

    :goto_26b
    const-string v22, "done"

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V

    goto :goto_21d

    :cond_277
    const/16 v20, 0x2

    goto :goto_26b

    :cond_27a
    const-string v20, "RESP_ENCRYPT failed"

    invoke-static/range {v20 .. v20}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    const/16 v20, 0x1

    move/from16 v0, v16

    move/from16 v1, v20

    if-ne v0, v1, :cond_2f5

    const/16 v20, 0x5

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->demCallback:Landroid/dirEncryption/IDirEncryptionManagerCallBack;

    move-object/from16 v20, v0

    if-eqz v20, :cond_2e5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mContainerEncryption:Z

    move/from16 v20, v0
    :try_end_29d
    .catchall {:try_start_21d .. :try_end_29d} :catchall_49

    const/16 v22, 0x1

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_2e5

    :try_start_2a5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->demCallback:Landroid/dirEncryption/IDirEncryptionManagerCallBack;

    move-object/from16 v20, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    move/from16 v23, v0

    move-object/from16 v0, v20

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-interface {v0, v1, v2}, Landroid/dirEncryption/IDirEncryptionManagerCallBack;->updateStatus(ZI)V
    :try_end_2bc
    .catchall {:try_start_2a5 .. :try_end_2bc} :catchall_49
    .catch Landroid/os/RemoteException; {:try_start_2a5 .. :try_end_2bc} :catch_2c7

    :goto_2bc
    const/16 v20, 0x0

    :try_start_2be
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    goto/16 :goto_21d

    :catch_2c7
    move-exception v4

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "RemoteException"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/server/DirEncryptServiceHelper;->logE(Ljava/lang/String;)V

    goto :goto_2bc

    :cond_2e5
    const/16 v20, 0x3

    const-string v22, ""

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v16

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    goto :goto_2bc

    :cond_2f5
    const/16 v20, 0x6

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->demCallback:Landroid/dirEncryption/IDirEncryptionManagerCallBack;

    move-object/from16 v20, v0

    if-eqz v20, :cond_34a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mContainerEncryption:Z

    move/from16 v20, v0
    :try_end_30b
    .catchall {:try_start_2be .. :try_end_30b} :catchall_49

    const/16 v22, 0x1

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_34a

    :try_start_313
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->demCallback:Landroid/dirEncryption/IDirEncryptionManagerCallBack;

    move-object/from16 v20, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    move/from16 v23, v0

    move-object/from16 v0, v20

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-interface {v0, v1, v2}, Landroid/dirEncryption/IDirEncryptionManagerCallBack;->updateStatus(ZI)V
    :try_end_32a
    .catchall {:try_start_313 .. :try_end_32a} :catchall_49
    .catch Landroid/os/RemoteException; {:try_start_313 .. :try_end_32a} :catch_32b

    goto :goto_2bc

    :catch_32b
    move-exception v4

    :try_start_32c
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "RemoteException"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/server/DirEncryptServiceHelper;->logE(Ljava/lang/String;)V

    goto/16 :goto_2bc

    :cond_34a
    const/16 v20, 0x3

    const-string v22, ""

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v16

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    goto/16 :goto_2bc

    :cond_35b
    const-string v20, "dir_crypto"

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const-string v24, "unmount"

    aput-object v24, v22, v23

    const/16 v23, 0x1

    const-string v24, "/mnt/secure/staging"

    aput-object v24, v22, v23

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/server/DirEncryptServiceHelper;->sendCommand(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_a

    :cond_37c
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "RESP_ENCRYPT extra data recvd["

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v22, v0

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v22, "], please fix!!"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    goto/16 :goto_a

    :pswitch_3ab
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v20, v0

    const/16 v22, 0x3

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_401

    const-string v20, "DirEncryptServiceVoldResponse.PROGRESS inside"

    invoke-static/range {v20 .. v20}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    const/16 v20, 0x1

    aget-object v20, p3, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    const/16 v20, 0x2

    aget-object v20, p3, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->demCallback:Landroid/dirEncryption/IDirEncryptionManagerCallBack;

    move-object/from16 v20, v0

    if-eqz v20, :cond_3dd

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mContainerEncryption:Z

    move/from16 v20, v0

    if-nez v20, :cond_a

    :cond_3dd
    const/16 v20, 0x5

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, ""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v16

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    goto/16 :goto_a

    :cond_401
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "RESP_ENCRYPT extra data recvd["

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v22, v0

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v22, "], please fix!!"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    goto/16 :goto_a

    :pswitch_430
    const/16 v16, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v20, v0

    const/16 v22, 0x8

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_4bf

    const/16 v20, 0x2

    aget-object v20, p3, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    const/16 v20, 0x5

    aget-object v20, p3, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/16 v20, 0x6

    aget-object v20, p3, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/server/DirEncryptServiceHelper;->mErrAdditionalSpace:I

    const/16 v20, 0x4

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->demCallback:Landroid/dirEncryption/IDirEncryptionManagerCallBack;

    move-object/from16 v20, v0

    if-eqz v20, :cond_475

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mContainerEncryption:Z

    move/from16 v20, v0

    if-nez v20, :cond_495

    :cond_475
    const/16 v20, 0x6

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, ""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v5, v2}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    :cond_495
    :goto_495
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->demCallback:Landroid/dirEncryption/IDirEncryptionManagerCallBack;

    move-object/from16 v20, v0

    if-eqz v20, :cond_4ae

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mContainerEncryption:Z

    move/from16 v20, v0

    if-nez v20, :cond_a

    :cond_4ae
    if-nez v16, :cond_4ed

    const/16 v20, 0x3

    :goto_4b2
    const-string v22, "free"

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V

    goto/16 :goto_a

    :cond_4bf
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "RESP_PRESCAN_FULL_ERR extra data recvd["

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v22, v0

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v22, "], please fix!!"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    goto :goto_495

    :cond_4ed
    const/16 v20, 0x2

    goto :goto_4b2

    :pswitch_4f0
    const/16 v20, 0x2

    aget-object v20, p3, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    const/16 v20, 0x5

    aget-object v20, p3, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/16 v20, 0x8

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    const/16 v20, 0xc

    const-string v22, ""

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v5, v2}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    if-nez v16, :cond_52f

    const/16 v20, 0x3

    :goto_522
    const-string v22, "free"

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V

    goto/16 :goto_a

    :cond_52f
    const/16 v20, 0x2

    goto :goto_522

    :pswitch_532
    const/4 v11, -0x1

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v20, v0

    const/16 v22, 0x3

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_598

    const/16 v20, 0x2

    aget-object v20, p3, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    const/16 v20, 0x7

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->demCallback:Landroid/dirEncryption/IDirEncryptionManagerCallBack;

    move-object/from16 v20, v0

    if-eqz v20, :cond_560

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mContainerEncryption:Z

    move/from16 v20, v0

    if-nez v20, :cond_56f

    :cond_560
    const/16 v20, 0x3

    const-string v22, ""

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v16

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    :cond_56f
    if-nez v16, :cond_596

    const/4 v11, 0x3

    :goto_572
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->demCallback:Landroid/dirEncryption/IDirEncryptionManagerCallBack;

    move-object/from16 v20, v0

    if-eqz v20, :cond_58b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mContainerEncryption:Z

    move/from16 v20, v0

    if-nez v20, :cond_a

    :cond_58b
    const-string v20, "free"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v11, v1}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V

    goto/16 :goto_a

    :cond_596
    const/4 v11, 0x2

    goto :goto_572

    :cond_598
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v20, v0

    const/16 v22, 0x4

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_5f0

    const/16 v20, 0x3

    aget-object v20, p3, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_5d6

    invoke-static {}, Lcom/android/server/DirEncryptServiceHelper$AppliedPolicies;->setPoliciesApplied()Z

    move-result v20

    if-eqz v20, :cond_5d6

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    const/16 v20, 0x2

    const/16 v22, 0x1

    const-string v23, "success"

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v22

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    :goto_5d4
    const/4 v11, 0x2

    goto :goto_572

    :cond_5d6
    const/16 v20, 0x7

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    const/16 v20, 0x2

    const/16 v22, 0x1

    const-string v23, ""

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v22

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    goto :goto_5d4

    :cond_5f0
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "RESP_MOUNT extra data recvd["

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v22, v0

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v22, "], please fix!!"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    goto/16 :goto_572

    :pswitch_61f
    const/4 v13, -0x1

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v20, v0

    const/16 v22, 0x3

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_685

    const/16 v20, 0x2

    aget-object v20, p3, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    const/16 v20, 0x8

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->demCallback:Landroid/dirEncryption/IDirEncryptionManagerCallBack;

    move-object/from16 v20, v0

    if-eqz v20, :cond_64d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mContainerEncryption:Z

    move/from16 v20, v0

    if-nez v20, :cond_65c

    :cond_64d
    const/16 v20, 0x4

    const-string v22, ""

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v16

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    :cond_65c
    if-nez v16, :cond_683

    const/4 v13, 0x3

    :goto_65f
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->demCallback:Landroid/dirEncryption/IDirEncryptionManagerCallBack;

    move-object/from16 v20, v0

    if-eqz v20, :cond_678

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mContainerEncryption:Z

    move/from16 v20, v0

    if-nez v20, :cond_a

    :cond_678
    const-string v20, "free"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v13, v1}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V

    goto/16 :goto_a

    :cond_683
    const/4 v13, 0x2

    goto :goto_65f

    :cond_685
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v20, v0

    const/16 v22, 0x4

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_781

    const/16 v20, 0x3

    aget-object v20, p3, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_724

    invoke-static {}, Lcom/android/server/DirEncryptServiceHelper$AppliedPolicies;->setPoliciesApplied()Z

    move-result v20

    if-eqz v20, :cond_724

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->demCallback:Landroid/dirEncryption/IDirEncryptionManagerCallBack;

    move-object/from16 v20, v0

    if-eqz v20, :cond_712

    const/16 v20, 0x1

    aget-object v20, p3, v20

    const-string v22, "/mnt/secure/staging"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_712

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mContainerEncryption:Z

    move/from16 v20, v0
    :try_end_6ce
    .catchall {:try_start_32c .. :try_end_6ce} :catchall_49

    const/16 v22, 0x1

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_712

    :try_start_6d6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->demCallback:Landroid/dirEncryption/IDirEncryptionManagerCallBack;

    move-object/from16 v20, v0

    const/16 v22, 0x1

    const/16 v23, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-interface {v0, v1, v2}, Landroid/dirEncryption/IDirEncryptionManagerCallBack;->updateStatus(ZI)V

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mContainerEncryption:Z
    :try_end_6f1
    .catchall {:try_start_6d6 .. :try_end_6f1} :catchall_49
    .catch Landroid/os/RemoteException; {:try_start_6d6 .. :try_end_6f1} :catch_6f4

    :cond_6f1
    :goto_6f1
    const/4 v13, 0x3

    goto/16 :goto_65f

    :catch_6f4
    move-exception v4

    :try_start_6f5
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "RemoteException"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/server/DirEncryptServiceHelper;->logE(Ljava/lang/String;)V

    goto :goto_6f1

    :cond_712
    const/16 v20, 0x4

    const/16 v22, 0x0

    const-string v23, ""

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v22

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    goto :goto_6f1

    :cond_724
    const/16 v20, 0x8

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->demCallback:Landroid/dirEncryption/IDirEncryptionManagerCallBack;

    move-object/from16 v20, v0

    if-eqz v20, :cond_6f1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mContainerEncryption:Z

    move/from16 v20, v0
    :try_end_73a
    .catchall {:try_start_6f5 .. :try_end_73a} :catchall_49

    const/16 v22, 0x1

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_6f1

    :try_start_742
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->demCallback:Landroid/dirEncryption/IDirEncryptionManagerCallBack;

    move-object/from16 v20, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    move/from16 v23, v0

    move-object/from16 v0, v20

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-interface {v0, v1, v2}, Landroid/dirEncryption/IDirEncryptionManagerCallBack;->updateStatus(ZI)V

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mContainerEncryption:Z
    :try_end_761
    .catchall {:try_start_742 .. :try_end_761} :catchall_49
    .catch Landroid/os/RemoteException; {:try_start_742 .. :try_end_761} :catch_762

    goto :goto_6f1

    :catch_762
    move-exception v4

    :try_start_763
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "RemoteException"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/server/DirEncryptServiceHelper;->logE(Ljava/lang/String;)V

    goto/16 :goto_6f1

    :cond_781
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "RESP_UNMOUNT extra data recvd["

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v22, v0

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v22, "], please fix!!"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    goto/16 :goto_65f

    :pswitch_7b0
    const/4 v12, -0x1

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v20, v0

    const/16 v22, 0x2

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_8c1

    const/16 v20, 0x1

    aget-object v20, p3, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_863

    invoke-static {}, Lcom/android/server/DirEncryptServiceHelper$AppliedPolicies;->setPoliciesApplied()Z

    move-result v20

    if-eqz v20, :cond_863

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->demCallback:Landroid/dirEncryption/IDirEncryptionManagerCallBack;

    move-object/from16 v20, v0

    if-eqz v20, :cond_851

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mContainerEncryption:Z

    move/from16 v20, v0
    :try_end_7ea
    .catchall {:try_start_763 .. :try_end_7ea} :catchall_49

    const/16 v22, 0x1

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_851

    :try_start_7f2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->demCallback:Landroid/dirEncryption/IDirEncryptionManagerCallBack;

    move-object/from16 v20, v0

    const/16 v22, 0x1

    const/16 v23, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-interface {v0, v1, v2}, Landroid/dirEncryption/IDirEncryptionManagerCallBack;->updateStatus(ZI)V

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mContainerEncryption:Z
    :try_end_80d
    .catchall {:try_start_7f2 .. :try_end_80d} :catchall_49
    .catch Landroid/os/RemoteException; {:try_start_7f2 .. :try_end_80d} :catch_833

    :cond_80d
    :goto_80d
    const/16 v12, 0xb

    :goto_80f
    const/16 v20, 0x0

    :try_start_811
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->demCallback:Landroid/dirEncryption/IDirEncryptionManagerCallBack;

    move-object/from16 v20, v0

    if-eqz v20, :cond_828

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mContainerEncryption:Z

    move/from16 v20, v0

    if-nez v20, :cond_a

    :cond_828
    const-string v20, "free"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v12, v1}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V

    goto/16 :goto_a

    :catch_833
    move-exception v4

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "RemoteException"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/server/DirEncryptServiceHelper;->logE(Ljava/lang/String;)V

    goto :goto_80d

    :cond_851
    const/16 v20, 0x8

    const/16 v22, 0x0

    const-string v23, ""

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v22

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    goto :goto_80d

    :cond_863
    const/16 v20, 0x9

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->demCallback:Landroid/dirEncryption/IDirEncryptionManagerCallBack;

    move-object/from16 v20, v0

    if-eqz v20, :cond_80d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mContainerEncryption:Z

    move/from16 v20, v0
    :try_end_879
    .catchall {:try_start_811 .. :try_end_879} :catchall_49

    const/16 v22, 0x1

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_80d

    :try_start_881
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->demCallback:Landroid/dirEncryption/IDirEncryptionManagerCallBack;

    move-object/from16 v20, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    move/from16 v23, v0

    move-object/from16 v0, v20

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-interface {v0, v1, v2}, Landroid/dirEncryption/IDirEncryptionManagerCallBack;->updateStatus(ZI)V

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mContainerEncryption:Z
    :try_end_8a0
    .catchall {:try_start_881 .. :try_end_8a0} :catchall_49
    .catch Landroid/os/RemoteException; {:try_start_881 .. :try_end_8a0} :catch_8a2

    goto/16 :goto_80d

    :catch_8a2
    move-exception v4

    :try_start_8a3
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "RemoteException"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/server/DirEncryptServiceHelper;->logE(Ljava/lang/String;)V

    goto/16 :goto_80d

    :cond_8c1
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "RESP_CHANGE_ECRYPTFS_PASSWORD extra data recvd["

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v22, v0

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v22, "], please fix!!"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    goto/16 :goto_80f

    :pswitch_8f0
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v20, v0

    const/16 v22, 0x2

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_9e4

    const/16 v20, 0x1

    aget-object v20, p3, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_987

    invoke-static {}, Lcom/android/server/DirEncryptServiceHelper$AppliedPolicies;->setPoliciesApplied()Z

    move-result v20

    if-eqz v20, :cond_987

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->demCallback:Landroid/dirEncryption/IDirEncryptionManagerCallBack;

    move-object/from16 v20, v0

    if-eqz v20, :cond_975

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mContainerEncryption:Z

    move/from16 v20, v0
    :try_end_929
    .catchall {:try_start_8a3 .. :try_end_929} :catchall_49

    const/16 v22, 0x1

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_975

    :try_start_931
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->demCallback:Landroid/dirEncryption/IDirEncryptionManagerCallBack;

    move-object/from16 v20, v0

    const/16 v22, 0x1

    const/16 v23, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-interface {v0, v1, v2}, Landroid/dirEncryption/IDirEncryptionManagerCallBack;->updateStatus(ZI)V

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mContainerEncryption:Z
    :try_end_94c
    .catchall {:try_start_931 .. :try_end_94c} :catchall_49
    .catch Landroid/os/RemoteException; {:try_start_931 .. :try_end_94c} :catch_957

    :cond_94c
    :goto_94c
    const/16 v20, 0x0

    :try_start_94e
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    goto/16 :goto_a

    :catch_957
    move-exception v4

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "RemoteException"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/server/DirEncryptServiceHelper;->logE(Ljava/lang/String;)V

    goto :goto_94c

    :cond_975
    const/16 v20, 0x9

    const/16 v22, 0x0

    const-string v23, ""

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v22

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    goto :goto_94c

    :cond_987
    const/16 v20, 0xa

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->demCallback:Landroid/dirEncryption/IDirEncryptionManagerCallBack;

    move-object/from16 v20, v0

    if-eqz v20, :cond_94c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mContainerEncryption:Z

    move/from16 v20, v0
    :try_end_99d
    .catchall {:try_start_94e .. :try_end_99d} :catchall_49

    const/16 v22, 0x1

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_94c

    :try_start_9a5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->demCallback:Landroid/dirEncryption/IDirEncryptionManagerCallBack;

    move-object/from16 v20, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    move/from16 v23, v0

    move-object/from16 v0, v20

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-interface {v0, v1, v2}, Landroid/dirEncryption/IDirEncryptionManagerCallBack;->updateStatus(ZI)V

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mContainerEncryption:Z
    :try_end_9c4
    .catchall {:try_start_9a5 .. :try_end_9c4} :catchall_49
    .catch Landroid/os/RemoteException; {:try_start_9a5 .. :try_end_9c4} :catch_9c5

    goto :goto_94c

    :catch_9c5
    move-exception v4

    :try_start_9c6
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "RemoteException"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/server/DirEncryptServiceHelper;->logE(Ljava/lang/String;)V

    goto/16 :goto_94c

    :cond_9e4
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "RESP_MOUNT_PATH_STATUS extra data recvd["

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v22, v0

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v22, "], please fix!!"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    goto/16 :goto_94c

    :pswitch_a13
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v20, v0

    const/16 v22, 0x2

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_b1a

    const/16 v20, 0x1

    aget-object v20, p3, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mErrAdditionalSpace:I

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_aaf

    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mWasEncryptedCard:Z

    invoke-direct/range {p0 .. p0}, Lcom/android/server/DirEncryptServiceHelper;->getStorageCardEncryptionInternal()I

    move-result v20

    const/16 v22, 0x3

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_a94

    new-instance v6, Landroid/content/Intent;

    const-string v20, "android.app.action.START_SDCARD_ENCRYPTION"

    move-object/from16 v0, v20

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v20, 0x1040

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    new-instance v8, Landroid/content/Intent;

    const-string v20, "android.intent.action.SDCARD_ENCRYPTION_REQUIRED"

    move-object/from16 v0, v20

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v20, "required"

    const-string v22, "decryption"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v22, "android.permission.RECEIVE_SDCARD_ENCRYPTION"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v8, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_a94
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mSelfSDMountRequested:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/dirEncryption/DirEncryptionWrapper;->getVolumeState()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/DirEncryptServiceHelper;->doWorkForUSBState(Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_aaf
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DirEncryptServiceHelper;->getStorageCardEncryptionInternal()I

    move-result v20

    const/16 v22, 0x2

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_afb

    new-instance v6, Landroid/content/Intent;

    const-string v20, "android.app.action.START_SDCARD_ENCRYPTION"

    move-object/from16 v0, v20

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v20, 0x1040

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    new-instance v8, Landroid/content/Intent;

    const-string v20, "android.intent.action.SDCARD_ENCRYPTION_REQUIRED"

    move-object/from16 v0, v20

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v20, "required"

    const-string v22, "encryption"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v22, "android.permission.RECEIVE_SDCARD_ENCRYPTION"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v8, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_afb
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mSelfSDMountRequested:Z

    const/16 v20, 0x3

    const-string v22, "done"

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mWasEncryptedCard:Z

    goto/16 :goto_a

    :cond_b1a
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "RESP_ENC_META_CHECK extra data recvd["

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v22, v0

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v22, "], please fix!!"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    const/16 v20, 0x3

    const-string v22, "free"

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V

    goto/16 :goto_a

    :pswitch_b5f
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v20, v0

    const/16 v22, 0x2

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_a

    const/16 v20, 0x1

    aget-object v20, p3, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    const/16 v17, 0x1

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mLabel:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/dirEncryption/DirEncryptionWrapper;->removeCryptMapper(Ljava/lang/String;)Z

    move-result v17

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "removeCryptMapper "

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mLabel:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/DirEncryptServiceHelper;->initializeBatchVariable()V

    if-nez v17, :cond_bc0

    const/16 v20, 0x0

    monitor-exit v21

    goto/16 :goto_d

    :cond_bc0
    if-nez v19, :cond_be2

    const/16 v20, 0x2

    const/16 v22, 0x0

    const-string v23, "success"

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v22

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    const/16 v20, 0xe

    const-string v22, "batch_done"

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V

    goto/16 :goto_a

    :cond_be2
    const/16 v20, 0x2

    const/16 v22, 0x0

    const/16 v23, 0x1

    aget-object v23, p3, v23

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v22

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    const/16 v20, 0xe

    const-string v22, "batch_fail"

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V
    :try_end_c02
    .catchall {:try_start_9c6 .. :try_end_c02} :catchall_49

    goto/16 :goto_a

    :pswitch_data_c04
    .packed-switch 0x2a8
        :pswitch_e
        :pswitch_c7
        :pswitch_110
        :pswitch_185
        :pswitch_3ab
        :pswitch_a
        :pswitch_430
        :pswitch_532
        :pswitch_61f
        :pswitch_7b0
        :pswitch_8f0
        :pswitch_162
        :pswitch_a13
        :pswitch_b5f
        :pswitch_4f0
    .end packed-switch
.end method

.method public onStorageAskPermission(Ljava/lang/String;Ljava/lang/String;)I
    .registers 10

    const/16 v2, -0x64

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v0, 0x0

    const/16 v1, -0x64

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_18

    :cond_10
    const-string v3, "DirEncryptService"

    const-string v4, " onStorageAskPermission End! (Path is null) OperationCommandOverPass!"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    :goto_17
    return v2

    :cond_18
    const-string v3, "/mnt/sdcard"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17

    iget-boolean v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mBatchDecrypting:Z

    if-ne v2, v4, :cond_4a

    const-string v2, "DirEncryptService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " onStorageAskPermission End! mBatchDecrypting="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/DirEncryptServiceHelper;->mBatchDecrypting:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x6

    goto :goto_17

    :cond_4a
    iget-object v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    invoke-virtual {v2}, Landroid/dirEncryption/DirEncryptionWrapper;->isSecure()Z

    move-result v2

    if-eqz v2, :cond_8e

    iget-object v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    invoke-virtual {v2}, Landroid/dirEncryption/DirEncryptionWrapper;->getKeyguardStoredPasswordQuality()I

    move-result v2

    const/high16 v3, 0x1

    if-le v2, v3, :cond_8e

    iget-object v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mPassword:Ljava/lang/String;

    if-eqz v2, :cond_8b

    iget-object v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mPassword:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v4, :cond_8b

    iget-object v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    iget-object v3, p0, Lcom/android/server/DirEncryptServiceHelper;->mPassword:Ljava/lang/String;

    invoke-virtual {v2, v3, p1}, Landroid/dirEncryption/DirEncryptionWrapper;->getDMPathIfEncryptedSD(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :goto_70
    if-eqz v0, :cond_97

    const/4 v1, -0x6

    iput-boolean v5, p0, Lcom/android/server/DirEncryptServiceHelper;->mPendingDMCheck:Z

    iput-boolean v4, p0, Lcom/android/server/DirEncryptServiceHelper;->mBatchDecrypting:Z

    aget-object v2, v0, v5

    iput-object v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mNormalPath:Ljava/lang/String;

    aget-object v2, v0, v4

    iput-object v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mCryptPath:Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v2, v0, v2

    iput-object v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mLabel:Ljava/lang/String;

    const/16 v2, 0xa

    invoke-direct {p0, v2, v5, v6}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    :goto_89
    move v2, v1

    goto :goto_17

    :cond_8b
    iput-boolean v4, p0, Lcom/android/server/DirEncryptServiceHelper;->mPendingDMCheck:Z

    goto :goto_70

    :cond_8e
    iget-object v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    const-string v3, ""

    invoke-virtual {v2, v3, p1}, Landroid/dirEncryption/DirEncryptionWrapper;->getDMPathIfEncryptedSD(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_70

    :cond_97
    iget-boolean v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mPendingDMCheck:Z

    if-ne v2, v4, :cond_a7

    const/4 v1, -0x6

    iput-object p1, p0, Lcom/android/server/DirEncryptServiceHelper;->mPendingMountPath:Ljava/lang/String;

    iput-boolean v5, p0, Lcom/android/server/DirEncryptServiceHelper;->mBatchDecrypting:Z

    iput-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mNormalPath:Ljava/lang/String;

    iput-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mCryptPath:Ljava/lang/String;

    iput-object v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mLabel:Ljava/lang/String;

    goto :goto_89

    :cond_a7
    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->initializeBatchVariable()V

    const/16 v1, -0x64

    goto :goto_89
.end method

.method ready()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    return-void
.end method

.method public registerListener(Landroid/os/storage/IDirEncryptServiceListener;)V
    .registers 7

    iget-object v3, p0, Lcom/android/server/DirEncryptServiceHelper;->mListeners:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_3
    new-instance v0, Lcom/android/server/DirEncryptServiceHelper$DirEncryptServiceBinderListener;

    invoke-direct {v0, p0, p1}, Lcom/android/server/DirEncryptServiceHelper$DirEncryptServiceBinderListener;-><init>(Lcom/android/server/DirEncryptServiceHelper;Landroid/os/storage/IDirEncryptServiceListener;)V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_1e

    :try_start_8
    invoke-interface {p1}, Landroid/os/storage/IDirEncryptServiceListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v2, v0, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    iget-object v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_15
    .catchall {:try_start_8 .. :try_end_15} :catchall_1e
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_15} :catch_17

    :goto_15
    :try_start_15
    monitor-exit v3

    return-void

    :catch_17
    move-exception v1

    const-string v2, "Failed to link to listener death"

    invoke-static {v2}, Lcom/android/server/DirEncryptServiceHelper;->logE(Ljava/lang/String;)V

    goto :goto_15

    :catchall_1e
    move-exception v2

    monitor-exit v3
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_1e

    throw v2
.end method

.method public registerStorageEventListener()Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mStorageEventListener:Lcom/android/server/DirEncryptServiceHelper$SDStorageEventListener;

    invoke-virtual {v0, v1}, Landroid/dirEncryption/DirEncryptionWrapper;->registerStorageEventListener(Landroid/os/storage/StorageEventListener;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "RegisterStorageEventListner fail"

    invoke-static {v0}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_10
    return v0

    :cond_11
    const-string v0, "RegisterStorageEventListner success"

    invoke-static {v0}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_10
.end method

.method public setExecParams(Lcom/android/server/NativeDaemonConnector;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/DirEncryptServiceHelper;->mConnector:Lcom/android/server/NativeDaemonConnector;

    iput-object p2, p0, Lcom/android/server/DirEncryptServiceHelper;->mHandler:Landroid/os/Handler;

    invoke-static {}, Lcom/android/server/DirEncryptServiceHelper$AppliedPolicies;->setPoliciesRemoved()Z

    return-void
.end method

.method protected showPopup()V
    .registers 4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    const v2, 0x1030332

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    const v1, 0x1040850

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104084e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/server/DirEncryptServiceHelper$3;

    invoke-direct {v2, p0}, Lcom/android/server/DirEncryptServiceHelper$3;-><init>(Lcom/android/server/DirEncryptServiceHelper;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040009

    new-instance v2, Lcom/android/server/DirEncryptServiceHelper$2;

    invoke-direct {v2, p0}, Lcom/android/server/DirEncryptServiceHelper$2;-><init>(Lcom/android/server/DirEncryptServiceHelper;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mDecryptDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mDecryptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    iget-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mDecryptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public unmountSDCardByAdmin()V
    .registers 5

    iget-object v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    invoke-virtual {v2}, Landroid/dirEncryption/DirEncryptionWrapper;->getVolumeState()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SD card  : State = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / Admin policy : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->isAdminApplied()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / Encrypted : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->isEncryptionApplied()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->isAdminApplied()Z

    move-result v2

    if-eqz v2, :cond_5b

    invoke-direct {p0}, Lcom/android/server/DirEncryptServiceHelper;->isEncryptionApplied()Z

    move-result v2

    if-nez v2, :cond_5b

    const-string v2, "mounted"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5b

    const-string v2, "Unmount SD Card By Admin"

    invoke-static {v2}, Lcom/android/server/DirEncryptServiceHelper;->logD(Ljava/lang/String;)V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mUnnmountRequested:Z

    :try_start_56
    iget-object v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    invoke-virtual {v2}, Landroid/dirEncryption/DirEncryptionWrapper;->unmountVolume()Z
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_5b} :catch_5c

    :cond_5b
    :goto_5b
    return-void

    :catch_5c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5b
.end method

.method public unregisterListener(Landroid/os/storage/IDirEncryptServiceListener;)V
    .registers 7

    iget-object v3, p0, Lcom/android/server/DirEncryptServiceHelper;->mListeners:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_3
    iget-object v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DirEncryptServiceHelper$DirEncryptServiceBinderListener;

    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper$DirEncryptServiceBinderListener;->mListener:Landroid/os/storage/IDirEncryptServiceListener;

    if-ne v2, p1, :cond_9

    iget-object v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mListeners:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/DirEncryptServiceHelper;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    monitor-exit v3

    :goto_25
    return-void

    :cond_26
    monitor-exit v3

    goto :goto_25

    :catchall_28
    move-exception v2

    monitor-exit v3
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw v2
.end method
