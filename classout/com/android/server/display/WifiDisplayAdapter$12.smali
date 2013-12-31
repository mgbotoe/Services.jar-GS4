.class Lcom/android/server/display/WifiDisplayAdapter$12;
.super Ljava/lang/Object;
.source "WifiDisplayAdapter.java"

# interfaces
.implements Lcom/android/server/display/WifiDisplayController$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/WifiDisplayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/WifiDisplayAdapter;


# direct methods
.method constructor <init>(Lcom/android/server/display/WifiDisplayAdapter;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter$12;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayChanged(Landroid/hardware/display/WifiDisplay;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$12;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v1

    monitor-enter v1

    :try_start_7
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$12;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    #getter for: Lcom/android/server/display/WifiDisplayAdapter;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->access$1100(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/PersistentDataStore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/display/PersistentDataStore;->applyWifiDisplayAlias(Landroid/hardware/display/WifiDisplay;)Landroid/hardware/display/WifiDisplay;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$12;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    #getter for: Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->access$1500(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$12;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    #getter for: Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->access$1500(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/display/WifiDisplay;->hasSameAddress(Landroid/hardware/display/WifiDisplay;)Z

    move-result v0

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$12;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    #getter for: Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->access$1500(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/display/WifiDisplay;->equals(Landroid/hardware/display/WifiDisplay;)Z

    move-result v0

    if-nez v0, :cond_44

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$12;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    #setter for: Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;
    invoke-static {v0, p1}, Lcom/android/server/display/WifiDisplayAdapter;->access$1502(Lcom/android/server/display/WifiDisplayAdapter;Landroid/hardware/display/WifiDisplay;)Landroid/hardware/display/WifiDisplay;

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$12;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getFriendlyDisplayName()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/server/display/WifiDisplayAdapter;->renameDisplayDeviceLocked(Ljava/lang/String;)V
    invoke-static {v0, v2}, Lcom/android/server/display/WifiDisplayAdapter;->access$1800(Lcom/android/server/display/WifiDisplayAdapter;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$12;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    #calls: Lcom/android/server/display/WifiDisplayAdapter;->scheduleStatusChangedBroadcastLocked()V
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->access$900(Lcom/android/server/display/WifiDisplayAdapter;)V

    :cond_44
    monitor-exit v1

    return-void

    :catchall_46
    move-exception v0

    monitor-exit v1
    :try_end_48
    .catchall {:try_start_7 .. :try_end_48} :catchall_46

    throw v0
.end method

.method public onDisplayConnected(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;IIII)V
    .registers 15

    const/4 v7, 0x2

    const-string v0, "WifiDisplayAdapter"

    const-string v1, "onDisplayConnected"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$12;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v6

    monitor-enter v6

    :try_start_f
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$12;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    #getter for: Lcom/android/server/display/WifiDisplayAdapter;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->access$1100(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/PersistentDataStore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/display/PersistentDataStore;->applyWifiDisplayAlias(Landroid/hardware/display/WifiDisplay;)Landroid/hardware/display/WifiDisplay;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$12;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    #calls: Lcom/android/server/display/WifiDisplayAdapter;->addDisplayDeviceLocked(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V
    invoke-static/range {v0 .. v5}, Lcom/android/server/display/WifiDisplayAdapter;->access$1600(Lcom/android/server/display/WifiDisplayAdapter;Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$12;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    #getter for: Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplayState:I
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->access$1400(Lcom/android/server/display/WifiDisplayAdapter;)I

    move-result v0

    if-ne v0, v7, :cond_3f

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$12;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    #getter for: Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->access$1500(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$12;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    #getter for: Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->access$1500(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/display/WifiDisplay;->equals(Landroid/hardware/display/WifiDisplay;)Z

    move-result v0

    if-nez v0, :cond_6c

    :cond_3f
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$12;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const/4 v1, 0x2

    #setter for: Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplayState:I
    invoke-static {v0, v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$1402(Lcom/android/server/display/WifiDisplayAdapter;I)I

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$12;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    #setter for: Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;
    invoke-static {v0, p1}, Lcom/android/server/display/WifiDisplayAdapter;->access$1502(Lcom/android/server/display/WifiDisplayAdapter;Landroid/hardware/display/WifiDisplay;)Landroid/hardware/display/WifiDisplay;

    const-string v0, "WifiDisplayAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connected state = : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$12;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    #setter for: Lcom/android/server/display/WifiDisplayAdapter;->mConnectedState:I
    invoke-static {v0, p6}, Lcom/android/server/display/WifiDisplayAdapter;->access$1702(Lcom/android/server/display/WifiDisplayAdapter;I)I

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$12;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    #calls: Lcom/android/server/display/WifiDisplayAdapter;->scheduleStatusChangedBroadcastLocked()V
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->access$900(Lcom/android/server/display/WifiDisplayAdapter;)V

    :cond_6c
    monitor-exit v6

    return-void

    :catchall_6e
    move-exception v0

    monitor-exit v6
    :try_end_70
    .catchall {:try_start_f .. :try_end_70} :catchall_6e

    throw v0
.end method

.method public onDisplayConnecting(Landroid/hardware/display/WifiDisplay;)V
    .registers 5

    const/4 v2, 0x1

    const-string v0, "WifiDisplayAdapter"

    const-string v1, "onDisplayConnecting"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$12;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v1

    monitor-enter v1

    :try_start_f
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$12;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    #getter for: Lcom/android/server/display/WifiDisplayAdapter;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->access$1100(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/PersistentDataStore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/display/PersistentDataStore;->applyWifiDisplayAlias(Landroid/hardware/display/WifiDisplay;)Landroid/hardware/display/WifiDisplay;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$12;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    #getter for: Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplayState:I
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->access$1400(Lcom/android/server/display/WifiDisplayAdapter;)I

    move-result v0

    if-ne v0, v2, :cond_35

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$12;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    #getter for: Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->access$1500(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$12;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    #getter for: Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->access$1500(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/display/WifiDisplay;->equals(Landroid/hardware/display/WifiDisplay;)Z

    move-result v0

    if-nez v0, :cond_45

    :cond_35
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$12;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const/4 v2, 0x1

    #setter for: Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplayState:I
    invoke-static {v0, v2}, Lcom/android/server/display/WifiDisplayAdapter;->access$1402(Lcom/android/server/display/WifiDisplayAdapter;I)I

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$12;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    #setter for: Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;
    invoke-static {v0, p1}, Lcom/android/server/display/WifiDisplayAdapter;->access$1502(Lcom/android/server/display/WifiDisplayAdapter;Landroid/hardware/display/WifiDisplay;)Landroid/hardware/display/WifiDisplay;

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$12;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    #calls: Lcom/android/server/display/WifiDisplayAdapter;->scheduleStatusChangedBroadcastLocked()V
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->access$900(Lcom/android/server/display/WifiDisplayAdapter;)V

    :cond_45
    monitor-exit v1

    return-void

    :catchall_47
    move-exception v0

    monitor-exit v1
    :try_end_49
    .catchall {:try_start_f .. :try_end_49} :catchall_47

    throw v0
.end method

.method public onDisplayConnectionFailed()V
    .registers 4

    const/4 v2, 0x4

    const-string v0, "WifiDisplayAdapter"

    const-string v1, "onDisplayConnectionFailed"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$12;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v1

    monitor-enter v1

    :try_start_f
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$12;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    #getter for: Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplayState:I
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->access$1400(Lcom/android/server/display/WifiDisplayAdapter;)I

    move-result v0

    if-ne v0, v2, :cond_1f

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$12;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    #getter for: Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->access$1500(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    if-eqz v0, :cond_30

    :cond_1f
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$12;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const/4 v2, 0x4

    #setter for: Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplayState:I
    invoke-static {v0, v2}, Lcom/android/server/display/WifiDisplayAdapter;->access$1402(Lcom/android/server/display/WifiDisplayAdapter;I)I

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$12;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const/4 v2, 0x0

    #setter for: Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;
    invoke-static {v0, v2}, Lcom/android/server/display/WifiDisplayAdapter;->access$1502(Lcom/android/server/display/WifiDisplayAdapter;Landroid/hardware/display/WifiDisplay;)Landroid/hardware/display/WifiDisplay;

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$12;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    #calls: Lcom/android/server/display/WifiDisplayAdapter;->scheduleStatusChangedBroadcastLocked()V
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->access$900(Lcom/android/server/display/WifiDisplayAdapter;)V

    :cond_30
    monitor-exit v1

    return-void

    :catchall_32
    move-exception v0

    monitor-exit v1
    :try_end_34
    .catchall {:try_start_f .. :try_end_34} :catchall_32

    throw v0
.end method

.method public onDisplayDisconnected()V
    .registers 4

    const-string v0, "WifiDisplayAdapter"

    const-string v1, "onDisplayDisconnected"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$12;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v1

    monitor-enter v1

    :try_start_e
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$12;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    #calls: Lcom/android/server/display/WifiDisplayAdapter;->removeDisplayDeviceLocked()V
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->access$1900(Lcom/android/server/display/WifiDisplayAdapter;)V

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$12;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    #getter for: Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplayState:I
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->access$1400(Lcom/android/server/display/WifiDisplayAdapter;)I

    move-result v0

    if-nez v0, :cond_23

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$12;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    #getter for: Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->access$1500(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    if-eqz v0, :cond_3b

    :cond_23
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$12;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const/4 v2, 0x0

    #setter for: Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplayState:I
    invoke-static {v0, v2}, Lcom/android/server/display/WifiDisplayAdapter;->access$1402(Lcom/android/server/display/WifiDisplayAdapter;I)I

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$12;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    sget-object v2, Landroid/hardware/display/WifiDisplay;->EMPTY_ARRAY:[Landroid/hardware/display/WifiDisplay;

    #setter for: Lcom/android/server/display/WifiDisplayAdapter;->mAvailableDisplays:[Landroid/hardware/display/WifiDisplay;
    invoke-static {v0, v2}, Lcom/android/server/display/WifiDisplayAdapter;->access$1202(Lcom/android/server/display/WifiDisplayAdapter;[Landroid/hardware/display/WifiDisplay;)[Landroid/hardware/display/WifiDisplay;

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$12;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const/4 v2, 0x0

    #setter for: Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;
    invoke-static {v0, v2}, Lcom/android/server/display/WifiDisplayAdapter;->access$1502(Lcom/android/server/display/WifiDisplayAdapter;Landroid/hardware/display/WifiDisplay;)Landroid/hardware/display/WifiDisplay;

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$12;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    #calls: Lcom/android/server/display/WifiDisplayAdapter;->scheduleStatusChangedBroadcastLocked()V
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->access$900(Lcom/android/server/display/WifiDisplayAdapter;)V

    :cond_3b
    monitor-exit v1

    return-void

    :catchall_3d
    move-exception v0

    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_e .. :try_end_3f} :catchall_3d

    throw v0
.end method

.method public onFeatureStateChanged(I)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$12;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v1

    monitor-enter v1

    :try_start_7
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$12;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    #getter for: Lcom/android/server/display/WifiDisplayAdapter;->mFeatureState:I
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->access$800(Lcom/android/server/display/WifiDisplayAdapter;)I

    move-result v0

    if-eq v0, p1, :cond_19

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$12;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    #setter for: Lcom/android/server/display/WifiDisplayAdapter;->mFeatureState:I
    invoke-static {v0, p1}, Lcom/android/server/display/WifiDisplayAdapter;->access$802(Lcom/android/server/display/WifiDisplayAdapter;I)I

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$12;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    #calls: Lcom/android/server/display/WifiDisplayAdapter;->scheduleStatusChangedBroadcastLocked()V
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->access$900(Lcom/android/server/display/WifiDisplayAdapter;)V

    :cond_19
    monitor-exit v1

    return-void

    :catchall_1b
    move-exception v0

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_7 .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method public onGetScreenState(I)V
    .registers 5

    const-string v0, "WifiDisplayAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetScreenState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$12;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    #getter for: Lcom/android/server/display/WifiDisplayAdapter;->mWfdBridgeServer:Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->access$2000(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;

    move-result-object v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$12;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    #getter for: Lcom/android/server/display/WifiDisplayAdapter;->mWfdBridgeServer:Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->access$2000(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;->setScreenState(I)V

    :cond_29
    return-void
.end method

.method public onGetWfdSinkState(I)V
    .registers 5

    const-string v0, "WifiDisplayAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetWfdSinkState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$12;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    #getter for: Lcom/android/server/display/WifiDisplayAdapter;->mWfdBridgeServer:Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->access$2000(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;

    move-result-object v0

    if-eqz v0, :cond_2c

    if-nez p1, :cond_2d

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$12;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    #getter for: Lcom/android/server/display/WifiDisplayAdapter;->mWfdBridgeServer:Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->access$2000(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;->setSinkState(I)V

    :cond_2c
    :goto_2c
    return-void

    :cond_2d
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$12;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    #getter for: Lcom/android/server/display/WifiDisplayAdapter;->mWfdBridgeServer:Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->access$2000(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;->setSinkState(I)V

    goto :goto_2c
.end method

.method public onGetWfdSourceState(I)V
    .registers 5

    const-string v0, "WifiDisplayAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetWfdSourceState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$12;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    #getter for: Lcom/android/server/display/WifiDisplayAdapter;->mWfdBridgeServer:Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->access$2000(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;

    move-result-object v0

    if-eqz v0, :cond_2c

    if-nez p1, :cond_2d

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$12;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    #getter for: Lcom/android/server/display/WifiDisplayAdapter;->mWfdBridgeServer:Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->access$2000(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;->setSourceState(I)V

    :cond_2c
    :goto_2c
    return-void

    :cond_2d
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$12;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    #getter for: Lcom/android/server/display/WifiDisplayAdapter;->mWfdBridgeServer:Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->access$2000(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;->setSourceState(I)V

    goto :goto_2c
.end method

.method public onP2pConnected(Ljava/net/InetAddress;)V
    .registers 6

    const-string v1, "WifiDisplayAdapter"

    const-string v2, "requestOnP2pConnectLocked"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p1

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$12;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v1}, Lcom/android/server/display/WifiDisplayAdapter;->isSinkAvailable()Z

    move-result v1

    if-eqz v1, :cond_2d

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$12;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    #getter for: Lcom/android/server/display/WifiDisplayAdapter;->mWfdBridgeServer:Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;
    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$2000(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;

    move-result-object v1

    if-nez v1, :cond_2d

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$12;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    new-instance v2, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayAdapter$12;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-direct {v2, v3, v0}, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;-><init>(Lcom/android/server/display/WifiDisplayAdapter;Ljava/net/InetAddress;)V

    #setter for: Lcom/android/server/display/WifiDisplayAdapter;->mWfdBridgeServer:Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;
    invoke-static {v1, v2}, Lcom/android/server/display/WifiDisplayAdapter;->access$2002(Lcom/android/server/display/WifiDisplayAdapter;Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;)Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$12;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    #getter for: Lcom/android/server/display/WifiDisplayAdapter;->mWfdBridgeServer:Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;
    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$2000(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;->connect()V

    :cond_2d
    return-void
.end method

.method public onP2pDisconnected()V
    .registers 3

    const-string v0, "WifiDisplayAdapter"

    const-string v1, "requestOnP2pDisconnectLocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$12;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    #getter for: Lcom/android/server/display/WifiDisplayAdapter;->mWfdBridgeServer:Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->access$2000(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;

    move-result-object v0

    if-eqz v0, :cond_26

    const-string v0, "WifiDisplayAdapter"

    const-string v1, "WfdBridgeServer stop"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$12;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    #getter for: Lcom/android/server/display/WifiDisplayAdapter;->mWfdBridgeServer:Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->access$2000(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;->disconnect()V

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$12;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const/4 v1, 0x0

    #setter for: Lcom/android/server/display/WifiDisplayAdapter;->mWfdBridgeServer:Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;
    invoke-static {v0, v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$2002(Lcom/android/server/display/WifiDisplayAdapter;Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;)Lcom/android/server/display/WifiDisplayAdapter$WfdBridgeAdapter;

    :goto_25
    return-void

    :cond_26
    const-string v0, "WifiDisplayAdapter"

    const-string v1, "WfdBridgeServer is already null"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25
.end method

.method public onScanFinished([Landroid/hardware/display/WifiDisplay;)V
    .registers 5

    const-string v0, "WifiDisplayAdapter"

    const-string v1, "onScanFinished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$12;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v1

    monitor-enter v1

    :try_start_e
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$12;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    #getter for: Lcom/android/server/display/WifiDisplayAdapter;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->access$1100(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/PersistentDataStore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/display/PersistentDataStore;->applyWifiDisplayAliases([Landroid/hardware/display/WifiDisplay;)[Landroid/hardware/display/WifiDisplay;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$12;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    #getter for: Lcom/android/server/display/WifiDisplayAdapter;->mScanState:I
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->access$1000(Lcom/android/server/display/WifiDisplayAdapter;)I

    move-result v0

    if-nez v0, :cond_2c

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$12;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    #getter for: Lcom/android/server/display/WifiDisplayAdapter;->mAvailableDisplays:[Landroid/hardware/display/WifiDisplay;
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->access$1200(Lcom/android/server/display/WifiDisplayAdapter;)[Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_41

    :cond_2c
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$12;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const/4 v2, 0x0

    #setter for: Lcom/android/server/display/WifiDisplayAdapter;->mScanState:I
    invoke-static {v0, v2}, Lcom/android/server/display/WifiDisplayAdapter;->access$1002(Lcom/android/server/display/WifiDisplayAdapter;I)I

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$12;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    #setter for: Lcom/android/server/display/WifiDisplayAdapter;->mAvailableDisplays:[Landroid/hardware/display/WifiDisplay;
    invoke-static {v0, p1}, Lcom/android/server/display/WifiDisplayAdapter;->access$1202(Lcom/android/server/display/WifiDisplayAdapter;[Landroid/hardware/display/WifiDisplay;)[Landroid/hardware/display/WifiDisplay;

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$12;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    #calls: Lcom/android/server/display/WifiDisplayAdapter;->fixRememberedDisplayNamesFromAvailableDisplaysLocked()V
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->access$1300(Lcom/android/server/display/WifiDisplayAdapter;)V

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$12;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    #calls: Lcom/android/server/display/WifiDisplayAdapter;->scheduleStatusChangedBroadcastLocked()V
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->access$900(Lcom/android/server/display/WifiDisplayAdapter;)V

    :cond_41
    monitor-exit v1

    return-void

    :catchall_43
    move-exception v0

    monitor-exit v1
    :try_end_45
    .catchall {:try_start_e .. :try_end_45} :catchall_43

    throw v0
.end method

.method public onScanStarted()V
    .registers 4

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$12;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v1

    monitor-enter v1

    :try_start_8
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$12;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    #getter for: Lcom/android/server/display/WifiDisplayAdapter;->mScanState:I
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->access$1000(Lcom/android/server/display/WifiDisplayAdapter;)I

    move-result v0

    if-eq v0, v2, :cond_1b

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$12;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const/4 v2, 0x1

    #setter for: Lcom/android/server/display/WifiDisplayAdapter;->mScanState:I
    invoke-static {v0, v2}, Lcom/android/server/display/WifiDisplayAdapter;->access$1002(Lcom/android/server/display/WifiDisplayAdapter;I)I

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$12;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    #calls: Lcom/android/server/display/WifiDisplayAdapter;->scheduleStatusChangedBroadcastLocked()V
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->access$900(Lcom/android/server/display/WifiDisplayAdapter;)V

    :cond_1b
    monitor-exit v1

    return-void

    :catchall_1d
    move-exception v0

    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method public onScanning([Landroid/hardware/display/WifiDisplay;)V
    .registers 4

    const-string v0, "WifiDisplayAdapter"

    const-string v1, "onScanning"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$12;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v1

    monitor-enter v1

    :try_start_e
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$12;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    #getter for: Lcom/android/server/display/WifiDisplayAdapter;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->access$1100(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/PersistentDataStore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/display/PersistentDataStore;->applyWifiDisplayAliases([Landroid/hardware/display/WifiDisplay;)[Landroid/hardware/display/WifiDisplay;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$12;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    #getter for: Lcom/android/server/display/WifiDisplayAdapter;->mScanState:I
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->access$1000(Lcom/android/server/display/WifiDisplayAdapter;)I

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$12;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    #setter for: Lcom/android/server/display/WifiDisplayAdapter;->mAvailableDisplays:[Landroid/hardware/display/WifiDisplay;
    invoke-static {v0, p1}, Lcom/android/server/display/WifiDisplayAdapter;->access$1202(Lcom/android/server/display/WifiDisplayAdapter;[Landroid/hardware/display/WifiDisplay;)[Landroid/hardware/display/WifiDisplay;

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$12;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    #calls: Lcom/android/server/display/WifiDisplayAdapter;->scheduleStatusChangedBroadcastLocked()V
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->access$900(Lcom/android/server/display/WifiDisplayAdapter;)V

    :cond_2a
    monitor-exit v1

    return-void

    :catchall_2c
    move-exception v0

    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_e .. :try_end_2e} :catchall_2c

    throw v0
.end method
