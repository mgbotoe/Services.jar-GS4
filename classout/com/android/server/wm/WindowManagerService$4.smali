.class Lcom/android/server/wm/WindowManagerService$4;
.super Landroid/content/BroadcastReceiver;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/WindowManagerService;-><init>(Landroid/content/Context;Lcom/android/server/power/PowerManagerService;Lcom/android/server/display/DisplayManagerService;Lcom/android/server/input/InputManagerService;Landroid/os/Handler;ZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$4;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 16

    const-string v9, "com.sec.android.extra.ARRAGE_MODE"

    const/4 v10, 0x1

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const-string v9, "com.sec.android.extra.ARRAGE_TYPE"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/wm/WindowManagerService$4;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v9, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v10

    :try_start_12
    const-string v9, "InputMethod"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5c

    iget-object v9, p0, Lcom/android/server/wm/WindowManagerService$4;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    if-eqz v1, :cond_2f

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    iget v9, v0, Landroid/view/DisplayInfo;->appWidth:I

    iget v11, v0, Landroid/view/DisplayInfo;->appHeight:I

    if-le v9, v11, :cond_2f

    monitor-exit v10

    :goto_2e
    return-void

    :cond_2f
    iget-object v9, p0, Lcom/android/server/wm/WindowManagerService$4;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Lcom/android/server/wm/WindowManagerService;->findDesiredInputMethodWindowIndexLocked(Z)I

    move-result v2

    if-lez v2, :cond_5c

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v9

    add-int/lit8 v11, v2, -0x1

    iget-object v12, p0, Lcom/android/server/wm/WindowManagerService$4;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget v12, v12, Lcom/android/server/wm/WindowManagerService;->mWindowCountBetweenIMTargetAndTopWidget:I

    sub-int/2addr v11, v12

    invoke-virtual {v9, v11}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    if-eqz v3, :cond_5c

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getWindowModeLw()I

    move-result v9

    invoke-static {v9}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v9

    and-int/lit8 v9, v9, 0x3

    if-eqz v9, :cond_5c

    monitor-exit v10

    goto :goto_2e

    :catchall_59
    move-exception v9

    monitor-exit v10
    :try_end_5b
    .catchall {:try_start_12 .. :try_end_5b} :catchall_59

    throw v9

    :cond_5c
    :try_start_5c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->access$304()I

    move-result v9

    rem-int/lit8 v9, v9, 0x2

    invoke-static {v9}, Lcom/android/server/wm/WindowManagerService;->access$302(I)I

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->access$300()I

    move-result v9

    if-nez v9, :cond_b2

    or-int/lit16 v5, v5, 0x800

    :goto_6d
    iget-object v9, p0, Lcom/android/server/wm/WindowManagerService$4;->this$0:Lcom/android/server/wm/WindowManagerService;

    #setter for: Lcom/android/server/wm/WindowManagerService;->mArrangeMode:I
    invoke-static {v9, v5}, Lcom/android/server/wm/WindowManagerService;->access$402(Lcom/android/server/wm/WindowManagerService;I)I

    monitor-exit v10
    :try_end_73
    .catchall {:try_start_5c .. :try_end_73} :catchall_59

    new-instance v7, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v9

    const-string v10, "system"

    invoke-direct {v7, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    const/4 v9, 0x2

    new-array v6, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, ""

    aput-object v10, v6, v9

    const/4 v9, 0x1

    const-string v10, "EOF"

    aput-object v10, v6, v9

    iget-object v9, p0, Lcom/android/server/wm/WindowManagerService$4;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v9, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v10

    const/4 v9, 0x0

    :try_start_94
    iget-object v11, p0, Lcom/android/server/wm/WindowManagerService$4;->this$0:Lcom/android/server/wm/WindowManagerService;

    #getter for: Lcom/android/server/wm/WindowManagerService;->mArrangeMode:I
    invoke-static {v11}, Lcom/android/server/wm/WindowManagerService;->access$400(Lcom/android/server/wm/WindowManagerService;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v6, v9

    monitor-exit v10
    :try_end_a1
    .catchall {:try_start_94 .. :try_end_a1} :catchall_b5

    const-string v9, "arrangemode"

    invoke-static {v7, v9, v6}, Lcom/android/server/wm/WindowManagerService$MultiWindowDataStorage;->store(Ljava/io/File;Ljava/lang/String;[Ljava/lang/String;)Z

    :try_start_a6
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    const/4 v9, 0x0

    invoke-interface {v4, v9}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V
    :try_end_ae
    .catch Landroid/os/RemoteException; {:try_start_a6 .. :try_end_ae} :catch_af

    goto :goto_2e

    :catch_af
    move-exception v9

    goto/16 :goto_2e

    :cond_b2
    and-int/lit16 v5, v5, -0x801

    goto :goto_6d

    :catchall_b5
    move-exception v9

    :try_start_b6
    monitor-exit v10
    :try_end_b7
    .catchall {:try_start_b6 .. :try_end_b7} :catchall_b5

    throw v9
.end method
