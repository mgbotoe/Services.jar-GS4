.class Lcom/android/server/am/ToolkitTabDialog$GestureListener;
.super Ljava/lang/Object;
.source "ToolkitTabDialog.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ToolkitTabDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ToolkitTabDialog;


# direct methods
.method private constructor <init>(Lcom/android/server/am/ToolkitTabDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/am/ToolkitTabDialog$GestureListener;->this$0:Lcom/android/server/am/ToolkitTabDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/ToolkitTabDialog;Lcom/android/server/am/ToolkitTabDialog$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/am/ToolkitTabDialog$GestureListener;-><init>(Lcom/android/server/am/ToolkitTabDialog;)V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 14

    const/4 v8, 0x2

    const/4 v4, 0x1

    const/16 v7, 0x19

    const/4 v3, 0x0

    const/16 v0, 0x19

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v5, p0, Lcom/android/server/am/ToolkitTabDialog$GestureListener;->this$0:Lcom/android/server/am/ToolkitTabDialog;

    #getter for: Lcom/android/server/am/ToolkitTabDialog;->mbMovedWindow:Z
    invoke-static {v5}, Lcom/android/server/am/ToolkitTabDialog;->access$1200(Lcom/android/server/am/ToolkitTabDialog;)Z

    move-result v5

    if-eqz v5, :cond_12

    :goto_11
    return v4

    :cond_12
    iget-object v5, p0, Lcom/android/server/am/ToolkitTabDialog$GestureListener;->this$0:Lcom/android/server/am/ToolkitTabDialog;

    #getter for: Lcom/android/server/am/ToolkitTabDialog;->mGravity:I
    invoke-static {v5}, Lcom/android/server/am/ToolkitTabDialog;->access$1300(Lcom/android/server/am/ToolkitTabDialog;)I

    move-result v5

    sparse-switch v5, :sswitch_data_ce

    :cond_1b
    :goto_1b
    move v4, v3

    goto :goto_11

    :sswitch_1d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    sub-float/2addr v5, v6

    float-to-int v1, v5

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_1b

    if-le v1, v7, :cond_41

    iget-object v5, p0, Lcom/android/server/am/ToolkitTabDialog$GestureListener;->this$0:Lcom/android/server/am/ToolkitTabDialog;

    invoke-virtual {v5, v4}, Lcom/android/server/am/ToolkitTabDialog;->changeUiStatus(I)V

    :cond_3a
    :goto_3a
    iget-object v4, p0, Lcom/android/server/am/ToolkitTabDialog$GestureListener;->this$0:Lcom/android/server/am/ToolkitTabDialog;

    #calls: Lcom/android/server/am/ToolkitTabDialog;->hideGuideView()V
    invoke-static {v4}, Lcom/android/server/am/ToolkitTabDialog;->access$900(Lcom/android/server/am/ToolkitTabDialog;)V

    const/4 v3, 0x1

    goto :goto_1b

    :cond_41
    if-ge v1, v7, :cond_3a

    iget-object v4, p0, Lcom/android/server/am/ToolkitTabDialog$GestureListener;->this$0:Lcom/android/server/am/ToolkitTabDialog;

    invoke-virtual {v4, v8}, Lcom/android/server/am/ToolkitTabDialog;->changeUiStatus(I)V

    goto :goto_3a

    :sswitch_49
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    sub-float/2addr v5, v6

    float-to-int v1, v5

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_1b

    if-le v1, v7, :cond_6d

    iget-object v5, p0, Lcom/android/server/am/ToolkitTabDialog$GestureListener;->this$0:Lcom/android/server/am/ToolkitTabDialog;

    invoke-virtual {v5, v4}, Lcom/android/server/am/ToolkitTabDialog;->changeUiStatus(I)V

    :cond_66
    :goto_66
    iget-object v4, p0, Lcom/android/server/am/ToolkitTabDialog$GestureListener;->this$0:Lcom/android/server/am/ToolkitTabDialog;

    #calls: Lcom/android/server/am/ToolkitTabDialog;->hideGuideView()V
    invoke-static {v4}, Lcom/android/server/am/ToolkitTabDialog;->access$900(Lcom/android/server/am/ToolkitTabDialog;)V

    const/4 v3, 0x1

    goto :goto_1b

    :cond_6d
    if-ge v1, v7, :cond_66

    iget-object v4, p0, Lcom/android/server/am/ToolkitTabDialog$GestureListener;->this$0:Lcom/android/server/am/ToolkitTabDialog;

    invoke-virtual {v4, v8}, Lcom/android/server/am/ToolkitTabDialog;->changeUiStatus(I)V

    goto :goto_66

    :sswitch_75
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    sub-float/2addr v5, v6

    float-to-int v2, v5

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_1b

    if-le v2, v7, :cond_99

    iget-object v5, p0, Lcom/android/server/am/ToolkitTabDialog$GestureListener;->this$0:Lcom/android/server/am/ToolkitTabDialog;

    invoke-virtual {v5, v4}, Lcom/android/server/am/ToolkitTabDialog;->changeUiStatus(I)V

    :cond_92
    :goto_92
    iget-object v4, p0, Lcom/android/server/am/ToolkitTabDialog$GestureListener;->this$0:Lcom/android/server/am/ToolkitTabDialog;

    #calls: Lcom/android/server/am/ToolkitTabDialog;->hideGuideView()V
    invoke-static {v4}, Lcom/android/server/am/ToolkitTabDialog;->access$900(Lcom/android/server/am/ToolkitTabDialog;)V

    const/4 v3, 0x1

    goto :goto_1b

    :cond_99
    if-ge v2, v7, :cond_92

    iget-object v4, p0, Lcom/android/server/am/ToolkitTabDialog$GestureListener;->this$0:Lcom/android/server/am/ToolkitTabDialog;

    invoke-virtual {v4, v8}, Lcom/android/server/am/ToolkitTabDialog;->changeUiStatus(I)V

    goto :goto_92

    :sswitch_a1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    sub-float/2addr v5, v6

    float-to-int v2, v5

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_1b

    if-le v2, v7, :cond_c6

    iget-object v5, p0, Lcom/android/server/am/ToolkitTabDialog$GestureListener;->this$0:Lcom/android/server/am/ToolkitTabDialog;

    invoke-virtual {v5, v4}, Lcom/android/server/am/ToolkitTabDialog;->changeUiStatus(I)V

    :cond_be
    :goto_be
    iget-object v4, p0, Lcom/android/server/am/ToolkitTabDialog$GestureListener;->this$0:Lcom/android/server/am/ToolkitTabDialog;

    #calls: Lcom/android/server/am/ToolkitTabDialog;->hideGuideView()V
    invoke-static {v4}, Lcom/android/server/am/ToolkitTabDialog;->access$900(Lcom/android/server/am/ToolkitTabDialog;)V

    const/4 v3, 0x1

    goto/16 :goto_1b

    :cond_c6
    if-ge v2, v7, :cond_be

    iget-object v4, p0, Lcom/android/server/am/ToolkitTabDialog$GestureListener;->this$0:Lcom/android/server/am/ToolkitTabDialog;

    invoke-virtual {v4, v8}, Lcom/android/server/am/ToolkitTabDialog;->changeUiStatus(I)V

    goto :goto_be

    :sswitch_data_ce
    .sparse-switch
        0x3 -> :sswitch_1d
        0x5 -> :sswitch_49
        0x30 -> :sswitch_75
        0x50 -> :sswitch_a1
    .end sparse-switch
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 2

    return-void
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
    .registers 3

    const/4 v0, 0x0

    return v0
.end method
