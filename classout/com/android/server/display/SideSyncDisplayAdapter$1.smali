.class Lcom/android/server/display/SideSyncDisplayAdapter$1;
.super Ljava/lang/Object;
.source "SideSyncDisplayAdapter.java"

# interfaces
.implements Lcom/android/server/display/SideSyncDisplayController$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/SideSyncDisplayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/SideSyncDisplayAdapter;


# direct methods
.method constructor <init>(Lcom/android/server/display/SideSyncDisplayAdapter;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/display/SideSyncDisplayAdapter$1;->this$0:Lcom/android/server/display/SideSyncDisplayAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayConnected(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V
    .registers 13

    const-string v0, "SideSyncDisplayAdapter"

    const-string v1, "onSideSyncDisplayConnected"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/SideSyncDisplayAdapter$1;->this$0:Lcom/android/server/display/SideSyncDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/SideSyncDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v6

    monitor-enter v6

    :try_start_e
    iget-object v0, p0, Lcom/android/server/display/SideSyncDisplayAdapter$1;->this$0:Lcom/android/server/display/SideSyncDisplayAdapter;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    #calls: Lcom/android/server/display/SideSyncDisplayAdapter;->addDisplayDeviceLocked(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V
    invoke-static/range {v0 .. v5}, Lcom/android/server/display/SideSyncDisplayAdapter;->access$000(Lcom/android/server/display/SideSyncDisplayAdapter;Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V

    monitor-exit v6

    return-void

    :catchall_1a
    move-exception v0

    monitor-exit v6
    :try_end_1c
    .catchall {:try_start_e .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method public onDisplayConnectionFailed()V
    .registers 3

    const-string v0, "SideSyncDisplayAdapter"

    const-string v1, "onDisplayConnectionFailed"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/SideSyncDisplayAdapter$1;->this$0:Lcom/android/server/display/SideSyncDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/SideSyncDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v1

    monitor-enter v1

    :try_start_e
    monitor-exit v1

    return-void

    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_e .. :try_end_12} :catchall_10

    throw v0
.end method

.method public onDisplayDisconnected()V
    .registers 3

    const-string v0, "SideSyncDisplayAdapter"

    const-string v1, "onSideSyncDisplayDisconnected"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/SideSyncDisplayAdapter$1;->this$0:Lcom/android/server/display/SideSyncDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/SideSyncDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v1

    monitor-enter v1

    :try_start_e
    iget-object v0, p0, Lcom/android/server/display/SideSyncDisplayAdapter$1;->this$0:Lcom/android/server/display/SideSyncDisplayAdapter;

    #calls: Lcom/android/server/display/SideSyncDisplayAdapter;->removeDisplayDeviceLocked()V
    invoke-static {v0}, Lcom/android/server/display/SideSyncDisplayAdapter;->access$100(Lcom/android/server/display/SideSyncDisplayAdapter;)V

    monitor-exit v1

    return-void

    :catchall_15
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_e .. :try_end_17} :catchall_15

    throw v0
.end method
