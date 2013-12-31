.class public Lcom/android/server/content/SyncManager;
.super Ljava/lang/Object;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/content/SyncManager$PrintTable;,
        Lcom/android/server/content/SyncManager$SyncHandler;,
        Lcom/android/server/content/SyncManager$ServiceConnectionData;,
        Lcom/android/server/content/SyncManager$SyncTimeTracker;,
        Lcom/android/server/content/SyncManager$AccountSyncStats;,
        Lcom/android/server/content/SyncManager$AuthoritySyncStats;,
        Lcom/android/server/content/SyncManager$ActiveSyncContext;,
        Lcom/android/server/content/SyncManager$SyncAlarmIntentReceiver;,
        Lcom/android/server/content/SyncManager$SyncHandlerMessagePayload;
    }
.end annotation


# static fields
.field private static final ACTION_SYNC_ALARM:Ljava/lang/String; = "android.content.syncmanager.SYNC_ALARM"

.field private static final DEFAULT_MAX_SYNC_RETRY_TIME_IN_SECONDS:J = 0xe10L

.field private static final DELAY_RETRY_SYNC_IN_PROGRESS_IN_SECONDS:I = 0xa

.field private static final HANDLE_SYNC_ALARM_WAKE_LOCK:Ljava/lang/String; = "SyncManagerHandleSyncAlarm"

.field private static final INITIALIZATION_UNBIND_DELAY_MS:I = 0x1388

.field private static final INITIAL_ACCOUNTS_ARRAY:[Landroid/accounts/AccountAndUser; = null

.field private static final INITIAL_SYNC_RETRY_TIME_IN_MS:J = 0x7530L

#the value of this static final field might be set in the static constructor
.field private static final LOCAL_SYNC_DELAY:J = 0x0L

#the value of this static final field might be set in the static constructor
.field private static final MAX_SIMULTANEOUS_INITIALIZATION_SYNCS:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final MAX_SIMULTANEOUS_REGULAR_SYNCS:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final MAX_TIME_PER_SYNC:J = 0x0L

.field private static final SYNC_ALARM_TIMEOUT_MAX:J = 0x6ddd00L

.field private static final SYNC_ALARM_TIMEOUT_MIN:J = 0x7530L

.field private static final SYNC_LOOP_WAKE_LOCK:Ljava/lang/String; = "SyncLoopWakeLock"

#the value of this static final field might be set in the static constructor
.field private static final SYNC_NOTIFICATION_DELAY:J = 0x0L

.field private static final SYNC_WAKE_LOCK_PREFIX:Ljava/lang/String; = "*sync*"

.field private static final TAG:Ljava/lang/String; = "SyncManager"


# instance fields
.field private mAccountsUpdatedReceiver:Landroid/content/BroadcastReceiver;

.field protected final mActiveSyncContexts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/content/SyncManager$ActiveSyncContext;",
            ">;"
        }
    .end annotation
.end field

.field private mAlarmService:Landroid/app/AlarmManager;

.field private mBackgroundDataSettingChanged:Landroid/content/BroadcastReceiver;

.field private volatile mBootCompleted:Z

.field private mBootCompletedReceiver:Landroid/content/BroadcastReceiver;

.field private mConnManagerDoNotUseDirectly:Landroid/net/ConnectivityManager;

.field private mConnectivityIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private volatile mDataConnectionIsConnected:Z

.field private volatile mHandleAlarmWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mNeedSyncActiveNotification:Z

.field private final mNotificationMgr:Landroid/app/NotificationManager;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private volatile mRunningAccounts:[Landroid/accounts/AccountAndUser;

.field private mShutdownIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mStorageIntentReceiver:Landroid/content/BroadcastReceiver;

.field private volatile mStorageIsLow:Z

.field protected mSyncAdapters:Landroid/content/SyncAdaptersCache;

.field private final mSyncAlarmIntent:Landroid/app/PendingIntent;

.field private final mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

.field private volatile mSyncManagerWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mSyncQueue:Lcom/android/server/content/SyncQueue;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mSyncQueue"
    .end annotation
.end field

.field private mSyncRandomOffsetMillis:I

.field private mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

.field private mUserIntentReceiver:Landroid/content/BroadcastReceiver;

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const-wide/16 v6, 0x7530

    const/4 v1, 0x2

    invoke-static {}, Landroid/app/ActivityManager;->isLargeRAM()Z

    move-result v2

    if-eqz v2, :cond_3d

    const/4 v0, 0x5

    :goto_a
    if-eqz v2, :cond_3f

    :goto_c
    const-string v3, "sync.max_init_syncs"

    invoke-static {v3, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/android/server/content/SyncManager;->MAX_SIMULTANEOUS_INITIALIZATION_SYNCS:I

    const-string v3, "sync.max_regular_syncs"

    invoke-static {v3, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/android/server/content/SyncManager;->MAX_SIMULTANEOUS_REGULAR_SYNCS:I

    const-string v3, "sync.local_sync_delay"

    invoke-static {v3, v6, v7}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    sput-wide v3, Lcom/android/server/content/SyncManager;->LOCAL_SYNC_DELAY:J

    const-string v3, "sync.max_time_per_sync"

    const-wide/32 v4, 0x493e0

    invoke-static {v3, v4, v5}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    sput-wide v3, Lcom/android/server/content/SyncManager;->MAX_TIME_PER_SYNC:J

    const-string v3, "sync.notification_delay"

    invoke-static {v3, v6, v7}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    sput-wide v3, Lcom/android/server/content/SyncManager;->SYNC_NOTIFICATION_DELAY:J

    const/4 v3, 0x0

    new-array v3, v3, [Landroid/accounts/AccountAndUser;

    sput-object v3, Lcom/android/server/content/SyncManager;->INITIAL_ACCOUNTS_ARRAY:[Landroid/accounts/AccountAndUser;

    return-void

    :cond_3d
    move v0, v1

    goto :goto_a

    :cond_3f
    const/4 v1, 0x1

    goto :goto_c
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 15

    const/4 v7, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/server/content/SyncManager;->INITIAL_ACCOUNTS_ARRAY:[Landroid/accounts/AccountAndUser;

    iput-object v0, p0, Lcom/android/server/content/SyncManager;->mRunningAccounts:[Landroid/accounts/AccountAndUser;

    iput-boolean v6, p0, Lcom/android/server/content/SyncManager;->mDataConnectionIsConnected:Z

    iput-boolean v6, p0, Lcom/android/server/content/SyncManager;->mStorageIsLow:Z

    iput-object v4, p0, Lcom/android/server/content/SyncManager;->mAlarmService:Landroid/app/AlarmManager;

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    iput-boolean v6, p0, Lcom/android/server/content/SyncManager;->mNeedSyncActiveNotification:Z

    new-instance v0, Lcom/android/server/content/SyncManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/content/SyncManager$1;-><init>(Lcom/android/server/content/SyncManager;)V

    iput-object v0, p0, Lcom/android/server/content/SyncManager;->mStorageIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/content/SyncManager$2;

    invoke-direct {v0, p0}, Lcom/android/server/content/SyncManager$2;-><init>(Lcom/android/server/content/SyncManager;)V

    iput-object v0, p0, Lcom/android/server/content/SyncManager;->mBootCompletedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/content/SyncManager$3;

    invoke-direct {v0, p0}, Lcom/android/server/content/SyncManager$3;-><init>(Lcom/android/server/content/SyncManager;)V

    iput-object v0, p0, Lcom/android/server/content/SyncManager;->mBackgroundDataSettingChanged:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/content/SyncManager$4;

    invoke-direct {v0, p0}, Lcom/android/server/content/SyncManager$4;-><init>(Lcom/android/server/content/SyncManager;)V

    iput-object v0, p0, Lcom/android/server/content/SyncManager;->mAccountsUpdatedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/content/SyncManager$5;

    invoke-direct {v0, p0}, Lcom/android/server/content/SyncManager$5;-><init>(Lcom/android/server/content/SyncManager;)V

    iput-object v0, p0, Lcom/android/server/content/SyncManager;->mConnectivityIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/content/SyncManager$6;

    invoke-direct {v0, p0}, Lcom/android/server/content/SyncManager$6;-><init>(Lcom/android/server/content/SyncManager;)V

    iput-object v0, p0, Lcom/android/server/content/SyncManager;->mShutdownIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/content/SyncManager$7;

    invoke-direct {v0, p0}, Lcom/android/server/content/SyncManager$7;-><init>(Lcom/android/server/content/SyncManager;)V

    iput-object v0, p0, Lcom/android/server/content/SyncManager;->mUserIntentReceiver:Landroid/content/BroadcastReceiver;

    iput-boolean v6, p0, Lcom/android/server/content/SyncManager;->mBootCompleted:Z

    iput-object p1, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/server/content/SyncStorageEngine;->init(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/server/content/SyncStorageEngine;->getSingleton()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    new-instance v1, Lcom/android/server/content/SyncManager$8;

    invoke-direct {v1, p0}, Lcom/android/server/content/SyncManager$8;-><init>(Lcom/android/server/content/SyncManager;)V

    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncStorageEngine;->setOnSyncRequestListener(Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;)V

    new-instance v0, Landroid/content/SyncAdaptersCache;

    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/content/SyncAdaptersCache;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    new-instance v0, Lcom/android/server/content/SyncQueue;

    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    iget-object v5, p0, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    invoke-direct {v0, v1, v2, v5}, Lcom/android/server/content/SyncQueue;-><init>(Landroid/content/pm/PackageManager;Lcom/android/server/content/SyncStorageEngine;Landroid/content/SyncAdaptersCache;)V

    iput-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncQueue:Lcom/android/server/content/SyncQueue;

    new-instance v11, Landroid/os/HandlerThread;

    const-string v0, "SyncHandlerThread"

    const/16 v1, 0xa

    invoke-direct {v11, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v11}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/android/server/content/SyncManager$SyncHandler;

    invoke-virtual {v11}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/content/SyncManager$SyncHandler;-><init>(Lcom/android/server/content/SyncManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    new-instance v1, Lcom/android/server/content/SyncManager$9;

    invoke-direct {v1, p0}, Lcom/android/server/content/SyncManager$9;-><init>(Lcom/android/server/content/SyncManager;)V

    iget-object v2, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    invoke-virtual {v0, v1, v2}, Landroid/content/SyncAdaptersCache;->setListener(Landroid/content/pm/RegisteredServicesCacheListener;Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.content.syncmanager.SYNC_ALARM"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v6, v1, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncAlarmIntent:Landroid/app/PendingIntent;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mConnectivityIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    if-nez p2, :cond_c6

    new-instance v3, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mBootCompletedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_c6
    new-instance v3, Landroid/content/IntentFilter;

    const-string v0, "android.net.conn.BACKGROUND_DATA_SETTING_CHANGED"

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mBackgroundDataSettingChanged:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v0, "android.intent.action.DEVICE_STORAGE_OK"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mStorageIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x64

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->setPriority(I)V

    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mShutdownIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.USER_STARTING"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.USER_STOPPING"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mUserIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    if-nez p2, :cond_18a

    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/server/content/SyncManager;->mNotificationMgr:Landroid/app/NotificationManager;

    new-instance v0, Lcom/android/server/content/SyncManager$SyncAlarmIntentReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/content/SyncManager$SyncAlarmIntentReceiver;-><init>(Lcom/android/server/content/SyncManager;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.content.syncmanager.SYNC_ALARM"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :goto_12d
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/content/SyncManager;->mPowerManager:Landroid/os/PowerManager;

    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/content/SyncManager;->mUserManager:Landroid/os/UserManager;

    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mPowerManager:Landroid/os/PowerManager;

    const-string v1, "SyncManagerHandleSyncAlarm"

    invoke-virtual {v0, v7, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/content/SyncManager;->mHandleAlarmWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mHandleAlarmWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v6}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mPowerManager:Landroid/os/PowerManager;

    const-string v1, "SyncLoopWakeLock"

    invoke-virtual {v0, v7, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncManagerWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncManagerWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v6}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    new-instance v1, Lcom/android/server/content/SyncManager$10;

    invoke-direct {v1, p0}, Lcom/android/server/content/SyncManager$10;-><init>(Lcom/android/server/content/SyncManager;)V

    invoke-virtual {v0, v7, v1}, Lcom/android/server/content/SyncStorageEngine;->addStatusChangeListener(ILandroid/content/ISyncStatusObserver;)V

    if-nez p2, :cond_17f

    iget-object v5, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/content/SyncManager;->mAccountsUpdatedReceiver:Landroid/content/BroadcastReceiver;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    new-instance v8, Landroid/content/IntentFilter;

    const-string v0, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    invoke-direct {v8, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v9, v4

    move-object v10, v4

    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :cond_17f
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    invoke-virtual {v0}, Lcom/android/server/content/SyncStorageEngine;->getSyncRandomOffset()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/android/server/content/SyncManager;->mSyncRandomOffsetMillis:I

    return-void

    :cond_18a
    iput-object v4, p0, Lcom/android/server/content/SyncManager;->mNotificationMgr:Landroid/app/NotificationManager;

    goto :goto_12d
.end method

.method static synthetic access$000(Lcom/android/server/content/SyncManager;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/content/SyncManager;->mStorageIsLow:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/content/SyncManager;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/content/SyncManager;->mStorageIsLow:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/content/SyncManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->sendCheckAlarmsMessage()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/content/SyncManager;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->onUserStopping(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/content/SyncManager;)Landroid/os/PowerManager$WakeLock;
    .registers 2

    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mHandleAlarmWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/content/SyncManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->sendSyncAlarmMessage()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$ActiveSyncContext;Landroid/content/SyncResult;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/content/SyncManager;->sendSyncFinishedOrCanceledMessage(Lcom/android/server/content/SyncManager$ActiveSyncContext;Landroid/content/SyncResult;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/content/SyncManager;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncManager$SyncHandler;
    .registers 2

    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/server/content/SyncManager;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/content/SyncManager;->mBootCompleted:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/server/content/SyncManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->doDatabaseCleanup()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/content/SyncManager;)Landroid/os/PowerManager;
    .registers 2

    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/content/SyncManager;)Landroid/os/PowerManager$WakeLock;
    .registers 2

    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncManagerWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$ActiveSyncContext;)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->isSyncStillActive(Lcom/android/server/content/SyncManager$ActiveSyncContext;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/android/server/content/SyncManager;)[Landroid/accounts/AccountAndUser;
    .registers 2

    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mRunningAccounts:[Landroid/accounts/AccountAndUser;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/content/SyncManager;)I
    .registers 2

    iget v0, p0, Lcom/android/server/content/SyncManager;->mSyncRandomOffsetMillis:I

    return v0
.end method

.method static synthetic access$2700(Lcom/android/server/content/SyncManager;[Landroid/accounts/AccountAndUser;Landroid/accounts/Account;I)Z
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/content/SyncManager;->containsAccountAndUser([Landroid/accounts/AccountAndUser;Landroid/accounts/Account;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2800()[Landroid/accounts/AccountAndUser;
    .registers 1

    sget-object v0, Lcom/android/server/content/SyncManager;->INITIAL_ACCOUNTS_ARRAY:[Landroid/accounts/AccountAndUser;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/server/content/SyncManager;)Landroid/os/UserManager;
    .registers 2

    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mUserManager:Landroid/os/UserManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/content/SyncManager;)Landroid/net/ConnectivityManager;
    .registers 2

    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3000()J
    .registers 2

    sget-wide v0, Lcom/android/server/content/SyncManager;->MAX_TIME_PER_SYNC:J

    return-wide v0
.end method

.method static synthetic access$3100()I
    .registers 1

    sget v0, Lcom/android/server/content/SyncManager;->MAX_SIMULTANEOUS_INITIALIZATION_SYNCS:I

    return v0
.end method

.method static synthetic access$3200()I
    .registers 1

    sget v0, Lcom/android/server/content/SyncManager;->MAX_SIMULTANEOUS_REGULAR_SYNCS:I

    return v0
.end method

.method static synthetic access$3300(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->increaseBackoffSetting(Lcom/android/server/content/SyncOperation;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->clearBackoffSetting(Lcom/android/server/content/SyncOperation;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;J)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/content/SyncManager;->setDelayUntilTime(Lcom/android/server/content/SyncOperation;J)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/server/content/SyncManager;)Landroid/app/NotificationManager;
    .registers 2

    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mNotificationMgr:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic access$3700()J
    .registers 2

    sget-wide v0, Lcom/android/server/content/SyncManager;->SYNC_NOTIFICATION_DELAY:J

    return-wide v0
.end method

.method static synthetic access$3800(Lcom/android/server/content/SyncManager;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/content/SyncManager;->mNeedSyncActiveNotification:Z

    return v0
.end method

.method static synthetic access$3802(Lcom/android/server/content/SyncManager;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/content/SyncManager;->mNeedSyncActiveNotification:Z

    return p1
.end method

.method static synthetic access$3900(Lcom/android/server/content/SyncManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->ensureAlarmService()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/content/SyncManager;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/content/SyncManager;->mDataConnectionIsConnected:Z

    return v0
.end method

.method static synthetic access$4000(Lcom/android/server/content/SyncManager;)Landroid/app/PendingIntent;
    .registers 2

    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncAlarmIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/server/content/SyncManager;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/content/SyncManager;->mDataConnectionIsConnected:Z

    return p1
.end method

.method static synthetic access$4100(Lcom/android/server/content/SyncManager;)Landroid/app/AlarmManager;
    .registers 2

    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mAlarmService:Landroid/app/AlarmManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/content/SyncManager;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->readDataConnectionState()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncQueue;
    .registers 2

    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncQueue:Lcom/android/server/content/SyncQueue;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncStorageEngine;
    .registers 2

    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/content/SyncManager;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->onUserRemoved(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/content/SyncManager;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->onUserStarting(I)V

    return-void
.end method

.method private clearBackoffSetting(Lcom/android/server/content/SyncOperation;)V
    .registers 10

    const-wide/16 v4, -0x1

    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    iget-object v1, p1, Lcom/android/server/content/SyncOperation;->account:Landroid/accounts/Account;

    iget v2, p1, Lcom/android/server/content/SyncOperation;->userId:I

    iget-object v3, p1, Lcom/android/server/content/SyncOperation;->authority:Ljava/lang/String;

    move-wide v6, v4

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/content/SyncStorageEngine;->setBackoff(Landroid/accounts/Account;ILjava/lang/String;JJ)V

    iget-object v6, p0, Lcom/android/server/content/SyncManager;->mSyncQueue:Lcom/android/server/content/SyncQueue;

    monitor-enter v6

    :try_start_11
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncQueue:Lcom/android/server/content/SyncQueue;

    iget-object v1, p1, Lcom/android/server/content/SyncOperation;->account:Landroid/accounts/Account;

    iget v2, p1, Lcom/android/server/content/SyncOperation;->userId:I

    iget-object v3, p1, Lcom/android/server/content/SyncOperation;->authority:Ljava/lang/String;

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/content/SyncQueue;->onBackoffChanged(Landroid/accounts/Account;ILjava/lang/String;J)V

    monitor-exit v6

    return-void

    :catchall_20
    move-exception v0

    monitor-exit v6
    :try_end_22
    .catchall {:try_start_11 .. :try_end_22} :catchall_20

    throw v0
.end method

.method private containsAccountAndUser([Landroid/accounts/AccountAndUser;Landroid/accounts/Account;I)Z
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    array-length v2, p1

    if-ge v1, v2, :cond_16

    aget-object v2, p1, v1

    iget v2, v2, Landroid/accounts/AccountAndUser;->userId:I

    if-ne v2, p3, :cond_17

    aget-object v2, p1, v1

    iget-object v2, v2, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    invoke-virtual {v2, p2}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/4 v0, 0x1

    :cond_16
    return v0

    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method private doDatabaseCleanup()V
    .registers 6

    iget-object v3, p0, Lcom/android/server/content/SyncManager;->mUserManager:Landroid/os/UserManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    iget-boolean v3, v2, Landroid/content/pm/UserInfo;->partial:Z

    if-nez v3, :cond_b

    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->getSingleton()Lcom/android/server/accounts/AccountManagerService;

    move-result-object v3

    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v4}, Lcom/android/server/accounts/AccountManagerService;->getAccounts(I)[Landroid/accounts/Account;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v0, v4}, Lcom/android/server/content/SyncStorageEngine;->doDatabaseCleanup([Landroid/accounts/Account;I)V

    goto :goto_b

    :cond_2d
    return-void
.end method

.method private dumpDayStatistic(Ljava/io/PrintWriter;Lcom/android/server/content/SyncStorageEngine$DayStats;)V
    .registers 7

    const-string v0, "Success ("

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p2, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    iget v0, p2, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    if-lez v0, :cond_26

    const-string v0, " for "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p2, Lcom/android/server/content/SyncStorageEngine$DayStats;->successTime:J

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/content/SyncManager;->dumpTimeSec(Ljava/io/PrintWriter;J)V

    const-string v0, " avg="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p2, Lcom/android/server/content/SyncStorageEngine$DayStats;->successTime:J

    iget v2, p2, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/content/SyncManager;->dumpTimeSec(Ljava/io/PrintWriter;J)V

    :cond_26
    const-string v0, ") Failure ("

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p2, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    iget v0, p2, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    if-lez v0, :cond_4c

    const-string v0, " for "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p2, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureTime:J

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/content/SyncManager;->dumpTimeSec(Ljava/io/PrintWriter;J)V

    const-string v0, " avg="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p2, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureTime:J

    iget v2, p2, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/content/SyncManager;->dumpTimeSec(Ljava/io/PrintWriter;J)V

    :cond_4c
    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private dumpDayStatistics(Ljava/io/PrintWriter;)V
    .registers 14

    const/4 v11, 0x6

    const/4 v8, 0x0

    iget-object v7, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    invoke-virtual {v7}, Lcom/android/server/content/SyncStorageEngine;->getDayStatistics()[Lcom/android/server/content/SyncStorageEngine$DayStats;

    move-result-object v3

    if-eqz v3, :cond_99

    aget-object v7, v3, v8

    if-eqz v7, :cond_99

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v7, "Sync Statistics"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v7, "  Today:  "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    aget-object v7, v3, v8

    invoke-direct {p0, p1, v7}, Lcom/android/server/content/SyncManager;->dumpDayStatistic(Ljava/io/PrintWriter;Lcom/android/server/content/SyncStorageEngine$DayStats;)V

    aget-object v7, v3, v8

    iget v5, v7, Lcom/android/server/content/SyncStorageEngine$DayStats;->day:I

    const/4 v4, 0x1

    :goto_25
    if-gt v4, v11, :cond_2e

    array-length v7, v3

    if-ge v4, v7, :cond_2e

    aget-object v2, v3, v4

    if-nez v2, :cond_54

    :cond_2e
    move v6, v5

    :cond_2f
    :goto_2f
    array-length v7, v3

    if-ge v4, v7, :cond_99

    const/4 v0, 0x0

    add-int/lit8 v6, v6, -0x7

    :goto_35
    array-length v7, v3

    if-ge v4, v7, :cond_3d

    aget-object v2, v3, v4

    if-nez v2, :cond_6d

    array-length v4, v3

    :cond_3d
    if-eqz v0, :cond_2f

    const-string v7, "  Week-"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sub-int v7, v5, v6

    div-int/lit8 v7, v7, 0x7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(I)V

    const-string v7, ": "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/android/server/content/SyncManager;->dumpDayStatistic(Ljava/io/PrintWriter;Lcom/android/server/content/SyncStorageEngine$DayStats;)V

    goto :goto_2f

    :cond_54
    iget v7, v2, Lcom/android/server/content/SyncStorageEngine$DayStats;->day:I

    sub-int v1, v5, v7

    if-gt v1, v11, :cond_2e

    const-string v7, "  Day-"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v7, ":  "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct {p0, p1, v2}, Lcom/android/server/content/SyncManager;->dumpDayStatistic(Ljava/io/PrintWriter;Lcom/android/server/content/SyncStorageEngine$DayStats;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_25

    :cond_6d
    iget v7, v2, Lcom/android/server/content/SyncStorageEngine$DayStats;->day:I

    sub-int v1, v6, v7

    if-gt v1, v11, :cond_3d

    add-int/lit8 v4, v4, 0x1

    if-nez v0, :cond_7c

    new-instance v0, Lcom/android/server/content/SyncStorageEngine$DayStats;

    invoke-direct {v0, v6}, Lcom/android/server/content/SyncStorageEngine$DayStats;-><init>(I)V

    :cond_7c
    iget v7, v0, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    iget v8, v2, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    add-int/2addr v7, v8

    iput v7, v0, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    iget-wide v7, v0, Lcom/android/server/content/SyncStorageEngine$DayStats;->successTime:J

    iget-wide v9, v2, Lcom/android/server/content/SyncStorageEngine$DayStats;->successTime:J

    add-long/2addr v7, v9

    iput-wide v7, v0, Lcom/android/server/content/SyncStorageEngine$DayStats;->successTime:J

    iget v7, v0, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    iget v8, v2, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    add-int/2addr v7, v8

    iput v7, v0, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    iget-wide v7, v0, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureTime:J

    iget-wide v9, v2, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureTime:J

    add-long/2addr v7, v9

    iput-wide v7, v0, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureTime:J

    goto :goto_35

    :cond_99
    return-void
.end method

.method private dumpRecentHistory(Ljava/io/PrintWriter;)V
    .registers 59

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Lcom/android/server/content/SyncStorageEngine;->getSyncHistory()Ljava/util/ArrayList;

    move-result-object v27

    if-eqz v27, :cond_642

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v52

    if-lez v52, :cond_642

    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v10

    const-wide/16 v48, 0x0

    const-wide/16 v50, 0x0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v33, 0x0

    const/16 v32, 0x0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :goto_26
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v52

    if-eqz v52, :cond_fc

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    move-object/from16 v52, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->authorityId:I

    move/from16 v53, v0

    invoke-virtual/range {v52 .. v53}, Lcom/android/server/content/SyncStorageEngine;->getAuthority(I)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v8

    if-eqz v8, :cond_f7

    iget-object v11, v8, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->authority:Ljava/lang/String;

    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v8, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->account:Landroid/accounts/Account;

    move-object/from16 v53, v0

    move-object/from16 v0, v53

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v53, v0

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    const-string v53, "/"

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    iget-object v0, v8, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->account:Landroid/accounts/Account;

    move-object/from16 v53, v0

    move-object/from16 v0, v53

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v53, v0

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    const-string v53, " u"

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    iget v0, v8, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->userId:I

    move/from16 v53, v0

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_7f
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v31

    move/from16 v0, v31

    move/from16 v1, v33

    if-le v0, v1, :cond_8b

    move/from16 v33, v31

    :cond_8b
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v31

    move/from16 v0, v31

    move/from16 v1, v32

    if-le v0, v1, :cond_97

    move/from16 v32, v31

    :cond_97
    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->elapsedTime:J

    move-wide/from16 v17, v0

    add-long v48, v48, v17

    const-wide/16 v52, 0x1

    add-long v50, v50, v52

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/content/SyncManager$AuthoritySyncStats;

    if-nez v12, :cond_b7

    new-instance v12, Lcom/android/server/content/SyncManager$AuthoritySyncStats;

    const/16 v52, 0x0

    move-object/from16 v0, v52

    invoke-direct {v12, v11, v0}, Lcom/android/server/content/SyncManager$AuthoritySyncStats;-><init>(Ljava/lang/String;Lcom/android/server/content/SyncManager$1;)V

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b7
    iget-wide v0, v12, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->elapsedTime:J

    move-wide/from16 v52, v0

    add-long v52, v52, v17

    move-wide/from16 v0, v52

    iput-wide v0, v12, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->elapsedTime:J

    iget v0, v12, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->times:I

    move/from16 v52, v0

    add-int/lit8 v52, v52, 0x1

    move/from16 v0, v52

    iput v0, v12, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->times:I

    iget-object v6, v12, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->accountMap:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/content/SyncManager$AccountSyncStats;

    if-nez v7, :cond_e1

    new-instance v7, Lcom/android/server/content/SyncManager$AccountSyncStats;

    const/16 v52, 0x0

    move-object/from16 v0, v52

    invoke-direct {v7, v5, v0}, Lcom/android/server/content/SyncManager$AccountSyncStats;-><init>(Ljava/lang/String;Lcom/android/server/content/SyncManager$1;)V

    invoke-interface {v6, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e1
    iget-wide v0, v7, Lcom/android/server/content/SyncManager$AccountSyncStats;->elapsedTime:J

    move-wide/from16 v52, v0

    add-long v52, v52, v17

    move-wide/from16 v0, v52

    iput-wide v0, v7, Lcom/android/server/content/SyncManager$AccountSyncStats;->elapsedTime:J

    iget v0, v7, Lcom/android/server/content/SyncManager$AccountSyncStats;->times:I

    move/from16 v52, v0

    add-int/lit8 v52, v52, 0x1

    move/from16 v0, v52

    iput v0, v7, Lcom/android/server/content/SyncManager$AccountSyncStats;->times:I

    goto/16 :goto_26

    :cond_f7
    const-string v11, "Unknown"

    const-string v5, "Unknown"

    goto :goto_7f

    :cond_fc
    const-wide/16 v52, 0x0

    cmp-long v52, v48, v52

    if-lez v52, :cond_2e0

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    const-string v52, "Detailed Statistics (Recent history):  %d (# of times) %ds (sync time)\n"

    const/16 v53, 0x2

    move/from16 v0, v53

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v53, v0

    const/16 v54, 0x0

    invoke-static/range {v50 .. v51}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v55

    aput-object v55, v53, v54

    const/16 v54, 0x1

    const-wide/16 v55, 0x3e8

    div-long v55, v48, v55

    invoke-static/range {v55 .. v56}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v55

    aput-object v55, v53, v54

    move-object/from16 v0, p1

    move-object/from16 v1, v52

    move-object/from16 v2, v53

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    new-instance v42, Ljava/util/ArrayList;

    invoke-interface {v10}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v52

    move-object/from16 v0, v42

    move-object/from16 v1, v52

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v52, Lcom/android/server/content/SyncManager$12;

    move-object/from16 v0, v52

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/content/SyncManager$12;-><init>(Lcom/android/server/content/SyncManager;)V

    move-object/from16 v0, v42

    move-object/from16 v1, v52

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    add-int/lit8 v52, v32, 0x3

    move/from16 v0, v33

    move/from16 v1, v52

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v34

    add-int/lit8 v52, v34, 0x4

    add-int/lit8 v52, v52, 0x2

    add-int/lit8 v52, v52, 0xa

    add-int/lit8 v36, v52, 0xb

    move/from16 v0, v36

    new-array v13, v0, [C

    const/16 v52, 0x2d

    move/from16 v0, v52

    invoke-static {v13, v0}, Ljava/util/Arrays;->fill([CC)V

    new-instance v40, Ljava/lang/String;

    move-object/from16 v0, v40

    invoke-direct {v0, v13}, Ljava/lang/String;-><init>([C)V

    const-string v52, "  %%-%ds: %%-9s  %%-11s\n"

    const/16 v53, 0x1

    move/from16 v0, v53

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v53, v0

    const/16 v54, 0x0

    add-int/lit8 v55, v34, 0x2

    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v55

    aput-object v55, v53, v54

    invoke-static/range {v52 .. v53}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const-string v52, "    %%-%ds:   %%-9s  %%-11s\n"

    const/16 v53, 0x1

    move/from16 v0, v53

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v53, v0

    const/16 v54, 0x0

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v55

    aput-object v55, v53, v54

    invoke-static/range {v52 .. v53}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-interface/range {v42 .. v42}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :goto_1a6
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v52

    if-eqz v52, :cond_2e0

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/content/SyncManager$AuthoritySyncStats;

    iget-object v0, v12, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->name:Ljava/lang/String;

    move-object/from16 v35, v0

    iget-wide v0, v12, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->elapsedTime:J

    move-wide/from16 v17, v0

    iget v0, v12, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->times:I

    move/from16 v46, v0

    const-string v52, "%ds/%d%%"

    const/16 v53, 0x2

    move/from16 v0, v53

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v53, v0

    const/16 v54, 0x0

    const-wide/16 v55, 0x3e8

    div-long v55, v17, v55

    invoke-static/range {v55 .. v56}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v55

    aput-object v55, v53, v54

    const/16 v54, 0x1

    const-wide/16 v55, 0x64

    mul-long v55, v55, v17

    div-long v55, v55, v48

    invoke-static/range {v55 .. v56}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v55

    aput-object v55, v53, v54

    invoke-static/range {v52 .. v53}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v45

    const-string v52, "%d/%d%%"

    const/16 v53, 0x2

    move/from16 v0, v53

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v53, v0

    const/16 v54, 0x0

    invoke-static/range {v46 .. v46}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v55

    aput-object v55, v53, v54

    const/16 v54, 0x1

    mul-int/lit8 v55, v46, 0x64

    move/from16 v0, v55

    int-to-long v0, v0

    move-wide/from16 v55, v0

    div-long v55, v55, v50

    invoke-static/range {v55 .. v56}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v55

    aput-object v55, v53, v54

    invoke-static/range {v52 .. v53}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v47

    const/16 v52, 0x3

    move/from16 v0, v52

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v52, v0

    const/16 v53, 0x0

    aput-object v35, v52, v53

    const/16 v53, 0x1

    aput-object v47, v52, v53

    const/16 v53, 0x2

    aput-object v45, v52, v53

    move-object/from16 v0, p1

    move-object/from16 v1, v52

    invoke-virtual {v0, v9, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    new-instance v41, Ljava/util/ArrayList;

    iget-object v0, v12, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->accountMap:Ljava/util/Map;

    move-object/from16 v52, v0

    invoke-interface/range {v52 .. v52}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v52

    move-object/from16 v0, v41

    move-object/from16 v1, v52

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v52, Lcom/android/server/content/SyncManager$13;

    move-object/from16 v0, v52

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/content/SyncManager$13;-><init>(Lcom/android/server/content/SyncManager;)V

    move-object/from16 v0, v41

    move-object/from16 v1, v52

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface/range {v41 .. v41}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :goto_24d
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v52

    if-eqz v52, :cond_2d7

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Lcom/android/server/content/SyncManager$AccountSyncStats;

    move-object/from16 v0, v43

    iget-wide v0, v0, Lcom/android/server/content/SyncManager$AccountSyncStats;->elapsedTime:J

    move-wide/from16 v17, v0

    move-object/from16 v0, v43

    iget v0, v0, Lcom/android/server/content/SyncManager$AccountSyncStats;->times:I

    move/from16 v46, v0

    const-string v52, "%ds/%d%%"

    const/16 v53, 0x2

    move/from16 v0, v53

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v53, v0

    const/16 v54, 0x0

    const-wide/16 v55, 0x3e8

    div-long v55, v17, v55

    invoke-static/range {v55 .. v56}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v55

    aput-object v55, v53, v54

    const/16 v54, 0x1

    const-wide/16 v55, 0x64

    mul-long v55, v55, v17

    div-long v55, v55, v48

    invoke-static/range {v55 .. v56}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v55

    aput-object v55, v53, v54

    invoke-static/range {v52 .. v53}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v45

    const-string v52, "%d/%d%%"

    const/16 v53, 0x2

    move/from16 v0, v53

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v53, v0

    const/16 v54, 0x0

    invoke-static/range {v46 .. v46}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v55

    aput-object v55, v53, v54

    const/16 v54, 0x1

    mul-int/lit8 v55, v46, 0x64

    move/from16 v0, v55

    int-to-long v0, v0

    move-wide/from16 v55, v0

    div-long v55, v55, v50

    invoke-static/range {v55 .. v56}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v55

    aput-object v55, v53, v54

    invoke-static/range {v52 .. v53}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v47

    const/16 v52, 0x3

    move/from16 v0, v52

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v52, v0

    const/16 v53, 0x0

    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/android/server/content/SyncManager$AccountSyncStats;->name:Ljava/lang/String;

    move-object/from16 v54, v0

    aput-object v54, v52, v53

    const/16 v53, 0x1

    aput-object v47, v52, v53

    const/16 v53, 0x2

    aput-object v45, v52, v53

    move-object/from16 v0, p1

    move-object/from16 v1, v52

    invoke-virtual {v0, v4, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    goto/16 :goto_24d

    :cond_2d7
    move-object/from16 v0, p1

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_1a6

    :cond_2e0
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    const-string v52, "Recent Sync History"

    move-object/from16 v0, p1

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    const-string v53, "  %-"

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v52

    const-string v53, "s  %-"

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v52

    const-string v53, "s %s\n"

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v37

    const/16 v23, 0x0

    :goto_327
    move/from16 v0, v23

    if-ge v0, v3, :cond_55f

    move-object/from16 v0, v27

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    move-object/from16 v52, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->authorityId:I

    move/from16 v53, v0

    invoke-virtual/range {v52 .. v53}, Lcom/android/server/content/SyncStorageEngine;->getAuthority(I)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v8

    if-eqz v8, :cond_4dd

    iget-object v11, v8, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->authority:Ljava/lang/String;

    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v8, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->account:Landroid/accounts/Account;

    move-object/from16 v53, v0

    move-object/from16 v0, v53

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v53, v0

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    const-string v53, "/"

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    iget-object v0, v8, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->account:Landroid/accounts/Account;

    move-object/from16 v53, v0

    move-object/from16 v0, v53

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v53, v0

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    const-string v53, " u"

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    iget v0, v8, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->userId:I

    move/from16 v53, v0

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_382
    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->elapsedTime:J

    move-wide/from16 v17, v0

    new-instance v44, Landroid/text/format/Time;

    invoke-direct/range {v44 .. v44}, Landroid/text/format/Time;-><init>()V

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->eventTime:J

    move-wide/from16 v19, v0

    move-object/from16 v0, v44

    move-wide/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v52

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    const-string v53, "/"

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v30

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/Long;

    if-nez v29, :cond_4e3

    const-string v16, ""

    :goto_3c3
    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v52

    move-object/from16 v0, v30

    move-object/from16 v1, v28

    move-object/from16 v2, v52

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v52, "  #%-3d: %s %8s  %5.1fs  %8s"

    const/16 v53, 0x5

    move/from16 v0, v53

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v53, v0

    const/16 v54, 0x0

    add-int/lit8 v55, v23, 0x1

    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v55

    aput-object v55, v53, v54

    const/16 v54, 0x1

    invoke-static/range {v19 .. v20}, Lcom/android/server/content/SyncManager;->formatTime(J)Ljava/lang/String;

    move-result-object v55

    aput-object v55, v53, v54

    const/16 v54, 0x2

    sget-object v55, Lcom/android/server/content/SyncStorageEngine;->SOURCES:[Ljava/lang/String;

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->source:I

    move/from16 v56, v0

    aget-object v55, v55, v56

    aput-object v55, v53, v54

    const/16 v54, 0x3

    move-wide/from16 v0, v17

    long-to-float v0, v0

    move/from16 v55, v0

    const/high16 v56, 0x447a

    div-float v55, v55, v56

    invoke-static/range {v55 .. v55}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v55

    aput-object v55, v53, v54

    const/16 v54, 0x4

    aput-object v16, v53, v54

    move-object/from16 v0, p1

    move-object/from16 v1, v52

    move-object/from16 v2, v53

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const/16 v52, 0x3

    move/from16 v0, v52

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v52, v0

    const/16 v53, 0x0

    aput-object v5, v52, v53

    const/16 v53, 0x1

    aput-object v11, v52, v53

    const/16 v53, 0x2

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->reason:I

    move/from16 v54, v0

    move-object/from16 v0, v37

    move/from16 v1, v54

    invoke-static {v0, v1}, Lcom/android/server/content/SyncOperation;->reasonToString(Landroid/content/pm/PackageManager;I)Ljava/lang/String;

    move-result-object v54

    aput-object v54, v52, v53

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->event:I

    move/from16 v52, v0

    const/16 v53, 0x1

    move/from16 v0, v52

    move/from16 v1, v53

    if-ne v0, v1, :cond_469

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->upstreamActivity:J

    move-wide/from16 v52, v0

    const-wide/16 v54, 0x0

    cmp-long v52, v52, v54

    if-nez v52, :cond_469

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->downstreamActivity:J

    move-wide/from16 v52, v0

    const-wide/16 v54, 0x0

    cmp-long v52, v52, v54

    if-eqz v52, :cond_4a6

    :cond_469
    const-string v52, "    event=%d upstreamActivity=%d downstreamActivity=%d\n"

    const/16 v53, 0x3

    move/from16 v0, v53

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v53, v0

    const/16 v54, 0x0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->event:I

    move/from16 v55, v0

    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v55

    aput-object v55, v53, v54

    const/16 v54, 0x1

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->upstreamActivity:J

    move-wide/from16 v55, v0

    invoke-static/range {v55 .. v56}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v55

    aput-object v55, v53, v54

    const/16 v54, 0x2

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->downstreamActivity:J

    move-wide/from16 v55, v0

    invoke-static/range {v55 .. v56}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v55

    aput-object v55, v53, v54

    move-object/from16 v0, p1

    move-object/from16 v1, v52

    move-object/from16 v2, v53

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    :cond_4a6
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->mesg:Ljava/lang/String;

    move-object/from16 v52, v0

    if-eqz v52, :cond_4d9

    const-string v52, "success"

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->mesg:Ljava/lang/String;

    move-object/from16 v53, v0

    invoke-virtual/range {v52 .. v53}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-nez v52, :cond_4d9

    const-string v52, "    mesg=%s\n"

    const/16 v53, 0x1

    move/from16 v0, v53

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v53, v0

    const/16 v54, 0x0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->mesg:Ljava/lang/String;

    move-object/from16 v55, v0

    aput-object v55, v53, v54

    move-object/from16 v0, p1

    move-object/from16 v1, v52

    move-object/from16 v2, v53

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    :cond_4d9
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_327

    :cond_4dd
    const-string v11, "Unknown"

    const-string v5, "Unknown"

    goto/16 :goto_382

    :cond_4e3
    invoke-virtual/range {v29 .. v29}, Ljava/lang/Long;->longValue()J

    move-result-wide v52

    sub-long v52, v52, v19

    const-wide/16 v54, 0x3e8

    div-long v14, v52, v54

    const-wide/16 v52, 0x3c

    cmp-long v52, v14, v52

    if-gez v52, :cond_4f9

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_3c3

    :cond_4f9
    const-wide/16 v52, 0xe10

    cmp-long v52, v14, v52

    if-gez v52, :cond_527

    const-string v52, "%02d:%02d"

    const/16 v53, 0x2

    move/from16 v0, v53

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v53, v0

    const/16 v54, 0x0

    const-wide/16 v55, 0x3c

    div-long v55, v14, v55

    invoke-static/range {v55 .. v56}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v55

    aput-object v55, v53, v54

    const/16 v54, 0x1

    const-wide/16 v55, 0x3c

    rem-long v55, v14, v55

    invoke-static/range {v55 .. v56}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v55

    aput-object v55, v53, v54

    invoke-static/range {v52 .. v53}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_3c3

    :cond_527
    const-wide/16 v52, 0xe10

    rem-long v38, v14, v52

    const-string v52, "%02d:%02d:%02d"

    const/16 v53, 0x3

    move/from16 v0, v53

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v53, v0

    const/16 v54, 0x0

    const-wide/16 v55, 0xe10

    div-long v55, v14, v55

    invoke-static/range {v55 .. v56}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v55

    aput-object v55, v53, v54

    const/16 v54, 0x1

    const-wide/16 v55, 0x3c

    div-long v55, v38, v55

    invoke-static/range {v55 .. v56}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v55

    aput-object v55, v53, v54

    const/16 v54, 0x2

    const-wide/16 v55, 0x3c

    rem-long v55, v38, v55

    invoke-static/range {v55 .. v56}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v55

    aput-object v55, v53, v54

    invoke-static/range {v52 .. v53}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_3c3

    :cond_55f
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    const-string v52, "Recent Sync History Extras"

    move-object/from16 v0, p1

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 v23, 0x0

    :goto_56d
    move/from16 v0, v23

    if-ge v0, v3, :cond_642

    move-object/from16 v0, v27

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->extras:Landroid/os/Bundle;

    move-object/from16 v21, v0

    if-eqz v21, :cond_589

    invoke-virtual/range {v21 .. v21}, Landroid/os/Bundle;->size()I

    move-result v52

    if-nez v52, :cond_58c

    :cond_589
    :goto_589
    add-int/lit8 v23, v23, 0x1

    goto :goto_56d

    :cond_58c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    move-object/from16 v52, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->authorityId:I

    move/from16 v53, v0

    invoke-virtual/range {v52 .. v53}, Lcom/android/server/content/SyncStorageEngine;->getAuthority(I)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v8

    if-eqz v8, :cond_63d

    iget-object v11, v8, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->authority:Ljava/lang/String;

    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v8, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->account:Landroid/accounts/Account;

    move-object/from16 v53, v0

    move-object/from16 v0, v53

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v53, v0

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    const-string v53, "/"

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    iget-object v0, v8, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->account:Landroid/accounts/Account;

    move-object/from16 v53, v0

    move-object/from16 v0, v53

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v53, v0

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    const-string v53, " u"

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    iget v0, v8, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->userId:I

    move/from16 v53, v0

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_5d9
    new-instance v44, Landroid/text/format/Time;

    invoke-direct/range {v44 .. v44}, Landroid/text/format/Time;-><init>()V

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->eventTime:J

    move-wide/from16 v19, v0

    move-object/from16 v0, v44

    move-wide/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    const-string v52, "  #%-3d: %s %8s "

    const/16 v53, 0x3

    move/from16 v0, v53

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v53, v0

    const/16 v54, 0x0

    add-int/lit8 v55, v23, 0x1

    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v55

    aput-object v55, v53, v54

    const/16 v54, 0x1

    invoke-static/range {v19 .. v20}, Lcom/android/server/content/SyncManager;->formatTime(J)Ljava/lang/String;

    move-result-object v55

    aput-object v55, v53, v54

    const/16 v54, 0x2

    sget-object v55, Lcom/android/server/content/SyncStorageEngine;->SOURCES:[Ljava/lang/String;

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->source:I

    move/from16 v56, v0

    aget-object v55, v55, v56

    aput-object v55, v53, v54

    move-object/from16 v0, p1

    move-object/from16 v1, v52

    move-object/from16 v2, v53

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const/16 v52, 0x3

    move/from16 v0, v52

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v52, v0

    const/16 v53, 0x0

    aput-object v5, v52, v53

    const/16 v53, 0x1

    aput-object v11, v52, v53

    const/16 v53, 0x2

    aput-object v21, v52, v53

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    goto/16 :goto_589

    :cond_63d
    const-string v11, "Unknown"

    const-string v5, "Unknown"

    goto :goto_5d9

    :cond_642
    return-void
.end method

.method private dumpSyncAdapters(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 9

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->getAllUsers()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_5b

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Sync adapters for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    iget-object v5, p0, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    iget v6, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v6}, Landroid/content/SyncAdaptersCache;->getAllServices(I)Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_44
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_54

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_44

    :cond_54
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    goto :goto_d

    :cond_5b
    return-void
.end method

.method private dumpTimeSec(Ljava/io/PrintWriter;J)V
    .registers 8

    const-wide/16 v0, 0x3e8

    div-long v0, p2, v0

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    const-wide/16 v0, 0x64

    div-long v0, p2, v0

    const-wide/16 v2, 0xa

    rem-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    const/16 v0, 0x73

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    return-void
.end method

.method private ensureAlarmService()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mAlarmService:Landroid/app/AlarmManager;

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/content/SyncManager;->mAlarmService:Landroid/app/AlarmManager;

    :cond_10
    return-void
.end method

.method static formatTime(J)Ljava/lang/String;
    .registers 4

    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    invoke-virtual {v0, p0, p1}, Landroid/text/format/Time;->set(J)V

    const-string v1, "%Y-%m-%d %H:%M:%S"

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getAllUsers()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getConnectivityManager()Landroid/net/ConnectivityManager;
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mConnManagerDoNotUseDirectly:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/server/content/SyncManager;->mConnManagerDoNotUseDirectly:Landroid/net/ConnectivityManager;

    :cond_11
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mConnManagerDoNotUseDirectly:Landroid/net/ConnectivityManager;

    monitor-exit p0

    return-object v0

    :catchall_15
    move-exception v0

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_15

    throw v0
.end method

.method private getLastFailureMessage(I)Ljava/lang/String;
    .registers 3

    packed-switch p1, :pswitch_data_1e

    const-string v0, "unknown"

    :goto_5
    return-object v0

    :pswitch_6
    const-string v0, "sync already in progress"

    goto :goto_5

    :pswitch_9
    const-string v0, "authentication error"

    goto :goto_5

    :pswitch_c
    const-string v0, "I/O error"

    goto :goto_5

    :pswitch_f
    const-string v0, "parse error"

    goto :goto_5

    :pswitch_12
    const-string v0, "conflict error"

    goto :goto_5

    :pswitch_15
    const-string v0, "too many deletions error"

    goto :goto_5

    :pswitch_18
    const-string v0, "too many retries error"

    goto :goto_5

    :pswitch_1b
    const-string v0, "internal error"

    goto :goto_5

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_6
        :pswitch_9
        :pswitch_c
        :pswitch_f
        :pswitch_12
        :pswitch_15
        :pswitch_18
        :pswitch_1b
    .end packed-switch
.end method

.method private increaseBackoffSetting(Lcom/android/server/content/SyncOperation;)V
    .registers 20

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/content/SyncOperation;->account:Landroid/accounts/Account;

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/server/content/SyncOperation;->userId:I

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/content/SyncOperation;->authority:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/content/SyncStorageEngine;->getBackoff(Landroid/accounts/Account;ILjava/lang/String;)Landroid/util/Pair;

    move-result-object v13

    const-wide/16 v7, -0x1

    if-eqz v13, :cond_69

    iget-object v1, v13, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v1, v11, v1

    if-gez v1, :cond_5d

    const-string v1, "SyncManager"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_5c

    const-string v2, "SyncManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Still in backoff, do not increase it. Remaining: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, v13, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    sub-long/2addr v14, v11

    const-wide/16 v16, 0x3e8

    div-long v14, v14, v16

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " seconds."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5c
    :goto_5c
    return-void

    :cond_5d
    iget-object v1, v13, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x2

    mul-long v7, v1, v3

    :cond_69
    const-wide/16 v1, 0x0

    cmp-long v1, v7, v1

    if-gtz v1, :cond_7a

    const-wide/16 v1, 0x7530

    const-wide/32 v3, 0x80e8

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/content/SyncManager;->jitterize(JJ)J

    move-result-wide v7

    :cond_7a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sync_max_retry_delay_in_seconds"

    const-wide/16 v3, 0xe10

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v9

    const-wide/16 v1, 0x3e8

    mul-long/2addr v1, v9

    cmp-long v1, v7, v1

    if-lez v1, :cond_95

    const-wide/16 v1, 0x3e8

    mul-long v7, v9, v1

    :cond_95
    add-long v5, v11, v7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/content/SyncOperation;->account:Landroid/accounts/Account;

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/server/content/SyncOperation;->userId:I

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/content/SyncOperation;->authority:Ljava/lang/String;

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/content/SyncStorageEngine;->setBackoff(Landroid/accounts/Account;ILjava/lang/String;JJ)V

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v0, p1

    iput-object v1, v0, Lcom/android/server/content/SyncOperation;->backoff:Ljava/lang/Long;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/content/SyncOperation;->updateEffectiveRunTime()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/content/SyncManager;->mSyncQueue:Lcom/android/server/content/SyncQueue;

    monitor-enter v14

    :try_start_ba
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/content/SyncManager;->mSyncQueue:Lcom/android/server/content/SyncQueue;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/content/SyncOperation;->account:Landroid/accounts/Account;

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/server/content/SyncOperation;->userId:I

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/content/SyncOperation;->authority:Ljava/lang/String;

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/content/SyncQueue;->onBackoffChanged(Landroid/accounts/Account;ILjava/lang/String;J)V

    monitor-exit v14

    goto :goto_5c

    :catchall_cf
    move-exception v1

    monitor-exit v14
    :try_end_d1
    .catchall {:try_start_ba .. :try_end_d1} :catchall_cf

    throw v1
.end method

.method private isSyncStillActive(Lcom/android/server/content/SyncManager$ActiveSyncContext;)Z
    .registers 5

    iget-object v2, p0, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/content/SyncManager$ActiveSyncContext;

    if-ne v1, p1, :cond_6

    const/4 v2, 0x1

    :goto_15
    return v2

    :cond_16
    const/4 v2, 0x0

    goto :goto_15
.end method

.method private jitterize(JJ)J
    .registers 10

    new-instance v0, Ljava/util/Random;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-direct {v0, v3, v4}, Ljava/util/Random;-><init>(J)V

    sub-long v1, p3, p1

    const-wide/32 v3, 0x7fffffff

    cmp-long v3, v1, v3

    if-lez v3, :cond_1a

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "the difference between the maxValue and the minValue must be less than 2147483647"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1a
    long-to-int v3, v1

    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v3, p1

    return-wide v3
.end method

.method private onUserRemoved(I)V
    .registers 4

    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->updateRunningAccounts()V

    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/accounts/Account;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/content/SyncStorageEngine;->doDatabaseCleanup([Landroid/accounts/Account;I)V

    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mSyncQueue:Lcom/android/server/content/SyncQueue;

    monitor-enter v1

    :try_start_e
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncQueue:Lcom/android/server/content/SyncQueue;

    invoke-virtual {v0, p1}, Lcom/android/server/content/SyncQueue;->removeUser(I)V

    monitor-exit v1

    return-void

    :catchall_15
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_e .. :try_end_17} :catchall_15

    throw v0
.end method

.method private onUserStarting(I)V
    .registers 15

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->getSingleton()Lcom/android/server/accounts/AccountManagerService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/accounts/AccountManagerService;->validateAccounts(I)V

    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    invoke-virtual {v0, p1}, Landroid/content/SyncAdaptersCache;->invalidateCache(I)V

    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->updateRunningAccounts()V

    iget-object v2, p0, Lcom/android/server/content/SyncManager;->mSyncQueue:Lcom/android/server/content/SyncQueue;

    monitor-enter v2

    :try_start_13
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncQueue:Lcom/android/server/content/SyncQueue;

    invoke-virtual {v0, p1}, Lcom/android/server/content/SyncQueue;->addPendingOperations(I)V

    monitor-exit v2
    :try_end_19
    .catchall {:try_start_13 .. :try_end_19} :catchall_35

    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->getSingleton()Lcom/android/server/accounts/AccountManagerService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/accounts/AccountManagerService;->getAccounts(I)[Landroid/accounts/Account;

    move-result-object v9

    move-object v10, v9

    array-length v12, v10

    const/4 v11, 0x0

    :goto_24
    if-ge v11, v12, :cond_38

    aget-object v1, v10, v11

    const/4 v3, -0x8

    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    move-object v0, p0

    move v2, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/content/SyncManager;->scheduleSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;JZ)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_24

    :catchall_35
    move-exception v0

    :try_start_36
    monitor-exit v2
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    throw v0

    :cond_38
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->sendCheckAlarmsMessage()V

    return-void
.end method

.method private onUserStopping(I)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->updateRunningAccounts()V

    invoke-virtual {p0, v0, p1, v0}, Lcom/android/server/content/SyncManager;->cancelActiveSync(Landroid/accounts/Account;ILjava/lang/String;)V

    return-void
.end method

.method private readDataConnectionState()Z
    .registers 3

    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, 0x1

    :goto_11
    return v1

    :cond_12
    const/4 v1, 0x0

    goto :goto_11
.end method

.method private sendCancelSyncsMessage(Landroid/accounts/Account;ILjava/lang/String;)V
    .registers 7

    const-string v1, "SyncManager"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_10

    const-string v1, "SyncManager"

    const-string v2, "sending MESSAGE_CANCEL"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    invoke-virtual {v1}, Lcom/android/server/content/SyncManager$SyncHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x6

    iput v1, v0, Landroid/os/Message;->what:I

    invoke-static {p1, p3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput p2, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/content/SyncManager$SyncHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private sendCheckAlarmsMessage()V
    .registers 4

    const/4 v2, 0x3

    const-string v0, "SyncManager"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "SyncManager"

    const-string v1, "sending MESSAGE_CHECK_ALARMS"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    invoke-virtual {v0, v2}, Lcom/android/server/content/SyncManager$SyncHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    invoke-virtual {v0, v2}, Lcom/android/server/content/SyncManager$SyncHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private sendSyncAlarmMessage()V
    .registers 4

    const/4 v2, 0x2

    const-string v0, "SyncManager"

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "SyncManager"

    const-string v1, "sending MESSAGE_SYNC_ALARM"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    invoke-virtual {v0, v2}, Lcom/android/server/content/SyncManager$SyncHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private sendSyncFinishedOrCanceledMessage(Lcom/android/server/content/SyncManager$ActiveSyncContext;Landroid/content/SyncResult;)V
    .registers 6

    const-string v1, "SyncManager"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_10

    const-string v1, "SyncManager"

    const-string v2, "sending MESSAGE_SYNC_FINISHED"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    invoke-virtual {v1}, Lcom/android/server/content/SyncManager$SyncHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    new-instance v1, Lcom/android/server/content/SyncManager$SyncHandlerMessagePayload;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/content/SyncManager$SyncHandlerMessagePayload;-><init>(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$ActiveSyncContext;Landroid/content/SyncResult;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/content/SyncManager$SyncHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private setDelayUntilTime(Lcom/android/server/content/SyncOperation;J)V
    .registers 14

    const-wide/16 v0, 0x3e8

    mul-long v8, p2, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v0, v8, v6

    if-lez v0, :cond_2d

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long v2, v8, v6

    add-long v4, v0, v2

    :goto_14
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    iget-object v1, p1, Lcom/android/server/content/SyncOperation;->account:Landroid/accounts/Account;

    iget v2, p1, Lcom/android/server/content/SyncOperation;->userId:I

    iget-object v3, p1, Lcom/android/server/content/SyncOperation;->authority:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/content/SyncStorageEngine;->setDelayUntilTime(Landroid/accounts/Account;ILjava/lang/String;J)V

    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mSyncQueue:Lcom/android/server/content/SyncQueue;

    monitor-enter v1

    :try_start_22
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncQueue:Lcom/android/server/content/SyncQueue;

    iget-object v2, p1, Lcom/android/server/content/SyncOperation;->account:Landroid/accounts/Account;

    iget-object v3, p1, Lcom/android/server/content/SyncOperation;->authority:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/server/content/SyncQueue;->onDelayUntilTimeChanged(Landroid/accounts/Account;Ljava/lang/String;J)V

    monitor-exit v1

    return-void

    :cond_2d
    const-wide/16 v4, 0x0

    goto :goto_14

    :catchall_30
    move-exception v0

    monitor-exit v1
    :try_end_32
    .catchall {:try_start_22 .. :try_end_32} :catchall_30

    throw v0
.end method


# virtual methods
.method public cancelActiveSync(Landroid/accounts/Account;ILjava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/content/SyncManager;->sendCancelSyncsMessage(Landroid/accounts/Account;ILjava/lang/String;)V

    return-void
.end method

.method checkKNOXSystemStatus()Z
    .registers 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    :try_start_2
    const-string v4, "container_service"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/knox/container/IEnterpriseContainerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/knox/container/IEnterpriseContainerService;

    move-result-object v0

    if-nez v0, :cond_16

    const-string v3, "SyncManager"

    const-string v4, "KNOX Service is NULL"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_15
    return v2

    :cond_16
    const/4 v4, 0x1

    invoke-interface {v0, v4}, Lcom/sec/knox/container/IEnterpriseContainerService;->getMountStatus(I)Z

    move-result v4

    if-nez v4, :cond_2e

    const-string v3, "SyncManager"

    const-string v4, "KNOX system not mount"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_24} :catch_25

    goto :goto_15

    :catch_25
    move-exception v1

    const-string v3, "SyncManager"

    const-string v4, "KNOX : get status exception"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    :cond_2e
    move v2, v3

    goto :goto_15
.end method

.method public clearScheduledSyncOperations(Landroid/accounts/Account;ILjava/lang/String;)V
    .registers 12

    const-wide/16 v4, -0x1

    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mSyncQueue:Lcom/android/server/content/SyncQueue;

    monitor-enter v1

    :try_start_5
    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncQueue:Lcom/android/server/content/SyncQueue;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/content/SyncQueue;->remove(Landroid/accounts/Account;ILjava/lang/String;)V

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_15

    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-wide v6, v4

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/content/SyncStorageEngine;->setBackoff(Landroid/accounts/Account;ILjava/lang/String;JJ)V

    return-void

    :catchall_15
    move-exception v0

    :try_start_16
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V
    .registers 5

    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/server/content/SyncManager;->dumpSyncState(Ljava/io/PrintWriter;)V

    invoke-virtual {p0, v0}, Lcom/android/server/content/SyncManager;->dumpSyncHistory(Ljava/io/PrintWriter;)V

    invoke-direct {p0, v0}, Lcom/android/server/content/SyncManager;->dumpSyncAdapters(Lcom/android/internal/util/IndentingPrintWriter;)V

    return-void
.end method

.method protected dumpSyncHistory(Ljava/io/PrintWriter;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->dumpRecentHistory(Ljava/io/PrintWriter;)V

    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager;->dumpDayStatistics(Ljava/io/PrintWriter;)V

    return-void
.end method

.method protected dumpSyncState(Ljava/io/PrintWriter;)V
    .registers 43

    const-string v33, "data connected: "

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/content/SyncManager;->mDataConnectionIsConnected:Z

    move/from16 v33, v0

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Z)V

    const-string v33, "auto sync: "

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/SyncManager;->getAllUsers()Ljava/util/List;

    move-result-object v32

    if-eqz v32, :cond_79

    invoke-interface/range {v32 .. v32}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_29
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v33

    if-eqz v33, :cond_76

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/content/pm/UserInfo;

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "u"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v31

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "="

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    move-object/from16 v34, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Lcom/android/server/content/SyncStorageEngine;->getMasterSyncAutomatically(I)Z

    move-result v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_29

    :cond_76
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    :cond_79
    const-string v33, "memory low: "

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/content/SyncManager;->mStorageIsLow:Z

    move/from16 v33, v0

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Z)V

    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->getSingleton()Lcom/android/server/accounts/AccountManagerService;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Lcom/android/server/accounts/AccountManagerService;->getAllAccounts()[Landroid/accounts/AccountAndUser;

    move-result-object v5

    const-string v33, "accounts: "

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-object v33, Lcom/android/server/content/SyncManager;->INITIAL_ACCOUNTS_ARRAY:[Landroid/accounts/AccountAndUser;

    move-object/from16 v0, v33

    if-eq v5, v0, :cond_29e

    array-length v0, v5

    move/from16 v33, v0

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(I)V

    :goto_b0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v17

    const-string v33, "now: "

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, " ("

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v34

    invoke-static/range {v34 .. v35}, Lcom/android/server/content/SyncManager;->formatTime(J)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, ")"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v33, "offset: "

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/content/SyncManager;->mSyncRandomOffsetMillis:I

    move/from16 v33, v0

    move/from16 v0, v33

    div-int/lit16 v0, v0, 0x3e8

    move/from16 v33, v0

    move/from16 v0, v33

    int-to-long v0, v0

    move-wide/from16 v33, v0

    invoke-static/range {v33 .. v34}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v33, " (HH:MM:SS)"

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v33, "uptime: "

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-wide/16 v33, 0x3e8

    div-long v33, v17, v33

    invoke-static/range {v33 .. v34}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v33, " (HH:MM:SS)"

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v33, "time spent syncing: "

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->mSyncTimeTracker:Lcom/android/server/content/SyncManager$SyncTimeTracker;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/android/server/content/SyncManager$SyncTimeTracker;->timeSpentSyncing()J

    move-result-wide v33

    const-wide/16 v35, 0x3e8

    div-long v33, v33, v35

    invoke-static/range {v33 .. v34}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v33, " (HH:MM:SS), sync "

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->mSyncTimeTracker:Lcom/android/server/content/SyncManager$SyncTimeTracker;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-boolean v0, v0, Lcom/android/server/content/SyncManager$SyncTimeTracker;->mLastWasSyncing:Z

    move/from16 v33, v0

    if-eqz v33, :cond_2a9

    const-string v33, ""

    :goto_182
    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v33, "in progress"

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    move-object/from16 v33, v0

    #getter for: Lcom/android/server/content/SyncManager$SyncHandler;->mAlarmScheduleTime:Ljava/lang/Long;
    invoke-static/range {v33 .. v33}, Lcom/android/server/content/SyncManager$SyncHandler;->access$1600(Lcom/android/server/content/SyncManager$SyncHandler;)Ljava/lang/Long;

    move-result-object v33

    if-eqz v33, :cond_2ad

    const-string v33, "next alarm time: "

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    move-object/from16 v33, v0

    #getter for: Lcom/android/server/content/SyncManager$SyncHandler;->mAlarmScheduleTime:Ljava/lang/Long;
    invoke-static/range {v33 .. v33}, Lcom/android/server/content/SyncManager$SyncHandler;->access$1600(Lcom/android/server/content/SyncManager$SyncHandler;)Ljava/lang/Long;

    move-result-object v33

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v33, " ("

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    move-object/from16 v33, v0

    #getter for: Lcom/android/server/content/SyncManager$SyncHandler;->mAlarmScheduleTime:Ljava/lang/Long;
    invoke-static/range {v33 .. v33}, Lcom/android/server/content/SyncManager$SyncHandler;->access$1600(Lcom/android/server/content/SyncManager$SyncHandler;)Ljava/lang/Long;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Long;->longValue()J

    move-result-wide v33

    sub-long v33, v33, v17

    const-wide/16 v35, 0x3e8

    div-long v33, v33, v35

    invoke-static/range {v33 .. v34}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v33, " (HH:MM:SS) from now)"

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_1e9
    const-string v33, "notification info: "

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/server/content/SyncManager$SyncHandler;->mSyncNotificationInfo:Lcom/android/server/content/SyncManager$SyncHandler$SyncNotificationInfo;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncManager$SyncHandler$SyncNotificationInfo;->toString(Ljava/lang/StringBuilder;)V

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "Active Syncs: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->size()I

    move-result v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_250
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v33

    if-eqz v33, :cond_2b8

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/content/SyncManager$ActiveSyncContext;

    iget-wide v0, v6, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mStartTime:J

    move-wide/from16 v33, v0

    sub-long v33, v17, v33

    const-wide/16 v35, 0x3e8

    div-long v9, v33, v35

    const-string v33, "  "

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v9, v10}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v33, " - "

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v6, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, v21

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/android/server/content/SyncOperation;->dump(Landroid/content/pm/PackageManager;Z)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_250

    :cond_29e
    const-string v33, "not known yet"

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_b0

    :cond_2a9
    const-string v33, "not "

    goto/16 :goto_182

    :cond_2ad
    const-string v33, "no alarm is scheduled (there had better not be any pending syncs)"

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_1e9

    :cond_2b8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mSyncQueue:Lcom/android/server/content/SyncQueue;

    move-object/from16 v34, v0

    monitor-enter v34

    const/16 v33, 0x0

    :try_start_2c1
    move-object/from16 v0, v25

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mSyncQueue:Lcom/android/server/content/SyncQueue;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncQueue;->dump(Ljava/lang/StringBuilder;)V

    monitor-exit v34
    :try_end_2d6
    .catchall {:try_start_2c1 .. :try_end_2d6} :catchall_5c1

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    const-string v33, "Sync Status"

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object v7, v5

    array-length v15, v7

    const/4 v13, 0x0

    move v14, v13

    :goto_2f4
    if-ge v14, v15, :cond_78b

    aget-object v4, v7, v14

    const-string v33, "Account %s u%d %s\n"

    const/16 v34, 0x3

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    iget-object v0, v4, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v36, v0

    aput-object v36, v34, v35

    const/16 v35, 0x1

    iget v0, v4, Landroid/accounts/AccountAndUser;->userId:I

    move/from16 v36, v0

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    aput-object v36, v34, v35

    const/16 v35, 0x2

    iget-object v0, v4, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v36, v0

    aput-object v36, v34, v35

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const-string v33, "======================================================================="

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v30, Lcom/android/server/content/SyncManager$PrintTable;

    const/16 v33, 0xd

    move-object/from16 v0, v30

    move/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/android/server/content/SyncManager$PrintTable;-><init>(I)V

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0xd

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    const-string v37, "Authority"

    aput-object v37, v35, v36

    const/16 v36, 0x1

    const-string v37, "Syncable"

    aput-object v37, v35, v36

    const/16 v36, 0x2

    const-string v37, "Enabled"

    aput-object v37, v35, v36

    const/16 v36, 0x3

    const-string v37, "Delay"

    aput-object v37, v35, v36

    const/16 v36, 0x4

    const-string v37, "Loc"

    aput-object v37, v35, v36

    const/16 v36, 0x5

    const-string v37, "Poll"

    aput-object v37, v35, v36

    const/16 v36, 0x6

    const-string v37, "Per"

    aput-object v37, v35, v36

    const/16 v36, 0x7

    const-string v37, "Serv"

    aput-object v37, v35, v36

    const/16 v36, 0x8

    const-string v37, "User"

    aput-object v37, v35, v36

    const/16 v36, 0x9

    const-string v37, "Tot"

    aput-object v37, v35, v36

    const/16 v36, 0xa

    const-string v37, "Time"

    aput-object v37, v35, v36

    const/16 v36, 0xb

    const-string v37, "Last Sync"

    aput-object v37, v35, v36

    const/16 v36, 0xc

    const-string v37, "Periodic"

    aput-object v37, v35, v36

    move-object/from16 v0, v30

    move/from16 v1, v33

    move/from16 v2, v34

    move-object/from16 v3, v35

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    move-object/from16 v33, v0

    iget v0, v4, Landroid/accounts/AccountAndUser;->userId:I

    move/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Landroid/content/SyncAdaptersCache;->getAllServices(I)Ljava/util/Collection;

    move-result-object v33

    move-object/from16 v0, v27

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance v33, Lcom/android/server/content/SyncManager$11;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/content/SyncManager$11;-><init>(Lcom/android/server/content/SyncManager;)V

    move-object/from16 v0, v27

    move-object/from16 v1, v33

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface/range {v27 .. v27}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_3d9
    :goto_3d9
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v33

    if-eqz v33, :cond_77f

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    move-object/from16 v33, v0

    check-cast v33, Landroid/content/SyncAdapterType;

    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    move-object/from16 v33, v0

    iget-object v0, v4, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_3d9

    invoke-virtual/range {v30 .. v30}, Lcom/android/server/content/SyncManager$PrintTable;->getNumRows()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    move-object/from16 v34, v0

    iget-object v0, v4, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    move-object/from16 v35, v0

    iget v0, v4, Landroid/accounts/AccountAndUser;->userId:I

    move/from16 v36, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    move-object/from16 v33, v0

    check-cast v33, Landroid/content/SyncAdapterType;

    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    move/from16 v2, v36

    move-object/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateAuthority(Landroid/accounts/Account;ILjava/lang/String;)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateSyncStatus(Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;)Landroid/content/SyncStatusInfo;

    move-result-object v28

    move-object/from16 v0, v26

    iget-object v8, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->authority:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v33

    const/16 v34, 0x32

    move/from16 v0, v33

    move/from16 v1, v34

    if-le v0, v1, :cond_459

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v33

    add-int/lit8 v33, v33, -0x32

    move/from16 v0, v33

    invoke-virtual {v8, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    :cond_459
    const/16 v33, 0x0

    const/16 v34, 0x3

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    aput-object v8, v34, v35

    const/16 v35, 0x1

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    move/from16 v36, v0

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    aput-object v36, v34, v35

    const/16 v35, 0x2

    move-object/from16 v0, v26

    iget-boolean v0, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    move/from16 v36, v0

    invoke-static/range {v36 .. v36}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v36

    aput-object v36, v34, v35

    move-object/from16 v0, v30

    move/from16 v1, v22

    move/from16 v2, v33

    move-object/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    const/16 v33, 0x4

    const/16 v34, 0x7

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/content/SyncStatusInfo;->numSourceLocal:I

    move/from16 v36, v0

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    aput-object v36, v34, v35

    const/16 v35, 0x1

    move-object/from16 v0, v28

    iget v0, v0, Landroid/content/SyncStatusInfo;->numSourcePoll:I

    move/from16 v36, v0

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    aput-object v36, v34, v35

    const/16 v35, 0x2

    move-object/from16 v0, v28

    iget v0, v0, Landroid/content/SyncStatusInfo;->numSourcePeriodic:I

    move/from16 v36, v0

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    aput-object v36, v34, v35

    const/16 v35, 0x3

    move-object/from16 v0, v28

    iget v0, v0, Landroid/content/SyncStatusInfo;->numSourceServer:I

    move/from16 v36, v0

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    aput-object v36, v34, v35

    const/16 v35, 0x4

    move-object/from16 v0, v28

    iget v0, v0, Landroid/content/SyncStatusInfo;->numSourceUser:I

    move/from16 v36, v0

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    aput-object v36, v34, v35

    const/16 v35, 0x5

    move-object/from16 v0, v28

    iget v0, v0, Landroid/content/SyncStatusInfo;->numSyncs:I

    move/from16 v36, v0

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    aput-object v36, v34, v35

    const/16 v35, 0x6

    move-object/from16 v0, v28

    iget-wide v0, v0, Landroid/content/SyncStatusInfo;->totalElapsedTime:J

    move-wide/from16 v36, v0

    const-wide/16 v38, 0x3e8

    div-long v36, v36, v38

    invoke-static/range {v36 .. v37}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v36

    aput-object v36, v34, v35

    move-object/from16 v0, v30

    move/from16 v1, v22

    move/from16 v2, v33

    move-object/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    const/4 v12, 0x0

    :goto_50a
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->size()I

    move-result v33

    move/from16 v0, v33

    if-ge v12, v0, :cond_5c7

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    invoke-virtual/range {v33 .. v34}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/util/Pair;

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v33, v0

    check-cast v33, Landroid/os/Bundle;

    invoke-virtual/range {v33 .. v33}, Landroid/os/Bundle;->size()I

    move-result v33

    if-lez v33, :cond_5c4

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v33, v0

    check-cast v33, Landroid/os/Bundle;

    invoke-virtual/range {v33 .. v33}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v11

    :goto_54a
    const/16 v33, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/SyncStatusInfo;->getPeriodicSyncTime(I)J

    move-result-wide v34

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v33, v0

    check-cast v33, Ljava/lang/Long;

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Long;->longValue()J

    move-result-wide v36

    const-wide/16 v38, 0x3e8

    mul-long v36, v36, v38

    add-long v33, v34, v36

    invoke-static/range {v33 .. v34}, Lcom/android/server/content/SyncManager;->formatTime(J)Ljava/lang/String;

    move-result-object v16

    mul-int/lit8 v33, v12, 0x2

    add-int v33, v33, v22

    const/16 v34, 0xc

    const/16 v35, 0x1

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v37

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    aput-object v37, v35, v36

    move-object/from16 v0, v30

    move/from16 v1, v33

    move/from16 v2, v34

    move-object/from16 v3, v35

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    mul-int/lit8 v33, v12, 0x2

    add-int v33, v33, v22

    add-int/lit8 v33, v33, 0x1

    const/16 v34, 0xc

    const/16 v35, 0x1

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    aput-object v16, v35, v36

    move-object/from16 v0, v30

    move/from16 v1, v33

    move/from16 v2, v34

    move-object/from16 v3, v35

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_50a

    :catchall_5c1
    move-exception v33

    :try_start_5c2
    monitor-exit v34
    :try_end_5c3
    .catchall {:try_start_5c2 .. :try_end_5c3} :catchall_5c1

    throw v33

    :cond_5c4
    const-string v11, ""

    goto :goto_54a

    :cond_5c7
    move/from16 v23, v22

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->delayUntil:J

    move-wide/from16 v33, v0

    cmp-long v33, v33, v17

    if-lez v33, :cond_67c

    add-int/lit8 v24, v23, 0x1

    const/16 v33, 0xc

    const/16 v34, 0x1

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "D: "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->delayUntil:J

    move-wide/from16 v37, v0

    sub-long v37, v37, v17

    const-wide/16 v39, 0x3e8

    div-long v37, v37, v39

    invoke-virtual/range {v36 .. v38}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    aput-object v36, v34, v35

    move-object/from16 v0, v30

    move/from16 v1, v23

    move/from16 v2, v33

    move-object/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    move-wide/from16 v33, v0

    cmp-long v33, v33, v17

    if-lez v33, :cond_67a

    add-int/lit8 v23, v24, 0x1

    const/16 v33, 0xc

    const/16 v34, 0x1

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "B: "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    move-wide/from16 v37, v0

    sub-long v37, v37, v17

    const-wide/16 v39, 0x3e8

    div-long v37, v37, v39

    invoke-virtual/range {v36 .. v38}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    aput-object v36, v34, v35

    move-object/from16 v0, v30

    move/from16 v1, v24

    move/from16 v2, v33

    move-object/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    add-int/lit8 v24, v23, 0x1

    const/16 v33, 0xc

    const/16 v34, 0x1

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    move-wide/from16 v36, v0

    const-wide/16 v38, 0x3e8

    div-long v36, v36, v38

    invoke-static/range {v36 .. v37}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v36

    aput-object v36, v34, v35

    move-object/from16 v0, v30

    move/from16 v1, v23

    move/from16 v2, v33

    move-object/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    :cond_67a
    move/from16 v23, v24

    :cond_67c
    move-object/from16 v0, v28

    iget-wide v0, v0, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    move-wide/from16 v33, v0

    const-wide/16 v35, 0x0

    cmp-long v33, v33, v35

    if-eqz v33, :cond_6eb

    add-int/lit8 v24, v23, 0x1

    const/16 v33, 0xb

    const/16 v34, 0x1

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v37, Lcom/android/server/content/SyncStorageEngine;->SOURCES:[Ljava/lang/String;

    move-object/from16 v0, v28

    iget v0, v0, Landroid/content/SyncStatusInfo;->lastSuccessSource:I

    move/from16 v38, v0

    aget-object v37, v37, v38

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, " "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "SUCCESS"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    aput-object v36, v34, v35

    move-object/from16 v0, v30

    move/from16 v1, v23

    move/from16 v2, v33

    move-object/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    add-int/lit8 v23, v24, 0x1

    const/16 v33, 0xb

    const/16 v34, 0x1

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    move-object/from16 v0, v28

    iget-wide v0, v0, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    move-wide/from16 v36, v0

    invoke-static/range {v36 .. v37}, Lcom/android/server/content/SyncManager;->formatTime(J)Ljava/lang/String;

    move-result-object v36

    aput-object v36, v34, v35

    move-object/from16 v0, v30

    move/from16 v1, v24

    move/from16 v2, v33

    move-object/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    :cond_6eb
    move-object/from16 v0, v28

    iget-wide v0, v0, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    move-wide/from16 v33, v0

    const-wide/16 v35, 0x0

    cmp-long v33, v33, v35

    if-eqz v33, :cond_3d9

    add-int/lit8 v24, v23, 0x1

    const/16 v33, 0xb

    const/16 v34, 0x1

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v37, Lcom/android/server/content/SyncStorageEngine;->SOURCES:[Ljava/lang/String;

    move-object/from16 v0, v28

    iget v0, v0, Landroid/content/SyncStatusInfo;->lastFailureSource:I

    move/from16 v38, v0

    aget-object v37, v37, v38

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, " "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "FAILURE"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    aput-object v36, v34, v35

    move-object/from16 v0, v30

    move/from16 v1, v23

    move/from16 v2, v33

    move-object/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    add-int/lit8 v23, v24, 0x1

    const/16 v33, 0xb

    const/16 v34, 0x1

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    move-object/from16 v0, v28

    iget-wide v0, v0, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    move-wide/from16 v36, v0

    invoke-static/range {v36 .. v37}, Lcom/android/server/content/SyncManager;->formatTime(J)Ljava/lang/String;

    move-result-object v36

    aput-object v36, v34, v35

    move-object/from16 v0, v30

    move/from16 v1, v24

    move/from16 v2, v33

    move-object/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    add-int/lit8 v24, v23, 0x1

    const/16 v33, 0xb

    const/16 v34, 0x1

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/content/SyncStatusInfo;->lastFailureMesg:Ljava/lang/String;

    move-object/from16 v36, v0

    aput-object v36, v34, v35

    move-object/from16 v0, v30

    move/from16 v1, v23

    move/from16 v2, v33

    move-object/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/content/SyncManager$PrintTable;->set(II[Ljava/lang/Object;)V

    move/from16 v23, v24

    goto/16 :goto_3d9

    :cond_77f
    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncManager$PrintTable;->writeTo(Ljava/io/PrintWriter;)V

    add-int/lit8 v13, v14, 0x1

    move v14, v13

    goto/16 :goto_2f4

    :cond_78b
    return-void
.end method

.method public getIsSyncable(Landroid/accounts/Account;ILjava/lang/String;)I
    .registers 14

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    invoke-virtual {v7, p1, p2, p3}, Lcom/android/server/content/SyncStorageEngine;->getIsSyncable(Landroid/accounts/Account;ILjava/lang/String;)I

    move-result v1

    iget-object v7, p0, Lcom/android/server/content/SyncManager;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v7

    invoke-virtual {v7, p2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v5

    if-eqz p3, :cond_3f

    const-string v7, "sec_container_"

    invoke-virtual {p3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3f

    :try_start_1b
    invoke-virtual {p0}, Lcom/android/server/content/SyncManager;->checkKNOXSystemStatus()Z

    move-result v7

    if-nez v7, :cond_3f

    const-string v7, "SyncManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "KNOX system is not ready, blocked : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_39} :catch_3b

    move v1, v6

    :cond_3a
    :goto_3a
    return v1

    :catch_3b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3f
    if-eqz v5, :cond_3a

    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v7

    if-eqz v7, :cond_3a

    iget-object v7, p0, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    iget-object v8, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-static {p3, v8}, Landroid/content/SyncAdapterType;->newKey(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SyncAdapterType;

    move-result-object v8

    invoke-virtual {v7, v8, p2}, Landroid/content/SyncAdaptersCache;->getServiceInfo(Ljava/lang/Object;I)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    move-result-object v4

    if-eqz v4, :cond_3a

    const/4 v2, 0x0

    :try_start_56
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v7

    iget-object v8, v4, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9, p2}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_64
    .catch Landroid/os/RemoteException; {:try_start_56 .. :try_end_64} :catch_77

    move-result-object v2

    if-eqz v2, :cond_3a

    iget-object v7, v2, Landroid/content/pm/PackageInfo;->restrictedAccountType:Ljava/lang/String;

    if-eqz v7, :cond_75

    iget-object v7, v2, Landroid/content/pm/PackageInfo;->restrictedAccountType:Ljava/lang/String;

    iget-object v8, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3a

    :cond_75
    move v1, v6

    goto :goto_3a

    :catch_77
    move-exception v3

    goto :goto_3a
.end method

.method public getSyncAdapterTypes(I)[Landroid/content/SyncAdapterType;
    .registers 8

    iget-object v5, p0, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    invoke-virtual {v5, p1}, Landroid/content/SyncAdaptersCache;->getAllServices(I)Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v5

    new-array v4, v5, [Landroid/content/SyncAdapterType;

    const/4 v0, 0x0

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    iget-object v5, v2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v5, Landroid/content/SyncAdapterType;

    aput-object v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_26
    return-object v4
.end method

.method public getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;
    .registers 2

    iget-object v0, p0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    return-object v0
.end method

.method maybeRescheduleSync(Landroid/content/SyncResult;Lcom/android/server/content/SyncOperation;)V
    .registers 21

    const-string v2, "SyncManager"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v16

    if-eqz v16, :cond_2f

    const-string v2, "SyncManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "encountered error(s) during the sync: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2f
    new-instance v17, Lcom/android/server/content/SyncOperation;

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/content/SyncOperation;-><init>(Lcom/android/server/content/SyncOperation;)V

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    const-string v3, "ignore_backoff"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_4e

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    const-string v3, "ignore_backoff"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_4e
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    const-string v3, "do_not_retry"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_76

    const-string v2, "SyncManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "not retrying sync operation because SYNC_EXTRAS_DO_NOT_RETRY was specified "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_75
    return-void

    :cond_76
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    const-string v3, "upload"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_b4

    move-object/from16 v0, p1

    iget-boolean v2, v0, Landroid/content/SyncResult;->syncAlreadyInProgress:Z

    if-nez v2, :cond_b4

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    const-string v3, "upload"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v2, "SyncManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "retrying sync operation as a two-way sync because an upload-only sync encountered an error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncManager;->scheduleSyncOperation(Lcom/android/server/content/SyncOperation;)V

    goto :goto_75

    :cond_b4
    move-object/from16 v0, p1

    iget-boolean v2, v0, Landroid/content/SyncResult;->tooManyRetries:Z

    if-eqz v2, :cond_d5

    const-string v2, "SyncManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "not retrying sync operation because it retried too many times: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_75

    :cond_d5
    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncResult;->madeSomeProgress()Z

    move-result v2

    if-eqz v2, :cond_ec

    if-eqz v16, :cond_e4

    const-string v2, "SyncManager"

    const-string v3, "retrying sync operation because even though it had an error it achieved some success"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e4
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncManager;->scheduleSyncOperation(Lcom/android/server/content/SyncOperation;)V

    goto :goto_75

    :cond_ec
    move-object/from16 v0, p1

    iget-boolean v2, v0, Landroid/content/SyncResult;->syncAlreadyInProgress:Z

    if-eqz v2, :cond_144

    if-eqz v16, :cond_10e

    const-string v2, "SyncManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "retrying sync operation that failed because there was already a sync in progress: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10e
    new-instance v2, Lcom/android/server/content/SyncOperation;

    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/server/content/SyncOperation;->account:Landroid/accounts/Account;

    move-object/from16 v0, v17

    iget v4, v0, Lcom/android/server/content/SyncOperation;->userId:I

    move-object/from16 v0, v17

    iget v5, v0, Lcom/android/server/content/SyncOperation;->reason:I

    move-object/from16 v0, v17

    iget v6, v0, Lcom/android/server/content/SyncOperation;->syncSource:I

    move-object/from16 v0, v17

    iget-object v7, v0, Lcom/android/server/content/SyncOperation;->authority:Ljava/lang/String;

    move-object/from16 v0, v17

    iget-object v8, v0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    const-wide/16 v9, 0x2710

    move-object/from16 v0, v17

    iget-object v11, v0, Lcom/android/server/content/SyncOperation;->backoff:Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    move-object/from16 v0, v17

    iget-wide v13, v0, Lcom/android/server/content/SyncOperation;->delayUntil:J

    move-object/from16 v0, v17

    iget-boolean v15, v0, Lcom/android/server/content/SyncOperation;->allowParallelSyncs:Z

    invoke-direct/range {v2 .. v15}, Lcom/android/server/content/SyncOperation;-><init>(Landroid/accounts/Account;IIILjava/lang/String;Landroid/os/Bundle;JJJZ)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/content/SyncManager;->scheduleSyncOperation(Lcom/android/server/content/SyncOperation;)V

    goto/16 :goto_75

    :cond_144
    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncResult;->hasSoftError()Z

    move-result v2

    if-eqz v2, :cond_16f

    if-eqz v16, :cond_166

    const-string v2, "SyncManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "retrying sync operation because it encountered a soft error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_166
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncManager;->scheduleSyncOperation(Lcom/android/server/content/SyncOperation;)V

    goto/16 :goto_75

    :cond_16f
    const-string v2, "SyncManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "not retrying sync operation because the error is a hard error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_75
.end method

.method public scheduleLocalSync(Landroid/accounts/Account;IILjava/lang/String;)V
    .registers 14

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v0, "upload"

    const/4 v1, 0x1

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    sget-wide v6, Lcom/android/server/content/SyncManager;->LOCAL_SYNC_DELAY:J

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/content/SyncManager;->scheduleSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;JZ)V

    return-void
.end method

.method public scheduleSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;JZ)V
    .registers 59

    const-string v2, "SyncManager"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v41

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/content/SyncManager;->mBootCompleted:Z

    if-eqz v2, :cond_17

    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/SyncManager;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v2

    if-eqz v2, :cond_bf

    :cond_17
    const/16 v33, 0x1

    :goto_19
    if-nez p5, :cond_20

    new-instance p5, Landroid/os/Bundle;

    invoke-direct/range {p5 .. p5}, Landroid/os/Bundle;-><init>()V

    :cond_20
    const-string v2, "expedited"

    const/4 v3, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_35

    const-wide/16 p6, -0x1

    :cond_35
    if-eqz p1, :cond_c3

    const/4 v2, -0x1

    move/from16 v0, p2

    if-eq v0, v2, :cond_c3

    const/4 v2, 0x1

    new-array v0, v2, [Landroid/accounts/AccountAndUser;

    move-object/from16 v31, v0

    const/4 v2, 0x0

    new-instance v3, Landroid/accounts/AccountAndUser;

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-direct {v3, v0, v1}, Landroid/accounts/AccountAndUser;-><init>(Landroid/accounts/Account;I)V

    aput-object v3, v31, v2

    :cond_4d
    const-string v2, "upload"

    const/4 v3, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v49

    const-string v2, "force"

    const/4 v3, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v44

    if-eqz v44, :cond_71

    const-string v2, "ignore_backoff"

    const/4 v3, 0x1

    move-object/from16 v0, p5

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "ignore_settings"

    const/4 v3, 0x1

    move-object/from16 v0, p5

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_71
    const-string v2, "ignore_settings"

    const/4 v3, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v39

    if-eqz v49, :cond_d8

    const/4 v6, 0x1

    :goto_7d
    move-object/from16 v32, v31

    move-object/from16 v0, v32

    array-length v0, v0

    move/from16 v43, v0

    const/16 v37, 0x0

    move/from16 v38, v37

    :goto_88
    move/from16 v0, v38

    move/from16 v1, v43

    if-ge v0, v1, :cond_d7

    aget-object v30, v32, v38

    new-instance v48, Ljava/util/HashSet;

    invoke-direct/range {v48 .. v48}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    move-object/from16 v0, v30

    iget v3, v0, Landroid/accounts/AccountAndUser;->userId:I

    invoke-virtual {v2, v3}, Landroid/content/SyncAdaptersCache;->getAllServices(I)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v37

    :goto_a5
    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e2

    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    move-object/from16 v0, v45

    iget-object v2, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v2, Landroid/content/SyncAdapterType;

    iget-object v2, v2, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    move-object/from16 v0, v48

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_a5

    :cond_bf
    const/16 v33, 0x0

    goto/16 :goto_19

    :cond_c3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mRunningAccounts:[Landroid/accounts/AccountAndUser;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    array-length v2, v0

    if-nez v2, :cond_4d

    if-eqz v41, :cond_d7

    const-string v2, "SyncManager"

    const-string v3, "scheduleSync: no accounts configured, dropping"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d7
    return-void

    :cond_d8
    if-eqz v44, :cond_dc

    const/4 v6, 0x3

    goto :goto_7d

    :cond_dc
    if-nez p4, :cond_e0

    const/4 v6, 0x2

    goto :goto_7d

    :cond_e0
    const/4 v6, 0x0

    goto :goto_7d

    :cond_e2
    if-eqz p4, :cond_f8

    move-object/from16 v0, v48

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v36

    invoke-virtual/range {v48 .. v48}, Ljava/util/HashSet;->clear()V

    if-eqz v36, :cond_f8

    move-object/from16 v0, v48

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_f8
    invoke-virtual/range {v48 .. v48}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v37

    :cond_fc
    :goto_fc
    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d4

    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    move-object/from16 v0, v30

    iget-object v2, v0, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    move-object/from16 v0, v30

    iget v3, v0, Landroid/accounts/AccountAndUser;->userId:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v7}, Lcom/android/server/content/SyncManager;->getIsSyncable(Landroid/accounts/Account;ILjava/lang/String;)I

    move-result v42

    if-eqz v42, :cond_fc

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    move-object/from16 v0, v30

    iget-object v3, v0, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-static {v7, v3}, Landroid/content/SyncAdapterType;->newKey(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SyncAdapterType;

    move-result-object v3

    move-object/from16 v0, v30

    iget v4, v0, Landroid/accounts/AccountAndUser;->userId:I

    invoke-virtual {v2, v3, v4}, Landroid/content/SyncAdaptersCache;->getServiceInfo(Ljava/lang/Object;I)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    move-result-object v46

    if-eqz v46, :cond_fc

    move-object/from16 v0, v46

    iget-object v2, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v2, Landroid/content/SyncAdapterType;

    invoke-virtual {v2}, Landroid/content/SyncAdapterType;->allowParallelSyncs()Z

    move-result v15

    move-object/from16 v0, v46

    iget-object v2, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v2, Landroid/content/SyncAdapterType;

    invoke-virtual {v2}, Landroid/content/SyncAdapterType;->isAlwaysSyncable()Z

    move-result v40

    if-gez v42, :cond_15a

    if-eqz v40, :cond_15a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    move-object/from16 v0, v30

    iget-object v3, v0, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    move-object/from16 v0, v30

    iget v4, v0, Landroid/accounts/AccountAndUser;->userId:I

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v7, v5}, Lcom/android/server/content/SyncStorageEngine;->setIsSyncable(Landroid/accounts/Account;ILjava/lang/String;I)V

    const/16 v42, 0x1

    :cond_15a
    if-eqz p8, :cond_15e

    if-gez v42, :cond_fc

    :cond_15e
    move-object/from16 v0, v46

    iget-object v2, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v2, Landroid/content/SyncAdapterType;

    invoke-virtual {v2}, Landroid/content/SyncAdapterType;->supportsUploading()Z

    move-result v2

    if-nez v2, :cond_16c

    if-nez v49, :cond_fc

    :cond_16c
    if-ltz v42, :cond_192

    if-nez v39, :cond_192

    if-eqz v33, :cond_1c4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    move-object/from16 v0, v30

    iget v3, v0, Landroid/accounts/AccountAndUser;->userId:I

    invoke-virtual {v2, v3}, Lcom/android/server/content/SyncStorageEngine;->getMasterSyncAutomatically(I)Z

    move-result v2

    if-eqz v2, :cond_1c4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    move-object/from16 v0, v30

    iget-object v3, v0, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    move-object/from16 v0, v30

    iget v4, v0, Landroid/accounts/AccountAndUser;->userId:I

    invoke-virtual {v2, v3, v4, v7}, Lcom/android/server/content/SyncStorageEngine;->getSyncAutomatically(Landroid/accounts/Account;ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c4

    :cond_192
    const/16 v47, 0x1

    :goto_194
    if-nez v47, :cond_1c7

    if-eqz v41, :cond_fc

    const-string v2, "SyncManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "scheduleSync: sync of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v30

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not allowed, dropping request"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_fc

    :cond_1c4
    const/16 v47, 0x0

    goto :goto_194

    :cond_1c7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    move-object/from16 v0, v30

    iget-object v3, v0, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    move-object/from16 v0, v30

    iget v4, v0, Landroid/accounts/AccountAndUser;->userId:I

    invoke-virtual {v2, v3, v4, v7}, Lcom/android/server/content/SyncStorageEngine;->getBackoff(Landroid/accounts/Account;ILjava/lang/String;)Landroid/util/Pair;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/content/SyncManager;->mSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    move-object/from16 v0, v30

    iget-object v3, v0, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    move-object/from16 v0, v30

    iget v4, v0, Landroid/accounts/AccountAndUser;->userId:I

    invoke-virtual {v2, v3, v4, v7}, Lcom/android/server/content/SyncStorageEngine;->getDelayUntilTime(Landroid/accounts/Account;ILjava/lang/String;)J

    move-result-wide v13

    if-eqz v34, :cond_2d0

    move-object/from16 v0, v34

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    :goto_1f3
    if-gez v42, :cond_25c

    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    const-string v2, "initialize"

    const/4 v3, 0x1

    invoke-virtual {v8, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    if-eqz v41, :cond_246

    const-string v2, "SyncManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "scheduleSync: delay "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p6

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", source "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", account "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v30

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", authority "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", extras "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_246
    new-instance v2, Lcom/android/server/content/SyncOperation;

    move-object/from16 v0, v30

    iget-object v3, v0, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    move-object/from16 v0, v30

    iget v4, v0, Landroid/accounts/AccountAndUser;->userId:I

    const-wide/16 v9, 0x0

    move/from16 v5, p3

    invoke-direct/range {v2 .. v15}, Lcom/android/server/content/SyncOperation;-><init>(Landroid/accounts/Account;IIILjava/lang/String;Landroid/os/Bundle;JJJZ)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/content/SyncManager;->scheduleSyncOperation(Lcom/android/server/content/SyncOperation;)V

    :cond_25c
    if-nez p8, :cond_fc

    if-eqz v41, :cond_2a6

    const-string v2, "SyncManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "scheduleSync: delay "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p6

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", source "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", account "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v30

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", authority "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", extras "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a6
    new-instance v16, Lcom/android/server/content/SyncOperation;

    move-object/from16 v0, v30

    iget-object v0, v0, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    move-object/from16 v17, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/accounts/AccountAndUser;->userId:I

    move/from16 v18, v0

    move/from16 v19, p3

    move/from16 v20, v6

    move-object/from16 v21, v7

    move-object/from16 v22, p5

    move-wide/from16 v23, p6

    move-wide/from16 v25, v11

    move-wide/from16 v27, v13

    move/from16 v29, v15

    invoke-direct/range {v16 .. v29}, Lcom/android/server/content/SyncOperation;-><init>(Landroid/accounts/Account;IIILjava/lang/String;Landroid/os/Bundle;JJJZ)V

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncManager;->scheduleSyncOperation(Lcom/android/server/content/SyncOperation;)V

    goto/16 :goto_fc

    :cond_2d0
    const-wide/16 v11, 0x0

    goto/16 :goto_1f3

    :cond_2d4
    add-int/lit8 v37, v38, 0x1

    move/from16 v38, v37

    goto/16 :goto_88
.end method

.method public scheduleSyncOperation(Lcom/android/server/content/SyncOperation;)V
    .registers 6

    const/4 v3, 0x2

    iget-object v2, p0, Lcom/android/server/content/SyncManager;->mSyncQueue:Lcom/android/server/content/SyncQueue;

    monitor-enter v2

    :try_start_4
    iget-object v1, p0, Lcom/android/server/content/SyncManager;->mSyncQueue:Lcom/android/server/content/SyncQueue;

    invoke-virtual {v1, p1}, Lcom/android/server/content/SyncQueue;->add(Lcom/android/server/content/SyncOperation;)Z

    move-result v0

    monitor-exit v2
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_31

    if-eqz v0, :cond_34

    const-string v1, "SyncManager"

    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2d

    const-string v1, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "scheduleSyncOperation: enqueued "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2d
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->sendCheckAlarmsMessage()V

    :cond_30
    :goto_30
    return-void

    :catchall_31
    move-exception v1

    :try_start_32
    monitor-exit v2
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw v1

    :cond_34
    const-string v1, "SyncManager"

    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_30

    const-string v1, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "scheduleSyncOperation: dropping duplicate sync operation "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30
.end method

.method public updateRunningAccounts()V
    .registers 6

    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->getSingleton()Lcom/android/server/accounts/AccountManagerService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/accounts/AccountManagerService;->getRunningAccounts()[Landroid/accounts/AccountAndUser;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/content/SyncManager;->mRunningAccounts:[Landroid/accounts/AccountAndUser;

    iget-boolean v2, p0, Lcom/android/server/content/SyncManager;->mBootCompleted:Z

    if-eqz v2, :cond_11

    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->doDatabaseCleanup()V

    :cond_11
    iget-object v2, p0, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_17
    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/content/SyncManager$ActiveSyncContext;

    iget-object v2, p0, Lcom/android/server/content/SyncManager;->mRunningAccounts:[Landroid/accounts/AccountAndUser;

    iget-object v3, v0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    iget-object v3, v3, Lcom/android/server/content/SyncOperation;->account:Landroid/accounts/Account;

    iget-object v4, v0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    iget v4, v4, Lcom/android/server/content/SyncOperation;->userId:I

    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/content/SyncManager;->containsAccountAndUser([Landroid/accounts/AccountAndUser;Landroid/accounts/Account;I)Z

    move-result v2

    if-nez v2, :cond_17

    const-string v2, "SyncManager"

    const-string v3, "canceling sync since the account is no longer running"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/android/server/content/SyncManager;->sendSyncFinishedOrCanceledMessage(Lcom/android/server/content/SyncManager$ActiveSyncContext;Landroid/content/SyncResult;)V

    goto :goto_17

    :cond_3f
    invoke-direct {p0}, Lcom/android/server/content/SyncManager;->sendCheckAlarmsMessage()V

    return-void
.end method
