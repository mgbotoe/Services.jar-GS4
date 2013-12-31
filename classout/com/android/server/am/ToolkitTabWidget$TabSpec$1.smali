.class Lcom/android/server/am/ToolkitTabWidget$TabSpec$1;
.super Ljava/lang/Object;
.source "ToolkitTabWidget.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ToolkitTabWidget$TabSpec;-><init>(Lcom/android/server/am/ToolkitTabWidget;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/am/ToolkitTabWidget$TabSpec;

.field final synthetic val$this$0:Lcom/android/server/am/ToolkitTabWidget;


# direct methods
.method constructor <init>(Lcom/android/server/am/ToolkitTabWidget$TabSpec;Lcom/android/server/am/ToolkitTabWidget;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec$1;->this$1:Lcom/android/server/am/ToolkitTabWidget$TabSpec;

    iput-object p2, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec$1;->val$this$0:Lcom/android/server/am/ToolkitTabWidget;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec$1;->this$1:Lcom/android/server/am/ToolkitTabWidget$TabSpec;

    #setter for: Lcom/android/server/am/ToolkitTabWidget$TabSpec;->mbLongPress:Z
    invoke-static {v0, v1}, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->access$202(Lcom/android/server/am/ToolkitTabWidget$TabSpec;Z)Z

    return v1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 6

    const/4 v0, 0x0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 5

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec$1;->this$1:Lcom/android/server/am/ToolkitTabWidget$TabSpec;

    #getter for: Lcom/android/server/am/ToolkitTabWidget$TabSpec;->mPermanent:Z
    invoke-static {v0}, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->access$300(Lcom/android/server/am/ToolkitTabWidget$TabSpec;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "ToolkitTabWidget"

    const-string v1, "This item is not deleted by host app"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_10
    return-void

    :cond_11
    iget-object v0, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec$1;->this$1:Lcom/android/server/am/ToolkitTabWidget$TabSpec;

    #setter for: Lcom/android/server/am/ToolkitTabWidget$TabSpec;->mbLongPress:Z
    invoke-static {v0, v2}, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->access$202(Lcom/android/server/am/ToolkitTabWidget$TabSpec;Z)Z

    iget-object v0, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec$1;->this$1:Lcom/android/server/am/ToolkitTabWidget$TabSpec;

    iget-object v0, v0, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->this$0:Lcom/android/server/am/ToolkitTabWidget;

    iget-object v1, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec$1;->this$1:Lcom/android/server/am/ToolkitTabWidget$TabSpec;

    #setter for: Lcom/android/server/am/ToolkitTabWidget;->mCurrentTabSpec:Lcom/android/server/am/ToolkitTabWidget$TabSpec;
    invoke-static {v0, v1}, Lcom/android/server/am/ToolkitTabWidget;->access$402(Lcom/android/server/am/ToolkitTabWidget;Lcom/android/server/am/ToolkitTabWidget$TabSpec;)Lcom/android/server/am/ToolkitTabWidget$TabSpec;

    iget-object v0, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec$1;->this$1:Lcom/android/server/am/ToolkitTabWidget$TabSpec;

    invoke-virtual {v0, v2}, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->requestFocus(Z)V

    iget-object v0, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec$1;->this$1:Lcom/android/server/am/ToolkitTabWidget$TabSpec;

    #calls: Lcom/android/server/am/ToolkitTabWidget$TabSpec;->showContextMenu()V
    invoke-static {v0}, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->access$500(Lcom/android/server/am/ToolkitTabWidget$TabSpec;)V

    goto :goto_10
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 6

    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .registers 2

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 4

    iget-object v0, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec$1;->this$1:Lcom/android/server/am/ToolkitTabWidget$TabSpec;

    #getter for: Lcom/android/server/am/ToolkitTabWidget$TabSpec;->mbLongPress:Z
    invoke-static {v0}, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->access$200(Lcom/android/server/am/ToolkitTabWidget$TabSpec;)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec$1;->this$1:Lcom/android/server/am/ToolkitTabWidget$TabSpec;

    iget-object v0, v0, Lcom/android/server/am/ToolkitTabWidget$TabSpec;->this$0:Lcom/android/server/am/ToolkitTabWidget;

    iget-object v1, p0, Lcom/android/server/am/ToolkitTabWidget$TabSpec$1;->this$1:Lcom/android/server/am/ToolkitTabWidget$TabSpec;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ToolkitTabWidget;->setFocusItem(Lcom/android/server/am/ToolkitTabWidget$TabSpec;)V

    const/4 v0, 0x1

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method
