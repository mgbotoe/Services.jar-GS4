.class final Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;
.super Landroid/view/InputEventReceiver;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "DragInputEventReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/InputChannel;Landroid/os/Looper;)V
    .registers 4

    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {p0, p2, p3}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;)V
    .registers 14

    const/4 v4, 0x0

    const/4 v2, 0x0

    :try_start_2
    instance-of v8, p1, Landroid/view/MotionEvent;

    if-eqz v8, :cond_2f

    invoke-virtual {p1}, Landroid/view/InputEvent;->getSource()I

    move-result v8

    and-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_2f

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v8, :cond_2f

    move-object v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v8

    if-eqz v8, :cond_48

    const/4 v3, 0x1

    :goto_27
    invoke-virtual {v5}, Landroid/view/MotionEvent;->getAction()I
    :try_end_2a
    .catchall {:try_start_2 .. :try_end_2a} :catchall_91
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2a} :catch_5b

    move-result v8

    packed-switch v8, :pswitch_data_10c

    :goto_2e
    :pswitch_2e
    const/4 v4, 0x1

    :cond_2f
    :try_start_2f
    invoke-virtual {p0, p1, v4}, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_32} :catch_ad

    :goto_32
    if-eqz v2, :cond_47

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v8, :cond_47

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v8, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v9

    :try_start_3f
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v8}, Lcom/android/server/wm/DragState;->endDragLw()V

    monitor-exit v9
    :try_end_47
    .catchall {:try_start_3f .. :try_end_47} :catchall_cb

    :cond_47
    :goto_47
    return-void

    :cond_48
    const/4 v3, 0x0

    goto :goto_27

    :pswitch_4a
    :try_start_4a
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v8, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v9
    :try_end_4f
    .catchall {:try_start_4a .. :try_end_4f} :catchall_91
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_4f} :catch_5b

    :try_start_4f
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v8, v6, v7, v3}, Lcom/android/server/wm/DragState;->notifyMoveLw(FFZ)V

    monitor-exit v9

    goto :goto_2e

    :catchall_58
    move-exception v8

    monitor-exit v9
    :try_end_5a
    .catchall {:try_start_4f .. :try_end_5a} :catchall_58

    :try_start_5a
    throw v8
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_91
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_5b} :catch_5b

    :catch_5b
    move-exception v1

    :try_start_5c
    const-string v8, "WindowManager"

    const-string v9, "Exception caught by drag handleMotion"

    invoke-static {v8, v9, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_63
    .catchall {:try_start_5c .. :try_end_63} :catchall_91

    :try_start_63
    invoke-virtual {p0, p1, v4}, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_66} :catch_ce

    :goto_66
    if-eqz v2, :cond_47

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v8, :cond_47

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v8, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v9

    :try_start_73
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v8}, Lcom/android/server/wm/DragState;->endDragLw()V

    monitor-exit v9

    goto :goto_47

    :catchall_7c
    move-exception v8

    monitor-exit v9
    :try_end_7e
    .catchall {:try_start_73 .. :try_end_7e} :catchall_7c

    throw v8

    :pswitch_7f
    :try_start_7f
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v8, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v9
    :try_end_84
    .catchall {:try_start_7f .. :try_end_84} :catchall_91
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_84} :catch_5b

    :try_start_84
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v8, v6, v7, v3}, Lcom/android/server/wm/DragState;->notifyDropLw(FFZ)Z

    move-result v2

    monitor-exit v9

    goto :goto_2e

    :catchall_8e
    move-exception v8

    monitor-exit v9
    :try_end_90
    .catchall {:try_start_84 .. :try_end_90} :catchall_8e

    :try_start_90
    throw v8
    :try_end_91
    .catchall {:try_start_90 .. :try_end_91} :catchall_91
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_91} :catch_5b

    :catchall_91
    move-exception v8

    :try_start_92
    invoke-virtual {p0, p1, v4}, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_95} :catch_ec

    :goto_95
    if-eqz v2, :cond_aa

    iget-object v9, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v9, :cond_aa

    iget-object v9, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v9

    :try_start_a2
    iget-object v10, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v10, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v10}, Lcom/android/server/wm/DragState;->endDragLw()V

    monitor-exit v9
    :try_end_aa
    .catchall {:try_start_a2 .. :try_end_aa} :catchall_109

    :cond_aa
    throw v8

    :pswitch_ab
    const/4 v2, 0x1

    goto :goto_2e

    :catch_ad
    move-exception v1

    const-string v8, "WindowManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unexpected exception occured! dragEnd? "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_32

    :catchall_cb
    move-exception v8

    :try_start_cc
    monitor-exit v9
    :try_end_cd
    .catchall {:try_start_cc .. :try_end_cd} :catchall_cb

    throw v8

    :catch_ce
    move-exception v1

    const-string v8, "WindowManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unexpected exception occured! dragEnd? "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_66

    :catch_ec
    move-exception v1

    const-string v9, "WindowManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unexpected exception occured! dragEnd? "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_95

    :catchall_109
    move-exception v8

    :try_start_10a
    monitor-exit v9
    :try_end_10b
    .catchall {:try_start_10a .. :try_end_10b} :catchall_109

    throw v8

    :pswitch_data_10c
    .packed-switch 0x0
        :pswitch_2e
        :pswitch_7f
        :pswitch_4a
        :pswitch_ab
    .end packed-switch
.end method
