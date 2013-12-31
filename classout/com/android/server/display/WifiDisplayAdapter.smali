.class final Lcom/android/server/display/WifiDisplayAdapter;
.super Lcom/android/server/display/DisplayAdapter;
.source "WifiDisplayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;,
        Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayHandler;,
        Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;
    }
.end annotation


# static fields
.field private static final ACTION_DISCONNECT:Ljava/lang/String; = "android.server.display.wfd.DISCONNECT"

.field private static final DEBUG:Z = true

.field private static final MSG_SEND_STATUS_CHANGE_BROADCAST:I = 0x1

.field private static final MSG_UPDATE_NOTIFICATION:I = 0x2

.field private static final TAG:Ljava/lang/String; = "WifiDisplayAdapter"


# instance fields
.field private mActiveDisplay:Landroid/hardware/display/WifiDisplay;

.field private mActiveDisplayState:I

.field private mAvailableDisplays:[Landroid/hardware/display/WifiDisplay;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mConnectedState:I

.field private mCurrentStatus:Landroid/hardware/display/WifiDisplayStatus;

.field private mDisconnectPendingIntent:Landroid/app/PendingIntent;

.field private mDisplayController:Lcom/android/server/display/WifiDisplayController;

.field private mDisplayDevice:Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;

.field private mFeatureState:I

.field private final mHandler:Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayHandler;

.field private mLastConnectedAdapterName:Ljava/lang/String;

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field private mPendingNotificationUpdate:Z

.field private mPendingStatusChangeBroadcast:Z

.field private final mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

.field private mRememberedDisplays:[Landroid/hardware/display/WifiDisplay;

.field private mScanState:I

.field private mSettingsPendingIntent:Landroid/app/PendingIntent;

.field private final mSupportsProtectedBuffers:Z

.field private mWfdBridgeServer:Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;

.field private mWfdManager:Lcom/samsung/wfd/WfdManager;

.field private final mWifiDisplayListener:Lcom/android/server/display/WifiDisplayController$Listener;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Lcom/android/server/display/PersistentDataStore;)V
    .registers 13

    const/4 v6, 0x0

    const-string v5, "WifiDisplayAdapter"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/DisplayAdapter;-><init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Ljava/lang/String;)V

    sget-object v0, Landroid/hardware/display/WifiDisplay;->EMPTY_ARRAY:[Landroid/hardware/display/WifiDisplay;

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mAvailableDisplays:[Landroid/hardware/display/WifiDisplay;

    sget-object v0, Landroid/hardware/display/WifiDisplay;->EMPTY_ARRAY:[Landroid/hardware/display/WifiDisplay;

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mRememberedDisplays:[Landroid/hardware/display/WifiDisplay;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mConnectedState:I

    iput-object v6, p0, Lcom/android/server/display/WifiDisplayAdapter;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    iput-object v6, p0, Lcom/android/server/display/WifiDisplayAdapter;->mWfdBridgeServer:Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;

    new-instance v0, Lcom/android/server/display/WifiDisplayAdapter$9;

    invoke-direct {v0, p0}, Lcom/android/server/display/WifiDisplayAdapter$9;-><init>(Lcom/android/server/display/WifiDisplayAdapter;)V

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/display/WifiDisplayAdapter$12;

    invoke-direct {v0, p0}, Lcom/android/server/display/WifiDisplayAdapter$12;-><init>(Lcom/android/server/display/WifiDisplayAdapter;)V

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mWifiDisplayListener:Lcom/android/server/display/WifiDisplayController$Listener;

    new-instance v0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayHandler;

    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayHandler;-><init>(Lcom/android/server/display/WifiDisplayAdapter;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mHandler:Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayHandler;

    iput-object p5, p0, Lcom/android/server/display/WifiDisplayAdapter;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110059

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mSupportsProtectedBuffers:Z

    const-string v0, "notification"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v0, "wfd"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/wfd/WfdManager;

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/WifiDisplayController;
    .registers 2

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplayController:Lcom/android/server/display/WifiDisplayController;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/server/display/WifiDisplayAdapter;Lcom/android/server/display/WifiDisplayController;)Lcom/android/server/display/WifiDisplayController;
    .registers 2

    iput-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplayController:Lcom/android/server/display/WifiDisplayController;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/WifiDisplayController$Listener;
    .registers 2

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mWifiDisplayListener:Lcom/android/server/display/WifiDisplayController$Listener;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/display/WifiDisplayAdapter;)I
    .registers 2

    iget v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mScanState:I

    return v0
.end method

.method static synthetic access$1002(Lcom/android/server/display/WifiDisplayAdapter;I)I
    .registers 2

    iput p1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mScanState:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/PersistentDataStore;
    .registers 2

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/display/WifiDisplayAdapter;)[Landroid/hardware/display/WifiDisplay;
    .registers 2

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mAvailableDisplays:[Landroid/hardware/display/WifiDisplay;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/server/display/WifiDisplayAdapter;[Landroid/hardware/display/WifiDisplay;)[Landroid/hardware/display/WifiDisplay;
    .registers 2

    iput-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mAvailableDisplays:[Landroid/hardware/display/WifiDisplay;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/server/display/WifiDisplayAdapter;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayAdapter;->fixRememberedDisplayNamesFromAvailableDisplaysLocked()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/display/WifiDisplayAdapter;)I
    .registers 2

    iget v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplayState:I

    return v0
.end method

.method static synthetic access$1402(Lcom/android/server/display/WifiDisplayAdapter;I)I
    .registers 2

    iput p1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplayState:I

    return p1
.end method

.method static synthetic access$1500(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;
    .registers 2

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/server/display/WifiDisplayAdapter;Landroid/hardware/display/WifiDisplay;)Landroid/hardware/display/WifiDisplay;
    .registers 2

    iput-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/server/display/WifiDisplayAdapter;Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/display/WifiDisplayAdapter;->addDisplayDeviceLocked(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V

    return-void
.end method

.method static synthetic access$1702(Lcom/android/server/display/WifiDisplayAdapter;I)I
    .registers 2

    iput p1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mConnectedState:I

    return p1
.end method

.method static synthetic access$1800(Lcom/android/server/display/WifiDisplayAdapter;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/display/WifiDisplayAdapter;->renameDisplayDeviceLocked(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/display/WifiDisplayAdapter;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayAdapter;->removeDisplayDeviceLocked()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/content/BroadcastReceiver;
    .registers 2

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;
    .registers 2

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mWfdBridgeServer:Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/server/display/WifiDisplayAdapter;Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;)Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;
    .registers 2

    iput-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mWfdBridgeServer:Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/server/display/WifiDisplayAdapter;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayAdapter;->handleSendStatusChangeBroadcast()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/display/WifiDisplayAdapter;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayAdapter;->handleUpdateNotification()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/display/WifiDisplayAdapter;Landroid/net/wifi/p2p/WifiP2pDevice;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/display/WifiDisplayAdapter;->requestEnableSourceLocked(Landroid/net/wifi/p2p/WifiP2pDevice;I)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/server/display/WifiDisplayAdapter;ILjava/net/InetAddress;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/display/WifiDisplayAdapter;->launchWfdPlayer(ILjava/net/InetAddress;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/server/display/WifiDisplayAdapter;Landroid/net/wifi/p2p/WifiP2pDevice;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/display/WifiDisplayAdapter;->startSourceRTSP(Landroid/net/wifi/p2p/WifiP2pDevice;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayHandler;
    .registers 2

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mHandler:Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayHandler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/display/WifiDisplayAdapter;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mLastConnectedAdapterName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/display/WifiDisplayAdapter;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayAdapter;->requestClearConnectedDisplayInfo()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/display/WifiDisplayAdapter;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayAdapter;->requestSaveConnectedDisplayInfo()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/display/WifiDisplayAdapter;)I
    .registers 2

    iget v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mFeatureState:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/server/display/WifiDisplayAdapter;I)I
    .registers 2

    iput p1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mFeatureState:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/server/display/WifiDisplayAdapter;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayAdapter;->scheduleStatusChangedBroadcastLocked()V

    return-void
.end method

.method private addDisplayDeviceLocked(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V
    .registers 17

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayAdapter;->removeDisplayDeviceLocked()V

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v0, p1}, Lcom/android/server/display/PersistentDataStore;->rememberWifiDisplay(Landroid/hardware/display/WifiDisplay;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v0}, Lcom/android/server/display/PersistentDataStore;->saveIfNeeded()V

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayAdapter;->updateRememberedDisplaysLocked()V

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayAdapter;->scheduleStatusChangedBroadcastLocked()V

    :cond_16
    and-int/lit8 v0, p5, 0x1

    if-eqz v0, :cond_49

    const/4 v10, 0x1

    :goto_1b
    const/4 v7, 0x0

    if-eqz v10, :cond_26

    or-int/lit8 v7, v7, 0x4

    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mSupportsProtectedBuffers:Z

    if-eqz v0, :cond_26

    or-int/lit8 v7, v7, 0x8

    :cond_26
    const/high16 v6, 0x4270

    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getFriendlyDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v10}, Landroid/view/SurfaceControl;->createDisplay(Ljava/lang/String;Z)Landroid/os/IBinder;

    move-result-object v2

    new-instance v0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;

    move-object v1, p0

    move v4, p3

    move v5, p4

    move-object v9, p2

    invoke-direct/range {v0 .. v9}, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;-><init>(Lcom/android/server/display/WifiDisplayAdapter;Landroid/os/IBinder;Ljava/lang/String;IIFILjava/lang/String;Landroid/view/Surface;)V

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplayDevice:Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplayDevice:Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/display/WifiDisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayAdapter;->scheduleUpdateNotificationLocked()V

    return-void

    :cond_49
    const/4 v10, 0x0

    goto :goto_1b
.end method

.method private findAvailableDisplayLocked(Ljava/lang/String;)Landroid/hardware/display/WifiDisplay;
    .registers 7

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mAvailableDisplays:[Landroid/hardware/display/WifiDisplay;

    array-length v3, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v3, :cond_16

    aget-object v1, v0, v2

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    :goto_12
    return-object v1

    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_16
    const/4 v1, 0x0

    goto :goto_12
.end method

.method private fixRememberedDisplayNamesFromAvailableDisplaysLocked()V
    .registers 8

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_2
    iget-object v4, p0, Lcom/android/server/display/WifiDisplayAdapter;->mRememberedDisplays:[Landroid/hardware/display/WifiDisplay;

    array-length v4, v4

    if-ge v2, v4, :cond_41

    iget-object v4, p0, Lcom/android/server/display/WifiDisplayAdapter;->mRememberedDisplays:[Landroid/hardware/display/WifiDisplay;

    aget-object v3, v4, v2

    invoke-virtual {v3}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/display/WifiDisplayAdapter;->findAvailableDisplayLocked(Ljava/lang/String;)Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    if-eqz v0, :cond_3e

    invoke-virtual {v3, v0}, Landroid/hardware/display/WifiDisplay;->equals(Landroid/hardware/display/WifiDisplay;)Z

    move-result v4

    if-nez v4, :cond_3e

    const-string v4, "WifiDisplayAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fixRememberedDisplayNamesFromAvailableDisplaysLocked: updating remembered display to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/display/WifiDisplayAdapter;->mRememberedDisplays:[Landroid/hardware/display/WifiDisplay;

    aput-object v0, v4, v2

    iget-object v4, p0, Lcom/android/server/display/WifiDisplayAdapter;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v4, v0}, Lcom/android/server/display/PersistentDataStore;->rememberWifiDisplay(Landroid/hardware/display/WifiDisplay;)Z

    move-result v4

    or-int/2addr v1, v4

    :cond_3e
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_41
    if-eqz v1, :cond_48

    iget-object v4, p0, Lcom/android/server/display/WifiDisplayAdapter;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v4}, Lcom/android/server/display/PersistentDataStore;->saveIfNeeded()V

    :cond_48
    return-void
.end method

.method private handleSendStatusChangeBroadcast()V
    .registers 5

    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v2

    monitor-enter v2

    :try_start_5
    iget-boolean v1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mPendingStatusChangeBroadcast:Z

    if-nez v1, :cond_b

    monitor-exit v2

    :goto_a
    return-void

    :cond_b
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mPendingStatusChangeBroadcast:Z

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.hardware.display.action.WIFI_DISPLAY_STATUS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "android.hardware.display.extra.WIFI_DISPLAY_STATUS"

    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter;->getWifiDisplayStatusLocked()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    monitor-exit v2
    :try_end_24
    .catchall {:try_start_5 .. :try_end_24} :catchall_2e

    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_a

    :catchall_2e
    move-exception v1

    :try_start_2f
    monitor-exit v2
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    throw v1
.end method

.method private handleUpdateNotification()V
    .registers 14

    const v12, 0x10408f0

    const/4 v10, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v3

    monitor-enter v3

    :try_start_b
    iget-boolean v5, p0, Lcom/android/server/display/WifiDisplayAdapter;->mPendingNotificationUpdate:Z

    if-nez v5, :cond_11

    monitor-exit v3

    :cond_10
    :goto_10
    return-void

    :cond_11
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/server/display/WifiDisplayAdapter;->mPendingNotificationUpdate:Z

    iget-object v5, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplayDevice:Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;

    if-eqz v5, :cond_a8

    move v7, v10

    :goto_19
    monitor-exit v3
    :try_end_1a
    .catchall {:try_start_b .. :try_end_1a} :catchall_ab

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayAdapter;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v4, v12, v5}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    const-string v3, "WifiDisplayAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " handleUpdateNotification << isConnected:"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v7, :cond_10

    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayAdapter;->mSettingsPendingIntent:Landroid/app/PendingIntent;

    if-nez v3, :cond_58

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.settings.WIFI_DISPLAY_SETTINGS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x1420

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move v3, v1

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/display/WifiDisplayAdapter;->mSettingsPendingIntent:Landroid/app/PendingIntent;

    :cond_58
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDisconnectPendingIntent:Landroid/app/PendingIntent;

    if-nez v3, :cond_6b

    new-instance v6, Landroid/content/Intent;

    const-string v3, "android.server.display.wfd.DISCONNECT"

    invoke-direct {v6, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-static {v0, v1, v6, v1, v3}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDisconnectPendingIntent:Landroid/app/PendingIntent;

    :cond_6b
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    new-instance v1, Landroid/app/Notification$Builder;

    invoke-direct {v1, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x10406d0

    invoke-virtual {v9, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    const v3, 0x10406d1

    invoke-virtual {v9, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayAdapter;->mSettingsPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v1

    const v3, 0x10807e1

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v8

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v4, v12, v8, v3}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    goto/16 :goto_10

    :cond_a8
    move v7, v1

    goto/16 :goto_19

    :catchall_ab
    move-exception v1

    :try_start_ac
    monitor-exit v3
    :try_end_ad
    .catchall {:try_start_ac .. :try_end_ad} :catchall_ab

    throw v1
.end method

.method private isRememberedDisplayLocked(Ljava/lang/String;)Z
    .registers 7

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mRememberedDisplays:[Landroid/hardware/display/WifiDisplay;

    array-length v3, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v3, :cond_17

    aget-object v1, v0, v2

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    const/4 v4, 0x1

    :goto_13
    return v4

    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_17
    const/4 v4, 0x0

    goto :goto_13
.end method

.method private launchWfdPlayer(ILjava/net/InetAddress;)V
    .registers 6

    const-string v0, "WifiDisplayAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "launchWfdPlayer(0.RVF 1.HomeSyncRT 2. HomeSyncMM) : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz p1, :cond_1c

    if-nez p2, :cond_24

    :cond_1c
    const-string v0, "WifiDisplayAdapter"

    const-string v1, "launchWfdPlayer Fail"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_23
    return-void

    :cond_24
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mWfdBridgeServer:Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;

    if-eqz v0, :cond_53

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mWfdBridgeServer:Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;->isWfdEngineRunning()Z

    move-result v0

    if-nez v0, :cond_38

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mWfdBridgeServer:Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;->isConnected()Z

    move-result v0

    if-nez v0, :cond_40

    :cond_38
    const-string v0, "WifiDisplayAdapter"

    const-string v1, "startSourceRTSP Fail"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    :cond_40
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mWfdBridgeServer:Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;->setSinkState(I)V

    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/WifiDisplayAdapter$16;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/display/WifiDisplayAdapter$16;-><init>(Lcom/android/server/display/WifiDisplayAdapter;Ljava/net/InetAddress;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_23

    :cond_53
    const-string v0, "WifiDisplayAdapter"

    const-string v1, "Bridge is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23
.end method

.method private removeDisplayDeviceLocked()V
    .registers 3

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplayDevice:Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplayDevice:Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->clearSurfaceLocked()V

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplayDevice:Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/display/WifiDisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    iget v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplayState:I

    if-eq v0, v1, :cond_21

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplayDevice:Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;

    #getter for: Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mName:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->access$500(Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mLastConnectedAdapterName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter;->notifyConnectionLost()V

    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter;->requestScanLocked()V

    :cond_21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplayDevice:Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayAdapter;->scheduleUpdateNotificationLocked()V

    :cond_27
    return-void
.end method

.method private renameDisplayDeviceLocked(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplayDevice:Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplayDevice:Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->getNameLocked()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplayDevice:Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;

    invoke-virtual {v0, p1}, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->setNameLocked(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplayDevice:Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/server/display/WifiDisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    :cond_1b
    return-void
.end method

.method private requestClearConnectedDisplayInfo()V
    .registers 3

    const-string v0, "WifiDisplayAdapter"

    const-string v1, "requestClearConnectedDisplayInfo"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/WifiDisplayAdapter$10;

    invoke-direct {v1, p0}, Lcom/android/server/display/WifiDisplayAdapter$10;-><init>(Lcom/android/server/display/WifiDisplayAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private requestEnableSinkLocked(Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .registers 5

    const-string v1, "WifiDisplayAdapter"

    const-string v2, "requestEnableSinkLocked"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p1

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mWfdBridgeServer:Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mWfdBridgeServer:Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;

    invoke-virtual {v1}, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mWfdBridgeServer:Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;->requestSource(I)I

    :goto_1a
    return-void

    :cond_1b
    const-string v1, "WifiDisplayAdapter"

    const-string v2, "BridgeServer is not avaiable!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a
.end method

.method private requestEnableSourceLocked(Landroid/net/wifi/p2p/WifiP2pDevice;I)V
    .registers 7

    const-string v2, "WifiDisplayAdapter"

    const-string v3, "requestEnableSourceLocked"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p1

    iget-object v2, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/server/display/WifiDisplayAdapter;->setWifiDisplayDeviceAddress(Ljava/lang/String;)V

    iget-object v2, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/server/display/WifiDisplayAdapter;->setWifiDisplayDeviceName(Ljava/lang/String;)V

    move v1, p2

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter;->mWfdBridgeServer:Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;

    if-eqz v2, :cond_20

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter;->mWfdBridgeServer:Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;

    invoke-virtual {v2}, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;->isWfdEngineRunning()Z

    move-result v2

    if-eqz v2, :cond_20

    :goto_1f
    return-void

    :cond_20
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter;->mWfdBridgeServer:Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;

    if-eqz v2, :cond_32

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter;->mWfdBridgeServer:Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;

    invoke-virtual {v2}, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_32

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter;->mWfdBridgeServer:Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;

    invoke-virtual {v2, v1}, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;->requestSink(I)I

    goto :goto_1f

    :cond_32
    const-string v2, "WifiDisplayAdapter"

    const-string v3, "BridgeServer is not avaiable!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f
.end method

.method private requestSaveConnectedDisplayInfo()V
    .registers 3

    const-string v0, "WifiDisplayAdapter"

    const-string v1, "requestSaveConnectedDisplayInfo"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/WifiDisplayAdapter$11;

    invoke-direct {v1, p0}, Lcom/android/server/display/WifiDisplayAdapter$11;-><init>(Lcom/android/server/display/WifiDisplayAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private scheduleStatusChangedBroadcastLocked()V
    .registers 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mCurrentStatus:Landroid/hardware/display/WifiDisplayStatus;

    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mPendingStatusChangeBroadcast:Z

    if-nez v0, :cond_f

    iput-boolean v1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mPendingStatusChangeBroadcast:Z

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mHandler:Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayHandler;->sendEmptyMessage(I)Z

    :cond_f
    return-void
.end method

.method private scheduleUpdateNotificationLocked()V
    .registers 3

    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mPendingNotificationUpdate:Z

    if-nez v0, :cond_d

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mPendingNotificationUpdate:Z

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mHandler:Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayHandler;->sendEmptyMessage(I)Z

    :cond_d
    return-void
.end method

.method private startSourceRTSP(Landroid/net/wifi/p2p/WifiP2pDevice;I)V
    .registers 8

    const-string v2, "WifiDisplayAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startSourceRTSP deviceType(0.RVF 1.HomeSyncRT 2. HomeSyncMM) : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-gez p2, :cond_22

    const-string v2, "WifiDisplayAdapter"

    const-string v3, "startSourceRTSP Fail"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_21
    return-void

    :cond_22
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter;->mWfdBridgeServer:Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;

    if-eqz v2, :cond_3c

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter;->mWfdBridgeServer:Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;

    invoke-virtual {v2}, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;->isWfdEngineRunning()Z

    move-result v2

    if-eqz v2, :cond_36

    const-string v2, "WifiDisplayAdapter"

    const-string v3, "startSourceRTSP Fail"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21

    :cond_36
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter;->mWfdBridgeServer:Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;->setSourceState(I)V

    :cond_3c
    move v0, p2

    move-object v1, p1

    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter;->getHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/server/display/WifiDisplayAdapter$17;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/server/display/WifiDisplayAdapter$17;-><init>(Lcom/android/server/display/WifiDisplayAdapter;ILandroid/net/wifi/p2p/WifiP2pDevice;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_21
.end method

.method private updateRememberedDisplaysLocked()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v0}, Lcom/android/server/display/PersistentDataStore;->getRememberedWifiDisplays()[Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mRememberedDisplays:[Landroid/hardware/display/WifiDisplay;

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v0, v1}, Lcom/android/server/display/PersistentDataStore;->applyWifiDisplayAlias(Landroid/hardware/display/WifiDisplay;)Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mAvailableDisplays:[Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v0, v1}, Lcom/android/server/display/PersistentDataStore;->applyWifiDisplayAliases([Landroid/hardware/display/WifiDisplay;)[Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mAvailableDisplays:[Landroid/hardware/display/WifiDisplay;

    return-void
.end method


# virtual methods
.method public dumpLocked(Ljava/io/PrintWriter;)V
    .registers 7

    invoke-super {p0, p1}, Lcom/android/server/display/DisplayAdapter;->dumpLocked(Ljava/io/PrintWriter;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCurrentStatus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter;->getWifiDisplayStatusLocked()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mFeatureState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/WifiDisplayAdapter;->mFeatureState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mScanState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/WifiDisplayAdapter;->mScanState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mActiveDisplayState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplayState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mActiveDisplay="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAvailableDisplays="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter;->mAvailableDisplays:[Landroid/hardware/display/WifiDisplay;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mRememberedDisplays="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter;->mRememberedDisplays:[Landroid/hardware/display/WifiDisplay;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPendingStatusChangeBroadcast="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/display/WifiDisplayAdapter;->mPendingStatusChangeBroadcast:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPendingNotificationUpdate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/display/WifiDisplayAdapter;->mPendingNotificationUpdate:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSupportsProtectedBuffers="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/display/WifiDisplayAdapter;->mSupportsProtectedBuffers:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplayController:Lcom/android/server/display/WifiDisplayController;

    if-nez v1, :cond_107

    const-string v1, "mDisplayController=null"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_106
    return-void

    :cond_107
    const-string v1, "mDisplayController:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplayController:Lcom/android/server/display/WifiDisplayController;

    const-wide/16 v3, 0xc8

    invoke-static {v1, v2, v0, v3, v4}, Lcom/android/internal/util/DumpUtils;->dumpAsync(Landroid/os/Handler;Lcom/android/internal/util/DumpUtils$Dump;Ljava/io/PrintWriter;J)V

    goto :goto_106
.end method

.method public getConnectedDisplayInfo(I)Ljava/lang/String;
    .registers 4

    const-string v0, "WifiDisplayAdapter"

    const-string v1, "requestGetConnectedDisplayInfo"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplayController:Lcom/android/server/display/WifiDisplayController;

    invoke-virtual {v0, p1}, Lcom/android/server/display/WifiDisplayController;->requestGetConnectedDisplayInfo(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWifiDisplayBridgeStatus()I
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mWfdBridgeServer:Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mWfdBridgeServer:Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;

    invoke-virtual {v1}, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v0, 0x1

    :cond_e
    const-string v1, "WifiDisplayAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getWifiDisplayBridgeStatus = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public getWifiDisplayStatusLocked()Landroid/hardware/display/WifiDisplayStatus;
    .registers 9

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mCurrentStatus:Landroid/hardware/display/WifiDisplayStatus;

    if-nez v0, :cond_19

    new-instance v0, Landroid/hardware/display/WifiDisplayStatus;

    iget v1, p0, Lcom/android/server/display/WifiDisplayAdapter;->mFeatureState:I

    iget v2, p0, Lcom/android/server/display/WifiDisplayAdapter;->mScanState:I

    iget v3, p0, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplayState:I

    iget-object v4, p0, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;

    iget-object v5, p0, Lcom/android/server/display/WifiDisplayAdapter;->mAvailableDisplays:[Landroid/hardware/display/WifiDisplay;

    iget-object v6, p0, Lcom/android/server/display/WifiDisplayAdapter;->mRememberedDisplays:[Landroid/hardware/display/WifiDisplay;

    iget v7, p0, Lcom/android/server/display/WifiDisplayAdapter;->mConnectedState:I

    invoke-direct/range {v0 .. v7}, Landroid/hardware/display/WifiDisplayStatus;-><init>(IIILandroid/hardware/display/WifiDisplay;[Landroid/hardware/display/WifiDisplay;[Landroid/hardware/display/WifiDisplay;I)V

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mCurrentStatus:Landroid/hardware/display/WifiDisplayStatus;

    :cond_19
    const-string v0, "WifiDisplayAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getWifiDisplayStatusLocked: result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter;->mCurrentStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mCurrentStatus:Landroid/hardware/display/WifiDisplayStatus;

    return-object v0
.end method

.method public isDongleRenameAvailableLocked()Z
    .registers 3

    const-string v0, "WifiDisplayAdapter"

    const-string v1, "isDongleRenameAvailableLocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplayController:Lcom/android/server/display/WifiDisplayController;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayController;->isDongleRenameAvailable()Z

    move-result v0

    return v0
.end method

.method public isSinkAvailable()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public isSourceAvailable()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public isWfdEngineRunning()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mWfdBridgeServer:Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mWfdBridgeServer:Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;->isWfdEngineRunning()Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public isWifiDisplayBridgeAvailable()Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mWfdBridgeServer:Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mWfdBridgeServer:Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_15

    const-string v0, "WifiDisplayAdapter"

    const-string v1, "WifiDisplayBridge is available"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :goto_14
    return v0

    :cond_15
    const-string v0, "WifiDisplayAdapter"

    const-string v1, "WifiDisplayBridge is unavailable"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_14
.end method

.method public notifyConnectionLost()V
    .registers 3

    const-string v0, "WifiDisplayAdapter"

    const-string v1, "notify Connection with the adapter was lost!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/WifiDisplayAdapter$2;

    invoke-direct {v1, p0}, Lcom/android/server/display/WifiDisplayAdapter$2;-><init>(Lcom/android/server/display/WifiDisplayAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public notifyEnterHomeSyncApp()V
    .registers 6

    :try_start_0
    const-string v3, "com.samsung.wfd.WfdManager"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v3, "notifyEnterHomeSyncApp"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayAdapter;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_18

    :goto_17
    return-void

    :catch_18
    move-exception v1

    const-string v3, "WifiDisplayAdapter"

    const-string v4, "this method is not supported for this model"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17
.end method

.method public notifyExitHomeSyncApp()V
    .registers 6

    :try_start_0
    const-string v3, "com.samsung.wfd.WfdManager"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v3, "notifyExitHomeSyncApp"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayAdapter;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_18

    :goto_17
    return-void

    :catch_18
    move-exception v1

    const-string v3, "WifiDisplayAdapter"

    const-string v4, "this method is not supported for this model"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17
.end method

.method public registerLocked()V
    .registers 3

    invoke-super {p0}, Lcom/android/server/display/DisplayAdapter;->registerLocked()V

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayAdapter;->updateRememberedDisplaysLocked()V

    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/WifiDisplayAdapter$1;

    invoke-direct {v1, p0}, Lcom/android/server/display/WifiDisplayAdapter$1;-><init>(Lcom/android/server/display/WifiDisplayAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public renameDongleLocked(Ljava/lang/String;)V
    .registers 4

    const-string v0, "WifiDisplayAdapter"

    const-string v1, "renameDongleLocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mDisplayController:Lcom/android/server/display/WifiDisplayController;

    invoke-virtual {v0, p1}, Lcom/android/server/display/WifiDisplayController;->renameDongle(Ljava/lang/String;)V

    return-void
.end method

.method public requestConnectLocked(ILjava/lang/String;Z)V
    .registers 8

    const-string v0, "WifiDisplayAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestConnectLocked: address="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", trusted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "connectingMode= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p3, :cond_54

    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v1

    monitor-enter v1

    :try_start_33
    invoke-direct {p0, p2}, Lcom/android/server/display/WifiDisplayAdapter;->isRememberedDisplayLocked(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_53

    const-string v0, "WifiDisplayAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring request by an untrusted client to connect to an unknown wifi display: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    :goto_52
    return-void

    :cond_53
    monitor-exit v1
    :try_end_54
    .catchall {:try_start_33 .. :try_end_54} :catchall_61

    :cond_54
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/WifiDisplayAdapter$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/display/WifiDisplayAdapter$6;-><init>(Lcom/android/server/display/WifiDisplayAdapter;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_52

    :catchall_61
    move-exception v0

    :try_start_62
    monitor-exit v1
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_61

    throw v0
.end method

.method public requestConnectLocked(Ljava/lang/String;Z)V
    .registers 7

    const-string v0, "WifiDisplayAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestConnectLocked: address="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", trusted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_4a

    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v1

    monitor-enter v1

    :try_start_29
    invoke-direct {p0, p1}, Lcom/android/server/display/WifiDisplayAdapter;->isRememberedDisplayLocked(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_49

    const-string v0, "WifiDisplayAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring request by an untrusted client to connect to an unknown wifi display: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    :goto_48
    return-void

    :cond_49
    monitor-exit v1
    :try_end_4a
    .catchall {:try_start_29 .. :try_end_4a} :catchall_57

    :cond_4a
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/WifiDisplayAdapter$5;

    invoke-direct {v1, p0, p1}, Lcom/android/server/display/WifiDisplayAdapter$5;-><init>(Lcom/android/server/display/WifiDisplayAdapter;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_48

    :catchall_57
    move-exception v0

    :try_start_58
    monitor-exit v1
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_57

    throw v0
.end method

.method public requestConnectWithPinLocked(Ljava/lang/String;Z)V
    .registers 7

    const-string v0, "WifiDisplayAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestConnectWithPinLocked: address="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", trusted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_4a

    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v1

    monitor-enter v1

    :try_start_29
    invoke-direct {p0, p1}, Lcom/android/server/display/WifiDisplayAdapter;->isRememberedDisplayLocked(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_49

    const-string v0, "WifiDisplayAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring request by an untrusted client to connect to an unknown wifi display: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    :goto_48
    return-void

    :cond_49
    monitor-exit v1
    :try_end_4a
    .catchall {:try_start_29 .. :try_end_4a} :catchall_57

    :cond_4a
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/WifiDisplayAdapter$13;

    invoke-direct {v1, p0, p1}, Lcom/android/server/display/WifiDisplayAdapter$13;-><init>(Lcom/android/server/display/WifiDisplayAdapter;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_48

    :catchall_57
    move-exception v0

    :try_start_58
    monitor-exit v1
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_57

    throw v0
.end method

.method public requestDisableLocked()V
    .registers 3

    const-string v0, "WifiDisplayAdapter"

    const-string v1, "requestDisableLocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/WifiDisplayAdapter$15;

    invoke-direct {v1, p0}, Lcom/android/server/display/WifiDisplayAdapter$15;-><init>(Lcom/android/server/display/WifiDisplayAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public requestDisconnectExtLocked()V
    .registers 3

    const-string v0, "WifiDisplayAdapter"

    const-string v1, "requestDisconnectedExtLocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplayState:I

    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/WifiDisplayAdapter$8;

    invoke-direct {v1, p0}, Lcom/android/server/display/WifiDisplayAdapter$8;-><init>(Lcom/android/server/display/WifiDisplayAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public requestDisconnectLocked()V
    .registers 3

    const-string v0, "WifiDisplayAdapter"

    const-string v1, "requestDisconnectedLocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplayState:I

    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/WifiDisplayAdapter$7;

    invoke-direct {v1, p0}, Lcom/android/server/display/WifiDisplayAdapter$7;-><init>(Lcom/android/server/display/WifiDisplayAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public requestEnableLocked(Landroid/net/wifi/p2p/WifiP2pDevice;I)V
    .registers 9

    if-nez p2, :cond_26

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter;->mWfdBridgeServer:Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;

    if-eqz v2, :cond_26

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter;->mWfdBridgeServer:Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;

    invoke-virtual {v2}, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;->getBridgeConnType()I

    move-result v2

    if-nez v2, :cond_26

    move-object v0, p1

    move v1, p2

    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter;->getHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/server/display/WifiDisplayAdapter$14;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/server/display/WifiDisplayAdapter$14;-><init>(Lcom/android/server/display/WifiDisplayAdapter;Landroid/net/wifi/p2p/WifiP2pDevice;I)V

    const-wide/16 v4, 0x118

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const-string v2, "WifiDisplayAdapter"

    const-string v3, "return!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_25
    return-void

    :cond_26
    if-eqz p2, :cond_2b

    const/4 v2, 0x2

    if-ne p2, v2, :cond_2f

    :cond_2b
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/WifiDisplayAdapter;->requestEnableSourceLocked(Landroid/net/wifi/p2p/WifiP2pDevice;I)V

    goto :goto_25

    :cond_2f
    const/4 v2, 0x1

    if-ne p2, v2, :cond_36

    invoke-direct {p0, p1}, Lcom/android/server/display/WifiDisplayAdapter;->requestEnableSinkLocked(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    goto :goto_25

    :cond_36
    const-string v2, "WifiDisplayAdapter"

    const-string v3, "Wrong device Type! Check your device type"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25
.end method

.method public requestForgetLocked(Ljava/lang/String;)V
    .registers 5

    const-string v0, "WifiDisplayAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestForgetLocked: address="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v0, p1}, Lcom/android/server/display/PersistentDataStore;->forgetWifiDisplay(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v0}, Lcom/android/server/display/PersistentDataStore;->saveIfNeeded()V

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayAdapter;->updateRememberedDisplaysLocked()V

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayAdapter;->scheduleStatusChangedBroadcastLocked()V

    :cond_2b
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter;->requestDisconnectLocked()V

    :cond_3e
    return-void
.end method

.method public requestRenameLocked(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    const-string v2, "WifiDisplayAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestRenameLocked: address="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", alias="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_35

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_34

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    :cond_34
    const/4 p2, 0x0

    :cond_35
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v2, p1}, Lcom/android/server/display/PersistentDataStore;->getRememberedWifiDisplay(Ljava/lang/String;)Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    if-eqz v0, :cond_68

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplay;->getDeviceAlias()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p2}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_68

    new-instance v1, Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplay;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplay;->getPrimaryDeviceType()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p1, v2, p2, v3}, Landroid/hardware/display/WifiDisplay;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v2, v1}, Lcom/android/server/display/PersistentDataStore;->rememberWifiDisplay(Landroid/hardware/display/WifiDisplay;)Z

    move-result v2

    if-eqz v2, :cond_67

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v2}, Lcom/android/server/display/PersistentDataStore;->saveIfNeeded()V

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayAdapter;->updateRememberedDisplaysLocked()V

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayAdapter;->scheduleStatusChangedBroadcastLocked()V

    :cond_67
    move-object v0, v1

    :cond_68
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;

    if-eqz v2, :cond_81

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v2}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_81

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v2}, Landroid/hardware/display/WifiDisplay;->getFriendlyDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/display/WifiDisplayAdapter;->renameDisplayDeviceLocked(Ljava/lang/String;)V

    :cond_81
    return-void
.end method

.method public requestScanLocked()V
    .registers 3

    const-string v0, "WifiDisplayAdapter"

    const-string v1, "requestScanLocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/WifiDisplayAdapter$3;

    invoke-direct {v1, p0}, Lcom/android/server/display/WifiDisplayAdapter$3;-><init>(Lcom/android/server/display/WifiDisplayAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public requestStopScanLocked()V
    .registers 3

    const-string v0, "WifiDisplayAdapter"

    const-string v1, "requestStopScanLocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/WifiDisplayAdapter$4;

    invoke-direct {v1, p0}, Lcom/android/server/display/WifiDisplayAdapter$4;-><init>(Lcom/android/server/display/WifiDisplayAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setWifiDisplayDeviceAddress(Ljava/lang/String;)V
    .registers 9

    :try_start_0
    const-string v3, "com.samsung.wfd.WfdManager"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v3, "setDisplayDeviceAddress"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayAdapter;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {v0, v3}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_23} :catch_24

    :goto_23
    return-void

    :catch_24
    move-exception v1

    const-string v3, "WifiDisplayAdapter"

    const-string v4, "this method is not supported for this model"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23
.end method

.method public setWifiDisplayDeviceName(Ljava/lang/String;)V
    .registers 9

    :try_start_0
    const-string v3, "com.samsung.wfd.WfdManager"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v3, "setDisplayDeviceName"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayAdapter;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {v0, v3}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_23} :catch_24

    :goto_23
    return-void

    :catch_24
    move-exception v1

    const-string v3, "WifiDisplayAdapter"

    const-string v4, "this method is not supported for this model"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23
.end method
