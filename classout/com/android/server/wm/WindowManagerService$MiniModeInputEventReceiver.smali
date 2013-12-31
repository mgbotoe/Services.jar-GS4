.class Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;
.super Landroid/view/InputEventReceiver;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MiniModeInputEventReceiver"
.end annotation


# instance fields
.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mTargetWindow:Lcom/android/server/wm/WindowState;

.field final synthetic this$0:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/InputChannel;Landroid/os/Looper;)V
    .registers 6

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {p0, p2, p3}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->mTargetWindow:Lcom/android/server/wm/WindowState;

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->mGestureDetector:Landroid/view/GestureDetector;

    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver$1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver$1;-><init>(Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;Lcom/android/server/wm/WindowManagerService;)V

    invoke-direct {v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->mGestureDetector:Landroid/view/GestureDetector;

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;)Lcom/android/server/wm/WindowState;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->mTargetWindow:Lcom/android/server/wm/WindowState;

    return-object v0
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;)V
    .registers 44

    const/4 v9, 0x0

    :try_start_1
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/view/MotionEvent;

    move/from16 v38, v0

    if-eqz v38, :cond_550

    invoke-virtual/range {p1 .. p1}, Landroid/view/InputEvent;->getSource()I

    move-result v38

    and-int/lit8 v38, v38, 0x2

    if-eqz v38, :cond_550

    move-object/from16 v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    move-object/from16 v20, v0

    const/4 v9, 0x1

    invoke-virtual/range {v20 .. v20}, Landroid/view/MotionEvent;->getRawX()F

    move-result v36

    invoke-virtual/range {v20 .. v20}, Landroid/view/MotionEvent;->getRawY()F

    move-result v37

    invoke-virtual/range {v20 .. v20}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v38, v0

    invoke-static/range {v38 .. v38}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isSupportFixedSplitView(Landroid/content/Context;)Z

    move-result v38

    if-eqz v38, :cond_4f

    invoke-static {}, Lcom/android/server/am/MultiWindowManagerService;->getSelf()Lcom/android/server/am/MultiWindowManagerService;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Lcom/android/server/am/MultiWindowManagerService;->getArrangeState()I

    move-result v38

    and-int/lit8 v38, v38, 0x70

    if-eqz v38, :cond_4f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->mGestureDetector:Landroid/view/GestureDetector;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_4f
    .catchall {:try_start_1 .. :try_end_4f} :catchall_227

    :cond_4f
    if-eqz v6, :cond_59

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v9}, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    :goto_58
    return-void

    :cond_59
    :try_start_59
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    move-object/from16 v39, v0

    monitor-enter v39
    :try_end_66
    .catchall {:try_start_59 .. :try_end_66} :catchall_227

    const/16 v34, 0x0

    const/16 v30, 0x0

    :try_start_6a
    invoke-virtual/range {v20 .. v20}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v8

    if-eqz v8, :cond_9e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v38, v0

    const/16 v40, 0x0

    move-object/from16 v0, v38

    move/from16 v1, v36

    move/from16 v2, v37

    move-object/from16 v3, v40

    #calls: Lcom/android/server/wm/WindowManagerService;->findTargetWindowOnDisplay(IFFLandroid/os/IBinder;)Lcom/android/server/wm/WindowState;
    invoke-static {v0, v8, v1, v2, v3}, Lcom/android/server/wm/WindowManagerService;->access$600(Lcom/android/server/wm/WindowManagerService;IFFLandroid/os/IBinder;)Lcom/android/server/wm/WindowState;

    move-result-object v30

    if-eqz v30, :cond_9e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Lcom/android/server/wm/DisplayContent;

    invoke-virtual/range {v38 .. v38}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v34

    :cond_9e
    if-eqz v30, :cond_a2

    if-nez v34, :cond_ca

    :cond_a2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    if-eqz v8, :cond_de

    const/16 v38, 0x1

    :goto_bc
    move-object/from16 v0, v40

    move/from16 v1, v36

    move/from16 v2, v37

    move-object/from16 v3, v41

    move/from16 v4, v38

    #calls: Lcom/android/server/wm/WindowManagerService;->findTargetWindow(FFLandroid/os/IBinder;Z)Lcom/android/server/wm/WindowState;
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/wm/WindowManagerService;->access$700(Lcom/android/server/wm/WindowManagerService;FFLandroid/os/IBinder;Z)Lcom/android/server/wm/WindowState;

    move-result-object v30

    :cond_ca
    if-nez v30, :cond_e1

    const/16 v38, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->mTargetWindow:Lcom/android/server/wm/WindowState;

    monitor-exit v39
    :try_end_d5
    .catchall {:try_start_6a .. :try_end_d5} :catchall_224

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v9}, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    goto/16 :goto_58

    :cond_de
    const/16 v38, 0x0

    goto :goto_bc

    :cond_e1
    :try_start_e1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowTraybarTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v38, v0

    if-eqz v38, :cond_141

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowTraybarTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v38, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v38

    if-eq v0, v1, :cond_141

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowTraybarTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lcom/android/server/wm/WindowList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_118
    :goto_118
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v38

    if-eqz v38, :cond_130

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/android/server/wm/WindowState;

    move-object/from16 v0, v30

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_118

    const/4 v14, 0x1

    goto :goto_118

    :cond_130
    if-nez v14, :cond_141

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v38, v0

    invoke-interface/range {v38 .. v38}, Landroid/view/WindowManagerPolicy;->closeMultiWindowTrayBar()Z

    :cond_141
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v38, v0

    const/16 v40, 0x834

    move/from16 v0, v38

    move/from16 v1, v40

    if-eq v0, v1, :cond_169

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v38, v0

    const/16 v40, 0x836

    move/from16 v0, v38

    move/from16 v1, v40

    if-ne v0, v1, :cond_3d3

    :cond_169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v38, v0

    const/16 v40, 0x0

    move/from16 v0, v40

    move-object/from16 v1, v38

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mSkipWidgetFocus:Z

    move-object/from16 v0, v34

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v10

    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    new-instance v22, Ljava/util/Stack;

    invoke-direct/range {v22 .. v22}, Ljava/util/Stack;-><init>()V

    invoke-virtual/range {v34 .. v34}, Lcom/android/server/wm/WindowList;->size()I

    move-result v5

    const/16 v32, 0x0

    const/16 v26, 0x0

    const/16 v25, 0x0

    const/16 v23, 0x0

    const/16 v33, 0x0

    add-int/lit8 v16, v5, -0x1

    :goto_19e
    if-ltz v16, :cond_38d

    move-object/from16 v0, v34

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lcom/android/server/wm/WindowState;

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v38, v0

    const/16 v40, 0x834

    move/from16 v0, v38

    move/from16 v1, v40

    if-eq v0, v1, :cond_1d5

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v38, v0

    const/16 v40, 0x836

    move/from16 v0, v38

    move/from16 v1, v40

    if-eq v0, v1, :cond_1d5

    add-int/lit8 v16, v16, -0x1

    goto :goto_19e

    :cond_1d5
    move-object/from16 v32, v33

    move-object/from16 v0, v32

    move-object/from16 v1, v30

    if-eq v0, v1, :cond_397

    move-object/from16 v0, v34

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v12

    if-gez v12, :cond_230

    const-string v38, "WindowManager"

    const-string v40, "    no targetWin in mWindows!!"

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v32, 0x0

    :goto_1f4
    if-eqz v32, :cond_38d

    add-int/lit8 v27, v12, -0x1

    :goto_1f8
    if-ltz v27, :cond_210

    move-object/from16 v0, v34

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/server/wm/WindowState;

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v30

    if-eq v0, v1, :cond_236

    :cond_210
    :goto_210
    invoke-virtual/range {v22 .. v22}, Ljava/util/Stack;->empty()Z

    move-result v38

    if-nez v38, :cond_243

    invoke-virtual/range {v22 .. v22}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/server/wm/WindowState;

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_210

    :catchall_224
    move-exception v38

    monitor-exit v39
    :try_end_226
    .catchall {:try_start_e1 .. :try_end_226} :catchall_224

    :try_start_226
    throw v38
    :try_end_227
    .catchall {:try_start_226 .. :try_end_227} :catchall_227

    :catchall_227
    move-exception v38

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v9}, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    throw v38

    :cond_230
    :try_start_230
    move-object/from16 v0, v34

    invoke-virtual {v0, v12}, Lcom/android/server/wm/WindowList;->remove(I)Ljava/lang/Object;

    goto :goto_1f4

    :cond_236
    invoke-virtual/range {v22 .. v23}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v34

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v27, v27, -0x1

    goto :goto_1f8

    :cond_243
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v38

    sub-int v28, v12, v38

    move-object/from16 v0, v24

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_250
    move/from16 v0, v28

    if-gt v0, v5, :cond_26a

    move-object/from16 v0, v34

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/server/wm/WindowState;

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v30

    if-eq v0, v1, :cond_2b2

    :cond_26a
    const-string v38, "WindowManager"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "subTargetWinList = "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v17, 0x0

    :goto_28c
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v38

    move/from16 v0, v17

    move/from16 v1, v38

    if-ge v0, v1, :cond_2c1

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v38

    sub-int v38, v38, v17

    add-int/lit8 v38, v38, -0x1

    move-object/from16 v0, v24

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/server/wm/WindowState;

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v17, v17, 0x1

    goto :goto_28c

    :cond_2b2
    move-object/from16 v0, v34

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->remove(I)Ljava/lang/Object;

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_250

    :cond_2c1
    move-object/from16 v0, v34

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v31

    :goto_2c9
    move/from16 v0, v31

    if-gt v0, v5, :cond_2ec

    add-int/lit8 v38, v31, 0x1

    move-object/from16 v0, v34

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/server/wm/WindowState;

    if-eqz v26, :cond_2ec

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v32

    if-ne v0, v1, :cond_2ec

    move-object/from16 v25, v26

    add-int/lit8 v31, v31, 0x1

    goto :goto_2c9

    :cond_2ec
    if-eqz v25, :cond_2f0

    move-object/from16 v32, v25

    :cond_2f0
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v38

    const/16 v40, 0x1

    move/from16 v0, v38

    move/from16 v1, v40

    if-le v0, v1, :cond_33c

    const-string v38, "WindowManager"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "revSubTargetWinList.size() = "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_320
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v38

    if-eqz v38, :cond_34b

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/android/server/wm/WindowState;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v32

    move-object/from16 v2, v29

    #calls: Lcom/android/server/wm/WindowManagerService;->placeWindowAfter(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->access$800(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V

    goto :goto_320

    :cond_33c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v32

    move-object/from16 v2, v30

    #calls: Lcom/android/server/wm/WindowManagerService;->placeWindowAfter(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->access$800(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V

    :cond_34b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v38, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v38

    iput-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mTopWidgetWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v38

    const/16 v40, 0x1

    move/from16 v0, v40

    move-object/from16 v1, v38

    iput-boolean v0, v1, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v38, v0

    const/16 v40, 0x1

    move/from16 v0, v40

    move-object/from16 v1, v38

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v34

    #calls: Lcom/android/server/wm/WindowManagerService;->assignLayersLocked(Lcom/android/server/wm/WindowList;)V
    invoke-static {v0, v1}, Lcom/android/server/wm/WindowManagerService;->access$900(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/WindowList;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v38, v0

    #calls: Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V
    invoke-static/range {v38 .. v38}, Lcom/android/server/wm/WindowManagerService;->access$1000(Lcom/android/server/wm/WindowManagerService;)V

    :cond_38d
    :goto_38d
    monitor-exit v39
    :try_end_38e
    .catchall {:try_start_230 .. :try_end_38e} :catchall_224

    :cond_38e
    :goto_38e
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v9}, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    goto/16 :goto_58

    :cond_397
    :try_start_397
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v30

    if-eq v0, v1, :cond_38d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v38

    const/16 v40, 0x1

    move/from16 v0, v40

    move-object/from16 v1, v38

    iput-boolean v0, v1, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v38, v0

    const/16 v40, 0x1

    move/from16 v0, v40

    move-object/from16 v1, v38

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v38, v0

    #calls: Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V
    invoke-static/range {v38 .. v38}, Lcom/android/server/wm/WindowManagerService;->access$1000(Lcom/android/server/wm/WindowManagerService;)V

    goto :goto_38d

    :cond_3d3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTopWidgetWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v38, v0

    if-eqz v38, :cond_43a

    move-object/from16 v0, v34

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTopWidgetWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v40, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v40

    move/from16 v0, v38

    move/from16 v1, v40

    if-ge v0, v1, :cond_43a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v38, v0

    const/16 v40, 0x1

    move/from16 v0, v40

    move-object/from16 v1, v38

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mSkipWidgetFocus:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v38

    const/16 v40, 0x1

    move/from16 v0, v40

    move-object/from16 v1, v38

    iput-boolean v0, v1, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v38, v0

    const/16 v40, 0x1

    move/from16 v0, v40

    move-object/from16 v1, v38

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v38, v0

    #calls: Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V
    invoke-static/range {v38 .. v38}, Lcom/android/server/wm/WindowManagerService;->access$1000(Lcom/android/server/wm/WindowManagerService;)V

    :cond_43a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mIsMultiWindowEnabled:Z

    move/from16 v38, v0

    if-eqz v38, :cond_38d

    if-eqz v30, :cond_38d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    move-object/from16 v38, v0

    if-eqz v38, :cond_38d

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->mTargetWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    move/from16 v38, v0

    const/high16 v40, 0x80

    and-int v38, v38, v40

    if-eqz v38, :cond_4a9

    const/4 v13, 0x1

    :goto_47d
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v38, v0

    if-eqz v38, :cond_49f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v38, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v40, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    if-eq v0, v1, :cond_49f

    if-eqz v13, :cond_4ab

    :cond_49f
    monitor-exit v39
    :try_end_4a0
    .catchall {:try_start_397 .. :try_end_4a0} :catchall_224

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v9}, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    goto/16 :goto_58

    :cond_4a9
    const/4 v13, 0x0

    goto :goto_47d

    :cond_4ab
    :try_start_4ab
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->access$1100()Z

    move-result v38

    if-eqz v38, :cond_514

    const-string v38, "WindowManager"

    const-string v40, "otherAppTouched of WindowManagerService is called and target is different with original."

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v38, "WindowManager"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "targetWin >> "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v30 .. v30}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v41

    move-object/from16 v0, v41

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    move-object/from16 v41, v0

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v38, "WindowManager"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "mCurrentFocus >> "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v41

    move-object/from16 v0, v41

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    move-object/from16 v41, v0

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_514
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v38, v0

    const/16 v40, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->setCurrentInputMethodClient(Landroid/os/IBinder;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    move-object/from16 v38, v0

    const/16 v40, 0x3e8

    move-object/from16 v0, v38

    move/from16 v1, v40

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z
    :try_end_54e
    .catchall {:try_start_4ab .. :try_end_54e} :catchall_224

    goto/16 :goto_38d

    :cond_550
    :try_start_550
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/view/KeyEvent;

    move/from16 v38, v0

    if-eqz v38, :cond_38e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    move-object/from16 v39, v0

    monitor-enter v39
    :try_end_565
    .catchall {:try_start_550 .. :try_end_565} :catchall_227

    :try_start_565
    move-object/from16 v0, p1

    check-cast v0, Landroid/view/KeyEvent;

    move-object/from16 v18, v0

    const/16 v34, 0x0

    const/16 v30, 0x0

    const/4 v9, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/view/InputEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v7

    if-eqz v7, :cond_58c

    invoke-virtual {v7}, Landroid/view/InputDevice;->getKeyboardType()I

    move-result v38

    const/16 v40, 0x2

    move/from16 v0, v38

    move/from16 v1, v40

    if-ne v0, v1, :cond_58c

    monitor-exit v39
    :try_end_583
    .catchall {:try_start_565 .. :try_end_583} :catchall_74b

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v9}, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    goto/16 :goto_58

    :cond_58c
    :try_start_58c
    invoke-virtual/range {v18 .. v18}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    invoke-virtual {v0, v8}, Lcom/android/server/wm/WindowManagerService;->findFocusedWindowByDisplay(I)Lcom/android/server/wm/WindowState;

    move-result-object v30

    if-eqz v30, :cond_5b6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Lcom/android/server/wm/DisplayContent;

    invoke-virtual/range {v38 .. v38}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v34

    :cond_5b6
    if-eqz v30, :cond_5ba

    if-nez v34, :cond_5c4

    :cond_5ba
    monitor-exit v39
    :try_end_5bb
    .catchall {:try_start_58c .. :try_end_5bb} :catchall_74b

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v9}, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    goto/16 :goto_58

    :cond_5c4
    :try_start_5c4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTopWidgetWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v38, v0

    if-eqz v38, :cond_62b

    move-object/from16 v0, v34

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTopWidgetWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v40, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v40

    move/from16 v0, v38

    move/from16 v1, v40

    if-ge v0, v1, :cond_62b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v38, v0

    const/16 v40, 0x1

    move/from16 v0, v40

    move-object/from16 v1, v38

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mSkipWidgetFocus:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v38

    const/16 v40, 0x1

    move/from16 v0, v40

    move-object/from16 v1, v38

    iput-boolean v0, v1, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v38, v0

    const/16 v40, 0x1

    move/from16 v0, v40

    move-object/from16 v1, v38

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v38, v0

    #calls: Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V
    invoke-static/range {v38 .. v38}, Lcom/android/server/wm/WindowManagerService;->access$1000(Lcom/android/server/wm/WindowManagerService;)V

    :cond_62b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mIsMultiWindowEnabled:Z

    move/from16 v38, v0

    if-eqz v38, :cond_748

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    move-object/from16 v38, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v38

    if-eq v0, v1, :cond_748

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    move-object/from16 v38, v0

    if-eqz v38, :cond_748

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v38

    move/from16 v0, v38

    if-eq v8, v0, :cond_748

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v38, v0

    if-eqz v38, :cond_68d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v38, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v40, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    if-ne v0, v1, :cond_697

    :cond_68d
    monitor-exit v39
    :try_end_68e
    .catchall {:try_start_5c4 .. :try_end_68e} :catchall_74b

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v9}, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    goto/16 :goto_58

    :cond_697
    :try_start_697
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->access$1100()Z

    move-result v38

    if-eqz v38, :cond_70e

    const-string v38, "WindowManager"

    const-string v40, "[SideSync Key]otherAppTouched of WindowManagerService is called and target is different with original."

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v38, "WindowManager"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "targetWin >> "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v30 .. v30}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v41

    move-object/from16 v0, v41

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    move-object/from16 v41, v0

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    move-object/from16 v38, v0

    if-eqz v38, :cond_70e

    const-string v38, "WindowManager"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "mCurrentFocus >> "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v41

    move-object/from16 v0, v41

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    move-object/from16 v41, v0

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_70e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v38, v0

    const/16 v40, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->setCurrentInputMethodClient(Landroid/os/IBinder;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    move-object/from16 v38, v0

    const/16 v40, 0x3e8

    move-object/from16 v0, v38

    move/from16 v1, v40

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$MiniModeInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    :cond_748
    monitor-exit v39

    goto/16 :goto_38e

    :catchall_74b
    move-exception v38

    monitor-exit v39
    :try_end_74d
    .catchall {:try_start_697 .. :try_end_74d} :catchall_74b

    :try_start_74d
    throw v38
    :try_end_74e
    .catchall {:try_start_74d .. :try_end_74e} :catchall_227
.end method
