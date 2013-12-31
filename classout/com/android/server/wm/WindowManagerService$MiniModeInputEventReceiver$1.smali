.class Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/InputChannel;Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;

.field final synthetic val$this$0:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;Lcom/android/server/wm/WindowManagerService;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver$1;->this$1:Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;

    iput-object p2, p0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver$1;->val$this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .registers 5

    const/16 v2, 0x3e9

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver$1;->this$1:Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;

    #getter for: Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->mTargetWindow:Lcom/android/server/wm/WindowState;
    invoke-static {v0}, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->access$500(Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;)Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver$1;->this$1:Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;

    #getter for: Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->mTargetWindow:Lcom/android/server/wm/WindowState;
    invoke-static {v0}, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->access$500(Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;)Lcom/android/server/wm/WindowState;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver$1;->this$1:Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver$1;->this$1:Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver$1;->this$1:Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    :cond_30
    const/4 v0, 0x1

    return v0
.end method
