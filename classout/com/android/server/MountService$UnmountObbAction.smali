.class Lcom/android/server/MountService$UnmountObbAction;
.super Lcom/android/server/MountService$ObbAction;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UnmountObbAction"
.end annotation


# instance fields
.field private final mForceUnmount:Z

.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;Z)V
    .registers 4

    iput-object p1, p0, Lcom/android/server/MountService$UnmountObbAction;->this$0:Lcom/android/server/MountService;

    invoke-direct {p0, p1, p2}, Lcom/android/server/MountService$ObbAction;-><init>(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;)V

    iput-boolean p3, p0, Lcom/android/server/MountService$UnmountObbAction;->mForceUnmount:Z

    return-void
.end method


# virtual methods
.method public handleError()V
    .registers 2

    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/android/server/MountService$UnmountObbAction;->sendNewStatusOrIgnore(I)V

    return-void
.end method

.method public handleExecute()V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v11, 0x2

    iget-object v7, p0, Lcom/android/server/MountService$UnmountObbAction;->this$0:Lcom/android/server/MountService;

    #calls: Lcom/android/server/MountService;->waitForReady()V
    invoke-static {v7}, Lcom/android/server/MountService;->access$1200(Lcom/android/server/MountService;)V

    iget-object v7, p0, Lcom/android/server/MountService$UnmountObbAction;->this$0:Lcom/android/server/MountService;

    #calls: Lcom/android/server/MountService;->warnOnNotMounted()V
    invoke-static {v7}, Lcom/android/server/MountService;->access$2800(Lcom/android/server/MountService;)V

    invoke-virtual {p0}, Lcom/android/server/MountService$UnmountObbAction;->getObbInfo()Landroid/content/res/ObbInfo;

    move-result-object v5

    iget-object v7, p0, Lcom/android/server/MountService$UnmountObbAction;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;
    invoke-static {v7}, Lcom/android/server/MountService;->access$2300(Lcom/android/server/MountService;)Ljava/util/Map;

    move-result-object v8

    monitor-enter v8

    :try_start_16
    iget-object v7, p0, Lcom/android/server/MountService$UnmountObbAction;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;
    invoke-static {v7}, Lcom/android/server/MountService;->access$2400(Lcom/android/server/MountService;)Ljava/util/Map;

    move-result-object v7

    iget-object v9, p0, Lcom/android/server/MountService$ObbAction;->mObbState:Lcom/android/server/MountService$ObbState;

    iget-object v9, v9, Lcom/android/server/MountService$ObbState;->rawPath:Ljava/lang/String;

    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/MountService$ObbState;

    monitor-exit v8
    :try_end_27
    .catchall {:try_start_16 .. :try_end_27} :catchall_2f

    if-nez v4, :cond_32

    const/16 v7, 0x17

    invoke-virtual {p0, v7}, Lcom/android/server/MountService$UnmountObbAction;->sendNewStatusOrIgnore(I)V

    :goto_2e
    return-void

    :catchall_2f
    move-exception v7

    :try_start_30
    monitor-exit v8
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw v7

    :cond_32
    iget v7, v4, Lcom/android/server/MountService$ObbState;->ownerGid:I

    iget-object v8, p0, Lcom/android/server/MountService$ObbAction;->mObbState:Lcom/android/server/MountService$ObbState;

    iget v8, v8, Lcom/android/server/MountService$ObbState;->ownerGid:I

    if-eq v7, v8, :cond_6c

    const-string v7, "MountService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Permission denied attempting to unmount OBB "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v4, Lcom/android/server/MountService$ObbState;->rawPath:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " (owned by GID "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v4, Lcom/android/server/MountService$ObbState;->ownerGid:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v7, 0x19

    invoke-virtual {p0, v7}, Lcom/android/server/MountService$UnmountObbAction;->sendNewStatusOrIgnore(I)V

    goto :goto_2e

    :cond_6c
    const/4 v6, 0x0

    :try_start_6d
    new-instance v0, Lcom/android/server/NativeDaemonConnector$Command;

    const-string v7, "obb"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "unmount"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/android/server/MountService$ObbAction;->mObbState:Lcom/android/server/MountService$ObbState;

    iget-object v10, v10, Lcom/android/server/MountService$ObbState;->voldPath:Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-direct {v0, v7, v8}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v7, p0, Lcom/android/server/MountService$UnmountObbAction;->mForceUnmount:Z

    if-eqz v7, :cond_8c

    const-string v7, "force"

    invoke-virtual {v0, v7}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    :cond_8c
    iget-object v7, p0, Lcom/android/server/MountService$UnmountObbAction;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;
    invoke-static {v7}, Lcom/android/server/MountService;->access$1300(Lcom/android/server/MountService;)Lcom/android/server/NativeDaemonConnector;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_95
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_6d .. :try_end_95} :catch_a8

    :goto_95
    if-nez v6, :cond_c1

    iget-object v7, p0, Lcom/android/server/MountService$UnmountObbAction;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;
    invoke-static {v7}, Lcom/android/server/MountService;->access$2300(Lcom/android/server/MountService;)Ljava/util/Map;

    move-result-object v8

    monitor-enter v8

    :try_start_9e
    iget-object v7, p0, Lcom/android/server/MountService$UnmountObbAction;->this$0:Lcom/android/server/MountService;

    #calls: Lcom/android/server/MountService;->removeObbStateLocked(Lcom/android/server/MountService$ObbState;)V
    invoke-static {v7, v4}, Lcom/android/server/MountService;->access$2500(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;)V

    monitor-exit v8
    :try_end_a4
    .catchall {:try_start_9e .. :try_end_a4} :catchall_be

    invoke-virtual {p0, v11}, Lcom/android/server/MountService$UnmountObbAction;->sendNewStatusOrIgnore(I)V

    goto :goto_2e

    :catch_a8
    move-exception v2

    :try_start_a9
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I
    :try_end_ac
    .catch Ljava/lang/NullPointerException; {:try_start_a9 .. :try_end_ac} :catch_bb

    move-result v1

    const/16 v7, 0x195

    if-ne v1, v7, :cond_b3

    const/4 v6, -0x7

    goto :goto_95

    :cond_b3
    const/16 v7, 0x196

    if-ne v1, v7, :cond_b9

    const/4 v6, 0x0

    goto :goto_95

    :cond_b9
    const/4 v6, -0x1

    goto :goto_95

    :catch_bb
    move-exception v3

    const/4 v6, -0x1

    goto :goto_95

    :catchall_be
    move-exception v7

    :try_start_bf
    monitor-exit v8
    :try_end_c0
    .catchall {:try_start_bf .. :try_end_c0} :catchall_be

    throw v7

    :cond_c1
    const-string v7, "MountService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could not unmount OBB: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v7, 0x16

    invoke-virtual {p0, v7}, Lcom/android/server/MountService$UnmountObbAction;->sendNewStatusOrIgnore(I)V

    goto/16 :goto_2e
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UnmountObbAction{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/MountService$ObbAction;->mObbState:Lcom/android/server/MountService$ObbState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",force="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/MountService$UnmountObbAction;->mForceUnmount:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
