.class public Lcom/android/server/display/SideSyncDisplayController;
.super Ljava/lang/Object;
.source "SideSyncDisplayController.java"

# interfaces
.implements Lcom/android/internal/util/DumpUtils$Dump;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/SideSyncDisplayController$Listener;
    }
.end annotation


# static fields
.field private static final RTSP_TIMEOUT_SECONDS:I = 0x14


# instance fields
.field private TAG:Ljava/lang/String;

.field private mAdvertisedDisplay:Landroid/hardware/display/WifiDisplay;

.field private mAdvertisedDisplayFlags:I

.field private mAdvertisedDisplayHeight:I

.field private mAdvertisedDisplaySurface:Landroid/view/Surface;

.field private mAdvertisedDisplayWidth:I

.field private mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mListener:Lcom/android/server/display/SideSyncDisplayController$Listener;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRemoteDisplay:Landroid/media/RemoteDisplay;

.field private mRemoteDisplayConnected:Z

.field private mRemoteDisplayInterface:Ljava/lang/String;

.field private final mRtspTimeout:Ljava/lang/Runnable;

.field private mSListener:Lcom/android/server/display/DisplayManagerService$SideSyncListener;

.field private mSideSyncStatus:I

.field private mWfdUibcManager:Lcom/samsung/wfd/WFDUibcManager;

.field orientationDegrees:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/SideSyncDisplayController$Listener;Lcom/android/server/display/DisplayManagerService$SideSyncListener;)V
    .registers 7

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/display/SideSyncDisplayController;->mSideSyncStatus:I

    const-string v0, "SideSyncDisplayController"

    iput-object v0, p0, Lcom/android/server/display/SideSyncDisplayController;->TAG:Ljava/lang/String;

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_32

    iput-object v0, p0, Lcom/android/server/display/SideSyncDisplayController;->orientationDegrees:[I

    new-instance v0, Lcom/android/server/display/SideSyncDisplayController$1;

    invoke-direct {v0, p0}, Lcom/android/server/display/SideSyncDisplayController$1;-><init>(Lcom/android/server/display/SideSyncDisplayController;)V

    iput-object v0, p0, Lcom/android/server/display/SideSyncDisplayController;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/display/SideSyncDisplayController$5;

    invoke-direct {v0, p0}, Lcom/android/server/display/SideSyncDisplayController$5;-><init>(Lcom/android/server/display/SideSyncDisplayController;)V

    iput-object v0, p0, Lcom/android/server/display/SideSyncDisplayController;->mRtspTimeout:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/server/display/SideSyncDisplayController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/display/SideSyncDisplayController;->mHandler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/android/server/display/SideSyncDisplayController;->mListener:Lcom/android/server/display/SideSyncDisplayController$Listener;

    iput-object p4, p0, Lcom/android/server/display/SideSyncDisplayController;->mSListener:Lcom/android/server/display/DisplayManagerService$SideSyncListener;

    new-instance v0, Lcom/samsung/wfd/WFDUibcManager;

    iget-object v1, p0, Lcom/android/server/display/SideSyncDisplayController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/wfd/WFDUibcManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/display/SideSyncDisplayController;->mWfdUibcManager:Lcom/samsung/wfd/WFDUibcManager;

    return-void

    :array_32
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x5at 0x0t 0x0t 0x0t
        0xb4t 0x0t 0x0t 0x0t
        0xet 0x1t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/server/display/SideSyncDisplayController;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/display/SideSyncDisplayController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/display/SideSyncDisplayController;)I
    .registers 2

    iget v0, p0, Lcom/android/server/display/SideSyncDisplayController;->mSideSyncStatus:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/display/SideSyncDisplayController;)Lcom/android/server/display/DisplayManagerService$SideSyncListener;
    .registers 2

    iget-object v0, p0, Lcom/android/server/display/SideSyncDisplayController;->mSListener:Lcom/android/server/display/DisplayManagerService$SideSyncListener;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/display/SideSyncDisplayController;I)I
    .registers 2

    iput p1, p0, Lcom/android/server/display/SideSyncDisplayController;->mSideSyncStatus:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/display/SideSyncDisplayController;)Lcom/samsung/wfd/WFDUibcManager;
    .registers 2

    iget-object v0, p0, Lcom/android/server/display/SideSyncDisplayController;->mWfdUibcManager:Lcom/samsung/wfd/WFDUibcManager;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/display/SideSyncDisplayController;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/display/SideSyncDisplayController;->handleConnectionFailure(Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/display/SideSyncDisplayController;)Lcom/android/server/display/SideSyncDisplayController$Listener;
    .registers 2

    iget-object v0, p0, Lcom/android/server/display/SideSyncDisplayController;->mListener:Lcom/android/server/display/SideSyncDisplayController$Listener;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/display/SideSyncDisplayController;)Landroid/media/RemoteDisplay;
    .registers 2

    iget-object v0, p0, Lcom/android/server/display/SideSyncDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/display/SideSyncDisplayController;)Landroid/content/BroadcastReceiver;
    .registers 2

    iget-object v0, p0, Lcom/android/server/display/SideSyncDisplayController;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/display/SideSyncDisplayController;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/display/SideSyncDisplayController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/display/SideSyncDisplayController;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/display/SideSyncDisplayController;->mRemoteDisplayConnected:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/display/SideSyncDisplayController;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/display/SideSyncDisplayController;->mRemoteDisplayConnected:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/display/SideSyncDisplayController;)Ljava/lang/Runnable;
    .registers 2

    iget-object v0, p0, Lcom/android/server/display/SideSyncDisplayController;->mRtspTimeout:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/display/SideSyncDisplayController;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/server/display/SideSyncDisplayController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/display/SideSyncDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .registers 2

    iget-object v0, p0, Lcom/android/server/display/SideSyncDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/display/SideSyncDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/hardware/display/WifiDisplay;
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/display/SideSyncDisplayController;->createWifiDisplay(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/display/SideSyncDisplayController;Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/display/SideSyncDisplayController;->advertiseDisplay(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V

    return-void
.end method

.method private advertiseDisplay(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V
    .registers 16

    iget-object v0, p0, Lcom/android/server/display/SideSyncDisplayController;->mAdvertisedDisplay:Landroid/hardware/display/WifiDisplay;

    invoke-static {v0, p1}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/server/display/SideSyncDisplayController;->mAdvertisedDisplaySurface:Landroid/view/Surface;

    if-ne v0, p2, :cond_18

    iget v0, p0, Lcom/android/server/display/SideSyncDisplayController;->mAdvertisedDisplayWidth:I

    if-ne v0, p3, :cond_18

    iget v0, p0, Lcom/android/server/display/SideSyncDisplayController;->mAdvertisedDisplayHeight:I

    if-ne v0, p4, :cond_18

    iget v0, p0, Lcom/android/server/display/SideSyncDisplayController;->mAdvertisedDisplayFlags:I

    if-eq v0, p5, :cond_7a

    :cond_18
    iget-object v4, p0, Lcom/android/server/display/SideSyncDisplayController;->mAdvertisedDisplay:Landroid/hardware/display/WifiDisplay;

    iget-object v2, p0, Lcom/android/server/display/SideSyncDisplayController;->mAdvertisedDisplaySurface:Landroid/view/Surface;

    iget-object v0, p0, Lcom/android/server/display/SideSyncDisplayController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "advertiseDisplay << display:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " surface:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/SideSyncDisplayController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "advertiseDisplay << width:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " height:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/server/display/SideSyncDisplayController;->mAdvertisedDisplay:Landroid/hardware/display/WifiDisplay;

    iput-object p2, p0, Lcom/android/server/display/SideSyncDisplayController;->mAdvertisedDisplaySurface:Landroid/view/Surface;

    iput p3, p0, Lcom/android/server/display/SideSyncDisplayController;->mAdvertisedDisplayWidth:I

    iput p4, p0, Lcom/android/server/display/SideSyncDisplayController;->mAdvertisedDisplayHeight:I

    iput p5, p0, Lcom/android/server/display/SideSyncDisplayController;->mAdvertisedDisplayFlags:I

    iget-object v9, p0, Lcom/android/server/display/SideSyncDisplayController;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/display/SideSyncDisplayController$4;

    move-object v1, p0

    move-object v3, p2

    move-object v5, p1

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/android/server/display/SideSyncDisplayController$4;-><init>(Lcom/android/server/display/SideSyncDisplayController;Landroid/view/Surface;Landroid/view/Surface;Landroid/hardware/display/WifiDisplay;Landroid/hardware/display/WifiDisplay;III)V

    invoke-virtual {v9, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_7a
    return-void
.end method

.method private broadcastWfdState(I)V
    .registers 6

    iget-object v1, p0, Lcom/android/server/display/SideSyncDisplayController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "broadcastWfdState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.WIFI_DISPLAY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "count"

    const/16 v2, 0x1000

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/display/SideSyncDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private createWifiDisplay(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/hardware/display/WifiDisplay;
    .registers 7

    new-instance v0, Landroid/hardware/display/WifiDisplay;

    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v2, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/hardware/display/WifiDisplay;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private declared-synchronized disconnect()V
    .registers 5

    const/4 v3, 0x4

    monitor-enter p0

    :try_start_2
    iget-object v0, p0, Lcom/android/server/display/SideSyncDisplayController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Disconnect is called with sidesyncstatus : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/SideSyncDisplayController;->mSideSyncStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/server/display/SideSyncDisplayController;->mSideSyncStatus:I

    if-ne v3, v0, :cond_79

    iget-object v0, p0, Lcom/android/server/display/SideSyncDisplayController;->TAG:Ljava/lang/String;

    const-string v1, "calling disconnect() while disconnecting!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_27
    iget-object v0, p0, Lcom/android/server/display/SideSyncDisplayController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start disconnect when sidesyncstatus is : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/SideSyncDisplayController;->mSideSyncStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/SideSyncDisplayController;->TAG:Ljava/lang/String;

    const-string v1, "start disconnect : enter synchronized"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/SideSyncDisplayController;->mWfdUibcManager:Lcom/samsung/wfd/WFDUibcManager;

    invoke-virtual {v0}, Lcom/samsung/wfd/WFDUibcManager;->stop()Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/display/SideSyncDisplayController;->broadcastWfdState(I)V

    iget-object v0, p0, Lcom/android/server/display/SideSyncDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    invoke-virtual {v0}, Landroid/media/RemoteDisplay;->dispose()V

    iget-object v0, p0, Lcom/android/server/display/SideSyncDisplayController;->TAG:Ljava/lang/String;

    const-string v1, "mRemoteDisplay.dispose() is finished"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/SideSyncDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/SideSyncDisplayController;->mRemoteDisplayInterface:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/SideSyncDisplayController;->mRemoteDisplayConnected:Z

    iget-object v0, p0, Lcom/android/server/display/SideSyncDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/SideSyncDisplayController;->mRtspTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/android/server/display/SideSyncDisplayController;->unadvertiseDisplay()V

    iget-object v0, p0, Lcom/android/server/display/SideSyncDisplayController;->TAG:Ljava/lang/String;

    const-string v1, "finish disconnect : exit synchronized"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_77
    .catchall {:try_start_2 .. :try_end_77} :catchall_83

    monitor-exit p0

    return-void

    :cond_79
    const/4 v0, 0x4

    :try_start_7a
    iput v0, p0, Lcom/android/server/display/SideSyncDisplayController;->mSideSyncStatus:I

    iget-object v0, p0, Lcom/android/server/display/SideSyncDisplayController;->mSListener:Lcom/android/server/display/DisplayManagerService$SideSyncListener;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/android/server/display/DisplayManagerService$SideSyncListener;->onSideSyncChanged(I)V
    :try_end_82
    .catchall {:try_start_7a .. :try_end_82} :catchall_83

    goto :goto_27

    :catchall_83
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private handleConnectionFailure(Z)V
    .registers 6

    iget-object v1, p0, Lcom/android/server/display/SideSyncDisplayController;->TAG:Ljava/lang/String;

    const-string v2, "Wifi display connection failed!"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_7
    iget-object v1, p0, Lcom/android/server/display/SideSyncDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    if-eqz v1, :cond_e

    invoke-direct {p0}, Lcom/android/server/display/SideSyncDisplayController;->disconnect()V
    :try_end_e
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_e} :catch_f

    :cond_e
    :goto_e
    return-void

    :catch_f
    move-exception v0

    iget-object v1, p0, Lcom/android/server/display/SideSyncDisplayController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception occured"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_e
.end method

.method private setCurrentDisplayRotationOld(I)V
    .registers 11

    :try_start_0
    iget-object v5, p0, Lcom/android/server/display/SideSyncDisplayController;->mContext:Landroid/content/Context;

    const-string v6, "wfd"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/wfd/WfdManager;

    if-eqz v4, :cond_3d

    const-string v5, "com.samsung.wfd.WfdManager"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v5, "setDisplayRotation"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v0, v4}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/server/display/SideSyncDisplayController;->orientationDegrees:[I

    aget v8, v8, p1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v2, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/display/SideSyncDisplayController;->TAG:Ljava/lang/String;

    const-string v6, "setDisplayRotation is called succeesfully"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3d} :catch_3e

    :cond_3d
    :goto_3d
    return-void

    :catch_3e
    move-exception v1

    iget-object v5, p0, Lcom/android/server/display/SideSyncDisplayController;->TAG:Ljava/lang/String;

    const-string v6, "this method(setDisplayRotation) is not supported for this model"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/display/SideSyncDisplayController;->TAG:Ljava/lang/String;

    const-string v6, "setDisplayRotation failed"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3d
.end method

.method private unadvertiseDisplay()V
    .registers 7

    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, v1

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/SideSyncDisplayController;->advertiseDisplay(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 2

    return-void
.end method

.method public isEnableSideSyncAvailable()Z
    .registers 3

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/server/display/SideSyncDisplayController;->mSideSyncStatus:I

    if-eq v0, v1, :cond_d

    iget-object v0, p0, Lcom/android/server/display/SideSyncDisplayController;->TAG:Ljava/lang/String;

    const-string v1, "requestEnableSideSync is passed!, It is already doing something(not available)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :cond_d
    return v0
.end method

.method public pauseSideSync()V
    .registers 11

    :try_start_0
    const-string v6, "android.media.RemoteDisplay"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v6, "setParam"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-class v9, Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/16 v9, 0x14

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string v9, "0"

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_2e} :catch_2f
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_2e} :catch_38
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_2e} :catch_41
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_2e} :catch_4a

    :goto_2e
    return-void

    :catch_2f
    move-exception v1

    iget-object v6, p0, Lcom/android/server/display/SideSyncDisplayController;->TAG:Ljava/lang/String;

    const-string v7, "RemoteDisplay is not found"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e

    :catch_38
    move-exception v2

    iget-object v6, p0, Lcom/android/server/display/SideSyncDisplayController;->TAG:Ljava/lang/String;

    const-string v7, "IllegalAccessException is occured!"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e

    :catch_41
    move-exception v3

    iget-object v6, p0, Lcom/android/server/display/SideSyncDisplayController;->TAG:Ljava/lang/String;

    const-string v7, "InvocationTargetException is occured!"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e

    :catch_4a
    move-exception v4

    iget-object v6, p0, Lcom/android/server/display/SideSyncDisplayController;->TAG:Ljava/lang/String;

    const-string v7, "NoSuchMethodException is occured!"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e
.end method

.method public requestDisableSideSync()V
    .registers 5

    iget-object v1, p0, Lcom/android/server/display/SideSyncDisplayController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestDisableSideSync is called with sidesyncstatus : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/display/SideSyncDisplayController;->mSideSyncStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1a
    iget-object v1, p0, Lcom/android/server/display/SideSyncDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    if-eqz v1, :cond_49

    iget-object v1, p0, Lcom/android/server/display/SideSyncDisplayController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestDisable/ Stopped listening for RTSP connection on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/SideSyncDisplayController;->mRemoteDisplayInterface:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from Wifi display: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/SideSyncDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v3, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/display/SideSyncDisplayController;->disconnect()V
    :try_end_49
    .catch Ljava/lang/NullPointerException; {:try_start_1a .. :try_end_49} :catch_4a

    :cond_49
    :goto_49
    return-void

    :catch_4a
    move-exception v0

    iget-object v1, p0, Lcom/android/server/display/SideSyncDisplayController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception occured"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_49
.end method

.method public requestEnableSideSync(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 19

    iget-object v11, p0, Lcom/android/server/display/SideSyncDisplayController;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "requestEnableSideSync"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " resolution : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    iput v11, p0, Lcom/android/server/display/SideSyncDisplayController;->mSideSyncStatus:I

    iget-object v11, p0, Lcom/android/server/display/SideSyncDisplayController;->mSListener:Lcom/android/server/display/DisplayManagerService$SideSyncListener;

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Lcom/android/server/display/DisplayManagerService$SideSyncListener;->onSideSyncChanged(I)V

    new-instance v11, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v11}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>()V

    iput-object v11, p0, Lcom/android/server/display/SideSyncDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v11, p0, Lcom/android/server/display/SideSyncDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    move-object/from16 v0, p1

    iput-object v0, v11, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v11, p0, Lcom/android/server/display/SideSyncDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    const-string v12, "sidesync"

    iput-object v12, v11, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    iget-object v11, p0, Lcom/android/server/display/SideSyncDisplayController;->mContext:Landroid/content/Context;

    new-instance v12, Lcom/android/server/display/SideSyncDisplayController$2;

    invoke-direct {v12, p0}, Lcom/android/server/display/SideSyncDisplayController$2;-><init>(Lcom/android/server/display/SideSyncDisplayController;)V

    invoke-static {v11, v12}, Landroid/media/RemoteDisplayCallback;->setContext(Landroid/content/Context;Landroid/media/RemoteDisplayCallback$Listener;)V

    iget-object v11, p0, Lcom/android/server/display/SideSyncDisplayController;->mWfdUibcManager:Lcom/samsung/wfd/WFDUibcManager;

    invoke-virtual {v11}, Lcom/samsung/wfd/WFDUibcManager;->start()Z

    const/4 v11, 0x5

    new-array v10, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "640"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "960"

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-string v12, "1280"

    aput-object v12, v10, v11

    const/4 v11, 0x3

    const-string v12, "1280"

    aput-object v12, v10, v11

    const/4 v11, 0x4

    const-string v12, "1920"

    aput-object v12, v10, v11

    const/4 v11, 0x5

    new-array v7, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "360"

    aput-object v12, v7, v11

    const/4 v11, 0x1

    const-string v12, "540"

    aput-object v12, v7, v11

    const/4 v11, 0x2

    const-string v12, "720"

    aput-object v12, v7, v11

    const/4 v11, 0x3

    const-string v12, "720"

    aput-object v12, v7, v11

    const/4 v11, 0x4

    const-string v12, "1080"

    aput-object v12, v7, v11

    const/4 v11, 0x5

    new-array v6, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "30"

    aput-object v12, v6, v11

    const/4 v11, 0x1

    const-string v12, "30"

    aput-object v12, v6, v11

    const/4 v11, 0x2

    const-string v12, "24"

    aput-object v12, v6, v11

    const/4 v11, 0x3

    const-string v12, "30"

    aput-object v12, v6, v11

    const/4 v11, 0x4

    const-string v12, "30"

    aput-object v12, v6, v11

    :try_start_b1
    const-string v11, "android.media.RemoteDisplay"

    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v11, "setParam"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Class;

    const/4 v13, 0x0

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const-class v14, Ljava/lang/String;

    aput-object v14, v12, v13

    invoke-virtual {v1, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    const/4 v11, 0x0

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const-string v14, "0"

    aput-object v14, v12, v13

    invoke-virtual {v8, v11, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    const/4 v11, 0x0

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    aget-object v14, v10, p3

    aput-object v14, v12, v13

    invoke-virtual {v8, v11, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    const/4 v11, 0x0

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const/4 v14, 0x2

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    aget-object v14, v7, p3

    aput-object v14, v12, v13

    invoke-virtual {v8, v11, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    const/4 v11, 0x0

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const/16 v14, 0x33

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const-string v14, "3"

    aput-object v14, v12, v13

    invoke-virtual {v8, v11, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    const/4 v11, 0x0

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const/16 v14, 0x35

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    aget-object v14, v6, p3

    aput-object v14, v12, v13

    invoke-virtual {v8, v11, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    const/4 v11, 0x0

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const/16 v14, 0x36

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v8, v11, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_14c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_b1 .. :try_end_14c} :catch_182
    .catch Ljava/lang/IllegalAccessException; {:try_start_b1 .. :try_end_14c} :catch_18b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_b1 .. :try_end_14c} :catch_194
    .catch Ljava/lang/NoSuchMethodException; {:try_start_b1 .. :try_end_14c} :catch_19d

    :goto_14c
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ":"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/android/server/display/SideSyncDisplayController;->mRemoteDisplayInterface:Ljava/lang/String;

    iget-object v11, p0, Lcom/android/server/display/SideSyncDisplayController;->mRemoteDisplayInterface:Ljava/lang/String;

    new-instance v12, Lcom/android/server/display/SideSyncDisplayController$3;

    invoke-direct {v12, p0}, Lcom/android/server/display/SideSyncDisplayController$3;-><init>(Lcom/android/server/display/SideSyncDisplayController;)V

    iget-object v13, p0, Lcom/android/server/display/SideSyncDisplayController;->mHandler:Landroid/os/Handler;

    invoke-static {v11, v12, v13}, Landroid/media/RemoteDisplay;->listen(Ljava/lang/String;Landroid/media/RemoteDisplay$Listener;Landroid/os/Handler;)Landroid/media/RemoteDisplay;

    move-result-object v11

    iput-object v11, p0, Lcom/android/server/display/SideSyncDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    iget-object v11, p0, Lcom/android/server/display/SideSyncDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v12, p0, Lcom/android/server/display/SideSyncDisplayController;->mRtspTimeout:Ljava/lang/Runnable;

    const-wide/16 v13, 0x4e20

    invoke-virtual {v11, v12, v13, v14}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :catch_182
    move-exception v2

    iget-object v11, p0, Lcom/android/server/display/SideSyncDisplayController;->TAG:Ljava/lang/String;

    const-string v12, "RemoteDisplay is not found"

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14c

    :catch_18b
    move-exception v3

    iget-object v11, p0, Lcom/android/server/display/SideSyncDisplayController;->TAG:Ljava/lang/String;

    const-string v12, "IllegalAccessException is occured!"

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14c

    :catch_194
    move-exception v4

    iget-object v11, p0, Lcom/android/server/display/SideSyncDisplayController;->TAG:Ljava/lang/String;

    const-string v12, "InvocationTargetException is occured!"

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14c

    :catch_19d
    move-exception v5

    iget-object v11, p0, Lcom/android/server/display/SideSyncDisplayController;->TAG:Ljava/lang/String;

    const-string v12, "NoSuchMethodException is occured!"

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14c
.end method

.method public requestGetSideSyncStatus()I
    .registers 4

    iget-object v0, p0, Lcom/android/server/display/SideSyncDisplayController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestGetSideSyncStatus : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/SideSyncDisplayController;->mSideSyncStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/server/display/SideSyncDisplayController;->mSideSyncStatus:I

    return v0
.end method

.method public resumeSideSync()V
    .registers 11

    :try_start_0
    const-string v6, "android.media.RemoteDisplay"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v6, "setParam"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-class v9, Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/16 v9, 0x15

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string v9, "0"

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_2e} :catch_2f
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_2e} :catch_38
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_2e} :catch_41
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_2e} :catch_4a

    :goto_2e
    return-void

    :catch_2f
    move-exception v1

    iget-object v6, p0, Lcom/android/server/display/SideSyncDisplayController;->TAG:Ljava/lang/String;

    const-string v7, "RemoteDisplay is not found"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e

    :catch_38
    move-exception v2

    iget-object v6, p0, Lcom/android/server/display/SideSyncDisplayController;->TAG:Ljava/lang/String;

    const-string v7, "IllegalAccessException is occured!"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e

    :catch_41
    move-exception v3

    iget-object v6, p0, Lcom/android/server/display/SideSyncDisplayController;->TAG:Ljava/lang/String;

    const-string v7, "InvocationTargetException is occured!"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e

    :catch_4a
    move-exception v4

    iget-object v6, p0, Lcom/android/server/display/SideSyncDisplayController;->TAG:Ljava/lang/String;

    const-string v7, "NoSuchMethodException is occured!"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e
.end method
