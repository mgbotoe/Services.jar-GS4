.class public Lcom/android/server/wm/WindowAnimator;
.super Ljava/lang/Object;
.source "WindowAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    }
.end annotation


# static fields
.field static final DEFAULT_DIM_DURATION:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "WindowAnimator"


# instance fields
.field mAboveUniverseLayer:I

.field mAdjResult:I

.field private mAnimTransactionSequence:I

.field mAnimating:Z

.field final mAnimationRunnable:Ljava/lang/Runnable;

.field mBulkUpdateParams:I

.field final mContext:Landroid/content/Context;

.field mCurrentFocus:Lcom/android/server/wm/WindowState;

.field mCurrentTime:J

.field mDisplayContentsAnimators:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;",
            ">;"
        }
    .end annotation
.end field

.field mForceHiding:Z

.field mForceHidingByCover:Z

.field mInitialized:Z

.field mLastWindowFreezeSource:Ljava/lang/Object;

.field final mPolicy:Landroid/view/WindowManagerPolicy;

.field final mService:Lcom/android/server/wm/WindowManagerService;

.field mUniverseBackground:Lcom/android/server/wm/WindowStateAnimator;

.field mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mUniverseBackground:Lcom/android/server/wm/WindowStateAnimator;

    iput v1, p0, Lcom/android/server/wm/WindowAnimator;->mAboveUniverseLayer:I

    iput v1, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    iput-boolean v1, p0, Lcom/android/server/wm/WindowAnimator;->mInitialized:Z

    iput-object p1, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mContext:Landroid/content/Context;

    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    new-instance v0, Lcom/android/server/wm/WindowAnimator$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/WindowAnimator$1;-><init>(Lcom/android/server/wm/WindowAnimator;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mAnimationRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/WindowAnimator;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/wm/WindowAnimator;->animateLocked()V

    return-void
.end method

.method private animateLocked()V
    .registers 31

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mInitialized:Z

    move/from16 v28, v0

    if-nez v28, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v28

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    const/16 v28, 0x8

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    move/from16 v25, v0

    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    invoke-static {}, Landroid/view/SurfaceControl;->setAnimationTransaction()V

    :try_start_2f
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/WindowAnimator;->updateAppWindowsLocked()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/util/SparseArray;->size()I

    move-result v21

    const/16 v18, 0x0

    :goto_3e
    move/from16 v0, v18

    move/from16 v1, v21

    if-ge v0, v1, :cond_136

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    iget-object v0, v9, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    move-object/from16 v23, v0

    if-eqz v23, :cond_86

    invoke-virtual/range {v23 .. v23}, Lcom/android/server/wm/ScreenRotationAnimation;->isAnimating()Z

    move-result v28

    if-eqz v28, :cond_86

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    move-wide/from16 v28, v0

    move-object/from16 v0, v23

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/ScreenRotationAnimation;->stepAnimationLocked(J)Z

    move-result v28

    if-eqz v28, :cond_b9

    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    :cond_86
    :goto_86
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/server/wm/WindowAnimator;->performAnimationsLocked(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Lcom/android/server/wm/WindowManagerService;->getWindowListLocked(I)Lcom/android/server/wm/WindowList;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/android/server/wm/WindowList;->size()I

    move-result v3

    const/16 v20, 0x0

    :goto_9d
    move/from16 v0, v20

    if-ge v0, v3, :cond_132

    move-object/from16 v0, v27

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/server/wm/WindowState;

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    invoke-virtual/range {v28 .. v29}, Lcom/android/server/wm/WindowStateAnimator;->prepareSurfaceLocked(Z)V

    add-int/lit8 v20, v20, 0x1

    goto :goto_9d

    :cond_b9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    move/from16 v28, v0

    or-int/lit8 v28, v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    invoke-virtual/range {v23 .. v23}, Lcom/android/server/wm/ScreenRotationAnimation;->kill()V

    const/16 v28, 0x0

    move-object/from16 v0, v28

    iput-object v0, v9, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;
    :try_end_d0
    .catchall {:try_start_2f .. :try_end_d0} :catchall_22c
    .catch Ljava/lang/RuntimeException; {:try_start_2f .. :try_end_d0} :catch_d1

    goto :goto_86

    :catch_d1
    move-exception v16

    :try_start_d2
    const-string v28, "WindowAnimator"

    const-string v29, "Unhandled exception in Window Manager"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_df
    .catchall {:try_start_d2 .. :try_end_df} :catchall_22c

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    :goto_e2
    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/util/SparseArray;->size()I

    move-result v21

    const/4 v12, 0x0

    :goto_f5
    move/from16 v0, v21

    if-ge v12, v0, :cond_277

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v10}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v28

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowAnimator;->getPendingLayoutChanges(I)I

    move-result v22

    and-int/lit8 v28, v22, 0x4

    if-eqz v28, :cond_12b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    move/from16 v28, v0

    or-int/lit8 v28, v28, 0x20

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    :cond_12b
    if-eqz v22, :cond_12f

    const/16 v17, 0x1

    :cond_12f
    add-int/lit8 v12, v12, 0x1

    goto :goto_f5

    :cond_132
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_3e

    :cond_136
    :try_start_136
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/WindowAnimator;->testTokenMayBeDrawnLocked()V

    const/16 v18, 0x0

    :goto_13b
    move/from16 v0, v18

    move/from16 v1, v21

    if-ge v0, v1, :cond_255

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    iget-object v0, v9, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    move-object/from16 v23, v0

    if-eqz v23, :cond_168

    invoke-virtual/range {v23 .. v23}, Lcom/android/server/wm/ScreenRotationAnimation;->updateSurfacesInTransaction()V

    :cond_168
    iget-object v7, v9, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mDimAnimator:Lcom/android/server/wm/DimLayer;

    iget-object v0, v9, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v26, v0

    if-nez v26, :cond_1be

    invoke-virtual {v7}, Lcom/android/server/wm/DimLayer;->getLayer()I

    move-result v8

    const/4 v6, 0x0

    :goto_175
    invoke-virtual {v7}, Lcom/android/server/wm/DimLayer;->getTargetAlpha()F

    move-result v24

    cmpl-float v28, v24, v6

    if-eqz v28, :cond_234

    if-nez v26, :cond_203

    const-wide/16 v28, 0xc8

    move-wide/from16 v0, v28

    invoke-virtual {v7, v0, v1}, Lcom/android/server/wm/DimLayer;->hide(J)V

    :cond_186
    :goto_186
    invoke-virtual {v7}, Lcom/android/server/wm/DimLayer;->isAnimating()Z

    move-result v28

    if-eqz v28, :cond_19b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/server/wm/WindowManagerService;->okToDisplay()Z

    move-result v28

    if-nez v28, :cond_241

    invoke-virtual {v7}, Lcom/android/server/wm/DimLayer;->show()V

    :cond_19b
    :goto_19b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayMagnifier:Lcom/android/server/wm/DisplayMagnifier;

    move-object/from16 v28, v0

    if-eqz v28, :cond_1ba

    if-nez v11, :cond_1ba

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayMagnifier:Lcom/android/server/wm/DisplayMagnifier;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/server/wm/DisplayMagnifier;->drawMagnifiedRegionBorderIfNeededLocked()V

    :cond_1ba
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_13b

    :cond_1be
    move-object/from16 v0, v26

    iget v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/server/wm/WindowList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_1d2
    :goto_1d2
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_1ef

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowState;

    iget v0, v5, Lcom/android/server/wm/WindowState;->mSubLayer:I

    move/from16 v28, v0

    if-gez v28, :cond_1d2

    iget v0, v5, Lcom/android/server/wm/WindowState;->mLayer:I

    move/from16 v28, v0

    move/from16 v0, v28

    if-ge v0, v4, :cond_1d2

    iget v4, v5, Lcom/android/server/wm/WindowState;->mLayer:I

    goto :goto_1d2

    :cond_1ef
    add-int/lit8 v8, v4, -0x1

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v6, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    goto/16 :goto_175

    :cond_203
    move-object/from16 v0, v26

    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    move/from16 v28, v0

    if-eqz v28, :cond_231

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    move-object/from16 v28, v0

    if-eqz v28, :cond_231

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/view/animation/Animation;->computeDurationHint()J

    move-result-wide v14

    :goto_21d
    cmpl-float v28, v24, v6

    if-lez v28, :cond_227

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/server/wm/WindowAnimator;->getDimBehindFadeDuration(J)J

    move-result-wide v14

    :cond_227
    invoke-virtual {v7, v8, v6, v14, v15}, Lcom/android/server/wm/DimLayer;->show(IFJ)V
    :try_end_22a
    .catchall {:try_start_136 .. :try_end_22a} :catchall_22c
    .catch Ljava/lang/RuntimeException; {:try_start_136 .. :try_end_22a} :catch_d1

    goto/16 :goto_186

    :catchall_22c
    move-exception v28

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v28

    :cond_231
    const-wide/16 v14, 0xc8

    goto :goto_21d

    :cond_234
    :try_start_234
    invoke-virtual {v7}, Lcom/android/server/wm/DimLayer;->getLayer()I

    move-result v28

    move/from16 v0, v28

    if-eq v0, v8, :cond_186

    invoke-virtual {v7, v8}, Lcom/android/server/wm/DimLayer;->setLayer(I)V

    goto/16 :goto_186

    :cond_241
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    move/from16 v28, v0

    invoke-virtual {v7}, Lcom/android/server/wm/DimLayer;->stepAnimation()Z

    move-result v29

    or-int v28, v28, v29

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    goto/16 :goto_19b

    :cond_255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWatermark:Lcom/android/server/wm/Watermark;

    move-object/from16 v28, v0

    if-eqz v28, :cond_272

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWatermark:Lcom/android/server/wm/Watermark;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/server/wm/Watermark;->drawIfNeeded()V
    :try_end_272
    .catchall {:try_start_234 .. :try_end_272} :catchall_22c
    .catch Ljava/lang/RuntimeException; {:try_start_234 .. :try_end_272} :catch_d1

    :cond_272
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    goto/16 :goto_e2

    :cond_277
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    move/from16 v28, v0

    if-eqz v28, :cond_28a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/server/wm/WindowManagerService;->copyAnimToLayoutParamsLocked()Z

    move-result v13

    :cond_28a
    if-nez v17, :cond_28e

    if-eqz v13, :cond_297

    :cond_28e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/server/wm/WindowManagerService;->requestTraversalLocked()V

    :cond_297
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    move/from16 v28, v0

    if-eqz v28, :cond_2aa

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    goto/16 :goto_8

    :cond_2aa
    if-eqz v25, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/server/wm/WindowManagerService;->requestTraversalLocked()V

    goto/16 :goto_8
.end method

.method static bulkUpdateParamsToString(I)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_10

    const-string v1, " UPDATE_ROTATION"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_10
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_19

    const-string v1, " WALLPAPER_MAY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_19
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_22

    const-string v1, " FORCE_HIDING_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_22
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_2b

    const-string v1, " ORIENTATION_CHANGE_COMPLETE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2b
    and-int/lit8 v1, p0, 0x10

    if-eqz v1, :cond_34

    const-string v1, " TURN_ON_SCREEN"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getDimBehindFadeDuration(J)J
    .registers 7

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x112

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1e

    long-to-float v1, p1

    long-to-float v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v1

    float-to-long p1, v1

    :cond_1d
    :goto_1d
    return-wide p1

    :cond_1e
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_1d

    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/16 v2, 0x1f

    if-gt v1, v2, :cond_1d

    iget v1, v0, Landroid/util/TypedValue;->data:I

    int-to-long p1, v1

    goto :goto_1d
.end method

.method private getDisplayContentsAnimatorLocked(I)Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    .registers 4

    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    if-nez v0, :cond_14

    new-instance v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;-><init>(Lcom/android/server/wm/WindowAnimator;I)V

    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_14
    return-object v0
.end method

.method private needHideWindowBySViewCover(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)Z
    .registers 7

    const/4 v0, 0x0

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_1f

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7d4

    if-ne v2, v3, :cond_1f

    const/4 v1, 0x1

    :goto_10
    if-eqz p2, :cond_21

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x8

    and-int/2addr v2, v3

    if-nez v2, :cond_1e

    if-nez v1, :cond_1e

    const/4 v0, 0x1

    :cond_1e
    :goto_1e
    return v0

    :cond_1f
    const/4 v1, 0x0

    goto :goto_10

    :cond_21
    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x20

    and-int/2addr v2, v3

    if-nez v2, :cond_1e

    const/4 v0, 0x1

    goto :goto_1e
.end method

.method private performAnimationsLocked(I)V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowAnimator;->mForceHiding:Z

    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowAnimator;->updateWindowsLocked(I)V

    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowAnimator;->updateWallpaperLocked(I)V

    return-void
.end method

.method private testTokenMayBeDrawnLocked()V
    .registers 10

    iget-object v6, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v6, Lcom/android/server/wm/WindowManagerService;->mAnimatingAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v4, 0x0

    :goto_9
    if-ge v4, v0, :cond_63

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/AppWindowToken;

    iget-object v2, v5, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-boolean v1, v5, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    iget-boolean v6, v2, Lcom/android/server/wm/AppWindowAnimator;->allDrawn:Z

    if-eq v1, v6, :cond_31

    iput-boolean v1, v2, Lcom/android/server/wm/AppWindowAnimator;->allDrawn:Z

    if-eqz v1, :cond_31

    iget-boolean v6, v2, Lcom/android/server/wm/AppWindowAnimator;->freezingScreen:Z

    if-eqz v6, :cond_48

    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowAnimator;->showAllWindowsLocked()Z

    iget-object v6, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual {v6, v5, v7, v8}, Lcom/android/server/wm/WindowManagerService;->unsetAppFreezingScreenLocked(Lcom/android/server/wm/AppWindowToken;ZZ)V

    const/4 v6, 0x4

    const-string v7, "testTokenMayBeDrawnLocked: freezingScreen"

    invoke-virtual {p0, v2, v6, v7}, Lcom/android/server/wm/WindowAnimator;->setAppLayoutChanges(Lcom/android/server/wm/AppWindowAnimator;ILjava/lang/String;)V

    :cond_31
    :goto_31
    iget-boolean v6, v5, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-eqz v6, :cond_45

    iget-object v6, p0, Lcom/android/server/wm/WindowAnimator;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-nez v6, :cond_45

    iget-object v6, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v6, v6, Lcom/android/server/wm/WindowManagerService;->mAppsFreezingScreen:I

    if-nez v6, :cond_45

    iget v6, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    and-int/lit8 v6, v6, -0x9

    iput v6, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    :cond_45
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_48
    const/16 v6, 0x8

    const-string v7, "testTokenMayBeDrawnLocked"

    invoke-virtual {p0, v2, v6, v7}, Lcom/android/server/wm/WindowAnimator;->setAppLayoutChanges(Lcom/android/server/wm/AppWindowAnimator;ILjava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_31

    iget-boolean v6, p0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowAnimator;->showAllWindowsLocked()Z

    move-result v7

    or-int/2addr v6, v7

    iput-boolean v6, p0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    goto :goto_31

    :cond_63
    return-void
.end method

.method private updateAppWindowsLocked()V
    .registers 13

    const/4 v11, 0x4

    const/4 v8, 0x0

    const/4 v7, 0x1

    iget-object v6, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v6, Lcom/android/server/wm/WindowManagerService;->mAnimatingAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v4, 0x0

    :goto_c
    if-ge v4, v0, :cond_51

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/AppWindowToken;

    iget-object v2, v6, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v6, v2, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v6, :cond_2e

    iget-object v6, v2, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    sget-object v9, Lcom/android/server/wm/AppWindowAnimator;->sDummyAnimation:Landroid/view/animation/Animation;

    if-eq v6, v9, :cond_2e

    move v5, v7

    :goto_21
    iget-wide v9, p0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    invoke-virtual {v2, v9, v10}, Lcom/android/server/wm/AppWindowAnimator;->stepAnimationLocked(J)Z

    move-result v6

    if-eqz v6, :cond_30

    iput-boolean v7, p0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    :cond_2b
    :goto_2b
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    :cond_2e
    move v5, v8

    goto :goto_21

    :cond_30
    if-eqz v5, :cond_2b

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "appToken "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v9, v2, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, " done"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v2, v11, v6}, Lcom/android/server/wm/WindowAnimator;->setAppLayoutChanges(Lcom/android/server/wm/AppWindowAnimator;ILjava/lang/String;)V

    goto :goto_2b

    :cond_51
    iget-object v6, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v4, 0x0

    :goto_5a
    if-ge v4, v1, :cond_a3

    iget-object v6, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/AppWindowToken;

    iget-object v2, v6, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v6, v2, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v6, :cond_80

    iget-object v6, v2, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    sget-object v9, Lcom/android/server/wm/AppWindowAnimator;->sDummyAnimation:Landroid/view/animation/Animation;

    if-eq v6, v9, :cond_80

    move v5, v7

    :goto_73
    iget-wide v9, p0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    invoke-virtual {v2, v9, v10}, Lcom/android/server/wm/AppWindowAnimator;->stepAnimationLocked(J)Z

    move-result v6

    if-eqz v6, :cond_82

    iput-boolean v7, p0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    :cond_7d
    :goto_7d
    add-int/lit8 v4, v4, 0x1

    goto :goto_5a

    :cond_80
    move v5, v8

    goto :goto_73

    :cond_82
    if-eqz v5, :cond_7d

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "exiting appToken "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v9, v2, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, " done"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v2, v11, v6}, Lcom/android/server/wm/WindowAnimator;->setAppLayoutChanges(Lcom/android/server/wm/AppWindowAnimator;ILjava/lang/String;)V

    goto :goto_7d

    :cond_a3
    return-void
.end method

.method private updateWallpaperLocked(I)V
    .registers 21

    invoke-direct/range {p0 .. p1}, Lcom/android/server/wm/WindowAnimator;->getDisplayContentsAnimatorLocked(I)Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/android/server/wm/WindowManagerService;->getWindowListLocked(I)Lcom/android/server/wm/WindowList;

    move-result-object v13

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v5, 0x0

    invoke-virtual {v13}, Lcom/android/server/wm/WindowList;->size()I

    move-result v14

    add-int/lit8 v8, v14, -0x1

    :goto_17
    if-ltz v8, :cond_84

    invoke-virtual {v13, v8}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/WindowState;

    iget-object v10, v9, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v14, v10, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v14, :cond_28

    :cond_25
    :goto_25
    add-int/lit8 v8, v8, -0x1

    goto :goto_17

    :cond_28
    iget v7, v10, Lcom/android/server/wm/WindowStateAnimator;->mAttrFlags:I

    iget-boolean v14, v10, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    if-eqz v14, :cond_57

    iget-object v14, v10, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v14, :cond_52

    const/high16 v14, 0x10

    and-int/2addr v14, v7

    if-eqz v14, :cond_40

    iget-object v14, v10, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v14}, Landroid/view/animation/Animation;->getDetachWallpaper()Z

    move-result v14

    if-eqz v14, :cond_40

    move-object v5, v9

    :cond_40
    iget-object v14, v10, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v14}, Landroid/view/animation/Animation;->getBackgroundColor()I

    move-result v4

    if-eqz v4, :cond_52

    if-eqz v11, :cond_50

    iget v14, v10, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    iget v15, v11, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    if-ge v14, v15, :cond_52

    :cond_50
    move-object v11, v10

    move v12, v4

    :cond_52
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    :cond_57
    iget-object v3, v10, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    if-eqz v3, :cond_25

    iget-object v14, v3, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v14, :cond_25

    iget-boolean v14, v3, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    if-eqz v14, :cond_25

    const/high16 v14, 0x10

    and-int/2addr v14, v7

    if-eqz v14, :cond_71

    iget-object v14, v3, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    invoke-virtual {v14}, Landroid/view/animation/Animation;->getDetachWallpaper()Z

    move-result v14

    if-eqz v14, :cond_71

    move-object v5, v9

    :cond_71
    iget-object v14, v3, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    invoke-virtual {v14}, Landroid/view/animation/Animation;->getBackgroundColor()I

    move-result v4

    if-eqz v4, :cond_25

    if-eqz v11, :cond_81

    iget v14, v10, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    iget v15, v11, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    if-ge v14, v15, :cond_25

    :cond_81
    move-object v11, v10

    move v12, v4

    goto :goto_25

    :cond_84
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    if-eq v14, v5, :cond_98

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    or-int/lit8 v14, v14, 0x2

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    :cond_98
    if-eqz v12, :cond_109

    iget v2, v11, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    iget-object v9, v11, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v14, v14, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eq v14, v9, :cond_b6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v14, v14, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eq v14, v9, :cond_b6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v14, v14, Lcom/android/server/wm/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-ne v14, v9, :cond_cb

    :cond_b6
    invoke-virtual {v13}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    const/4 v8, 0x0

    :goto_bb
    if-ge v8, v1, :cond_cb

    invoke-virtual {v13, v8}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/wm/WindowState;

    iget-object v10, v14, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-boolean v14, v10, Lcom/android/server/wm/WindowStateAnimator;->mIsWallpaper:Z

    if-eqz v14, :cond_e4

    iget v2, v10, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    :cond_cb
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v14, v14, Lcom/android/server/wm/WindowManagerService;->mIsMultiWindowEnabled:Z

    if-eqz v14, :cond_ee

    iget-object v14, v9, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-nez v14, :cond_e7

    invoke-virtual {v9}, Lcom/android/server/wm/WindowState;->getWindowModeLw()I

    move-result v14

    :goto_db
    invoke-static {v14}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v14

    const/high16 v15, 0x200

    if-ne v14, v15, :cond_ee

    :goto_e3
    return-void

    :cond_e4
    add-int/lit8 v8, v8, 0x1

    goto :goto_bb

    :cond_e7
    iget-object v14, v9, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v14}, Lcom/android/server/wm/WindowState;->getWindowModeLw()I

    move-result v14

    goto :goto_db

    :cond_ee
    iget-object v14, v6, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mWindowAnimationBackgroundSurface:Lcom/android/server/wm/DimLayer;

    add-int/lit8 v15, v2, -0x1

    shr-int/lit8 v16, v12, 0x18

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    const/high16 v17, 0x437f

    div-float v16, v16, v17

    const-wide/16 v17, 0x0

    invoke-virtual/range {v14 .. v18}, Lcom/android/server/wm/DimLayer;->show(IFJ)V

    goto :goto_e3

    :cond_109
    iget-object v14, v6, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mWindowAnimationBackgroundSurface:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v14}, Lcom/android/server/wm/DimLayer;->hide()V

    goto :goto_e3
.end method

.method private updateWindowsLocked(I)V
    .registers 29

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/WindowAnimator;->mAnimTransactionSequence:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wm/WindowAnimator;->mAnimTransactionSequence:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowManagerService;->getWindowListLocked(I)Lcom/android/server/wm/WindowList;

    move-result-object v26

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mForceHidingByCover:Z

    move/from16 v24, v0

    if-nez p1, :cond_27

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/WindowAnimator;->mForceHidingByCover:Z

    :cond_27
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    add-int/lit8 v16, v2, -0x1

    :goto_2d
    if-ltz v16, :cond_248

    move-object/from16 v0, v26

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    iget-object v0, v3, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v14, v0, Lcom/android/server/wm/WindowStateAnimator;->mAttrFlags:I

    move-object/from16 v0, v25

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v2, :cond_b6

    move-object/from16 v0, v25

    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWasAnimating:Z

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v5}, Lcom/android/server/wm/WindowStateAnimator;->stepAnimationLocked(J)Z

    move-result v19

    if-eqz v23, :cond_78

    move-object/from16 v0, v25

    iget-boolean v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    if-nez v2, :cond_78

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-ne v2, v3, :cond_78

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    or-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    const/4 v2, 0x0

    const/4 v4, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    :cond_78
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v3, v4}, Landroid/view/WindowManagerPolicy;->doesForceHide(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z

    move-result v2

    if-eqz v2, :cond_101

    move-object/from16 v18, v3

    if-nez v23, :cond_a3

    if-eqz v19, :cond_a3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    or-int/lit8 v2, v2, 0x4

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    const/4 v2, 0x4

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    :cond_a3
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->isReadyForDisplay()Z

    move-result v2

    if-eqz v2, :cond_b6

    if-eqz v19, :cond_b1

    move-object/from16 v0, v25

    iget-boolean v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationIsEntrance:Z

    if-eqz v2, :cond_b6

    :cond_b1
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/WindowAnimator;->mForceHiding:Z

    :cond_b6
    :goto_b6
    iget-object v11, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v0, v25

    iget v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v4, 0x3

    if-ne v2, v4, :cond_d4

    if-eqz v11, :cond_c5

    iget-boolean v2, v11, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    if-eqz v2, :cond_d4

    :cond_c5
    invoke-virtual/range {v25 .. v25}, Lcom/android/server/wm/WindowStateAnimator;->performShowLocked()Z

    move-result v2

    if-eqz v2, :cond_d4

    const/16 v2, 0x8

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    :cond_d4
    move-object/from16 v0, v25

    iget-object v10, v0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    if-eqz v10, :cond_fd

    iget-object v2, v10, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/SurfaceControl;

    if-eqz v2, :cond_fd

    iget v2, v10, Lcom/android/server/wm/AppWindowAnimator;->thumbnailTransactionSeq:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/WindowAnimator;->mAnimTransactionSequence:I

    if-eq v2, v4, :cond_ef

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/WindowAnimator;->mAnimTransactionSequence:I

    iput v2, v10, Lcom/android/server/wm/AppWindowAnimator;->thumbnailTransactionSeq:I

    const/4 v2, 0x0

    iput v2, v10, Lcom/android/server/wm/AppWindowAnimator;->thumbnailLayer:I

    :cond_ef
    iget v2, v10, Lcom/android/server/wm/AppWindowAnimator;->thumbnailLayer:I

    move-object/from16 v0, v25

    iget v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    if-ge v2, v4, :cond_fd

    move-object/from16 v0, v25

    iget v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    iput v2, v10, Lcom/android/server/wm/AppWindowAnimator;->thumbnailLayer:I

    :cond_fd
    add-int/lit8 v16, v16, -0x1

    goto/16 :goto_2d

    :cond_101
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v3, v4}, Landroid/view/WindowManagerPolicy;->doesForceHideBySViewCover(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z

    move-result v2

    if-eqz v2, :cond_121

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->isReadyForDisplay()Z

    move-result v2

    if-eqz v2, :cond_b6

    if-eqz v19, :cond_11b

    move-object/from16 v0, v25

    iget-boolean v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationIsEntrance:Z

    if-eqz v2, :cond_b6

    :cond_11b
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/WindowAnimator;->mForceHidingByCover:Z

    goto :goto_b6

    :cond_121
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v3, v4}, Landroid/view/WindowManagerPolicy;->canBeForceHidden(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z

    move-result v2

    if-eqz v2, :cond_b6

    move-object/from16 v0, v25

    iget v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mAttrFlags:I

    const/high16 v4, 0x8

    and-int/2addr v2, v4

    if-nez v2, :cond_186

    const/4 v15, 0x1

    :goto_137
    iget-object v2, v3, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_188

    iget-object v2, v3, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7d4

    if-ne v2, v4, :cond_188

    const/16 v17, 0x1

    :goto_147
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/WindowAnimator;->mForceHiding:Z

    if-eqz v2, :cond_15e

    if-nez v17, :cond_15e

    invoke-virtual/range {v25 .. v25}, Lcom/android/server/wm/WindowStateAnimator;->isAnimating()Z

    move-result v2

    if-eqz v2, :cond_166

    move-object/from16 v0, v25

    iget v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mAttrFlags:I

    const/high16 v4, 0x8

    and-int/2addr v2, v4

    if-eqz v2, :cond_166

    :cond_15e
    if-eqz v17, :cond_18b

    iget-object v2, v3, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    if-nez v2, :cond_18b

    :cond_166
    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/android/server/wm/WindowState;->hideLw(ZZ)Z

    move-result v12

    :cond_16c
    :goto_16c
    if-eqz v12, :cond_b6

    const/high16 v2, 0x10

    and-int/2addr v2, v14

    if-eqz v2, :cond_b6

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    or-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    const/4 v2, 0x0

    const/4 v4, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    goto/16 :goto_b6

    :cond_186
    const/4 v15, 0x0

    goto :goto_137

    :cond_188
    const/16 v17, 0x0

    goto :goto_147

    :cond_18b
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/WindowAnimator;->mForceHidingByCover:Z

    if-eqz v2, :cond_1a2

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v3, v1}, Lcom/android/server/wm/WindowAnimator;->needHideWindowBySViewCover(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)Z

    move-result v2

    if-eqz v2, :cond_1a2

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/android/server/wm/WindowState;->hideLw(ZZ)Z

    move-result v12

    goto :goto_16c

    :cond_1a2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v5, v3, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v5, :cond_200

    iget-object v5, v3, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    iget-object v5, v5, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    :goto_1b0
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getWindowModeLw()I

    move-result v6

    iget-object v7, v3, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v7, :cond_202

    iget-object v7, v3, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->getWindowModeLw()I

    move-result v7

    :goto_1be
    invoke-interface/range {v2 .. v7}, Landroid/view/WindowManagerPolicy;->mustBeForceHidden(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManager$LayoutParams;II)Z

    move-result v2

    if-eqz v2, :cond_204

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/android/server/wm/WindowState;->hideLw(ZZ)Z

    move-result v12

    if-eqz v12, :cond_1e4

    const-string v2, "WindowAnimator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Now policy mustBeForceHidden hideLw: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e4
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getWindowModeLw()I

    move-result v2

    invoke-static {v2}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v20

    if-eqz v12, :cond_16c

    const/high16 v2, 0x80

    and-int v2, v2, v20

    if-eqz v2, :cond_16c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    goto/16 :goto_16c

    :cond_200
    const/4 v5, 0x0

    goto :goto_1b0

    :cond_202
    const/4 v7, 0x0

    goto :goto_1be

    :cond_204
    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/android/server/wm/WindowState;->showLw(ZZ)Z

    move-result v12

    if-eqz v12, :cond_16c

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_22f

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v2

    if-eqz v2, :cond_22f

    if-nez v21, :cond_221

    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    :cond_221
    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v2, 0x10

    and-int/2addr v2, v14

    if-eqz v2, :cond_22f

    const/16 v22, 0x1

    :cond_22f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_23f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    iget v2, v2, Lcom/android/server/wm/WindowState;->mLayer:I

    iget v4, v3, Lcom/android/server/wm/WindowState;->mLayer:I

    if-ge v2, v4, :cond_16c

    :cond_23f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    goto/16 :goto_16c

    :cond_248
    if-eqz v18, :cond_287

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v2

    if-eqz v2, :cond_287

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wm/WindowState;->isAllDrawnLw()Z

    move-result v2

    if-eqz v2, :cond_287

    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v2, :cond_263

    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowStateAnimator;->performShowLocked()Z

    :cond_263
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v8

    const/16 v16, 0x0

    :goto_26d
    move/from16 v0, v16

    if-ge v0, v8, :cond_287

    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    iget-object v13, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v13, :cond_284

    invoke-virtual {v13}, Lcom/android/server/wm/WindowStateAnimator;->performShowLocked()Z

    :cond_284
    add-int/lit8 v16, v16, 0x1

    goto :goto_26d

    :cond_287
    if-eqz v21, :cond_2b4

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v16, v2, -0x1

    :goto_28f
    if-ltz v16, :cond_2b4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    move/from16 v0, v22

    invoke-interface {v2, v0}, Landroid/view/WindowManagerPolicy;->createForceHideEnterAnimation(Z)Landroid/view/animation/Animation;

    move-result-object v9

    if-eqz v9, :cond_2b1

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Lcom/android/server/wm/WindowStateAnimator;->setAnimation(Landroid/view/animation/Animation;)V

    const/4 v2, 0x1

    move-object/from16 v0, v25

    iput-boolean v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationIsEntrance:Z

    :cond_2b1
    add-int/lit8 v16, v16, -0x1

    goto :goto_28f

    :cond_2b4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/WindowAnimator;->mForceHidingByCover:Z

    move/from16 v0, v24

    if-eq v0, v2, :cond_2cb

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    const/4 v2, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    :cond_2cb
    return-void
.end method


# virtual methods
.method addDisplayLocked(I)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowAnimator;->getDisplayContentsAnimatorLocked(I)Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    if-nez p1, :cond_8

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowAnimator;->mInitialized:Z

    :cond_8
    return-void
.end method

.method public dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .registers 14

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x0

    :goto_27
    iget-object v8, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v2, v8, :cond_dd

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "DisplayContentsAnimator #"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v8, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(I)V

    const-string v8, ":"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v8, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    iget-object v8, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v9, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/server/wm/WindowManagerService;->getWindowListLocked(I)Lcom/android/server/wm/WindowList;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v3, 0x0

    :goto_5e
    if-ge v3, v0, :cond_7e

    invoke-virtual {v7, v3}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/WindowState;

    iget-object v6, v8, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "Window #"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v8, ": "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_5e

    :cond_7e
    iget-object v8, v1, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mWindowAnimationBackgroundSurface:Lcom/android/server/wm/DimLayer;

    if-eqz v8, :cond_99

    if-nez p3, :cond_8c

    iget-object v8, v1, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mWindowAnimationBackgroundSurface:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v8}, Lcom/android/server/wm/DimLayer;->isDimming()Z

    move-result v8

    if-eqz v8, :cond_99

    :cond_8c
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "mWindowAnimationBackgroundSurface:"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v8, v1, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mWindowAnimationBackgroundSurface:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v8, v5, p1}, Lcom/android/server/wm/DimLayer;->printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V

    :cond_99
    if-nez p3, :cond_a3

    iget-object v8, v1, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mDimAnimator:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v8}, Lcom/android/server/wm/DimLayer;->isDimming()Z

    move-result v8

    if-eqz v8, :cond_bd

    :cond_a3
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "mDimAnimator:"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v8, v1, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mDimAnimator:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v8, v5, p1}, Lcom/android/server/wm/DimLayer;->printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "mDimWinAnimator="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, v1, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_bd
    iget-object v8, v1, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    if-eqz v8, :cond_d2

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "mScreenRotationAnimation:"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v8, v1, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-virtual {v8, v5, p1}, Lcom/android/server/wm/ScreenRotationAnimation;->printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V

    :cond_ce
    :goto_ce
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_27

    :cond_d2
    if-eqz p3, :cond_ce

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "no ScreenRotationAnimation "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_ce

    :cond_dd
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    if-eqz p3, :cond_105

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "mAnimTransactionSequence="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v8, p0, Lcom/android/server/wm/WindowAnimator;->mAnimTransactionSequence:I

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(I)V

    const-string v8, " mForceHiding="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "mCurrentTime="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v8, p0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    invoke-static {v8, v9}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_105
    iget v8, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    if-eqz v8, :cond_123

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "mBulkUpdateParams=0x"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v8, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v8, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    invoke-static {v8}, Lcom/android/server/wm/WindowAnimator;->bulkUpdateParamsToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_123
    iget-object v8, p0, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    if-eqz v8, :cond_134

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "mWindowDetachedWallpaper="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_134
    iget-object v8, p0, Lcom/android/server/wm/WindowAnimator;->mUniverseBackground:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v8, :cond_14f

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "mUniverseBackground="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/wm/WindowAnimator;->mUniverseBackground:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v8, " mAboveUniverseLayer="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v8, p0, Lcom/android/server/wm/WindowAnimator;->mAboveUniverseLayer:I

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(I)V

    :cond_14f
    return-void
.end method

.method getPendingLayoutChanges(I)I
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget v0, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    return v0
.end method

.method getScreenRotationAnimationLocked(I)Lcom/android/server/wm/ScreenRotationAnimation;
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowAnimator;->getDisplayContentsAnimatorLocked(I)Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    return-object v0
.end method

.method getWallpaperAppAnimator()Lcom/android/server/wm/AppWindowAnimator;
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-nez v1, :cond_8

    :cond_7
    :goto_7
    return-object v0

    :cond_8
    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_7

    iget-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    goto :goto_7
.end method

.method hideWallpapersLocked(Lcom/android/server/wm/WindowState;)V
    .registers 14

    const/4 v11, 0x0

    iget-object v10, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v10, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget-object v10, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v10, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget-object v10, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v10, Lcom/android/server/wm/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    if-ne v7, p1, :cond_11

    if-eqz v2, :cond_13

    :cond_11
    if-nez v7, :cond_4e

    :cond_13
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    :goto_19
    if-ltz v0, :cond_4e

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowToken;

    iget-object v10, v5, Lcom/android/server/wm/WindowToken;->windows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v10}, Lcom/android/server/wm/WindowList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    :goto_29
    if-ltz v1, :cond_48

    iget-object v10, v5, Lcom/android/server/wm/WindowToken;->windows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v10, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowState;

    iget-object v9, v6, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-boolean v10, v9, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    if-nez v10, :cond_45

    invoke-virtual {v9}, Lcom/android/server/wm/WindowStateAnimator;->hide()V

    iget-object v10, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v10, v6, v11}, Lcom/android/server/wm/WindowManagerService;->dispatchWallpaperVisibility(Lcom/android/server/wm/WindowState;Z)V

    const/4 v10, 0x4

    invoke-virtual {p0, v11, v10}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    :cond_45
    add-int/lit8 v1, v1, -0x1

    goto :goto_29

    :cond_48
    const/4 v10, 0x1

    iput-boolean v10, v5, Lcom/android/server/wm/WindowToken;->hidden:Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_19

    :cond_4e
    return-void
.end method

.method isDimmingLocked(I)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowAnimator;->getDisplayContentsAnimatorLocked(I)Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mDimAnimator:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v0}, Lcom/android/server/wm/DimLayer;->isDimming()Z

    move-result v0

    return v0
.end method

.method isDimmingLocked(Lcom/android/server/wm/WindowStateAnimator;)Z
    .registers 6

    const/4 v2, 0x0

    iget-object v3, p1, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/wm/WindowAnimator;->getDisplayContentsAnimatorLocked(I)Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v3, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-ne v3, p1, :cond_1a

    iget-object v3, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mDimAnimator:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v3}, Lcom/android/server/wm/DimLayer;->isDimming()Z

    move-result v3

    if-eqz v3, :cond_1a

    const/4 v2, 0x1

    :cond_1a
    return v2
.end method

.method removeDisplayLocked(I)V
    .registers 5

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    if-eqz v0, :cond_2c

    iget-object v1, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mWindowAnimationBackgroundSurface:Lcom/android/server/wm/DimLayer;

    if-eqz v1, :cond_16

    iget-object v1, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mWindowAnimationBackgroundSurface:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v1}, Lcom/android/server/wm/DimLayer;->destroySurface()V

    iput-object v2, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mWindowAnimationBackgroundSurface:Lcom/android/server/wm/DimLayer;

    :cond_16
    iget-object v1, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    if-eqz v1, :cond_21

    iget-object v1, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-virtual {v1}, Lcom/android/server/wm/ScreenRotationAnimation;->kill()V

    iput-object v2, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    :cond_21
    iget-object v1, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mDimAnimator:Lcom/android/server/wm/DimLayer;

    if-eqz v1, :cond_2c

    iget-object v1, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mDimAnimator:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v1}, Lcom/android/server/wm/DimLayer;->destroySurface()V

    iput-object v2, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mDimAnimator:Lcom/android/server/wm/DimLayer;

    :cond_2c
    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    return-void
.end method

.method setAppLayoutChanges(Lcom/android/server/wm/AppWindowAnimator;ILjava/lang/String;)V
    .registers 9

    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iget-object v4, p1, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v3, v4, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    :goto_f
    if-ltz v2, :cond_2a

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v4

    if-gez v4, :cond_27

    invoke-virtual {p0, v0, p2}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    invoke-virtual {v1, v0, p2}, Landroid/util/SparseIntArray;->put(II)V

    :cond_27
    add-int/lit8 v2, v2, -0x1

    goto :goto_f

    :cond_2a
    return-void
.end method

.method setCurrentFocus(Lcom/android/server/wm/WindowState;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/wm/WindowAnimator;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    return-void
.end method

.method setDimWinAnimatorLocked(ILcom/android/server/wm/WindowStateAnimator;)V
    .registers 7

    iget-object v2, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    if-nez p2, :cond_e

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    :cond_d
    :goto_d
    return-void

    :cond_e
    iget-object v1, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-boolean v2, p2, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceShown:Z

    if-eqz v2, :cond_d

    if-eqz v1, :cond_20

    iget-boolean v2, v1, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceShown:Z

    if-eqz v2, :cond_20

    iget v2, v1, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    iget v3, p2, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    if-ge v2, v3, :cond_d

    :cond_20
    iput-object p2, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    goto :goto_d
.end method

.method setPendingLayoutChanges(II)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget v1, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/2addr v1, p2

    iput v1, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    return-void
.end method

.method setScreenRotationAnimationLocked(ILcom/android/server/wm/ScreenRotationAnimation;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowAnimator;->getDisplayContentsAnimatorLocked(I)Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    move-result-object v0

    iput-object p2, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    return-void
.end method
