.class final Lcom/android/server/display/SideSyncDisplayAdapter;
.super Lcom/android/server/display/DisplayAdapter;
.source "SideSyncDisplayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/SideSyncDisplayAdapter$WifiDisplayDevice;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "SideSyncDisplayAdapter"


# instance fields
.field private mDisplayController:Lcom/android/server/display/SideSyncDisplayController;

.field private mDisplayDevice:Lcom/android/server/display/SideSyncDisplayAdapter$WifiDisplayDevice;

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field private mPendingNotificationUpdate:Z

.field private mSListener:Lcom/android/server/display/DisplayManagerService$SideSyncListener;

.field private mSideSyncListener:Lcom/android/server/display/SideSyncDisplayController$Listener;

.field private final mSupportsProtectedBuffers:Z


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Lcom/android/server/display/DisplayManagerService$SideSyncListener;)V
    .registers 12

    const-string v5, "SideSyncDisplayAdapter"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/DisplayAdapter;-><init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Ljava/lang/String;)V

    new-instance v0, Lcom/android/server/display/SideSyncDisplayAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/server/display/SideSyncDisplayAdapter$1;-><init>(Lcom/android/server/display/SideSyncDisplayAdapter;)V

    iput-object v0, p0, Lcom/android/server/display/SideSyncDisplayAdapter;->mSideSyncListener:Lcom/android/server/display/SideSyncDisplayController$Listener;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110059

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/display/SideSyncDisplayAdapter;->mSupportsProtectedBuffers:Z

    const-string v0, "notification"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/server/display/SideSyncDisplayAdapter;->mNotificationManager:Landroid/app/NotificationManager;

    iput-object p5, p0, Lcom/android/server/display/SideSyncDisplayAdapter;->mSListener:Lcom/android/server/display/DisplayManagerService$SideSyncListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/display/SideSyncDisplayAdapter;Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/display/SideSyncDisplayAdapter;->addDisplayDeviceLocked(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/display/SideSyncDisplayAdapter;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/SideSyncDisplayAdapter;->removeDisplayDeviceLocked()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/display/SideSyncDisplayAdapter;)Lcom/android/server/display/SideSyncDisplayController;
    .registers 2

    iget-object v0, p0, Lcom/android/server/display/SideSyncDisplayAdapter;->mDisplayController:Lcom/android/server/display/SideSyncDisplayController;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/display/SideSyncDisplayAdapter;Lcom/android/server/display/SideSyncDisplayController;)Lcom/android/server/display/SideSyncDisplayController;
    .registers 2

    iput-object p1, p0, Lcom/android/server/display/SideSyncDisplayAdapter;->mDisplayController:Lcom/android/server/display/SideSyncDisplayController;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/server/display/SideSyncDisplayAdapter;)Lcom/android/server/display/SideSyncDisplayController$Listener;
    .registers 2

    iget-object v0, p0, Lcom/android/server/display/SideSyncDisplayAdapter;->mSideSyncListener:Lcom/android/server/display/SideSyncDisplayController$Listener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/display/SideSyncDisplayAdapter;)Lcom/android/server/display/DisplayManagerService$SideSyncListener;
    .registers 2

    iget-object v0, p0, Lcom/android/server/display/SideSyncDisplayAdapter;->mSListener:Lcom/android/server/display/DisplayManagerService$SideSyncListener;

    return-object v0
.end method

.method private addDisplayDeviceLocked(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V
    .registers 17

    invoke-direct {p0}, Lcom/android/server/display/SideSyncDisplayAdapter;->removeDisplayDeviceLocked()V

    and-int/lit8 v0, p5, 0x1

    if-eqz v0, :cond_33

    const/4 v10, 0x1

    :goto_8
    const/4 v7, 0x0

    if-eqz v10, :cond_13

    or-int/lit8 v7, v7, 0x4

    iget-boolean v0, p0, Lcom/android/server/display/SideSyncDisplayAdapter;->mSupportsProtectedBuffers:Z

    if-eqz v0, :cond_13

    or-int/lit8 v7, v7, 0x8

    :cond_13
    const/high16 v6, 0x4270

    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getFriendlyDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v10}, Landroid/view/SurfaceControl;->createDisplay(Ljava/lang/String;Z)Landroid/os/IBinder;

    move-result-object v2

    new-instance v0, Lcom/android/server/display/SideSyncDisplayAdapter$WifiDisplayDevice;

    move-object v1, p0

    move v4, p3

    move v5, p4

    move-object v9, p2

    invoke-direct/range {v0 .. v9}, Lcom/android/server/display/SideSyncDisplayAdapter$WifiDisplayDevice;-><init>(Lcom/android/server/display/SideSyncDisplayAdapter;Landroid/os/IBinder;Ljava/lang/String;IIFILjava/lang/String;Landroid/view/Surface;)V

    iput-object v0, p0, Lcom/android/server/display/SideSyncDisplayAdapter;->mDisplayDevice:Lcom/android/server/display/SideSyncDisplayAdapter$WifiDisplayDevice;

    iget-object v0, p0, Lcom/android/server/display/SideSyncDisplayAdapter;->mDisplayDevice:Lcom/android/server/display/SideSyncDisplayAdapter$WifiDisplayDevice;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/display/SideSyncDisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    return-void

    :cond_33
    const/4 v10, 0x0

    goto :goto_8
.end method

.method private handleUpdateNotification()V
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/server/display/SideSyncDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v2

    monitor-enter v2

    :try_start_6
    iget-boolean v1, p0, Lcom/android/server/display/SideSyncDisplayAdapter;->mPendingNotificationUpdate:Z

    if-nez v1, :cond_c

    monitor-exit v2

    :goto_b
    return-void

    :cond_c
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/display/SideSyncDisplayAdapter;->mPendingNotificationUpdate:Z

    iget-object v1, p0, Lcom/android/server/display/SideSyncDisplayAdapter;->mDisplayDevice:Lcom/android/server/display/SideSyncDisplayAdapter$WifiDisplayDevice;

    if-eqz v1, :cond_14

    const/4 v0, 0x1

    :cond_14
    monitor-exit v2
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_2e

    const-string v1, "SideSyncDisplayAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " handleUpdateNotification << isConnected:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    :catchall_2e
    move-exception v1

    :try_start_2f
    monitor-exit v2
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    throw v1
.end method

.method private removeDisplayDeviceLocked()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/display/SideSyncDisplayAdapter;->mDisplayDevice:Lcom/android/server/display/SideSyncDisplayAdapter$WifiDisplayDevice;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/server/display/SideSyncDisplayAdapter;->mDisplayDevice:Lcom/android/server/display/SideSyncDisplayAdapter$WifiDisplayDevice;

    invoke-virtual {v0}, Lcom/android/server/display/SideSyncDisplayAdapter$WifiDisplayDevice;->clearSurfaceLocked()V

    iget-object v0, p0, Lcom/android/server/display/SideSyncDisplayAdapter;->mDisplayDevice:Lcom/android/server/display/SideSyncDisplayAdapter$WifiDisplayDevice;

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/android/server/display/SideSyncDisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/SideSyncDisplayAdapter;->mDisplayDevice:Lcom/android/server/display/SideSyncDisplayAdapter$WifiDisplayDevice;

    :cond_12
    return-void
.end method


# virtual methods
.method public getSideSyncStatus()I
    .registers 2

    iget-object v0, p0, Lcom/android/server/display/SideSyncDisplayAdapter;->mDisplayController:Lcom/android/server/display/SideSyncDisplayController;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/server/display/SideSyncDisplayAdapter;->mDisplayController:Lcom/android/server/display/SideSyncDisplayController;

    invoke-virtual {v0}, Lcom/android/server/display/SideSyncDisplayController;->requestGetSideSyncStatus()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public isSupported(I)Z
    .registers 3

    const/4 v0, 0x1

    return v0
.end method

.method public pauseSideSyncLocked()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/display/SideSyncDisplayAdapter;->mDisplayController:Lcom/android/server/display/SideSyncDisplayController;

    invoke-virtual {v0}, Lcom/android/server/display/SideSyncDisplayController;->pauseSideSync()V

    return-void
.end method

.method public registerLocked()V
    .registers 3

    invoke-super {p0}, Lcom/android/server/display/DisplayAdapter;->registerLocked()V

    invoke-virtual {p0}, Lcom/android/server/display/SideSyncDisplayAdapter;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/SideSyncDisplayAdapter$2;

    invoke-direct {v1, p0}, Lcom/android/server/display/SideSyncDisplayAdapter$2;-><init>(Lcom/android/server/display/SideSyncDisplayAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public requestDisableSideSyncLocked()V
    .registers 3

    const-string v0, "SideSyncDisplayAdapter"

    const-string v1, "disableSideSync"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/display/SideSyncDisplayAdapter;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/SideSyncDisplayAdapter$4;

    invoke-direct {v1, p0}, Lcom/android/server/display/SideSyncDisplayAdapter$4;-><init>(Lcom/android/server/display/SideSyncDisplayAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public requestEnableSideSyncLocked(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 6

    iget-object v0, p0, Lcom/android/server/display/SideSyncDisplayAdapter;->mDisplayController:Lcom/android/server/display/SideSyncDisplayController;

    invoke-virtual {v0}, Lcom/android/server/display/SideSyncDisplayController;->isEnableSideSyncAvailable()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    invoke-virtual {p0}, Lcom/android/server/display/SideSyncDisplayAdapter;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/SideSyncDisplayAdapter$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/display/SideSyncDisplayAdapter$3;-><init>(Lcom/android/server/display/SideSyncDisplayAdapter;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    goto :goto_9
.end method

.method public resumeSideSyncLocked()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/display/SideSyncDisplayAdapter;->mDisplayController:Lcom/android/server/display/SideSyncDisplayController;

    invoke-virtual {v0}, Lcom/android/server/display/SideSyncDisplayController;->resumeSideSync()V

    return-void
.end method
