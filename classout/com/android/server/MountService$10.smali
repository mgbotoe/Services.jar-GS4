.class Lcom/android/server/MountService$10;
.super Landroid/content/BroadcastReceiver;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/MountService$10;->this$0:Lcom/android/server/MountService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v4, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7d

    const-string v4, "MountService"

    const-string v5, "received ACTION_BOOT_COMPLETED"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/MountService$10;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mPendingIntentLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/MountService;->access$3100(Lcom/android/server/MountService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    :try_start_1a
    iget-object v4, p0, Lcom/android/server/MountService$10;->this$0:Lcom/android/server/MountService;

    const/4 v6, 0x1

    #setter for: Lcom/android/server/MountService;->mBooted:Z
    invoke-static {v4, v6}, Lcom/android/server/MountService;->access$3202(Lcom/android/server/MountService;Z)Z

    :cond_20
    :goto_20
    iget-object v4, p0, Lcom/android/server/MountService$10;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mPendingIntent:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/server/MountService;->access$3300(Lcom/android/server/MountService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7c

    iget-object v4, p0, Lcom/android/server/MountService$10;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mPendingIntent:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/server/MountService;->access$3300(Lcom/android/server/MountService;)Ljava/util/ArrayList;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    const-string v4, "/storage/extSdCard"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_20

    const-string v4, "MountService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sendStorageIntent "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/MountService$10;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/MountService;->access$2700(Lcom/android/server/MountService;)Landroid/content/Context;

    move-result-object v4

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v1, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_20

    :catchall_79
    move-exception v4

    monitor-exit v5
    :try_end_7b
    .catchall {:try_start_1a .. :try_end_7b} :catchall_79

    throw v4

    :cond_7c
    :try_start_7c
    monitor-exit v5
    :try_end_7d
    .catchall {:try_start_7c .. :try_end_7d} :catchall_79

    :cond_7d
    return-void
.end method
