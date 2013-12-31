.class public Lcom/android/server/NotificationManagerService;
.super Landroid/app/INotificationManager$Stub;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/NotificationManagerService$OverTurnPlayer;,
        Lcom/android/server/NotificationManagerService$PickupPlayer;,
        Lcom/android/server/NotificationManagerService$PickupSettingsObserver;,
        Lcom/android/server/NotificationManagerService$WorkerHandler;,
        Lcom/android/server/NotificationManagerService$SettingsObserver;,
        Lcom/android/server/NotificationManagerService$ToastRecord;,
        Lcom/android/server/NotificationManagerService$NotificationRecord;,
        Lcom/android/server/NotificationManagerService$Archive;,
        Lcom/android/server/NotificationManagerService$NotificationListenerInfo;
    }
.end annotation


# static fields
.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_VERSION:Ljava/lang/String; = "version"

.field private static final DBG:Z = false

.field private static final DB_VERSION:I = 0x1

.field private static final DEFAULT_STREAM_TYPE:I = 0x5

.field private static final DEFAULT_VIBRATE_PATTERN:[J = null

.field private static final DORMANT_MODE_OFF:Ljava/lang/String; = "android.intent.action.DORMANT_MODE_OFF"

.field private static final DORMANT_MODE_ON:Ljava/lang/String; = "android.intent.action.DORMANT_MODE_ON"

.field private static final ENABLED_NOTIFICATION_LISTENERS_SEPARATOR:Ljava/lang/String; = ":"

.field private static final ENABLE_BLOCKED_NOTIFICATIONS:Z = true

.field private static final ENABLE_BLOCKED_TOASTS:Z = true

.field private static final JUNK_SCORE:I = -0x3e8

.field private static final LONG_DELAY:I = 0xdac

.field private static final LONG_DOUBLE_DELAY:I = 0x1b58

.field private static final MAX_PACKAGE_NOTIFICATIONS:I = 0x32

.field private static final MESSAGE_TIMEOUT:I = 0x2

.field private static final NOTIFICATION_PRIORITY_MULTIPLIER:I = 0xa

.field private static final PICK_UP_MOTION:Ljava/lang/String; = "com.android.server.NotificationManagerService.PickupMotionArrived"

.field private static final SCORE_DISPLAY_THRESHOLD:I = -0x14

.field private static final SCORE_INTERRUPTION_THRESHOLD:I = -0xa

.field private static final SCORE_ONGOING_HIGHER:Z = false

.field private static final SHORT_DELAY:I = 0x7d0

.field private static final TAG:Ljava/lang/String; = "NotificationService"

.field private static final TAG_BLOCKED_PKGS:Ljava/lang/String; = "blocked-packages"

.field private static final TAG_BODY:Ljava/lang/String; = "notification-policy"

.field private static final TAG_PACKAGE:Ljava/lang/String; = "package"

.field private static final TW_TAG:Ljava/lang/String; = "STATUSBAR-NotificationService"

.field private static final VIBRATE_PATTERN_MAXLEN:I = 0x11

.field private static canListInterrupt:Z

.field private static time_key_value_in_db:I


# instance fields
.field private final MESG_ID:I

.field private count1:I

.field private isDormantModeLedDisabled:Z

.field private isDormantModeOn:Z

.field final mAm:Landroid/app/IActivityManager;

.field private final mAppOps:Landroid/app/AppOpsManager;

.field mArchive:Lcom/android/server/NotificationManagerService$Archive;

.field private mAttentionLight:Lcom/android/server/LightsService$Light;

.field private mAudioService:Landroid/media/IAudioService;

.field private mBlockedPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mContext:Landroid/content/Context;

.field private mDefaultNotificationColor:I

.field private mDefaultNotificationLedOff:I

.field private mDefaultNotificationLedOn:I

.field private mDefaultVibrationPattern:[J

.field private mDisabledNotifications:I

.field private mEnabledListenerPackageNames:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mEnabledListenersForCurrentUser:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private mFallbackVibrationPattern:[J

.field final mForegroundToken:Landroid/os/IBinder;

.field private mHandler:Lcom/android/server/NotificationManagerService$WorkerHandler;

.field private mInCall:Z

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsPlaying:Z

.field private mLedNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

.field private mLights:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/NotificationManagerService$NotificationRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/NotificationManagerService$NotificationListenerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mMethodRingtonePlayer:Ljava/lang/reflect/Method;

.field private mMissedNotificationLightEnabled:Z

.field private mMissedSoundEnabled:Z

.field private mNotificationCallbacks:Lcom/android/server/StatusBarManagerService$NotificationCallbacks;

.field private mNotificationLight:Lcom/android/server/LightsService$Light;

.field private final mNotificationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/NotificationManagerService$NotificationRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mNotificationPlayerBinder:Landroid/os/IBinder;

.field private mNotificationPulseEnabled:Z

.field private mNotificationSoundHandler:Landroid/os/Handler;

.field private mNotificationWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mOverTurnPlayer:Lcom/android/server/NotificationManagerService$OverTurnPlayer;

.field private mPM:Landroid/os/PowerManager;

.field mPickupPlayer:Lcom/android/server/NotificationManagerService$PickupPlayer;

.field private mPlckupIntent:Landroid/content/Intent;

.field private mPolicyFile:Landroid/util/AtomicFile;

.field private mScreenOn:Z

.field private mServicesBinding:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSettingsObserver:Lcom/android/server/NotificationManagerService$SettingsObserver;

.field private mSoundNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

.field private mStatusBar:Lcom/android/server/StatusBarManagerService;

.field private mSystemReady:Z

.field private mToastQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/NotificationManagerService$ToastRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mUserManager:Landroid/os/UserManager;

.field private mVibrateNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

.field private mVibrator:Landroid/os/SystemVibrator;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field mkgm:Landroid/app/KeyguardManager;

.field private settings_new_time:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x4

    new-array v0, v0, [J

    fill-array-data v0, :array_c

    sput-object v0, Lcom/android/server/NotificationManagerService;->DEFAULT_VIBRATE_PATTERN:[J

    const/4 v0, 0x0

    sput v0, Lcom/android/server/NotificationManagerService;->time_key_value_in_db:I

    return-void

    :array_c
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xfat 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xfat 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xfat 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LightsService;)V
    .registers 13

    const/16 v8, 0x11

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    invoke-direct {p0}, Landroid/app/INotificationManager$Stub;-><init>()V

    iput-object v5, p0, Lcom/android/server/NotificationManagerService;->mkgm:Landroid/app/KeyguardManager;

    new-instance v4, Landroid/os/Binder;

    invoke-direct {v4}, Landroid/os/Binder;-><init>()V

    iput-object v4, p0, Lcom/android/server/NotificationManagerService;->mForegroundToken:Landroid/os/IBinder;

    iput-boolean v7, p0, Lcom/android/server/NotificationManagerService;->mScreenOn:Z

    iput-boolean v6, p0, Lcom/android/server/NotificationManagerService;->mInCall:Z

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    const/16 v4, 0x65

    iput v4, p0, Lcom/android/server/NotificationManagerService;->MESG_ID:I

    iput v6, p0, Lcom/android/server/NotificationManagerService;->count1:I

    iput-object v5, p0, Lcom/android/server/NotificationManagerService;->mNotificationWakeLock:Landroid/os/PowerManager$WakeLock;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/NotificationManagerService;->mListeners:Ljava/util/ArrayList;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/NotificationManagerService;->mServicesBinding:Ljava/util/ArrayList;

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iput-object v4, p0, Lcom/android/server/NotificationManagerService;->mEnabledListenersForCurrentUser:Ljava/util/HashSet;

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iput-object v4, p0, Lcom/android/server/NotificationManagerService;->mEnabledListenerPackageNames:Ljava/util/HashSet;

    new-instance v4, Lcom/android/server/NotificationManagerService$PickupPlayer;

    invoke-direct {v4, p0, v5}, Lcom/android/server/NotificationManagerService$PickupPlayer;-><init>(Lcom/android/server/NotificationManagerService;Lcom/android/server/NotificationManagerService$1;)V

    iput-object v4, p0, Lcom/android/server/NotificationManagerService;->mPickupPlayer:Lcom/android/server/NotificationManagerService$PickupPlayer;

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iput-object v4, p0, Lcom/android/server/NotificationManagerService;->mBlockedPackages:Ljava/util/HashSet;

    iput-object v5, p0, Lcom/android/server/NotificationManagerService;->mNotificationSoundHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/NotificationManagerService$Archive;

    invoke-direct {v4}, Lcom/android/server/NotificationManagerService$Archive;-><init>()V

    iput-object v4, p0, Lcom/android/server/NotificationManagerService;->mArchive:Lcom/android/server/NotificationManagerService$Archive;

    new-instance v4, Lcom/android/server/NotificationManagerService$4;

    invoke-direct {v4, p0}, Lcom/android/server/NotificationManagerService$4;-><init>(Lcom/android/server/NotificationManagerService;)V

    iput-object v4, p0, Lcom/android/server/NotificationManagerService;->mNotificationCallbacks:Lcom/android/server/StatusBarManagerService$NotificationCallbacks;

    new-instance v4, Lcom/android/server/NotificationManagerService$5;

    invoke-direct {v4, p0}, Lcom/android/server/NotificationManagerService$5;-><init>(Lcom/android/server/NotificationManagerService;)V

    iput-object v4, p0, Lcom/android/server/NotificationManagerService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    const-string v4, "vibrator"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/SystemVibrator;

    iput-object v4, p0, Lcom/android/server/NotificationManagerService;->mVibrator:Landroid/os/SystemVibrator;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/NotificationManagerService;->mAm:Landroid/app/IActivityManager;

    const-string v4, "user"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    iput-object v4, p0, Lcom/android/server/NotificationManagerService;->mUserManager:Landroid/os/UserManager;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/server/NotificationManagerService$WorkerHandler;

    invoke-direct {v4, p0, v5}, Lcom/android/server/NotificationManagerService$WorkerHandler;-><init>(Lcom/android/server/NotificationManagerService;Lcom/android/server/NotificationManagerService$1;)V

    iput-object v4, p0, Lcom/android/server/NotificationManagerService;->mHandler:Lcom/android/server/NotificationManagerService$WorkerHandler;

    const-string v4, "appops"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AppOpsManager;

    iput-object v4, p0, Lcom/android/server/NotificationManagerService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-direct {p0}, Lcom/android/server/NotificationManagerService;->importOldBlockDb()V

    const-string v4, "power"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    iput-object v4, p0, Lcom/android/server/NotificationManagerService;->mPM:Landroid/os/PowerManager;

    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mPM:Landroid/os/PowerManager;

    const-string v5, "pickup"

    invoke-virtual {v4, v7, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/NotificationManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mPM:Landroid/os/PowerManager;

    const-string v5, "notification"

    invoke-virtual {v4, v7, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/NotificationManagerService;->mNotificationWakeLock:Landroid/os/PowerManager$WakeLock;

    iput-object p2, p0, Lcom/android/server/NotificationManagerService;->mStatusBar:Lcom/android/server/StatusBarManagerService;

    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mNotificationCallbacks:Lcom/android/server/StatusBarManagerService$NotificationCallbacks;

    invoke-virtual {p2, v4}, Lcom/android/server/StatusBarManagerService;->setNotificationCallbacks(Lcom/android/server/StatusBarManagerService$NotificationCallbacks;)V

    const/4 v4, 0x4

    invoke-virtual {p3, v4}, Lcom/android/server/LightsService;->getLight(I)Lcom/android/server/LightsService$Light;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/NotificationManagerService;->mNotificationLight:Lcom/android/server/LightsService$Light;

    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x106006c

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    iput v4, p0, Lcom/android/server/NotificationManagerService;->mDefaultNotificationColor:I

    const v4, 0x10e001e

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/android/server/NotificationManagerService;->mDefaultNotificationLedOn:I

    const v4, 0x10e001f

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/android/server/NotificationManagerService;->mDefaultNotificationLedOff:I

    const v4, 0x1070047

    sget-object v5, Lcom/android/server/NotificationManagerService;->DEFAULT_VIBRATE_PATTERN:[J

    invoke-static {v2, v4, v8, v5}, Lcom/android/server/NotificationManagerService;->getLongArray(Landroid/content/res/Resources;II[J)[J

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/NotificationManagerService;->mDefaultVibrationPattern:[J

    const v4, 0x1070048

    sget-object v5, Lcom/android/server/NotificationManagerService;->DEFAULT_VIBRATE_PATTERN:[J

    invoke-static {v2, v4, v8, v5}, Lcom/android/server/NotificationManagerService;->getLongArray(Landroid/content/res/Resources;II[J)[J

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/NotificationManagerService;->mFallbackVibrationPattern:[J

    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "device_provisioned"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_118

    const/high16 v4, 0x4

    iput v4, p0, Lcom/android/server/NotificationManagerService;->mDisabledNotifications:I

    :cond_118
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v4, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.intent.action.USER_STOPPED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.intent.action.DORMANT_MODE_ON"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.intent.action.DORMANT_MODE_OFF"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "com.android.server.NotificationManagerService.PickupMotionArrived"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/NotificationManagerService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v4, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.intent.action.QUERY_PACKAGE_RESTART"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "package"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/NotificationManagerService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/NotificationManagerService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    const-string v5, "keyguard"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/KeyguardManager;

    iput-object v4, p0, Lcom/android/server/NotificationManagerService;->mkgm:Landroid/app/KeyguardManager;

    new-instance v4, Lcom/android/server/NotificationManagerService$SettingsObserver;

    iget-object v5, p0, Lcom/android/server/NotificationManagerService;->mHandler:Lcom/android/server/NotificationManagerService$WorkerHandler;

    invoke-direct {v4, p0, v5}, Lcom/android/server/NotificationManagerService$SettingsObserver;-><init>(Lcom/android/server/NotificationManagerService;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/android/server/NotificationManagerService;->mSettingsObserver:Lcom/android/server/NotificationManagerService$SettingsObserver;

    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mSettingsObserver:Lcom/android/server/NotificationManagerService$SettingsObserver;

    invoke-virtual {v4}, Lcom/android/server/NotificationManagerService$SettingsObserver;->observe()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/NotificationManagerService;)Ljava/util/HashSet;
    .registers 2

    iget-object v0, p0, Lcom/android/server/NotificationManagerService;->mEnabledListenersForCurrentUser:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/NotificationManagerService;)Landroid/os/SystemVibrator;
    .registers 2

    iget-object v0, p0, Lcom/android/server/NotificationManagerService;->mVibrator:Landroid/os/SystemVibrator;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/NotificationManagerService;Ljava/lang/String;Ljava/lang/String;IIIZI)V
    .registers 8

    invoke-direct/range {p0 .. p7}, Lcom/android/server/NotificationManagerService;->cancelNotification(Ljava/lang/String;Ljava/lang/String;IIIZI)V

    return-void
.end method

.method static synthetic access$1202(Lcom/android/server/NotificationManagerService;Lcom/android/server/NotificationManagerService$NotificationRecord;)Lcom/android/server/NotificationManagerService$NotificationRecord;
    .registers 2

    iput-object p1, p0, Lcom/android/server/NotificationManagerService;->mSoundNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/android/server/NotificationManagerService;Lcom/android/server/NotificationManagerService$NotificationRecord;)Lcom/android/server/NotificationManagerService$NotificationRecord;
    .registers 2

    iput-object p1, p0, Lcom/android/server/NotificationManagerService;->mVibrateNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/server/NotificationManagerService;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/android/server/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/server/NotificationManagerService;Lcom/android/server/NotificationManagerService$NotificationRecord;)Lcom/android/server/NotificationManagerService$NotificationRecord;
    .registers 2

    iput-object p1, p0, Lcom/android/server/NotificationManagerService;->mLedNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/server/NotificationManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/NotificationManagerService;->updateLightsLocked()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/NotificationManagerService;)Ljava/util/HashSet;
    .registers 2

    iget-object v0, p0, Lcom/android/server/NotificationManagerService;->mEnabledListenerPackageNames:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/android/server/NotificationManagerService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/NotificationManagerService;->mScreenOn:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/NotificationManagerService;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/NotificationManagerService;)Ljava/lang/reflect/Method;
    .registers 2

    iget-object v0, p0, Lcom/android/server/NotificationManagerService;->mMethodRingtonePlayer:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/NotificationManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/NotificationManagerService;->updateNotificationPulse()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/NotificationManagerService;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/NotificationManagerService;->mInCall:Z

    return v0
.end method

.method static synthetic access$2302(Lcom/android/server/NotificationManagerService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/NotificationManagerService;->mInCall:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/android/server/NotificationManagerService;)Lcom/android/server/LightsService$Light;
    .registers 2

    iget-object v0, p0, Lcom/android/server/NotificationManagerService;->mNotificationLight:Lcom/android/server/LightsService$Light;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/NotificationManagerService;)Lcom/android/server/NotificationManagerService$SettingsObserver;
    .registers 2

    iget-object v0, p0, Lcom/android/server/NotificationManagerService;->mSettingsObserver:Lcom/android/server/NotificationManagerService$SettingsObserver;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/android/server/NotificationManagerService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/NotificationManagerService;->isDormantModeOn:Z

    return p1
.end method

.method static synthetic access$2702(Lcom/android/server/NotificationManagerService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/NotificationManagerService;->isDormantModeLedDisabled:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/android/server/NotificationManagerService;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/NotificationManagerService;->mNotificationPulseEnabled:Z

    return v0
.end method

.method static synthetic access$2802(Lcom/android/server/NotificationManagerService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/NotificationManagerService;->mNotificationPulseEnabled:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/android/server/NotificationManagerService;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/NotificationManagerService;->mMissedNotificationLightEnabled:Z

    return v0
.end method

.method static synthetic access$2902(Lcom/android/server/NotificationManagerService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/NotificationManagerService;->mMissedNotificationLightEnabled:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/NotificationManagerService;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/android/server/NotificationManagerService;->mServicesBinding:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/server/NotificationManagerService;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/NotificationManagerService;->mMissedSoundEnabled:Z

    return v0
.end method

.method static synthetic access$3002(Lcom/android/server/NotificationManagerService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/NotificationManagerService;->mMissedSoundEnabled:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/android/server/NotificationManagerService;)Landroid/os/PowerManager$WakeLock;
    .registers 2

    iget-object v0, p0, Lcom/android/server/NotificationManagerService;->mNotificationWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/server/NotificationManagerService;)I
    .registers 2

    iget v0, p0, Lcom/android/server/NotificationManagerService;->settings_new_time:I

    return v0
.end method

.method static synthetic access$3202(Lcom/android/server/NotificationManagerService;I)I
    .registers 2

    iput p1, p0, Lcom/android/server/NotificationManagerService;->settings_new_time:I

    return p1
.end method

.method static synthetic access$3300()I
    .registers 1

    sget v0, Lcom/android/server/NotificationManagerService;->time_key_value_in_db:I

    return v0
.end method

.method static synthetic access$3302(I)I
    .registers 1

    sput p0, Lcom/android/server/NotificationManagerService;->time_key_value_in_db:I

    return p0
.end method

.method static synthetic access$3400(Lcom/android/server/NotificationManagerService;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/server/NotificationManagerService;->mNotificationSoundHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3402(Lcom/android/server/NotificationManagerService;Landroid/os/Handler;)Landroid/os/Handler;
    .registers 2

    iput-object p1, p0, Lcom/android/server/NotificationManagerService;->mNotificationSoundHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$3500(Lcom/android/server/NotificationManagerService;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/NotificationManagerService;->sendMsg(Z)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/server/NotificationManagerService;Lcom/android/server/NotificationManagerService$ToastRecord;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/NotificationManagerService;->handleTimeout(Lcom/android/server/NotificationManagerService$ToastRecord;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/server/NotificationManagerService;)Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Lcom/android/server/NotificationManagerService;->mNotificationPlayerBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$3802(Lcom/android/server/NotificationManagerService;Landroid/os/IBinder;)Landroid/os/IBinder;
    .registers 2

    iput-object p1, p0, Lcom/android/server/NotificationManagerService;->mNotificationPlayerBinder:Landroid/os/IBinder;

    return-object p1
.end method

.method static synthetic access$3900(Lcom/android/server/NotificationManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/NotificationManagerService;->updateSoundLocked()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/NotificationManagerService;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/android/server/NotificationManagerService;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/server/NotificationManagerService;)Landroid/os/PowerManager$WakeLock;
    .registers 2

    iget-object v0, p0, Lcom/android/server/NotificationManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/server/NotificationManagerService;)Landroid/content/Intent;
    .registers 2

    iget-object v0, p0, Lcom/android/server/NotificationManagerService;->mPlckupIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$4202(Lcom/android/server/NotificationManagerService;Landroid/content/Intent;)Landroid/content/Intent;
    .registers 2

    iput-object p1, p0, Lcom/android/server/NotificationManagerService;->mPlckupIntent:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic access$4300(Lcom/android/server/NotificationManagerService;)Lcom/android/server/NotificationManagerService$WorkerHandler;
    .registers 2

    iget-object v0, p0, Lcom/android/server/NotificationManagerService;->mHandler:Lcom/android/server/NotificationManagerService$WorkerHandler;

    return-object v0
.end method

.method static synthetic access$500(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .registers 4

    invoke-static {p0, p1, p2}, Lcom/android/server/NotificationManagerService;->idDebugString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/NotificationManagerService;)I
    .registers 2

    iget v0, p0, Lcom/android/server/NotificationManagerService;->mDisabledNotifications:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/server/NotificationManagerService;I)I
    .registers 2

    iput p1, p0, Lcom/android/server/NotificationManagerService;->mDisabledNotifications:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/NotificationManagerService;)Landroid/media/IAudioService;
    .registers 2

    iget-object v0, p0, Lcom/android/server/NotificationManagerService;->mAudioService:Landroid/media/IAudioService;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/NotificationManagerService;)Lcom/android/server/NotificationManagerService$OverTurnPlayer;
    .registers 2

    iget-object v0, p0, Lcom/android/server/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/NotificationManagerService$OverTurnPlayer;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/NotificationManagerService;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/NotificationManagerService;->mIsPlaying:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/server/NotificationManagerService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/NotificationManagerService;->mIsPlaying:Z

    return p1
.end method

.method private cancelNotification(Ljava/lang/String;Ljava/lang/String;IIIZI)V
    .registers 15

    const/16 v3, 0xabf

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object p2, v4, v5

    const/4 v5, 0x3

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x5

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_2d
    invoke-direct {p0, p1, p2, p3, p7}, Lcom/android/server/NotificationManagerService;->indexOfNotificationLocked(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v0

    if-ltz v0, :cond_a5

    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/NotificationManagerService$NotificationRecord;

    invoke-virtual {v2}, Lcom/android/server/NotificationManagerService$NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget v3, v3, Landroid/app/Notification;->flags:I

    and-int/2addr v3, p4

    if-eq v3, p4, :cond_46

    monitor-exit v4

    :goto_45
    return-void

    :cond_46
    invoke-virtual {v2}, Lcom/android/server/NotificationManagerService$NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget v3, v3, Landroid/app/Notification;->flags:I

    and-int/2addr v3, p5

    if-eqz v3, :cond_54

    monitor-exit v4

    goto :goto_45

    :catchall_51
    move-exception v3

    monitor-exit v4
    :try_end_53
    .catchall {:try_start_2d .. :try_end_53} :catchall_51

    throw v3

    :cond_54
    :try_start_54
    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-direct {p0, v2, p6}, Lcom/android/server/NotificationManagerService;->cancelNotificationLocked(Lcom/android/server/NotificationManagerService$NotificationRecord;Z)V

    invoke-direct {p0}, Lcom/android/server/NotificationManagerService;->updateLightsLocked()V

    iget-boolean v3, p0, Lcom/android/server/NotificationManagerService;->mSystemReady:Z

    if-eqz v3, :cond_a5

    const-string v3, "com.android.phone"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_73

    const-string v3, "com.android.mms"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a5

    :cond_73
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.server.NotificationManagerService.NotificationRemoved"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/server/NotificationManagerService$NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v3

    if-eqz v3, :cond_9b

    invoke-virtual {v2}, Lcom/android/server/NotificationManagerService$NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget v3, v3, Landroid/app/Notification;->missedCount:I

    if-lez v3, :cond_9b

    const-string v3, "Notification"

    invoke-virtual {v2}, Lcom/android/server/NotificationManagerService$NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v3, "pkg"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "id"

    invoke-virtual {v1, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_9b
    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/os/UserHandle;

    invoke-direct {v5, p7}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v3, v1, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_a5
    monitor-exit v4
    :try_end_a6
    .catchall {:try_start_54 .. :try_end_a6} :catchall_51

    goto :goto_45
.end method

.method private cancelNotificationLocked(Lcom/android/server/NotificationManagerService$NotificationRecord;Z)V
    .registers 12

    const/4 v8, 0x0

    const/4 v7, 0x0

    if-eqz p2, :cond_15

    invoke-virtual {p1}, Lcom/android/server/NotificationManagerService$NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget-object v4, v4, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    if-eqz v4, :cond_15

    :try_start_c
    invoke-virtual {p1}, Lcom/android/server/NotificationManagerService$NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget-object v4, v4, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4}, Landroid/app/PendingIntent;->send()V
    :try_end_15
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_c .. :try_end_15} :catch_83

    :cond_15
    :goto_15
    invoke-virtual {p1}, Lcom/android/server/NotificationManagerService$NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget v4, v4, Landroid/app/Notification;->icon:I

    if-eqz v4, :cond_30

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_21
    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mStatusBar:Lcom/android/server/StatusBarManagerService;

    iget-object v5, p1, Lcom/android/server/NotificationManagerService$NotificationRecord;->statusBarKey:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Lcom/android/server/StatusBarManagerService;->removeNotification(Landroid/os/IBinder;)V
    :try_end_28
    .catchall {:try_start_21 .. :try_end_28} :catchall_a4

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    iput-object v7, p1, Lcom/android/server/NotificationManagerService$NotificationRecord;->statusBarKey:Landroid/os/IBinder;

    invoke-direct {p0, p1}, Lcom/android/server/NotificationManagerService;->notifyRemovedLocked(Lcom/android/server/NotificationManagerService$NotificationRecord;)V

    :cond_30
    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mSoundNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    if-ne v4, p1, :cond_5e

    iput-object v7, p0, Lcom/android/server/NotificationManagerService;->mSoundNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_3a
    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mAudioService:Landroid/media/IAudioService;

    invoke-interface {v4}, Landroid/media/IAudioService;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    move-result-object v3

    if-eqz v3, :cond_4c

    const-string v4, "STATUSBAR-NotificationService"

    const-string v5, "cancelN stopAsync"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v3}, Landroid/media/IRingtonePlayer;->stopAsync()V
    :try_end_4c
    .catchall {:try_start_3a .. :try_end_4c} :catchall_a9
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_4c} :catch_c2

    :cond_4c
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/NotificationManagerService$OverTurnPlayer;

    invoke-virtual {v4}, Lcom/android/server/NotificationManagerService$OverTurnPlayer;->isRegister()Z

    move-result v4

    if-eqz v4, :cond_5c

    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/NotificationManagerService$OverTurnPlayer;

    invoke-virtual {v4}, Lcom/android/server/NotificationManagerService$OverTurnPlayer;->unregister()V

    :cond_5c
    :goto_5c
    iput-boolean v8, p0, Lcom/android/server/NotificationManagerService;->mIsPlaying:Z

    :cond_5e
    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mVibrateNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    if-ne v4, p1, :cond_70

    iput-object v7, p0, Lcom/android/server/NotificationManagerService;->mVibrateNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_68
    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mVibrator:Landroid/os/SystemVibrator;

    invoke-virtual {v4}, Landroid/os/SystemVibrator;->cancel()V
    :try_end_6d
    .catchall {:try_start_68 .. :try_end_6d} :catchall_bd

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_70
    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mLedNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    if-ne v4, p1, :cond_7b

    iput-object v7, p0, Lcom/android/server/NotificationManagerService;->mLedNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    :cond_7b
    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mArchive:Lcom/android/server/NotificationManagerService$Archive;

    iget-object v5, p1, Lcom/android/server/NotificationManagerService$NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4, v5}, Lcom/android/server/NotificationManagerService$Archive;->record(Landroid/service/notification/StatusBarNotification;)V

    return-void

    :catch_83
    move-exception v0

    const-string v4, "NotificationService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "canceled PendingIntent for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/android/server/NotificationManagerService$NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_15

    :catchall_a4
    move-exception v4

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    :catchall_a9
    move-exception v4

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    iget-object v5, p0, Lcom/android/server/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/NotificationManagerService$OverTurnPlayer;

    invoke-virtual {v5}, Lcom/android/server/NotificationManagerService$OverTurnPlayer;->isRegister()Z

    move-result v5

    if-eqz v5, :cond_ba

    iget-object v5, p0, Lcom/android/server/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/NotificationManagerService$OverTurnPlayer;

    invoke-virtual {v5}, Lcom/android/server/NotificationManagerService$OverTurnPlayer;->unregister()V

    :cond_ba
    iput-boolean v8, p0, Lcom/android/server/NotificationManagerService;->mIsPlaying:Z

    throw v4

    :catchall_bd
    move-exception v4

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    :catch_c2
    move-exception v4

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/NotificationManagerService$OverTurnPlayer;

    invoke-virtual {v4}, Lcom/android/server/NotificationManagerService$OverTurnPlayer;->isRegister()Z

    move-result v4

    if-eqz v4, :cond_5c

    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/NotificationManagerService$OverTurnPlayer;

    invoke-virtual {v4}, Lcom/android/server/NotificationManagerService$OverTurnPlayer;->unregister()V

    goto :goto_5c
.end method

.method private cancelToastLocked(I)V
    .registers 7

    iget-object v2, p0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/NotificationManagerService$ToastRecord;

    :try_start_8
    iget-object v2, v1, Lcom/android/server/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    invoke-interface {v2}, Landroid/app/ITransientNotification;->hide()V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_d} :catch_23

    :goto_d
    iget-object v2, p0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget v2, v1, Lcom/android/server/NotificationManagerService$ToastRecord;->pid:I

    invoke-direct {p0, v2}, Lcom/android/server/NotificationManagerService;->keepProcessAliveLocked(I)V

    iget-object v2, p0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_22

    invoke-direct {p0}, Lcom/android/server/NotificationManagerService;->showNextToastLocked()V

    :cond_22
    return-void

    :catch_23
    move-exception v0

    const-string v2, "NotificationService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Object died trying to hide notification "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/NotificationManagerService$ToastRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d
.end method

.method private checkListenerToken(Landroid/service/notification/INotificationListener;)Lcom/android/server/NotificationManagerService$NotificationListenerInfo;
    .registers 9

    invoke-interface {p1}, Landroid/service/notification/INotificationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v0, :cond_21

    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;

    iget-object v4, v2, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;->listener:Landroid/service/notification/INotificationListener;

    invoke-interface {v4}, Landroid/service/notification/INotificationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    if-ne v4, v3, :cond_1e

    return-object v2

    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_21
    new-instance v4, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Disallowed call from unknown listener: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private static final clamp(III)I
    .registers 3

    if-ge p0, p1, :cond_3

    :goto_2
    return p1

    :cond_3
    if-le p0, p2, :cond_7

    move p1, p2

    goto :goto_2

    :cond_7
    move p1, p0

    goto :goto_2
.end method

.method private doVibrate(ZZLandroid/app/Notification;)V
    .registers 12

    if-eqz p1, :cond_16

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_6
    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mVibrator:Landroid/os/SystemVibrator;

    const/16 v5, 0xd

    invoke-virtual {v4, v5}, Landroid/os/SystemVibrator;->vibrateNotification(I)V
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_11

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_10
    return-void

    :catchall_11
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    :cond_16
    if-eqz p2, :cond_20

    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mVibrator:Landroid/os/SystemVibrator;

    iget v5, p3, Landroid/app/Notification;->haptic:I

    invoke-virtual {v4, v5}, Landroid/os/SystemVibrator;->vibrateNotification(I)V

    goto :goto_10

    :cond_20
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_24
    iget-object v5, p0, Lcom/android/server/NotificationManagerService;->mVibrator:Landroid/os/SystemVibrator;

    iget-object v6, p3, Landroid/app/Notification;->vibrate:[J

    iget v4, p3, Landroid/app/Notification;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_38

    const/4 v4, 0x0

    :goto_2f
    sget-object v7, Landroid/os/SystemVibrator$MagnitudeType;->NotificationMagnitude:Landroid/os/SystemVibrator$MagnitudeType;

    invoke-virtual {v5, v6, v4, v7}, Landroid/os/SystemVibrator;->vibrate([JILandroid/os/SystemVibrator$MagnitudeType;)V
    :try_end_34
    .catchall {:try_start_24 .. :try_end_34} :catchall_3a

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_10

    :cond_38
    const/4 v4, -0x1

    goto :goto_2f

    :catchall_3a
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private doesItUseHaptic(I)Z
    .registers 3

    packed-switch p1, :pswitch_data_8

    :pswitch_3
    const/4 v0, 0x0

    :goto_4
    return v0

    :pswitch_5
    const/4 v0, 0x1

    goto :goto_4

    nop

    :pswitch_data_8
    .packed-switch 0xd
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method static getLongArray(Landroid/content/res/Resources;II[J)[J
    .registers 10

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    if-nez v0, :cond_7

    :goto_6
    return-object p3

    :cond_7
    array-length v4, v0

    if-le v4, p2, :cond_18

    move v2, p2

    :goto_b
    new-array v3, v2, [J

    const/4 v1, 0x0

    :goto_e
    if-ge v1, v2, :cond_1a

    aget v4, v0, v1

    int-to-long v4, v4

    aput-wide v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_18
    array-length v2, v0

    goto :goto_b

    :cond_1a
    move-object p3, v3

    goto :goto_6
.end method

.method private handleTimeout(Lcom/android/server/NotificationManagerService$ToastRecord;)V
    .registers 6

    iget-object v2, p0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_3
    iget-object v1, p1, Lcom/android/server/NotificationManagerService$ToastRecord;->pkg:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    invoke-direct {p0, v1, v3}, Lcom/android/server/NotificationManagerService;->indexOfToastLocked(Ljava/lang/String;Landroid/app/ITransientNotification;)I

    move-result v0

    if-ltz v0, :cond_10

    invoke-direct {p0, v0}, Lcom/android/server/NotificationManagerService;->cancelToastLocked(I)V

    :cond_10
    monitor-exit v2

    return-void

    :catchall_12
    move-exception v1

    monitor-exit v2
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method private hasClearableItems(Ljava/util/ArrayList;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/NotificationManagerService$NotificationRecord;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/NotificationManagerService$NotificationRecord;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/android/server/NotificationManagerService$NotificationRecord;->getFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_4

    invoke-virtual {v1}, Lcom/android/server/NotificationManagerService$NotificationRecord;->getFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x20

    if-nez v2, :cond_4

    const/4 v2, 0x1

    :goto_23
    return v2

    :cond_24
    const/4 v2, 0x0

    goto :goto_23
.end method

.method private static idDebugString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    if-eqz p1, :cond_14

    const/4 v3, 0x0

    :try_start_4
    invoke-virtual {p0, p1, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_7} :catch_11

    move-result-object v0

    :goto_8
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    :try_start_c
    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;
    :try_end_f
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_c .. :try_end_f} :catch_16

    move-result-object v3

    :goto_10
    return-object v3

    :catch_11
    move-exception v1

    move-object v0, p0

    goto :goto_8

    :cond_14
    move-object v0, p0

    goto :goto_8

    :catch_16
    move-exception v1

    const-string v3, "<name unknown>"

    goto :goto_10
.end method

.method private importOldBlockDb()V
    .registers 7

    invoke-direct {p0}, Lcom/android/server/NotificationManagerService;->loadBlockDb()V

    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mBlockedPackages:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v4, 0x0

    :try_start_1d
    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v5, 0x0

    invoke-virtual {p0, v2, v4, v5}, Lcom/android/server/NotificationManagerService;->setNotificationsEnabledForPackage(Ljava/lang/String;IZ)V
    :try_end_29
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1d .. :try_end_29} :catch_2a

    goto :goto_f

    :catch_2a
    move-exception v4

    goto :goto_f

    :cond_2c
    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mBlockedPackages:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    if-eqz v4, :cond_3a

    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v4}, Landroid/util/AtomicFile;->delete()V

    :cond_3a
    return-void
.end method

.method private indexOfNotificationLocked(Ljava/lang/String;Ljava/lang/String;II)I
    .registers 10

    iget-object v2, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_7
    if-ge v0, v1, :cond_44

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/NotificationManagerService$NotificationRecord;

    invoke-direct {p0, v3, p4}, Lcom/android/server/NotificationManagerService;->notificationMatchesUserId(Lcom/android/server/NotificationManagerService$NotificationRecord;I)Z

    move-result v4

    if-eqz v4, :cond_1d

    iget-object v4, v3, Lcom/android/server/NotificationManagerService$NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v4

    if-eq v4, p3, :cond_20

    :cond_1d
    :goto_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_20
    if-nez p2, :cond_37

    iget-object v4, v3, Lcom/android/server/NotificationManagerService$NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1d

    :cond_2a
    iget-object v4, v3, Lcom/android/server/NotificationManagerService$NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    :goto_36
    return v0

    :cond_37
    iget-object v4, v3, Lcom/android/server/NotificationManagerService$NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2a

    goto :goto_1d

    :cond_44
    const/4 v0, -0x1

    goto :goto_36
.end method

.method private indexOfToastLocked(Ljava/lang/String;Landroid/app/ITransientNotification;)I
    .registers 9

    invoke-interface {p2}, Landroid/app/ITransientNotification;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v2, :cond_27

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/NotificationManagerService$ToastRecord;

    iget-object v5, v4, Lcom/android/server/NotificationManagerService$ToastRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_24

    iget-object v5, v4, Lcom/android/server/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    invoke-interface {v5}, Landroid/app/ITransientNotification;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    if-ne v5, v0, :cond_24

    :goto_23
    return v1

    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_27
    const/4 v1, -0x1

    goto :goto_23
.end method

.method private keepProcessAliveLocked(I)V
    .registers 11

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_1a

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/NotificationManagerService$ToastRecord;

    iget v6, v3, Lcom/android/server/NotificationManagerService$ToastRecord;->pid:I

    if-ne v6, p1, :cond_17

    add-int/lit8 v4, v4, 0x1

    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_1a
    :try_start_1a
    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mAm:Landroid/app/IActivityManager;

    iget-object v7, p0, Lcom/android/server/NotificationManagerService;->mForegroundToken:Landroid/os/IBinder;

    if-lez v4, :cond_25

    :goto_20
    const/4 v8, 0x1

    invoke-interface {v6, v7, p1, v5, v8}, Landroid/app/IActivityManager;->setProcessForeground(Landroid/os/IBinder;IZZ)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_24} :catch_27

    :goto_24
    return-void

    :cond_25
    const/4 v5, 0x0

    goto :goto_20

    :catch_27
    move-exception v5

    goto :goto_24
.end method

.method private loadBlockDb()V
    .registers 13

    const/4 v11, 0x1

    iget-object v8, p0, Lcom/android/server/NotificationManagerService;->mBlockedPackages:Ljava/util/HashSet;

    monitor-enter v8

    :try_start_4
    iget-object v7, p0, Lcom/android/server/NotificationManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    if-nez v7, :cond_7e

    new-instance v0, Ljava/io/File;

    const-string v7, "/data/system"

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v7, Landroid/util/AtomicFile;

    new-instance v9, Ljava/io/File;

    const-string v10, "notification_policy.xml"

    invoke-direct {v9, v0, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v7, v9}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v7, p0, Lcom/android/server/NotificationManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    iget-object v7, p0, Lcom/android/server/NotificationManagerService;->mBlockedPackages:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->clear()V
    :try_end_22
    .catchall {:try_start_4 .. :try_end_22} :catchall_98

    const/4 v2, 0x0

    :try_start_23
    iget-object v7, p0, Lcom/android/server/NotificationManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v7}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2

    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    const/4 v7, 0x0

    invoke-interface {v3, v2, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    const/4 v6, 0x1

    :cond_32
    :goto_32
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    if-eq v5, v11, :cond_b8

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x2

    if-ne v5, v7, :cond_32

    const-string v7, "notification-policy"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_53

    const/4 v7, 0x0

    const-string v9, "version"

    invoke-interface {v3, v7, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    goto :goto_32

    :cond_53
    const-string v7, "blocked-packages"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_32

    :cond_5b
    :goto_5b
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    if-eq v5, v11, :cond_32

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v7, "package"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_80

    iget-object v7, p0, Lcom/android/server/NotificationManagerService;->mBlockedPackages:Ljava/util/HashSet;

    const/4 v9, 0x0

    const-string v10, "name"

    invoke-interface {v3, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_79
    .catchall {:try_start_23 .. :try_end_79} :catchall_b3
    .catch Ljava/io/FileNotFoundException; {:try_start_23 .. :try_end_79} :catch_7a
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_79} :catch_8c
    .catch Ljava/lang/NumberFormatException; {:try_start_23 .. :try_end_79} :catch_9b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_23 .. :try_end_79} :catch_a7

    goto :goto_5b

    :catch_7a
    move-exception v7

    :try_start_7b
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    :cond_7e
    :goto_7e
    monitor-exit v8
    :try_end_7f
    .catchall {:try_start_7b .. :try_end_7f} :catchall_98

    return-void

    :cond_80
    :try_start_80
    const-string v7, "blocked-packages"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_85
    .catchall {:try_start_80 .. :try_end_85} :catchall_b3
    .catch Ljava/io/FileNotFoundException; {:try_start_80 .. :try_end_85} :catch_7a
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_85} :catch_8c
    .catch Ljava/lang/NumberFormatException; {:try_start_80 .. :try_end_85} :catch_9b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_80 .. :try_end_85} :catch_a7

    move-result v7

    if-eqz v7, :cond_5b

    const/4 v7, 0x3

    if-ne v5, v7, :cond_5b

    goto :goto_32

    :catch_8c
    move-exception v1

    :try_start_8d
    const-string v7, "NotificationService"

    const-string v9, "Unable to read blocked notifications database"

    invoke-static {v7, v9, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_94
    .catchall {:try_start_8d .. :try_end_94} :catchall_b3

    :try_start_94
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_7e

    :catchall_98
    move-exception v7

    monitor-exit v8
    :try_end_9a
    .catchall {:try_start_94 .. :try_end_9a} :catchall_98

    throw v7

    :catch_9b
    move-exception v1

    :try_start_9c
    const-string v7, "NotificationService"

    const-string v9, "Unable to parse blocked notifications database"

    invoke-static {v7, v9, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a3
    .catchall {:try_start_9c .. :try_end_a3} :catchall_b3

    :try_start_a3
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_a6
    .catchall {:try_start_a3 .. :try_end_a6} :catchall_98

    goto :goto_7e

    :catch_a7
    move-exception v1

    :try_start_a8
    const-string v7, "NotificationService"

    const-string v9, "Unable to parse blocked notifications database"

    invoke-static {v7, v9, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_af
    .catchall {:try_start_a8 .. :try_end_af} :catchall_b3

    :try_start_af
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_7e

    :catchall_b3
    move-exception v7

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v7

    :cond_b8
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_bb
    .catchall {:try_start_af .. :try_end_bb} :catchall_98

    goto :goto_7e
.end method

.method private noteNotificationOp(Ljava/lang/String;I)Z
    .registers 6

    iget-object v0, p0, Lcom/android/server/NotificationManagerService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p2, p1}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_24

    const-string v0, "NotificationService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifications are disabled by AppOps for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_23
    return v0

    :cond_24
    const/4 v0, 0x1

    goto :goto_23
.end method

.method private notificationMatchesUserId(Lcom/android/server/NotificationManagerService$NotificationRecord;I)Z
    .registers 5

    const/4 v1, -0x1

    if-eq p2, v1, :cond_f

    invoke-virtual {p1}, Lcom/android/server/NotificationManagerService$NotificationRecord;->getUserId()I

    move-result v0

    if-eq v0, v1, :cond_f

    invoke-virtual {p1}, Lcom/android/server/NotificationManagerService$NotificationRecord;->getUserId()I

    move-result v0

    if-ne v0, p2, :cond_11

    :cond_f
    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method private notifyPostedLocked(Lcom/android/server/NotificationManagerService$NotificationRecord;)V
    .registers 7

    iget-object v3, p1, Lcom/android/server/NotificationManagerService$NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->clone()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;

    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mHandler:Lcom/android/server/NotificationManagerService$WorkerHandler;

    new-instance v4, Lcom/android/server/NotificationManagerService$2;

    invoke-direct {v4, p0, v1, v2}, Lcom/android/server/NotificationManagerService$2;-><init>(Lcom/android/server/NotificationManagerService;Lcom/android/server/NotificationManagerService$NotificationListenerInfo;Landroid/service/notification/StatusBarNotification;)V

    invoke-virtual {v3, v4}, Lcom/android/server/NotificationManagerService$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_c

    :cond_23
    return-void
.end method

.method private notifyRemovedLocked(Lcom/android/server/NotificationManagerService$NotificationRecord;)V
    .registers 7

    iget-object v3, p1, Lcom/android/server/NotificationManagerService$NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->cloneLight()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;

    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mHandler:Lcom/android/server/NotificationManagerService$WorkerHandler;

    new-instance v4, Lcom/android/server/NotificationManagerService$3;

    invoke-direct {v4, p0, v1, v2}, Lcom/android/server/NotificationManagerService$3;-><init>(Lcom/android/server/NotificationManagerService;Lcom/android/server/NotificationManagerService$NotificationListenerInfo;Landroid/service/notification/StatusBarNotification;)V

    invoke-virtual {v3, v4}, Lcom/android/server/NotificationManagerService$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_c

    :cond_23
    return-void
.end method

.method private registerListenerService(Landroid/content/ComponentName;I)V
    .registers 15

    invoke-virtual {p0}, Lcom/android/server/NotificationManagerService;->checkCallerIsSystem()V

    iget-object v7, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v7

    :try_start_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "/"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mServicesBinding:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2b

    monitor-exit v7

    :goto_2a
    return-void

    :cond_2b
    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mServicesBinding:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    :goto_38
    if-ltz v2, :cond_61

    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;

    iget-object v6, v3, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {p1, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5e

    iget v6, v3, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;->userid:I

    if-ne v6, p2, :cond_5e

    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v6, v3, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;->connection:Landroid/content/ServiceConnection;

    if-eqz v6, :cond_5e

    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    iget-object v8, v3, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;->connection:Landroid/content/ServiceConnection;

    invoke-virtual {v6, v8}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_5e
    add-int/lit8 v2, v2, -0x1

    goto :goto_38

    :cond_61
    new-instance v4, Landroid/content/Intent;

    const-string v6, "android.service.notification.NotificationListenerService"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v6, "android.intent.extra.client_label"

    const v8, 0x1040724

    invoke-virtual {v4, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v6, "android.intent.extra.client_intent"

    iget-object v8, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    const/4 v9, 0x0

    new-instance v10, Landroid/content/Intent;

    const-string v11, "android.settings.NOTIFICATION_LISTENER_SETTINGS"

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v11, 0x0

    invoke-static {v8, v9, v10, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    invoke-virtual {v4, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_87
    .catchall {:try_start_6 .. :try_end_87} :catchall_ba

    :try_start_87
    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    new-instance v8, Lcom/android/server/NotificationManagerService$1;

    invoke-direct {v8, p0, v5, p2}, Lcom/android/server/NotificationManagerService$1;-><init>(Lcom/android/server/NotificationManagerService;Ljava/lang/String;I)V

    const/4 v9, 0x1

    new-instance v10, Landroid/os/UserHandle;

    invoke-direct {v10, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v6, v4, v8, v9, v10}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v6

    if-nez v6, :cond_d9

    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mServicesBinding:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const-string v6, "NotificationService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to bind listener service: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b7
    .catchall {:try_start_87 .. :try_end_b7} :catchall_ba
    .catch Ljava/lang/SecurityException; {:try_start_87 .. :try_end_b7} :catch_bd

    :try_start_b7
    monitor-exit v7

    goto/16 :goto_2a

    :catchall_ba
    move-exception v6

    monitor-exit v7
    :try_end_bc
    .catchall {:try_start_b7 .. :try_end_bc} :catchall_ba

    throw v6

    :catch_bd
    move-exception v1

    :try_start_be
    const-string v6, "NotificationService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to bind listener service: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    monitor-exit v7

    goto/16 :goto_2a

    :cond_d9
    monitor-exit v7
    :try_end_da
    .catchall {:try_start_be .. :try_end_da} :catchall_ba

    goto/16 :goto_2a
.end method

.method private scheduleTimeoutLocked(Lcom/android/server/NotificationManagerService$ToastRecord;Z)V
    .registers 8

    const/4 v4, 0x2

    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mHandler:Lcom/android/server/NotificationManagerService$WorkerHandler;

    invoke-static {v3, v4, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    if-eqz p2, :cond_16

    const-wide/16 v0, 0x0

    :goto_b
    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mHandler:Lcom/android/server/NotificationManagerService$WorkerHandler;

    invoke-virtual {v3, p1}, Lcom/android/server/NotificationManagerService$WorkerHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mHandler:Lcom/android/server/NotificationManagerService$WorkerHandler;

    invoke-virtual {v3, v2, v0, v1}, Lcom/android/server/NotificationManagerService$WorkerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :cond_16
    iget v3, p1, Lcom/android/server/NotificationManagerService$ToastRecord;->duration:I

    if-ne v3, v4, :cond_1d

    const-wide/16 v0, 0x1b58

    goto :goto_b

    :cond_1d
    iget v3, p1, Lcom/android/server/NotificationManagerService$ToastRecord;->duration:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_25

    const-wide/16 v0, 0xdac

    goto :goto_b

    :cond_25
    const-wide/16 v0, 0x7d0

    goto :goto_b
.end method

.method private sendAccessibilityEvent(Landroid/app/Notification;Ljava/lang/CharSequence;)V
    .registers 7

    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_d

    :goto_c
    return-void

    :cond_d
    const/16 v3, 0x40

    invoke-static {v3}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    const-class v3, Landroid/app/Notification;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityEvent;->setParcelableData(Landroid/os/Parcelable;)V

    iget-object v2, p1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_31

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_31
    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_c
.end method

.method private sendMsg(Z)V
    .registers 7

    const/16 v4, 0x65

    iget-object v1, p0, Lcom/android/server/NotificationManagerService;->mNotificationSoundHandler:Landroid/os/Handler;

    if-nez v1, :cond_d

    new-instance v1, Lcom/android/server/NotificationManagerService$9;

    invoke-direct {v1, p0}, Lcom/android/server/NotificationManagerService$9;-><init>(Lcom/android/server/NotificationManagerService;)V

    iput-object v1, p0, Lcom/android/server/NotificationManagerService;->mNotificationSoundHandler:Landroid/os/Handler;

    :cond_d
    iget-object v1, p0, Lcom/android/server/NotificationManagerService;->mNotificationSoundHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    const-string v1, "NotificationService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " !!!delayed!!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_48

    :try_start_2c
    iget-object v1, p0, Lcom/android/server/NotificationManagerService;->mNotificationSoundHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "time_key"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_42
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_2c .. :try_end_42} :catch_43

    :goto_42
    return-void

    :catch_43
    move-exception v0

    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_42

    :cond_48
    iget-object v1, p0, Lcom/android/server/NotificationManagerService;->mNotificationSoundHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_42
.end method

.method private showNextToastLocked()V
    .registers 8

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/NotificationManagerService$ToastRecord;

    :goto_9
    if-eqz v2, :cond_14

    :try_start_b
    iget-object v3, v2, Lcom/android/server/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    invoke-interface {v3}, Landroid/app/ITransientNotification;->show()V

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/server/NotificationManagerService;->scheduleTimeoutLocked(Lcom/android/server/NotificationManagerService$ToastRecord;Z)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_14} :catch_15

    :cond_14
    return-void

    :catch_15
    move-exception v0

    const-string v3, "NotificationService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Object died trying to show notification "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/server/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/server/NotificationManagerService$ToastRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_49

    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_49
    iget v3, v2, Lcom/android/server/NotificationManagerService$ToastRecord;->pid:I

    invoke-direct {p0, v3}, Lcom/android/server/NotificationManagerService;->keepProcessAliveLocked(I)V

    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_5f

    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/NotificationManagerService$ToastRecord;

    goto :goto_9

    :cond_5f
    const/4 v2, 0x0

    goto :goto_9
.end method

.method private unregisterListenerService(Landroid/content/ComponentName;I)V
    .registers 11

    invoke-virtual {p0}, Lcom/android/server/NotificationManagerService;->checkCallerIsSystem()V

    iget-object v5, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v5

    :try_start_6
    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    :goto_e
    if-ltz v2, :cond_5e

    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;

    iget-object v4, v3, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {p1, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_34

    iget v4, v3, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;->userid:I

    if-ne v4, p2, :cond_34

    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v4, v3, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;->connection:Landroid/content/ServiceConnection;
    :try_end_2b
    .catchall {:try_start_6 .. :try_end_2b} :catchall_5b

    if-eqz v4, :cond_34

    :try_start_2d
    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    iget-object v6, v3, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;->connection:Landroid/content/ServiceConnection;

    invoke-virtual {v4, v6}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_34
    .catchall {:try_start_2d .. :try_end_34} :catchall_5b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2d .. :try_end_34} :catch_37

    :cond_34
    :goto_34
    add-int/lit8 v2, v2, -0x1

    goto :goto_e

    :catch_37
    move-exception v1

    :try_start_38
    const-string v4, "NotificationService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " could not be unbound: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34

    :catchall_5b
    move-exception v4

    monitor-exit v5
    :try_end_5d
    .catchall {:try_start_38 .. :try_end_5d} :catchall_5b

    throw v4

    :cond_5e
    :try_start_5e
    monitor-exit v5
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_5b

    return-void
.end method

.method private updateLightsLocked()V
    .registers 9

    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mLedNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    if-nez v6, :cond_18

    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_18

    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    add-int/lit8 v7, v5, -0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/NotificationManagerService$NotificationRecord;

    iput-object v6, p0, Lcom/android/server/NotificationManagerService;->mLedNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    :cond_18
    const/4 v0, 0x0

    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mLedNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    if-eqz v6, :cond_28

    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mLedNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    invoke-virtual {v6}, Lcom/android/server/NotificationManagerService$NotificationRecord;->getFlags()I

    move-result v6

    and-int/lit16 v6, v6, 0x100

    if-eqz v6, :cond_28

    const/4 v0, 0x1

    :cond_28
    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mLedNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    if-eqz v6, :cond_36

    iget-boolean v6, p0, Lcom/android/server/NotificationManagerService;->mInCall:Z

    if-nez v6, :cond_36

    iget-boolean v6, p0, Lcom/android/server/NotificationManagerService;->mScreenOn:Z

    if-eqz v6, :cond_3c

    if-nez v0, :cond_3c

    :cond_36
    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mNotificationLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v6}, Lcom/android/server/LightsService$Light;->turnOff()V

    :cond_3b
    :goto_3b
    return-void

    :cond_3c
    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mLedNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    iget-object v6, v6, Lcom/android/server/NotificationManagerService$NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget v1, v4, Landroid/app/Notification;->ledARGB:I

    iget v3, v4, Landroid/app/Notification;->ledOnMS:I

    iget v2, v4, Landroid/app/Notification;->ledOffMS:I

    iget v6, v4, Landroid/app/Notification;->defaults:I

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_56

    iget v1, p0, Lcom/android/server/NotificationManagerService;->mDefaultNotificationColor:I

    iget v3, p0, Lcom/android/server/NotificationManagerService;->mDefaultNotificationLedOn:I

    iget v2, p0, Lcom/android/server/NotificationManagerService;->mDefaultNotificationLedOff:I

    :cond_56
    iget-boolean v6, p0, Lcom/android/server/NotificationManagerService;->isDormantModeOn:Z

    if-eqz v6, :cond_6b

    iget-boolean v6, p0, Lcom/android/server/NotificationManagerService;->isDormantModeLedDisabled:Z

    if-eqz v6, :cond_6b

    const-string v6, "NotificationService"

    const-string v7, "LED is disabled by Dormant Mode On"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mNotificationLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v6}, Lcom/android/server/LightsService$Light;->turnOff()V

    goto :goto_3b

    :cond_6b
    iget-boolean v6, p0, Lcom/android/server/NotificationManagerService;->mMissedNotificationLightEnabled:Z

    if-eqz v6, :cond_3b

    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mLedNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    invoke-virtual {v6}, Lcom/android/server/NotificationManagerService$NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v6

    iget v6, v6, Landroid/app/Notification;->defaults:I

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_8a

    const-string v6, "STATUSBAR-NotificationService"

    const-string v7, "updateLightsLocked() : Set default flashing notification light"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mNotificationLight:Lcom/android/server/LightsService$Light;

    const/16 v7, 0xc

    invoke-virtual {v6, v1, v7, v3, v2}, Lcom/android/server/LightsService$Light;->setFlashing(IIII)V

    goto :goto_3b

    :cond_8a
    const-string v6, "STATUSBAR-NotificationService"

    const-string v7, "updateLightsLocked() : Set custom flashing notification light"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mNotificationLight:Lcom/android/server/LightsService$Light;

    const/4 v7, 0x1

    invoke-virtual {v6, v1, v7, v3, v2}, Lcom/android/server/LightsService$Light;->setFlashing(IIII)V

    goto :goto_3b
.end method

.method private updateNotificationPulse()V
    .registers 3

    iget-object v1, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_3
    invoke-direct {p0}, Lcom/android/server/NotificationManagerService;->updateLightsLocked()V

    monitor-exit v1

    return-void

    :catchall_8
    move-exception v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v0
.end method

.method private updateNotificationSound()V
    .registers 3

    iget-object v1, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_3
    invoke-direct {p0}, Lcom/android/server/NotificationManagerService;->updateSoundLocked()V

    monitor-exit v1

    return-void

    :catchall_8
    move-exception v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v0
.end method

.method private updateSoundLocked()V
    .registers 11

    const/4 v9, 0x1

    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v6

    :try_start_4
    iget-object v5, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    if-eqz v5, :cond_8b

    iget-object v5, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_8b

    iget-object v5, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-direct {p0, v5}, Lcom/android/server/NotificationManagerService;->hasClearableItems(Ljava/util/ArrayList;)Z

    move-result v5

    if-eqz v5, :cond_8b

    iget-boolean v5, p0, Lcom/android/server/NotificationManagerService;->mMissedSoundEnabled:Z

    if-eqz v5, :cond_8b

    iget v5, p0, Lcom/android/server/NotificationManagerService;->mDisabledNotifications:I

    const/high16 v7, 0x4

    and-int/2addr v5, v7

    if-nez v5, :cond_8b

    iget-boolean v5, p0, Lcom/android/server/NotificationManagerService;->mSystemReady:Z

    if-eqz v5, :cond_8b

    const-string v5, "NotificationService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mMissedSoundEnabled = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/server/NotificationManagerService;->mMissedSoundEnabled:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x2

    invoke-static {v5}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v3

    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V
    :try_end_4b
    .catchall {:try_start_4 .. :try_end_4b} :catchall_92

    :try_start_4b
    iget-object v5, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v5, v3}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    const/4 v5, 0x5

    invoke-virtual {v2, v5}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_57
    .catchall {:try_start_4b .. :try_end_57} :catchall_92
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_57} :catch_8d
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_57} :catch_95

    :goto_57
    :try_start_57
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->start()V

    iget-object v5, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    const-string v7, "audio"

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v5

    if-eq v5, v9, :cond_70

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v5

    if-nez v5, :cond_7f

    :cond_70
    iget-object v5, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    const-string v7, "vibrator"

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Vibrator;

    const-wide/16 v7, 0x1f4

    invoke-virtual {v4, v7, v8}, Landroid/os/Vibrator;->vibrate(J)V

    :cond_7f
    new-instance v5, Lcom/android/server/NotificationManagerService$8;

    invoke-direct {v5, p0}, Lcom/android/server/NotificationManagerService$8;-><init>(Lcom/android/server/NotificationManagerService;)V

    invoke-virtual {v2, v5}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/android/server/NotificationManagerService;->sendMsg(Z)V

    :cond_8b
    monitor-exit v6

    return-void

    :catch_8d
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_57

    :catchall_92
    move-exception v5

    monitor-exit v6
    :try_end_94
    .catchall {:try_start_57 .. :try_end_94} :catchall_92

    throw v5

    :catch_95
    move-exception v0

    :try_start_96
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_99
    .catchall {:try_start_96 .. :try_end_99} :catchall_92

    goto :goto_57
.end method


# virtual methods
.method public areNotificationsEnabledForPackage(Ljava/lang/String;I)Z
    .registers 5

    invoke-virtual {p0}, Lcom/android/server/NotificationManagerService;->checkCallerIsSystem()V

    iget-object v0, p0, Lcom/android/server/NotificationManagerService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p2, p1}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method cancelAll(I)V
    .registers 10

    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v6

    :try_start_3
    iget-object v5, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_b
    if-ltz v1, :cond_7a

    iget-object v5, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/NotificationManagerService$NotificationRecord;

    invoke-direct {p0, v4, p1}, Lcom/android/server/NotificationManagerService;->notificationMatchesUserId(Lcom/android/server/NotificationManagerService$NotificationRecord;I)Z

    move-result v5

    if-nez v5, :cond_1e

    :cond_1b
    :goto_1b
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    :cond_1e
    invoke-virtual {v4}, Lcom/android/server/NotificationManagerService$NotificationRecord;->getFlags()I

    move-result v5

    and-int/lit8 v5, v5, 0x22

    if-nez v5, :cond_1b

    iget-object v5, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v5, 0x1

    invoke-direct {p0, v4, v5}, Lcom/android/server/NotificationManagerService;->cancelNotificationLocked(Lcom/android/server/NotificationManagerService$NotificationRecord;Z)V

    iget-boolean v5, p0, Lcom/android/server/NotificationManagerService;->mSystemReady:Z

    if-eqz v5, :cond_1b

    iget-object v5, v4, Lcom/android/server/NotificationManagerService$NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "com.android.phone"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_49

    const-string v5, "com.android.mms"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    :cond_49
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.android.server.NotificationManagerService.NotificationRemoved"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/android/server/NotificationManagerService$NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v5

    if-eqz v5, :cond_6c

    invoke-virtual {v4}, Lcom/android/server/NotificationManagerService$NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v5

    iget v5, v5, Landroid/app/Notification;->missedCount:I

    if-lez v5, :cond_6c

    const-string v5, "Notification"

    invoke-virtual {v4}, Lcom/android/server/NotificationManagerService$NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v7

    invoke-virtual {v2, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v5, "pkg"

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_6c
    iget-object v5, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    new-instance v7, Landroid/os/UserHandle;

    invoke-direct {v7, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v5, v2, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_1b

    :catchall_77
    move-exception v5

    monitor-exit v6
    :try_end_79
    .catchall {:try_start_3 .. :try_end_79} :catchall_77

    throw v5

    :cond_7a
    :try_start_7a
    invoke-direct {p0}, Lcom/android/server/NotificationManagerService;->updateLightsLocked()V

    monitor-exit v6
    :try_end_7e
    .catchall {:try_start_7a .. :try_end_7e} :catchall_77

    return-void
.end method

.method public cancelAllNotifications(Ljava/lang/String;I)V
    .registers 14

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/NotificationManagerService;->checkCallerIsSystemOrSameApp(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const-string v5, "cancelAllNotifications"

    move v2, p2

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p2

    const/16 v8, 0x40

    move-object v5, p0

    move-object v6, p1

    move v7, v4

    move v9, v3

    move v10, p2

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/NotificationManagerService;->cancelAllNotificationsInt(Ljava/lang/String;IIZI)Z

    return-void
.end method

.method public cancelAllNotificationsFromListener(Landroid/service/notification/INotificationListener;)V
    .registers 6

    invoke-direct {p0, p1}, Lcom/android/server/NotificationManagerService;->checkListenerToken(Landroid/service/notification/INotificationListener;)Lcom/android/server/NotificationManagerService$NotificationListenerInfo;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_8
    iget v3, v2, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;->userid:I

    invoke-virtual {p0, v3}, Lcom/android/server/NotificationManagerService;->cancelAll(I)V
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_11

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_11
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method cancelAllNotificationsInt(Ljava/lang/String;IIZI)Z
    .registers 15

    const/4 v4, 0x1

    const/4 v7, 0x0

    const/16 v5, 0xac0

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v7

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    const/4 v7, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    iget-object v5, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v5

    :try_start_23
    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    add-int/lit8 v2, v0, -0x1

    :goto_2c
    if-ltz v2, :cond_76

    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/NotificationManagerService$NotificationRecord;

    invoke-direct {p0, v3, p5}, Lcom/android/server/NotificationManagerService;->notificationMatchesUserId(Lcom/android/server/NotificationManagerService$NotificationRecord;I)Z

    move-result v6

    if-nez v6, :cond_3f

    :cond_3c
    :goto_3c
    add-int/lit8 v2, v2, -0x1

    goto :goto_2c

    :cond_3f
    invoke-virtual {v3}, Lcom/android/server/NotificationManagerService$NotificationRecord;->getUserId()I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_48

    if-eqz p1, :cond_3c

    :cond_48
    invoke-virtual {v3}, Lcom/android/server/NotificationManagerService$NotificationRecord;->getFlags()I

    move-result v6

    and-int/2addr v6, p2

    if-ne v6, p2, :cond_3c

    invoke-virtual {v3}, Lcom/android/server/NotificationManagerService$NotificationRecord;->getFlags()I

    move-result v6

    and-int/2addr v6, p3

    if-nez v6, :cond_3c

    if-eqz p1, :cond_64

    iget-object v6, v3, Lcom/android/server/NotificationManagerService$NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3c

    :cond_64
    const/4 v1, 0x1

    if-nez p4, :cond_69

    monitor-exit v5

    :goto_68
    return v4

    :cond_69
    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-direct {p0, v3, v6}, Lcom/android/server/NotificationManagerService;->cancelNotificationLocked(Lcom/android/server/NotificationManagerService$NotificationRecord;Z)V

    goto :goto_3c

    :catchall_73
    move-exception v4

    monitor-exit v5
    :try_end_75
    .catchall {:try_start_23 .. :try_end_75} :catchall_73

    throw v4

    :cond_76
    if-eqz v1, :cond_7b

    :try_start_78
    invoke-direct {p0}, Lcom/android/server/NotificationManagerService;->updateLightsLocked()V

    :cond_7b
    monitor-exit v5
    :try_end_7c
    .catchall {:try_start_78 .. :try_end_7c} :catchall_73

    move v4, v1

    goto :goto_68
.end method

.method public cancelNotificationFromListener(Landroid/service/notification/INotificationListener;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 16

    invoke-direct {p0, p1}, Lcom/android/server/NotificationManagerService;->checkListenerToken(Landroid/service/notification/INotificationListener;)Lcom/android/server/NotificationManagerService$NotificationListenerInfo;

    move-result-object v10

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    const/4 v4, 0x0

    const/16 v5, 0x42

    const/4 v6, 0x1

    :try_start_c
    iget v7, v10, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;->userid:I

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/server/NotificationManagerService;->cancelNotification(Ljava/lang/String;Ljava/lang/String;IIIZI)V
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_19

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_19
    move-exception v0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 13

    const/4 v4, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/NotificationManagerService;->checkCallerIsSystemOrSameApp(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v3, 0x1

    const-string v5, "cancelNotificationWithTag"

    move v2, p4

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_28

    move v5, v4

    :goto_1e
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v6, v4

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/server/NotificationManagerService;->cancelNotification(Ljava/lang/String;Ljava/lang/String;IIIZI)V

    return-void

    :cond_28
    const/16 v5, 0x40

    goto :goto_1e
.end method

.method public cancelToast(Ljava/lang/String;Landroid/app/ITransientNotification;)V
    .registers 10

    const-string v3, "NotificationService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cancelToast pkg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " callback="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_26

    if-nez p2, :cond_49

    :cond_26
    const-string v3, "NotificationService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not cancelling notification. pkg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " callback="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_48
    return-void

    :cond_49
    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_4c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_4f
    .catchall {:try_start_4c .. :try_end_4f} :catchall_5e

    move-result-wide v0

    :try_start_50
    invoke-direct {p0, p1, p2}, Lcom/android/server/NotificationManagerService;->indexOfToastLocked(Ljava/lang/String;Landroid/app/ITransientNotification;)I

    move-result v2

    if-ltz v2, :cond_61

    invoke-direct {p0, v2}, Lcom/android/server/NotificationManagerService;->cancelToastLocked(I)V
    :try_end_59
    .catchall {:try_start_50 .. :try_end_59} :catchall_84

    :goto_59
    :try_start_59
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v4

    goto :goto_48

    :catchall_5e
    move-exception v3

    monitor-exit v4
    :try_end_60
    .catchall {:try_start_59 .. :try_end_60} :catchall_5e

    throw v3

    :cond_61
    :try_start_61
    const-string v3, "NotificationService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Toast already cancelled. pkg="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " callback="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_83
    .catchall {:try_start_61 .. :try_end_83} :catchall_84

    goto :goto_59

    :catchall_84
    move-exception v3

    :try_start_85
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_89
    .catchall {:try_start_85 .. :try_end_89} :catchall_5e
.end method

.method checkCallerIsSystem()V
    .registers 4

    invoke-virtual {p0}, Lcom/android/server/NotificationManagerService;->isCallerSystem()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Disallowed call for uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method checkCallerIsSystemOrSameApp(Ljava/lang/String;)V
    .registers 8

    invoke-virtual {p0}, Lcom/android/server/NotificationManagerService;->isCallerSystem()Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_6
    return-void

    :cond_7
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    :try_start_b
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    invoke-interface {v3, p1, v4, v5}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3, v2}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v3

    if-nez v3, :cond_6

    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Calling uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " gave package"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " which is owned by uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_4f
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_4f} :catch_4f

    :catch_4f
    move-exception v1

    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method disableNonexistentListeners()V
    .registers 18

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "enabled_notification_listeners"

    invoke-static {v14, v15, v2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_d8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    new-instance v14, Landroid/content/Intent;

    const-string v15, "android.service.notification.NotificationListenerService"

    invoke-direct {v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v15, 0x84

    invoke-virtual {v11, v14, v15, v2}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v10

    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    const/4 v7, 0x0

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    :goto_37
    if-ge v7, v1, :cond_93

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/ResolveInfo;

    iget-object v8, v13, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    const-string v14, "android.permission.BIND_NOTIFICATION_LISTENER_SERVICE"

    iget-object v15, v8, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_84

    const-string v14, "NotificationService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Skipping notification listener service "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v8, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "/"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v8, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ": it does not require the permission "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "android.permission.BIND_NOTIFICATION_LISTENER_SERVICE"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_81
    add-int/lit8 v7, v7, 0x1

    goto :goto_37

    :cond_84
    new-instance v14, Landroid/content/ComponentName;

    iget-object v15, v8, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iget-object v0, v8, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-direct/range {v14 .. v16}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_81

    :cond_93
    const-string v6, ""

    invoke-interface {v9}, Ljava/util/Set;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_c5

    const-string v14, ":"

    invoke-virtual {v5, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    new-instance v12, Ljava/util/ArrayList;

    array-length v14, v3

    invoke-direct {v12, v14}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v7, 0x0

    :goto_a8
    array-length v14, v3

    if-ge v7, v14, :cond_bf

    aget-object v14, v3, v7

    invoke-static {v14}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    invoke-interface {v9, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_bc

    aget-object v14, v3, v7

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_bc
    add-int/lit8 v7, v7, 0x1

    goto :goto_a8

    :cond_bf
    const-string v14, ":"

    invoke-static {v14, v12}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v6

    :cond_c5
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_d8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "enabled_notification_listeners"

    invoke-static {v14, v15, v6, v2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    :cond_d8
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 14

    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    const-string v7, "android.permission.DUMP"

    invoke-virtual {v6, v7}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_33

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Permission Denial: can\'t dump NotificationManager from from pid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", uid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_32
    return-void

    :cond_33
    const-string v6, "Current Notification Manager state:"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  Listeners ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/NotificationManagerService;->mEnabledListenersForCurrentUser:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") enabled for current user:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mEnabledListenersForCurrentUser:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_60
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_83

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "    "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_60

    :cond_83
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  Live listeners ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/NotificationManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "):"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_ab
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_f5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "    "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " (user "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;->userid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;->listener:Landroid/service/notification/INotificationListener;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v6, v4, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;->isSystem:Z

    if-eqz v6, :cond_f2

    const-string v6, " SYSTEM"

    :goto_e6
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_ab

    :cond_f2
    const-string v6, ""

    goto :goto_e6

    :cond_f5
    iget-object v7, p0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    monitor-enter v7

    :try_start_f8
    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_11d

    const-string v6, "  Toast Queue:"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_106
    if-ge v2, v0, :cond_118

    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/NotificationManagerService$ToastRecord;

    const-string v8, "    "

    invoke-virtual {v6, p2, v8}, Lcom/android/server/NotificationManagerService$ToastRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_106

    :cond_118
    const-string v6, "  "

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_11d
    monitor-exit v7
    :try_end_11e
    .catchall {:try_start_f8 .. :try_end_11e} :catchall_143

    iget-object v7, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v7

    :try_start_121
    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_14b

    const-string v6, "  Notification List:"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_12f
    if-ge v2, v0, :cond_146

    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/NotificationManagerService$NotificationRecord;

    const-string v8, "    "

    iget-object v9, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6, p2, v8, v9}, Lcom/android/server/NotificationManagerService$NotificationRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/Context;)V
    :try_end_140
    .catchall {:try_start_121 .. :try_end_140} :catchall_239

    add-int/lit8 v2, v2, 0x1

    goto :goto_12f

    :catchall_143
    move-exception v6

    :try_start_144
    monitor-exit v7
    :try_end_145
    .catchall {:try_start_144 .. :try_end_145} :catchall_143

    throw v6

    :cond_146
    :try_start_146
    const-string v6, "  "

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_14b
    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_17f

    const-string v6, "  Lights List:"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_159
    if-ge v2, v0, :cond_17a

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "    "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Lcom/android/server/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_159

    :cond_17a
    const-string v6, "  "

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_17f
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  mSoundNotification="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Lcom/android/server/NotificationManagerService;->mSoundNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  mVibrateNotification="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Lcom/android/server/NotificationManagerService;->mVibrateNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  mDisabledNotifications=0x"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v8, p0, Lcom/android/server/NotificationManagerService;->mDisabledNotifications:I

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  mSystemReady="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v8, p0, Lcom/android/server/NotificationManagerService;->mSystemReady:Z

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  mArchive="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Lcom/android/server/NotificationManagerService;->mArchive:Lcom/android/server/NotificationManagerService$Archive;

    invoke-virtual {v8}, Lcom/android/server/NotificationManagerService$Archive;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mArchive:Lcom/android/server/NotificationManagerService$Archive;

    invoke-virtual {v6}, Lcom/android/server/NotificationManagerService$Archive;->descendingIterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v2, 0x0

    :cond_206
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_236

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "    "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    const/4 v6, 0x5

    if-lt v2, v6, :cond_206

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_236

    const-string v6, "    ..."

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_236
    monitor-exit v7

    goto/16 :goto_32

    :catchall_239
    move-exception v6

    monitor-exit v7
    :try_end_23b
    .catchall {:try_start_146 .. :try_end_23b} :catchall_239

    throw v6
.end method

.method public enqueueNotificationInternal(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILandroid/app/Notification;[II)V
    .registers 54

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/NotificationManagerService;->checkCallerIsSystemOrSameApp(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/NotificationManagerService;->isCallerSystem()Z

    move-result v6

    if-nez v6, :cond_13

    const-string v6, "android"

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9b

    :cond_13
    const/16 v28, 0x1

    :goto_15
    const/4 v8, 0x1

    const/4 v9, 0x0

    const-string v10, "enqueueNotification"

    move/from16 v5, p4

    move/from16 v6, p3

    move/from16 v7, p9

    move-object/from16 v11, p1

    invoke-static/range {v5 .. v11}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p9

    new-instance v13, Landroid/os/UserHandle;

    move/from16 v0, p9

    invoke-direct {v13, v0}, Landroid/os/UserHandle;-><init>(I)V

    if-nez v28, :cond_a3

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v7

    const/16 v19, 0x0

    :try_start_35
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v14

    const/16 v24, 0x0

    :goto_3f
    move/from16 v0, v24

    if-ge v0, v14, :cond_a2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    move/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/android/server/NotificationManagerService$NotificationRecord;

    move-object/from16 v0, v35

    iget-object v6, v0, Lcom/android/server/NotificationManagerService$NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9f

    move-object/from16 v0, v35

    iget-object v6, v0, Lcom/android/server/NotificationManagerService$NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v6

    move/from16 v0, p9

    if-ne v6, v0, :cond_9f

    add-int/lit8 v19, v19, 0x1

    const/16 v6, 0x32

    move/from16 v0, v19

    if-lt v0, v6, :cond_9f

    const-string v6, "NotificationService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Package has already posted "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " notifications.  Not showing more.  package="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v7

    :cond_9a
    :goto_9a
    return-void

    :cond_9b
    const/16 v28, 0x0

    goto/16 :goto_15

    :cond_9f
    add-int/lit8 v24, v24, 0x1

    goto :goto_3f

    :cond_a2
    monitor-exit v7
    :try_end_a3
    .catchall {:try_start_35 .. :try_end_a3} :catchall_110

    :cond_a3
    const-string v6, "com.android.providers.downloads"

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b6

    const-string v6, "DownloadManager"

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_d9

    :cond_b6
    const/16 v6, 0xabe

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    const/4 v8, 0x1

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    aput-object p5, v7, v8

    const/4 v8, 0x3

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x4

    invoke-virtual/range {p7 .. p7}, Landroid/app/Notification;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    :cond_d9
    if-eqz p1, :cond_dd

    if-nez p7, :cond_113

    :cond_dd
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "null not allowed: pkg="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p6

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " notification="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :catchall_110
    move-exception v6

    :try_start_111
    monitor-exit v7
    :try_end_112
    .catchall {:try_start_111 .. :try_end_112} :catchall_110

    throw v6

    :cond_113
    move-object/from16 v0, p7

    iget v6, v0, Landroid/app/Notification;->icon:I

    if-eqz v6, :cond_152

    move-object/from16 v0, p7

    iget-object v6, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-nez v6, :cond_152

    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "contentView required: pkg="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p6

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " notification="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_152
    move-object/from16 v0, p7

    iget v6, v0, Landroid/app/Notification;->priority:I

    const/4 v7, -0x2

    const/4 v8, 0x2

    invoke-static {v6, v7, v8}, Lcom/android/server/NotificationManagerService;->clamp(III)I

    move-result v6

    move-object/from16 v0, p7

    iput v6, v0, Landroid/app/Notification;->priority:I

    move-object/from16 v0, p7

    iget v6, v0, Landroid/app/Notification;->flags:I

    and-int/lit16 v6, v6, 0x80

    if-eqz v6, :cond_174

    move-object/from16 v0, p7

    iget v6, v0, Landroid/app/Notification;->priority:I

    const/4 v7, 0x2

    if-ge v6, v7, :cond_174

    const/4 v6, 0x2

    move-object/from16 v0, p7

    iput v6, v0, Landroid/app/Notification;->priority:I

    :cond_174
    move-object/from16 v0, p7

    iget v6, v0, Landroid/app/Notification;->priority:I

    mul-int/lit8 v11, v6, 0xa

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/server/NotificationManagerService;->noteNotificationOp(Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_1aa

    if-nez v28, :cond_1aa

    const/16 v11, -0x3e8

    const-string v6, "NotificationService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Suppressing notification from package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " by user request."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1aa
    const/16 v6, -0x14

    if-lt v11, v6, :cond_9a

    const/16 v6, -0xa

    if-lt v11, v6, :cond_4aa

    const/16 v17, 0x1

    :goto_1b4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    monitor-enter v43

    :try_start_1bb
    new-instance v5, Landroid/service/notification/StatusBarNotification;

    move-object/from16 v6, p1

    move/from16 v7, p6

    move-object/from16 v8, p5

    move/from16 v9, p3

    move/from16 v10, p4

    move-object/from16 v12, p7

    invoke-direct/range {v5 .. v13}, Landroid/service/notification/StatusBarNotification;-><init>(Ljava/lang/String;ILjava/lang/String;IIILandroid/app/Notification;Landroid/os/UserHandle;)V

    new-instance v35, Lcom/android/server/NotificationManagerService$NotificationRecord;

    move-object/from16 v0, v35

    invoke-direct {v0, v5}, Lcom/android/server/NotificationManagerService$NotificationRecord;-><init>(Landroid/service/notification/StatusBarNotification;)V

    const/16 v31, 0x0

    const/16 v33, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/NotificationManagerService;->hasClearableItems(Ljava/util/ArrayList;)Z

    move-result v6

    if-nez v6, :cond_1f5

    move-object/from16 v0, p7

    iget v6, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v6, v6, 0x2

    if-nez v6, :cond_1f5

    move-object/from16 v0, p7

    iget v6, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v6, v6, 0x20

    if-nez v6, :cond_1f5

    const/16 v33, 0x1

    :cond_1f5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    move/from16 v3, p6

    move/from16 v4, p9

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/NotificationManagerService;->indexOfNotificationLocked(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v27

    if-gez v27, :cond_4ae

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    move-object/from16 v0, v35

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_20e
    :goto_20e
    if-eqz v33, :cond_213

    invoke-direct/range {p0 .. p0}, Lcom/android/server/NotificationManagerService;->updateSoundLocked()V

    :cond_213
    move-object/from16 v0, p7

    iget v6, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v6, v6, 0x40

    if-eqz v6, :cond_225

    move-object/from16 v0, p7

    iget v6, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v6, v6, 0x22

    move-object/from16 v0, p7

    iput v6, v0, Landroid/app/Notification;->flags:I

    :cond_225
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_228
    .catchall {:try_start_1bb .. :try_end_228} :catchall_4e0

    move-result-wide v38

    :try_start_229
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I
    :try_end_22c
    .catchall {:try_start_229 .. :try_end_22c} :catchall_4e3

    move-result v20

    :try_start_22d
    invoke-static/range {v38 .. v39}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object/from16 v0, p7

    iget v6, v0, Landroid/app/Notification;->icon:I

    if-eqz v6, :cond_513

    if-eqz v31, :cond_4ed

    move-object/from16 v0, v31

    iget-object v6, v0, Lcom/android/server/NotificationManagerService$NotificationRecord;->statusBarKey:Landroid/os/IBinder;

    if-eqz v6, :cond_4ed

    move-object/from16 v0, v31

    iget-object v6, v0, Lcom/android/server/NotificationManagerService$NotificationRecord;->statusBarKey:Landroid/os/IBinder;

    move-object/from16 v0, v35

    iput-object v6, v0, Lcom/android/server/NotificationManagerService$NotificationRecord;->statusBarKey:Landroid/os/IBinder;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_249
    .catchall {:try_start_22d .. :try_end_249} :catchall_4e0

    move-result-wide v25

    :try_start_24a
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/NotificationManagerService;->mStatusBar:Lcom/android/server/StatusBarManagerService;

    move-object/from16 v0, v35

    iget-object v7, v0, Lcom/android/server/NotificationManagerService$NotificationRecord;->statusBarKey:Landroid/os/IBinder;

    invoke-virtual {v6, v7, v5}, Lcom/android/server/StatusBarManagerService;->updateNotification(Landroid/os/IBinder;Landroid/service/notification/StatusBarNotification;)V
    :try_end_255
    .catchall {:try_start_24a .. :try_end_255} :catchall_4e8

    :try_start_255
    invoke-static/range {v25 .. v26}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_258
    move/from16 v0, v20

    move/from16 v1, p9

    if-ne v0, v1, :cond_2bd

    move-object/from16 v0, p0

    move-object/from16 v1, p7

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/NotificationManagerService;->sendAccessibilityEvent(Landroid/app/Notification;Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/server/NotificationManagerService;->mSystemReady:Z

    if-eqz v6, :cond_2bd

    new-instance v30, Landroid/content/Intent;

    const-string v6, "com.android.server.NotificationManagerService.NotificationArrived"

    move-object/from16 v0, v30

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "com.android.phone"

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_28a

    const-string v6, "com.android.mms"

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2ad

    :cond_28a
    if-eqz p7, :cond_2ad

    move-object/from16 v0, p7

    iget v6, v0, Landroid/app/Notification;->missedCount:I

    if-lez v6, :cond_2ad

    const-string v6, "Notification"

    move-object/from16 v0, v30

    move-object/from16 v1, p7

    invoke-virtual {v0, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v6, "pkg"

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-virtual {v0, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "id"

    move-object/from16 v0, v30

    move/from16 v1, p6

    invoke-virtual {v0, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_2ad
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    new-instance v7, Landroid/os/UserHandle;

    move/from16 v0, p9

    invoke-direct {v7, v0}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v30

    invoke-virtual {v6, v0, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_2bd
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Lcom/android/server/NotificationManagerService;->notifyPostedLocked(Lcom/android/server/NotificationManagerService$NotificationRecord;)V

    :goto_2c4
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/NotificationManagerService;->mDisabledNotifications:I

    const/high16 v7, 0x4

    and-int/2addr v6, v7

    if-nez v6, :cond_478

    if-eqz v31, :cond_2d7

    move-object/from16 v0, p7

    iget v6, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v6, v6, 0x8

    if-nez v6, :cond_478

    :cond_2d7
    invoke-virtual/range {v35 .. v35}, Lcom/android/server/NotificationManagerService$NotificationRecord;->getUserId()I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_2ee

    invoke-virtual/range {v35 .. v35}, Lcom/android/server/NotificationManagerService$NotificationRecord;->getUserId()I

    move-result v6

    move/from16 v0, p9

    if-ne v6, v0, :cond_478

    invoke-virtual/range {v35 .. v35}, Lcom/android/server/NotificationManagerService$NotificationRecord;->getUserId()I

    move-result v6

    move/from16 v0, v20

    if-ne v6, v0, :cond_478

    :cond_2ee
    if-eqz v17, :cond_478

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/server/NotificationManagerService;->mSystemReady:Z

    if-eqz v6, :cond_478

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    const-string v7, "audio"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/media/AudioManager;

    move-object/from16 v0, p7

    iget v6, v0, Landroid/app/Notification;->defaults:I

    and-int/lit8 v6, v6, 0x1

    if-nez v6, :cond_316

    sget-object v6, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    move-object/from16 v0, p7

    iget-object v7, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_571

    :cond_316
    const/16 v40, 0x1

    :goto_318
    const/16 v37, 0x0

    const/16 v23, 0x0

    if-eqz v40, :cond_579

    sget-object v37, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v36

    const-string v6, "notification_sound"

    move-object/from16 v0, v36

    invoke-static {v0, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_575

    const/16 v23, 0x1

    :cond_334
    :goto_334
    if-eqz v23, :cond_407

    move-object/from16 v0, p7

    iget v6, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_58e

    const/16 v29, 0x1

    :goto_340
    move-object/from16 v0, p7

    iget v6, v0, Landroid/app/Notification;->audioStreamType:I

    if-ltz v6, :cond_592

    move-object/from16 v0, p7

    iget v0, v0, Landroid/app/Notification;->audioStreamType:I

    move/from16 v16, v0

    :goto_34c
    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/NotificationManagerService;->mSoundNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    invoke-virtual/range {v15 .. v16}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v6

    if-eqz v6, :cond_5eb

    invoke-virtual {v15}, Landroid/media/AudioManager;->isSpeechRecognitionActive()Z

    move-result v6

    if-eqz v6, :cond_36e

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/NotificationManagerService;->mkgm:Landroid/app/KeyguardManager;

    if-eqz v6, :cond_5eb

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/NotificationManagerService;->mkgm:Landroid/app/KeyguardManager;

    invoke-virtual {v6}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v6

    if-eqz v6, :cond_5eb

    :cond_36e
    invoke-virtual {v15}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_5eb

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_378
    .catchall {:try_start_255 .. :try_end_378} :catchall_4e0

    move-result-wide v25

    :try_start_379
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/NotificationManagerService;->mAudioService:Landroid/media/IAudioService;

    invoke-interface {v6}, Landroid/media/IAudioService;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    move-result-object v34

    if-eqz v34, :cond_404

    const-string v6, "STATUSBAR-NotificationService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "enqueN playAsync Type="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v34

    move-object/from16 v1, v37

    move/from16 v2, v29

    move/from16 v3, v16

    invoke-interface {v0, v1, v13, v2, v3}, Landroid/media/IRingtonePlayer;->playAsync(Landroid/net/Uri;Landroid/os/UserHandle;ZI)V

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/android/server/NotificationManagerService;->mIsPlaying:Z

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/NotificationManagerService;->mMethodRingtonePlayer:Ljava/lang/reflect/Method;

    if-eqz v6, :cond_404

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/NotificationManagerService$OverTurnPlayer;

    invoke-virtual {v6}, Lcom/android/server/NotificationManagerService$OverTurnPlayer;->isEnable()Z

    move-result v6

    if-eqz v6, :cond_404

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/NotificationManagerService$OverTurnPlayer;

    invoke-virtual {v6}, Lcom/android/server/NotificationManagerService$OverTurnPlayer;->isRegister()Z

    move-result v6

    if-nez v6, :cond_404

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/NotificationManagerService$OverTurnPlayer;

    invoke-virtual {v6}, Lcom/android/server/NotificationManagerService$OverTurnPlayer;->register()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/NotificationManagerService;->mNotificationPlayerBinder:Landroid/os/IBinder;

    if-nez v6, :cond_404

    const/4 v6, 0x1

    new-array v0, v6, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/4 v6, 0x0

    new-instance v7, Lcom/android/server/NotificationManagerService$6;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/android/server/NotificationManagerService$6;-><init>(Lcom/android/server/NotificationManagerService;)V

    aput-object v7, v32, v6
    :try_end_3e3
    .catchall {:try_start_379 .. :try_end_3e3} :catchall_5e6
    .catch Landroid/os/RemoteException; {:try_start_379 .. :try_end_3e3} :catch_5bb

    :try_start_3e3
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/NotificationManagerService;->mMethodRingtonePlayer:Ljava/lang/reflect/Method;

    move-object/from16 v0, v34

    move-object/from16 v1, v32

    invoke-virtual {v6, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/IBinder;

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/server/NotificationManagerService;->mNotificationPlayerBinder:Landroid/os/IBinder;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/NotificationManagerService;->mNotificationPlayerBinder:Landroid/os/IBinder;

    new-instance v7, Lcom/android/server/NotificationManagerService$7;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/android/server/NotificationManagerService$7;-><init>(Lcom/android/server/NotificationManagerService;)V

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_404
    .catchall {:try_start_3e3 .. :try_end_404} :catchall_5e6
    .catch Ljava/lang/IllegalAccessException; {:try_start_3e3 .. :try_end_404} :catch_596
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3e3 .. :try_end_404} :catch_5c1
    .catch Landroid/os/RemoteException; {:try_start_3e3 .. :try_end_404} :catch_5bb

    :cond_404
    :goto_404
    :try_start_404
    invoke-static/range {v25 .. v26}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_407
    :goto_407
    move-object/from16 v0, p7

    iget-object v6, v0, Landroid/app/Notification;->vibrate:[J

    if-eqz v6, :cond_609

    const/16 v22, 0x1

    :goto_40f
    if-nez v22, :cond_60d

    if-eqz v23, :cond_60d

    invoke-virtual {v15}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_60d

    const/16 v18, 0x1

    :goto_41c
    move-object/from16 v0, p7

    iget v6, v0, Landroid/app/Notification;->defaults:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_611

    const/16 v41, 0x1

    :goto_426
    move-object/from16 v0, p7

    iget v6, v0, Landroid/app/Notification;->haptic:I

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/NotificationManagerService;->doesItUseHaptic(I)Z

    move-result v42

    if-nez v41, :cond_438

    if-nez v18, :cond_438

    if-nez v22, :cond_438

    if-eqz v42, :cond_478

    :cond_438
    invoke-virtual {v15}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v6

    if-eqz v6, :cond_478

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/NotificationManagerService;->mVibrateNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    const-string v6, "STATUSBAR-NotificationService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Noti Alert - doVibrate "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v41

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " convertStoV="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v41, :cond_46e

    if-eqz v18, :cond_615

    :cond_46e
    const/4 v6, 0x1

    :goto_46f
    move-object/from16 v0, p0

    move/from16 v1, v42

    move-object/from16 v2, p7

    invoke-direct {v0, v6, v1, v2}, Lcom/android/server/NotificationManagerService;->doVibrate(ZZLandroid/app/Notification;)V

    :cond_478
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    move-object/from16 v0, v31

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/NotificationManagerService;->mLedNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    move-object/from16 v0, v31

    if-ne v6, v0, :cond_48e

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/server/NotificationManagerService;->mLedNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    :cond_48e
    move-object/from16 v0, p7

    iget v6, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_618

    if-eqz v17, :cond_618

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    move-object/from16 v0, v35

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct/range {p0 .. p0}, Lcom/android/server/NotificationManagerService;->updateLightsLocked()V

    :cond_4a4
    :goto_4a4
    monitor-exit v43
    :try_end_4a5
    .catchall {:try_start_404 .. :try_end_4a5} :catchall_4e0

    const/4 v6, 0x0

    aput p6, p8, v6

    goto/16 :goto_9a

    :cond_4aa
    const/16 v17, 0x0

    goto/16 :goto_1b4

    :cond_4ae
    :try_start_4ae
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    move/from16 v0, v27

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/android/server/NotificationManagerService$NotificationRecord;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    move/from16 v0, v27

    move-object/from16 v1, v35

    invoke-virtual {v6, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    sget-boolean v6, Lcom/android/server/NotificationManagerService;->canListInterrupt:Z

    or-int v6, v6, v17

    sput-boolean v6, Lcom/android/server/NotificationManagerService;->canListInterrupt:Z

    if-eqz v31, :cond_20e

    move-object/from16 v0, p7

    iget v6, v0, Landroid/app/Notification;->flags:I

    invoke-virtual/range {v31 .. v31}, Lcom/android/server/NotificationManagerService$NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v7

    iget v7, v7, Landroid/app/Notification;->flags:I

    and-int/lit8 v7, v7, 0x40

    or-int/2addr v6, v7

    move-object/from16 v0, p7

    iput v6, v0, Landroid/app/Notification;->flags:I

    goto/16 :goto_20e

    :catchall_4e0
    move-exception v6

    monitor-exit v43
    :try_end_4e2
    .catchall {:try_start_4ae .. :try_end_4e2} :catchall_4e0

    throw v6

    :catchall_4e3
    move-exception v6

    :try_start_4e4
    invoke-static/range {v38 .. v39}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6

    :catchall_4e8
    move-exception v6

    invoke-static/range {v25 .. v26}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6

    :cond_4ed
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_4f0
    .catchall {:try_start_4e4 .. :try_end_4f0} :catchall_4e0

    move-result-wide v25

    :try_start_4f1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/NotificationManagerService;->mStatusBar:Lcom/android/server/StatusBarManagerService;

    invoke-virtual {v6, v5}, Lcom/android/server/StatusBarManagerService;->addNotification(Landroid/service/notification/StatusBarNotification;)Landroid/os/IBinder;

    move-result-object v6

    move-object/from16 v0, v35

    iput-object v6, v0, Lcom/android/server/NotificationManagerService$NotificationRecord;->statusBarKey:Landroid/os/IBinder;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    iget v6, v6, Landroid/app/Notification;->flags:I
    :try_end_503
    .catchall {:try_start_4f1 .. :try_end_503} :catchall_50e

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_509

    if-eqz v17, :cond_509

    :cond_509
    :try_start_509
    invoke-static/range {v25 .. v26}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_258

    :catchall_50e
    move-exception v6

    invoke-static/range {v25 .. v26}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6

    :cond_513
    const-string v6, "NotificationService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Not posting notification with icon==0: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v31, :cond_54e

    move-object/from16 v0, v31

    iget-object v6, v0, Lcom/android/server/NotificationManagerService$NotificationRecord;->statusBarKey:Landroid/os/IBinder;

    if-eqz v6, :cond_54e

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_538
    .catchall {:try_start_509 .. :try_end_538} :catchall_4e0

    move-result-wide v25

    :try_start_539
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/NotificationManagerService;->mStatusBar:Lcom/android/server/StatusBarManagerService;

    move-object/from16 v0, v31

    iget-object v7, v0, Lcom/android/server/NotificationManagerService$NotificationRecord;->statusBarKey:Landroid/os/IBinder;

    invoke-virtual {v6, v7}, Lcom/android/server/StatusBarManagerService;->removeNotification(Landroid/os/IBinder;)V
    :try_end_544
    .catchall {:try_start_539 .. :try_end_544} :catchall_56c

    :try_start_544
    invoke-static/range {v25 .. v26}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Lcom/android/server/NotificationManagerService;->notifyRemovedLocked(Lcom/android/server/NotificationManagerService$NotificationRecord;)V

    :cond_54e
    const-string v6, "NotificationService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "WARNING: In a future release this will crash the app: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2c4

    :catchall_56c
    move-exception v6

    invoke-static/range {v25 .. v26}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6

    :cond_571
    const/16 v40, 0x0

    goto/16 :goto_318

    :cond_575
    const/16 v23, 0x0

    goto/16 :goto_334

    :cond_579
    move-object/from16 v0, p7

    iget-object v6, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    if-eqz v6, :cond_334

    move-object/from16 v0, p7

    iget-object v0, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    move-object/from16 v37, v0
    :try_end_585
    .catchall {:try_start_544 .. :try_end_585} :catchall_4e0

    if-eqz v37, :cond_58b

    const/16 v23, 0x1

    :goto_589
    goto/16 :goto_334

    :cond_58b
    const/16 v23, 0x0

    goto :goto_589

    :cond_58e
    const/16 v29, 0x0

    goto/16 :goto_340

    :cond_592
    const/16 v16, 0x5

    goto/16 :goto_34c

    :catch_596
    move-exception v21

    :try_start_597
    const-string v6, "STATUSBAR-NotificationService"

    const-string v7, "IllegalAccessException"

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/server/NotificationManagerService;->mNotificationPlayerBinder:Landroid/os/IBinder;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/NotificationManagerService$OverTurnPlayer;

    invoke-virtual {v6}, Lcom/android/server/NotificationManagerService$OverTurnPlayer;->isRegister()Z

    move-result v6

    if-eqz v6, :cond_5b4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/NotificationManagerService$OverTurnPlayer;

    invoke-virtual {v6}, Lcom/android/server/NotificationManagerService$OverTurnPlayer;->unregister()V

    :cond_5b4
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/android/server/NotificationManagerService;->mIsPlaying:Z
    :try_end_5b9
    .catchall {:try_start_597 .. :try_end_5b9} :catchall_5e6
    .catch Landroid/os/RemoteException; {:try_start_597 .. :try_end_5b9} :catch_5bb

    goto/16 :goto_404

    :catch_5bb
    move-exception v6

    :try_start_5bc
    invoke-static/range {v25 .. v26}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_5bf
    .catchall {:try_start_5bc .. :try_end_5bf} :catchall_4e0

    goto/16 :goto_407

    :catch_5c1
    move-exception v21

    :try_start_5c2
    const-string v6, "STATUSBAR-NotificationService"

    const-string v7, "InvocationTargetException"

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/server/NotificationManagerService;->mNotificationPlayerBinder:Landroid/os/IBinder;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/NotificationManagerService$OverTurnPlayer;

    invoke-virtual {v6}, Lcom/android/server/NotificationManagerService$OverTurnPlayer;->isRegister()Z

    move-result v6

    if-eqz v6, :cond_5df

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/NotificationManagerService$OverTurnPlayer;

    invoke-virtual {v6}, Lcom/android/server/NotificationManagerService$OverTurnPlayer;->unregister()V

    :cond_5df
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/android/server/NotificationManagerService;->mIsPlaying:Z
    :try_end_5e4
    .catchall {:try_start_5c2 .. :try_end_5e4} :catchall_5e6
    .catch Landroid/os/RemoteException; {:try_start_5c2 .. :try_end_5e4} :catch_5bb

    goto/16 :goto_404

    :catchall_5e6
    move-exception v6

    :try_start_5e7
    invoke-static/range {v25 .. v26}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6

    :cond_5eb
    const-string v6, "STATUSBAR-NotificationService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isSpeechRecognitionActive :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v15}, Landroid/media/AudioManager;->isSpeechRecognitionActive()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_407

    :cond_609
    const/16 v22, 0x0

    goto/16 :goto_40f

    :cond_60d
    const/16 v18, 0x0

    goto/16 :goto_41c

    :cond_611
    const/16 v41, 0x0

    goto/16 :goto_426

    :cond_615
    const/4 v6, 0x0

    goto/16 :goto_46f

    :cond_618
    if-eqz v31, :cond_4a4

    invoke-virtual/range {v31 .. v31}, Lcom/android/server/NotificationManagerService$NotificationRecord;->getFlags()I

    move-result v6

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_4a4

    invoke-direct/range {p0 .. p0}, Lcom/android/server/NotificationManagerService;->updateLightsLocked()V
    :try_end_625
    .catchall {:try_start_5e7 .. :try_end_625} :catchall_4e0

    goto/16 :goto_4a4
.end method

.method public enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;[II)V
    .registers 24

    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getApplicationPolicy()Landroid/sec/enterprise/ApplicationPolicy;

    move-result-object v12

    if-eqz v12, :cond_20

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/sec/enterprise/ApplicationPolicy;->isStatusBarNotificationAllowed(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_20

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    invoke-virtual {v12}, Landroid/sec/enterprise/ApplicationPolicy;->getApplicationNotificationMode()I

    move-result v13

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_73

    packed-switch v13, :pswitch_data_b0

    :cond_20
    :goto_20
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/NotificationManagerService;->enqueueNotificationInternal(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILandroid/app/Notification;[II)V

    :cond_3b
    return-void

    :pswitch_3c
    :try_start_3c
    const-string v1, "NotificationService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notify: Block all - flag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p5

    iget v3, v0, Landroid/app/Notification;->flags:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "com.android.phone"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    move-object/from16 v0, p5

    iget v1, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v1, v1, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3b

    const-string v1, "NotificationService"

    const-string v2, "notify: Do not block"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_72} :catch_73

    goto :goto_20

    :catch_73
    move-exception v11

    const-string v1, "NotificationManager"

    const-string v2, "Is edm running?"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20

    :pswitch_7c
    const/4 v1, 0x0

    :try_start_7d
    move-object/from16 v0, p5

    iput-object v1, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    const-string v1, "NotificationService"

    const-string v2, "notify: Block text sound"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :pswitch_88
    const-string v1, ""

    move-object/from16 v0, p5

    iput-object v1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    move-object/from16 v0, p5

    iget-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v2, 0x102004e

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    move-object/from16 v0, p5

    iget-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v2, 0x1020016

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const-string v1, "NotificationService"

    const-string v2, "notify: Block text"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ad
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_ad} :catch_73

    goto/16 :goto_20

    nop

    :pswitch_data_b0
    .packed-switch 0x2
        :pswitch_3c
        :pswitch_88
        :pswitch_7c
    .end packed-switch
.end method

.method public enqueueToast(Ljava/lang/String;Landroid/app/ITransientNotification;I)V
    .registers 21

    if-eqz p1, :cond_4

    if-nez p2, :cond_2b

    :cond_4
    const-string v13, "NotificationService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Not doing toast. pkg="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " callback="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2a
    return-void

    :cond_2b
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/NotificationManagerService;->isCallerSystem()Z

    move-result v13

    if-nez v13, :cond_3b

    const-string v13, "android"

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6d

    :cond_3b
    const/4 v10, 0x1

    :goto_3c
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v13

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13}, Lcom/android/server/NotificationManagerService;->noteNotificationOp(Ljava/lang/String;I)Z

    move-result v13

    if-nez v13, :cond_6f

    if-nez v10, :cond_6f

    const-string v13, "NotificationService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Suppressing toast from package "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " by user request."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a

    :cond_6d
    const/4 v10, 0x0

    goto :goto_3c

    :cond_6f
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    monitor-enter v14

    :try_start_74
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_7b
    .catchall {:try_start_74 .. :try_end_7b} :catchall_9b

    move-result-wide v4

    :try_start_7c
    invoke-direct/range {p0 .. p2}, Lcom/android/server/NotificationManagerService;->indexOfToastLocked(Ljava/lang/String;Landroid/app/ITransientNotification;)I

    move-result v9

    if-ltz v9, :cond_9e

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/NotificationManagerService$ToastRecord;

    move/from16 v0, p3

    invoke-virtual {v12, v0}, Lcom/android/server/NotificationManagerService$ToastRecord;->update(I)V

    :goto_91
    if-nez v9, :cond_96

    invoke-direct/range {p0 .. p0}, Lcom/android/server/NotificationManagerService;->showNextToastLocked()V
    :try_end_96
    .catchall {:try_start_7c .. :try_end_96} :catchall_116

    :cond_96
    :try_start_96
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v14

    goto :goto_2a

    :catchall_9b
    move-exception v13

    monitor-exit v14
    :try_end_9d
    .catchall {:try_start_96 .. :try_end_9d} :catchall_9b

    throw v13

    :cond_9e
    if-nez v10, :cond_f3

    const/4 v7, 0x0

    :try_start_a1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v8, 0x0

    :goto_aa
    if-ge v8, v3, :cond_f3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/NotificationManagerService$ToastRecord;

    iget-object v13, v11, Lcom/android/server/NotificationManagerService$ToastRecord;->pkg:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_f0

    add-int/lit8 v7, v7, 0x1

    const/16 v13, 0x32

    if-lt v7, v13, :cond_f0

    const-string v13, "NotificationService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Package has already posted "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " toasts. Not showing more. Package="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ea
    .catchall {:try_start_a1 .. :try_end_ea} :catchall_116

    :try_start_ea
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v14
    :try_end_ee
    .catchall {:try_start_ea .. :try_end_ee} :catchall_9b

    goto/16 :goto_2a

    :cond_f0
    add-int/lit8 v8, v8, 0x1

    goto :goto_aa

    :cond_f3
    :try_start_f3
    new-instance v12, Lcom/android/server/NotificationManagerService$ToastRecord;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v12, v6, v0, v1, v2}, Lcom/android/server/NotificationManagerService$ToastRecord;-><init>(ILjava/lang/String;Landroid/app/ITransientNotification;I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v9, v13, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/NotificationManagerService;->keepProcessAliveLocked(I)V
    :try_end_114
    .catchall {:try_start_f3 .. :try_end_114} :catchall_116

    goto/16 :goto_91

    :catchall_116
    move-exception v13

    :try_start_117
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v13
    :try_end_11b
    .catchall {:try_start_117 .. :try_end_11b} :catchall_9b
.end method

.method public getActiveNotifications(Ljava/lang/String;)[Landroid/service/notification/StatusBarNotification;
    .registers 9

    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.ACCESS_NOTIFICATIONS"

    const-string v6, "NotificationManagerService.getActiveNotifications"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v5, 0x19

    invoke-virtual {v4, v5, v3, p1}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    move-result v4

    if-nez v4, :cond_3c

    iget-object v5, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v5

    :try_start_1b
    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v2, v4, [Landroid/service/notification/StatusBarNotification;

    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_2a
    if-ge v1, v0, :cond_3b

    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/NotificationManagerService$NotificationRecord;

    iget-object v4, v4, Lcom/android/server/NotificationManagerService$NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    aput-object v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    :cond_3b
    monitor-exit v5

    :cond_3c
    return-object v2

    :catchall_3d
    move-exception v4

    monitor-exit v5
    :try_end_3f
    .catchall {:try_start_1b .. :try_end_3f} :catchall_3d

    throw v4
.end method

.method public getActiveNotificationsFromListener(Landroid/service/notification/INotificationListener;)[Landroid/service/notification/StatusBarNotification;
    .registers 10

    invoke-direct {p0, p1}, Lcom/android/server/NotificationManagerService;->checkListenerToken(Landroid/service/notification/INotificationListener;)Lcom/android/server/NotificationManagerService$NotificationListenerInfo;

    move-result-object v2

    const/4 v6, 0x0

    new-array v4, v6, [Landroid/service/notification/StatusBarNotification;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v7, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v7

    :try_start_f
    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_16
    if-ge v1, v0, :cond_2e

    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/NotificationManagerService$NotificationRecord;

    iget-object v5, v6, Lcom/android/server/NotificationManagerService$NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2, v5}, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;->enabledAndUserMatches(Landroid/service/notification/StatusBarNotification;)Z

    move-result v6

    if-eqz v6, :cond_2b

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_2e
    monitor-exit v7
    :try_end_2f
    .catchall {:try_start_f .. :try_end_2f} :catchall_36

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/service/notification/StatusBarNotification;

    return-object v6

    :catchall_36
    move-exception v6

    :try_start_37
    monitor-exit v7
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    throw v6
.end method

.method public getHistoricalNotifications(Ljava/lang/String;I)[Landroid/service/notification/StatusBarNotification;
    .registers 8

    iget-object v2, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.ACCESS_NOTIFICATIONS"

    const-string v4, "NotificationManagerService.getHistoricalNotifications"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/NotificationManagerService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v3, 0x19

    invoke-virtual {v2, v3, v1, p1}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    move-result v2

    if-nez v2, :cond_22

    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mArchive:Lcom/android/server/NotificationManagerService$Archive;

    monitor-enter v3

    :try_start_1b
    iget-object v2, p0, Lcom/android/server/NotificationManagerService;->mArchive:Lcom/android/server/NotificationManagerService$Archive;

    invoke-virtual {v2, p2}, Lcom/android/server/NotificationManagerService$Archive;->getArray(I)[Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    monitor-exit v3

    :cond_22
    return-object v0

    :catchall_23
    move-exception v2

    monitor-exit v3
    :try_end_25
    .catchall {:try_start_1b .. :try_end_25} :catchall_23

    throw v2
.end method

.method public getNotificationInfo(Ljava/lang/String;I)Landroid/app/NotificationInfo;
    .registers 11

    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_3
    iget-object v2, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_48

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/NotificationManagerService$NotificationRecord;

    iget-object v2, v1, Lcom/android/server/NotificationManagerService$NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, v1, Lcom/android/server/NotificationManagerService$NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v2

    if-ne v2, p2, :cond_9

    new-instance v2, Landroid/app/NotificationInfo;

    invoke-virtual {v1}, Lcom/android/server/NotificationManagerService$NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget v4, v4, Landroid/app/Notification;->commonValue:I

    invoke-virtual {v1}, Lcom/android/server/NotificationManagerService$NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v5

    iget v5, v5, Landroid/app/Notification;->missedCount:I

    invoke-virtual {v1}, Lcom/android/server/NotificationManagerService$NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v6

    iget-object v6, v6, Landroid/app/Notification;->contactCharSeq:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Lcom/android/server/NotificationManagerService$NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v7

    iget-object v7, v7, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-direct {v2, v4, v5, v6, v7}, Landroid/app/NotificationInfo;-><init>(IILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    monitor-exit v3

    :goto_47
    return-object v2

    :cond_48
    monitor-exit v3

    const/4 v2, 0x0

    goto :goto_47

    :catchall_4b
    move-exception v2

    monitor-exit v3
    :try_end_4d
    .catchall {:try_start_3 .. :try_end_4d} :catchall_4b

    throw v2
.end method

.method isCallerSystem()Z
    .registers 4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v2, 0x3e8

    if-eq v0, v2, :cond_12

    const/16 v2, 0x3e9

    if-eq v0, v2, :cond_12

    if-nez v1, :cond_14

    :cond_12
    const/4 v2, 0x1

    :goto_13
    return v2

    :cond_14
    const/4 v2, 0x0

    goto :goto_13
.end method

.method rebindListenerServices()V
    .registers 21

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "enabled_notification_listeners"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v6}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService;->mListeners:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    new-array v0, v0, [Lcom/android/server/NotificationManagerService$NotificationListenerInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    monitor-enter v18

    :try_start_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService;->mListeners:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    check-cast v0, [Lcom/android/server/NotificationManagerService$NotificationListenerInfo;

    move-object/from16 v16, v0

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    if-eqz v7, :cond_86

    const-string v17, ":"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    :goto_5d
    array-length v0, v5

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v8, v0, :cond_7e

    aget-object v17, v5, v8

    invoke-static/range {v17 .. v17}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_7b

    invoke-virtual {v12, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_7b
    add-int/lit8 v8, v8, 0x1

    goto :goto_5d

    :cond_7e
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/server/NotificationManagerService;->mEnabledListenersForCurrentUser:Ljava/util/HashSet;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/NotificationManagerService;->mEnabledListenerPackageNames:Ljava/util/HashSet;

    :cond_86
    monitor-exit v18
    :try_end_87
    .catchall {:try_start_2f .. :try_end_87} :catchall_c7

    move-object/from16 v3, v16

    array-length v11, v3

    const/4 v9, 0x0

    :goto_8b
    if-ge v9, v11, :cond_ca

    aget-object v10, v3, v9

    iget-object v4, v10, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;->component:Landroid/content/ComponentName;

    iget v14, v10, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;->userid:I

    const-string v17, "NotificationService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "disabling notification listener for user "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ": "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, v10, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;->userid:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v4, v1}, Lcom/android/server/NotificationManagerService;->unregisterListenerService(Landroid/content/ComponentName;I)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_8b

    :catchall_c7
    move-exception v17

    :try_start_c8
    monitor-exit v18
    :try_end_c9
    .catchall {:try_start_c8 .. :try_end_c9} :catchall_c7

    throw v17

    :cond_ca
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v8, 0x0

    :goto_cf
    if-ge v8, v2, :cond_105

    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    const-string v17, "NotificationService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "enabling notification listener for user "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ": "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v6}, Lcom/android/server/NotificationManagerService;->registerListenerService(Landroid/content/ComponentName;I)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_cf

    :cond_105
    return-void
.end method

.method public registerListener(Landroid/service/notification/INotificationListener;Landroid/content/ComponentName;I)V
    .registers 11

    invoke-virtual {p0}, Lcom/android/server/NotificationManagerService;->checkCallerIsSystem()V

    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v6

    :try_start_6
    new-instance v0, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;

    const/4 v5, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;-><init>(Lcom/android/server/NotificationManagerService;Landroid/service/notification/INotificationListener;Landroid/content/ComponentName;IZ)V

    invoke-interface {p1}, Landroid/service/notification/INotificationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    iget-object v1, p0, Lcom/android/server/NotificationManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1d
    .catchall {:try_start_6 .. :try_end_1d} :catchall_1f
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_1d} :catch_22

    :goto_1d
    :try_start_1d
    monitor-exit v6

    return-void

    :catchall_1f
    move-exception v1

    monitor-exit v6
    :try_end_21
    .catchall {:try_start_1d .. :try_end_21} :catchall_1f

    throw v1

    :catch_22
    move-exception v1

    goto :goto_1d
.end method

.method public setNotificationsEnabledForPackage(Ljava/lang/String;IZ)V
    .registers 10

    const/4 v4, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/server/NotificationManagerService;->checkCallerIsSystem()V

    const-string v1, "NotificationService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p3, :cond_3c

    const-string v0, "en"

    :goto_10
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "abling notifications for "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/NotificationManagerService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v3, 0xb

    if-eqz p3, :cond_3f

    move v0, v2

    :goto_2c
    invoke-virtual {v1, v3, p2, p1, v0}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    if-nez p3, :cond_3b

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/NotificationManagerService;->cancelAllNotificationsInt(Ljava/lang/String;IIZI)Z

    :cond_3b
    return-void

    :cond_3c
    const-string v0, "dis"

    goto :goto_10

    :cond_3f
    move v0, v4

    goto :goto_2c
.end method

.method systemReady()V
    .registers 8

    const/4 v6, 0x0

    const/4 v5, 0x1

    const-string v4, "audio"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/NotificationManagerService;->mAudioService:Landroid/media/IAudioService;

    iput-boolean v5, p0, Lcom/android/server/NotificationManagerService;->mSystemReady:Z

    invoke-virtual {p0}, Lcom/android/server/NotificationManagerService;->rebindListenerServices()V

    new-instance v3, Lcom/android/server/NotificationManagerService$PickupSettingsObserver;

    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mHandler:Lcom/android/server/NotificationManagerService$WorkerHandler;

    invoke-direct {v3, p0, v4}, Lcom/android/server/NotificationManagerService$PickupSettingsObserver;-><init>(Lcom/android/server/NotificationManagerService;Landroid/os/Handler;)V

    invoke-virtual {v3}, Lcom/android/server/NotificationManagerService$PickupSettingsObserver;->observe()V

    new-instance v4, Lcom/android/server/NotificationManagerService$OverTurnPlayer;

    invoke-direct {v4, p0}, Lcom/android/server/NotificationManagerService$OverTurnPlayer;-><init>(Lcom/android/server/NotificationManagerService;)V

    iput-object v4, p0, Lcom/android/server/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/NotificationManagerService$OverTurnPlayer;

    :try_start_24
    const-string v4, "android.media.IRingtonePlayer"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v4, 0x1

    new-array v2, v4, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/app/INotificationPlayerOnCompletionListener;

    aput-object v5, v2, v4

    const-string v4, "setOnCompletionListener"

    invoke-virtual {v0, v4, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/NotificationManagerService;->mMethodRingtonePlayer:Ljava/lang/reflect/Method;
    :try_end_3a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_24 .. :try_end_3a} :catch_3b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_24 .. :try_end_3a} :catch_46

    :goto_3a
    return-void

    :catch_3b
    move-exception v1

    const-string v4, "STATUSBAR-NotificationService"

    const-string v5, "ClassNotFoundException"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v6, p0, Lcom/android/server/NotificationManagerService;->mMethodRingtonePlayer:Ljava/lang/reflect/Method;

    goto :goto_3a

    :catch_46
    move-exception v1

    const-string v4, "STATUSBAR-NotificationService"

    const-string v5, "NoSuchMethodException"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v6, p0, Lcom/android/server/NotificationManagerService;->mMethodRingtonePlayer:Ljava/lang/reflect/Method;

    goto :goto_3a
.end method

.method public unregisterListener(Landroid/service/notification/INotificationListener;I)V
    .registers 9

    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_3
    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_b
    if-ltz v1, :cond_38

    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;

    iget-object v3, v2, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;->listener:Landroid/service/notification/INotificationListener;

    invoke-interface {v3}, Landroid/service/notification/INotificationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {p1}, Landroid/service/notification/INotificationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    if-ne v3, v5, :cond_35

    iget v3, v2, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;->userid:I

    if-ne v3, p2, :cond_35

    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v3, v2, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;->connection:Landroid/content/ServiceConnection;

    if-eqz v3, :cond_35

    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    iget-object v5, v2, Lcom/android/server/NotificationManagerService$NotificationListenerInfo;->connection:Landroid/content/ServiceConnection;

    invoke-virtual {v3, v5}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_35
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    :cond_38
    monitor-exit v4

    return-void

    :catchall_3a
    move-exception v3

    monitor-exit v4
    :try_end_3c
    .catchall {:try_start_3 .. :try_end_3c} :catchall_3a

    throw v3
.end method
