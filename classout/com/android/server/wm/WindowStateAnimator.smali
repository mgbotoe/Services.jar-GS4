.class Lcom/android/server/wm/WindowStateAnimator;
.super Ljava/lang/Object;
.source "WindowStateAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;
    }
.end annotation


# static fields
.field static final COMMIT_DRAW_PENDING:I = 0x2

.field static final DEBUG_ANIM:Z = false

.field static final DEBUG_LAYERS:Z = false

.field static final DEBUG_ORIENTATION:Z = false

.field static final DEBUG_STARTING_WINDOW:Z = false

.field static final DEBUG_SURFACE_TRACE:Z = false

.field static final DEBUG_VISIBILITY:Z = false

.field static final DRAW_PENDING:I = 0x1

.field static final HAS_DRAWN:I = 0x4

.field static final INTERNAL_ONLY_LAYER_STACK:I = 0x800000

.field static final LOG_ACTIVITY_ACTIVITY:Z = false

.field static final NO_SURFACE:I = 0x0

.field static final READY_TO_SHOW:I = 0x3

.field static final SHOW_LIGHT_TRANSACTIONS:Z = false

.field static final SHOW_SURFACE_ALLOC:Z = false

.field static final SHOW_TRANSACTIONS:Z = false

.field static final TAG:Ljava/lang/String; = "WindowStateAnimator"

.field static final localLOGV:Z


# instance fields
.field mAlpha:F

.field mAnimDh:I

.field mAnimDw:I

.field mAnimLayer:I

.field mAnimating:Z

.field mAnimation:Landroid/view/animation/Animation;

.field mAnimationIsEntrance:Z

.field final mAnimator:Lcom/android/server/wm/WindowAnimator;

.field mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

.field final mAttachedWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

.field mAttrFlags:I

.field mAttrType:I

.field final mContext:Landroid/content/Context;

.field mDrawState:I

.field mDsDx:F

.field mDsDy:F

.field mDtDx:F

.field mDtDy:F

.field mEnterAnimationPending:Z

.field mHasLocalTransformation:Z

.field mHasTransformation:Z

.field mHaveMatrix:Z

.field mHiddenBeforeRotationAnimation:Z

.field final mIsWallpaper:Z

.field mLastAlpha:F

.field mLastDsDx:F

.field mLastDsDy:F

.field mLastDtDx:F

.field mLastDtDy:F

.field mLastHidden:Z

.field mLastLayer:I

.field mLastMatrix44F:Landroid/view/animation/ModelViewState;

.field final mLayerStack:I

.field mLocalAnimating:Z

.field mMatrix44F:Landroid/view/animation/ModelViewState;

.field mPendingDestroySurface:Landroid/view/SurfaceControl;

.field final mPolicy:Landroid/view/WindowManagerPolicy;

.field final mService:Lcom/android/server/wm/WindowManagerService;

.field final mSession:Lcom/android/server/wm/Session;

.field mShownAlpha:F

.field mSurfaceAlpha:F

.field mSurfaceControl:Landroid/view/SurfaceControl;

.field mSurfaceDestroyDeferred:Z

.field mSurfaceH:F

.field mSurfaceLayer:I

.field mSurfaceResized:Z

.field mSurfaceShown:Z

.field mSurfaceW:F

.field mSurfaceX:F

.field mSurfaceY:F

.field final mTransformation:Landroid/view/animation/Transformation;

.field final mUniverseTransform:Landroid/view/animation/Transformation;

.field mWasAnimating:Z

.field final mWin:Lcom/android/server/wm/WindowState;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowState;)V
    .registers 8

    const/4 v3, 0x0

    const/high16 v5, 0x3f80

    const/4 v4, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Landroid/view/animation/Transformation;

    invoke-direct {v2}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mUniverseTransform:Landroid/view/animation/Transformation;

    new-instance v2, Landroid/view/animation/Transformation;

    invoke-direct {v2}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mTransformation:Landroid/view/animation/Transformation;

    new-instance v2, Landroid/view/animation/ModelViewState;

    invoke-direct {v2}, Landroid/view/animation/ModelViewState;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mMatrix44F:Landroid/view/animation/ModelViewState;

    new-instance v2, Landroid/view/animation/ModelViewState;

    invoke-direct {v2}, Landroid/view/animation/ModelViewState;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastMatrix44F:Landroid/view/animation/ModelViewState;

    iput v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    iput v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mAlpha:F

    iput v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastAlpha:F

    iput v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    iput v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    iput v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    iput v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    iput v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDsDx:F

    iput v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDtDx:F

    iput v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDsDy:F

    iput v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDtDy:F

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mHiddenBeforeRotationAnimation:Z

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iput-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iput-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    iput-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mContext:Landroid/content/Context;

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    iget v2, v0, Landroid/view/DisplayInfo;->appWidth:I

    iput v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimDw:I

    iget v2, v0, Landroid/view/DisplayInfo;->appHeight:I

    iput v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimDh:I

    iput-object p1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-nez v2, :cond_8a

    move-object v2, v3

    :goto_61
    iput-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mAttachedWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-nez v2, :cond_8f

    :goto_67
    iput-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iput-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    iput v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mAttrFlags:I

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    iput v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mAttrType:I

    iget-boolean v2, p1, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    iput-boolean v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mIsWallpaper:Z

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getLayerStack()I

    move-result v2

    iput v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mLayerStack:I

    return-void

    :cond_8a
    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    goto :goto_61

    :cond_8f
    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v3, v2, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    goto :goto_67
.end method

.method static drawStateToString(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_18

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_7
    return-object v0

    :pswitch_8
    const-string v0, "NO_SURFACE"

    goto :goto_7

    :pswitch_b
    const-string v0, "DRAW_PENDING"

    goto :goto_7

    :pswitch_e
    const-string v0, "COMMIT_DRAW_PENDING"

    goto :goto_7

    :pswitch_11
    const-string v0, "READY_TO_SHOW"

    goto :goto_7

    :pswitch_14
    const-string v0, "HAS_DRAWN"

    goto :goto_7

    nop

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_8
        :pswitch_b
        :pswitch_e
        :pswitch_11
        :pswitch_14
    .end packed-switch
.end method

.method private stepAnimation(J)Z
    .registers 6

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v1, :cond_8

    iget-boolean v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mLocalAnimating:Z

    if-nez v1, :cond_a

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->clear()V

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1, p1, p2, v2}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result v0

    goto :goto_9
.end method


# virtual methods
.method applyAnimationLocked(IZ)Z
    .registers 9

    const/4 v3, 0x1

    iget-boolean v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mLocalAnimating:Z

    if-eqz v4, :cond_a

    iget-boolean v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationIsEntrance:Z

    if-ne v4, p2, :cond_a

    :cond_9
    :goto_9
    return v3

    :cond_a
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->okToDisplay()Z

    move-result v4

    if-eqz v4, :cond_50

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-interface {v4, v5, p1}, Landroid/view/WindowManagerPolicy;->selectAnimationLw(Landroid/view/WindowManagerPolicy$WindowState;I)I

    move-result v1

    const/4 v2, -0x1

    const/4 v0, 0x0

    if-eqz v1, :cond_36

    const/4 v4, -0x1

    if-eq v1, v4, :cond_34

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mContext:Landroid/content/Context;

    invoke-static {v4, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    :cond_27
    :goto_27
    if-eqz v0, :cond_2e

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowStateAnimator;->setAnimation(Landroid/view/animation/Animation;)V

    iput-boolean p2, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationIsEntrance:Z

    :cond_2e
    :goto_2e
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-nez v4, :cond_9

    const/4 v3, 0x0

    goto :goto_9

    :cond_34
    const/4 v0, 0x0

    goto :goto_27

    :cond_36
    packed-switch p1, :pswitch_data_54

    :goto_39
    if-ltz v2, :cond_27

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v5, v5, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v4, v5, v2}, Lcom/android/server/wm/AppTransition;->loadAnimation(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_27

    :pswitch_48
    const/4 v2, 0x0

    goto :goto_39

    :pswitch_4a
    const/4 v2, 0x1

    goto :goto_39

    :pswitch_4c
    const/4 v2, 0x2

    goto :goto_39

    :pswitch_4e
    const/4 v2, 0x3

    goto :goto_39

    :cond_50
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->clearAnimation()V

    goto :goto_2e

    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_48
        :pswitch_4a
        :pswitch_4c
        :pswitch_4e
    .end packed-switch
.end method

.method applyDecorRect(Landroid/graphics/Rect;)V
    .registers 12

    const/4 v7, 0x0

    const/high16 v9, 0x3f00

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget v4, v3, Lcom/android/server/wm/WindowState;->mXOffset:I

    iget-object v5, v3, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int v0, v4, v5

    iget v4, v3, Lcom/android/server/wm/WindowState;->mYOffset:I

    iget-object v5, v3, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int v1, v4, v5

    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mSystemDecorRect:Landroid/graphics/Rect;

    iget-object v5, v3, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    iget-object v6, v3, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-virtual {v4, v7, v7, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mSystemDecorRect:Landroid/graphics/Rect;

    iget v5, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v0

    iget v6, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v1

    iget v7, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v0

    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v1

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;->intersect(IIII)Z

    iget-boolean v4, v3, Lcom/android/server/wm/WindowState;->mEnforceSizeCompat:Z

    if-eqz v4, :cond_79

    iget v4, v3, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    const/high16 v5, 0x3f80

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_79

    iget v2, v3, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mSystemDecorRect:Landroid/graphics/Rect;

    iget-object v5, v3, Lcom/android/server/wm/WindowState;->mSystemDecorRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    mul-float/2addr v5, v2

    sub-float/2addr v5, v9

    float-to-int v5, v5

    iput v5, v4, Landroid/graphics/Rect;->left:I

    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mSystemDecorRect:Landroid/graphics/Rect;

    iget-object v5, v3, Lcom/android/server/wm/WindowState;->mSystemDecorRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    mul-float/2addr v5, v2

    sub-float/2addr v5, v9

    float-to-int v5, v5

    iput v5, v4, Landroid/graphics/Rect;->top:I

    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mSystemDecorRect:Landroid/graphics/Rect;

    iget-object v5, v3, Lcom/android/server/wm/WindowState;->mSystemDecorRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/lit8 v5, v5, 0x1

    int-to-float v5, v5

    mul-float/2addr v5, v2

    sub-float/2addr v5, v9

    float-to-int v5, v5

    iput v5, v4, Landroid/graphics/Rect;->right:I

    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mSystemDecorRect:Landroid/graphics/Rect;

    iget-object v5, v3, Lcom/android/server/wm/WindowState;->mSystemDecorRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v5, v5, 0x1

    int-to-float v5, v5

    mul-float/2addr v5, v2

    sub-float/2addr v5, v9

    float-to-int v5, v5

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    :cond_79
    return-void
.end method

.method applyEnterAnimationLocked()V
    .registers 4

    iget-boolean v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mEnterAnimationPending:Z

    if-eqz v1, :cond_24

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mEnterAnimationPending:Z

    const/4 v0, 0x1

    :goto_8
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowStateAnimator;->applyAnimationLocked(IZ)Z

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mDisplayMagnifier:Lcom/android/server/wm/DisplayMagnifier;

    if-eqz v1, :cond_23

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v1

    if-nez v1, :cond_23

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mDisplayMagnifier:Lcom/android/server/wm/DisplayMagnifier;

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1, v2, v0}, Lcom/android/server/wm/DisplayMagnifier;->onWindowTransitionLocked(Lcom/android/server/wm/WindowState;I)V

    :cond_23
    return-void

    :cond_24
    const/4 v0, 0x3

    goto :goto_8
.end method

.method cancelExitAnimationForNextAnimationLocked()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLocalAnimating:Z

    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->destroySurfaceLocked()V

    :cond_12
    return-void
.end method

.method public clearAnimation()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLocalAnimating:Z

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    :cond_12
    return-void
.end method

.method commitFinishDrawingLocked(J)Z
    .registers 9

    const/4 v5, 0x3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_9

    :goto_8
    return v1

    :cond_9
    iput v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v3, v5, :cond_14

    move v1, v2

    :cond_14
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_20

    iget-boolean v3, v0, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    if-nez v3, :cond_20

    if-eqz v1, :cond_23

    :cond_20
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->performShowLocked()Z

    :cond_23
    move v1, v2

    goto :goto_8
.end method

.method computeShownFrameLocked()V
    .registers 28

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/wm/WindowStateAnimator;->mHasLocalTransformation:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAttachedWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v22, v0

    if-eqz v22, :cond_43c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAttachedWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mHasLocalTransformation:Z

    move/from16 v22, v0

    if-eqz v22, :cond_43c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAttachedWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v7, v0, Lcom/android/server/wm/WindowStateAnimator;->mTransformation:Landroid/view/animation/Transformation;

    :goto_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    move-object/from16 v22, v0

    if-eqz v22, :cond_43f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowAnimator;->hasTransformation:Z

    move/from16 v22, v0

    if-eqz v22, :cond_43f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/android/server/wm/AppWindowAnimator;->transformation:Landroid/view/animation/Transformation;

    :goto_44
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mIsWallpaper:Z

    move/from16 v22, v0

    if-eqz v22, :cond_c6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v22, v0

    if-nez v22, :cond_c6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v22, v0

    if-eqz v22, :cond_c6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mHasLocalTransformation:Z

    move/from16 v22, v0

    if-eqz v22, :cond_9a

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    move-object/from16 v22, v0

    if-eqz v22, :cond_9a

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/view/animation/Animation;->getDetachWallpaper()Z

    move-result v22

    if-nez v22, :cond_9a

    move-object/from16 v0, v18

    iget-object v7, v0, Lcom/android/server/wm/WindowStateAnimator;->mTransformation:Landroid/view/animation/Transformation;

    :cond_9a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/wm/WindowAnimator;->getWallpaperAppAnimator()Lcom/android/server/wm/AppWindowAnimator;

    move-result-object v19

    if-eqz v19, :cond_c6

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowAnimator;->hasTransformation:Z

    move/from16 v22, v0

    if-eqz v22, :cond_c6

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    move-object/from16 v22, v0

    if-eqz v22, :cond_c6

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/view/animation/Animation;->getDetachWallpaper()Z

    move-result v22

    if-nez v22, :cond_c6

    move-object/from16 v0, v19

    iget-object v5, v0, Lcom/android/server/wm/AppWindowAnimator;->transformation:Landroid/view/animation/Transformation;

    :cond_c6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mMatrix44F:Landroid/view/animation/ModelViewState;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/view/animation/ModelViewState;->reset()Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Lcom/android/server/wm/WindowAnimator;->getScreenRotationAnimationLocked(I)Lcom/android/server/wm/ScreenRotationAnimation;

    move-result-object v12

    if-eqz v12, :cond_442

    invoke-virtual {v12}, Lcom/android/server/wm/ScreenRotationAnimation;->isAnimating()Z

    move-result v22

    if-eqz v22, :cond_442

    const/4 v11, 0x1

    :goto_ee
    if-nez v13, :cond_f6

    if-nez v7, :cond_f6

    if-nez v5, :cond_f6

    if-eqz v11, :cond_45c

    :cond_f6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v9, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v15, v0, Lcom/android/server/wm/WindowManagerService;->mTmpFloats:[F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mTmpMatrix:Landroid/graphics/Matrix;

    move-object/from16 v16, v0

    if-eqz v11, :cond_44a

    invoke-virtual {v12}, Lcom/android/server/wm/ScreenRotationAnimation;->isRotating()Z

    move-result v22

    if-eqz v22, :cond_44a

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v17, v0

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v22

    move/from16 v0, v22

    int-to-float v10, v0

    const/high16 v22, 0x3f80

    cmpl-float v22, v17, v22

    if-ltz v22, :cond_445

    const/high16 v22, 0x3f80

    cmpl-float v22, v10, v22

    if-ltz v22, :cond_445

    const/high16 v22, 0x3f80

    const/high16 v23, 0x4000

    div-float v23, v23, v17

    add-float v22, v22, v23

    const/high16 v23, 0x3f80

    const/high16 v24, 0x4000

    div-float v24, v24, v10

    add-float v23, v23, v24

    const/high16 v24, 0x4000

    div-float v24, v17, v24

    const/high16 v25, 0x4000

    div-float v25, v10, v25

    move-object/from16 v0, v16

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Matrix;->setScale(FFFF)V

    :goto_15f
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mHiddenBeforeRotationAnimation:Z

    :goto_167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    move/from16 v23, v0

    move-object/from16 v0, v16

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    if-eqz v13, :cond_19b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mTransformation:Landroid/view/animation/Transformation;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    :cond_19b
    iget v0, v9, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/wm/WindowState;->mXOffset:I

    move/from16 v23, v0

    add-int v22, v22, v23

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    iget v0, v9, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/server/wm/WindowState;->mYOffset:I

    move/from16 v24, v0

    add-int v23, v23, v24

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, v16

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    if-eqz v7, :cond_1df

    invoke-virtual {v7}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    :cond_1df
    if-eqz v5, :cond_1f8

    invoke-virtual {v5}, Landroid/view/animation/Transformation;->getTransformationType()I

    move-result v22

    sget v23, Landroid/view/animation/Transformation;->TYPE_MATRIX_3D:I

    and-int v22, v22, v23

    if-eqz v22, :cond_44f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mMatrix44F:Landroid/view/animation/ModelViewState;

    move-object/from16 v22, v0

    invoke-virtual {v5}, Landroid/view/animation/Transformation;->getMatrix44F()Landroid/view/animation/ModelViewMatrix;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/view/animation/ModelViewState;->setMatrix(Landroid/view/animation/ModelViewMatrix;)Z

    :cond_1f8
    :goto_1f8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mUniverseBackground:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v22, v0

    if-eqz v22, :cond_223

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mUniverseBackground:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mUniverseTransform:Landroid/view/animation/Transformation;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    :cond_223
    if-eqz v11, :cond_234

    invoke-virtual {v12}, Lcom/android/server/wm/ScreenRotationAnimation;->getEnterTransformation()Landroid/view/animation/Transformation;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    :cond_234
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayMagnifier:Lcom/android/server/wm/DisplayMagnifier;

    move-object/from16 v22, v0

    if-eqz v22, :cond_265

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v22

    if-nez v22, :cond_265

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayMagnifier:Lcom/android/server/wm/DisplayMagnifier;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lcom/android/server/wm/DisplayMagnifier;->getMagnificationSpecForWindowLocked(Lcom/android/server/wm/WindowState;)Landroid/view/MagnificationSpec;

    move-result-object v14

    :cond_265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v22

    if-nez v22, :cond_283

    if-eqz v14, :cond_279

    invoke-virtual {v14}, Landroid/view/MagnificationSpec;->isNop()Z

    move-result v22

    if-eqz v22, :cond_283

    :cond_279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/wm/WindowState;->getWindowEasyOneHandScaleSpecLocked()Landroid/view/MagnificationSpec;

    move-result-object v14

    :cond_283
    if-eqz v14, :cond_2ad

    invoke-virtual {v14}, Landroid/view/MagnificationSpec;->isNop()Z

    move-result v22

    if-nez v22, :cond_2ad

    iget v0, v14, Landroid/view/MagnificationSpec;->scale:F

    move/from16 v22, v0

    iget v0, v14, Landroid/view/MagnificationSpec;->scale:F

    move/from16 v23, v0

    move-object/from16 v0, v16

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget v0, v14, Landroid/view/MagnificationSpec;->offsetX:F

    move/from16 v22, v0

    iget v0, v14, Landroid/view/MagnificationSpec;->offsetY:F

    move/from16 v23, v0

    move-object/from16 v0, v16

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :cond_2ad
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mHaveMatrix:Z

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/graphics/Matrix;->getValues([F)V

    const/16 v22, 0x0

    aget v22, v15, v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    const/16 v22, 0x3

    aget v22, v15, v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    const/16 v22, 0x1

    aget v22, v15, v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    const/16 v22, 0x4

    aget v22, v15, v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    const/16 v22, 0x2

    aget v20, v15, v22

    const/16 v22, 0x5

    aget v21, v15, v22

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v17

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    move-object/from16 v22, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v23, v0

    add-float v23, v23, v20

    int-to-float v0, v10

    move/from16 v24, v0

    add-float v24, v24, v21

    move-object/from16 v0, v22

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAlpha:F

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mLimitedAlphaCompositing:Z

    move/from16 v22, v0

    if-eqz v22, :cond_387

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    move-result v22

    if-eqz v22, :cond_387

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    move/from16 v26, v0

    invoke-virtual/range {v22 .. v26}, Lcom/android/server/wm/WindowState;->isIdentityMatrix(FFFF)Z

    move-result v22

    if-eqz v22, :cond_43b

    iget v0, v9, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    cmpl-float v22, v20, v22

    if-nez v22, :cond_43b

    iget v0, v9, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    cmpl-float v22, v21, v22

    if-nez v22, :cond_43b

    :cond_387
    if-eqz v13, :cond_3a1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mTransformation:Landroid/view/animation/Transformation;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v23

    mul-float v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    :cond_3a1
    if-eqz v7, :cond_3b5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    move/from16 v22, v0

    invoke-virtual {v7}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v23

    mul-float v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    :cond_3b5
    if-eqz v5, :cond_3c9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    move/from16 v22, v0

    invoke-virtual {v5}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v23

    mul-float v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    :cond_3c9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mUniverseBackground:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v22, v0

    if-eqz v22, :cond_3fb

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mUniverseBackground:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mUniverseTransform:Landroid/view/animation/Transformation;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v23

    mul-float v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    :cond_3fb
    if-eqz v11, :cond_43b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v22, v0

    if-eqz v22, :cond_425

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/wm/AppWindowToken;->forcedLocalOrientation:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_43b

    :cond_425
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    move/from16 v22, v0

    invoke-virtual {v12}, Lcom/android/server/wm/ScreenRotationAnimation;->getEnterTransformation()Landroid/view/animation/Transformation;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v23

    mul-float v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    :cond_43b
    :goto_43b
    return-void

    :cond_43c
    const/4 v7, 0x0

    goto/16 :goto_24

    :cond_43f
    const/4 v5, 0x0

    goto/16 :goto_44

    :cond_442
    const/4 v11, 0x0

    goto/16 :goto_ee

    :cond_445
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Matrix;->reset()V

    goto/16 :goto_15f

    :cond_44a
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Matrix;->reset()V

    goto/16 :goto_167

    :cond_44f
    invoke-virtual {v5}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    goto/16 :goto_1f8

    :cond_45c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mIsWallpaper:Z

    move/from16 v22, v0

    if-eqz v22, :cond_478

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInnerFields:Lcom/android/server/wm/WindowManagerService$LayoutFields;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService$LayoutFields;->mWallpaperActionPending:Z

    move/from16 v22, v0

    if-nez v22, :cond_43b

    :cond_478
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mUniverseBackground:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v22, v0

    if-eqz v22, :cond_689

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v22, v0

    const/16 v23, 0x7e9

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_689

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mAboveUniverseLayer:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_689

    const/4 v6, 0x1

    :goto_4bf
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayMagnifier:Lcom/android/server/wm/DisplayMagnifier;

    move-object/from16 v22, v0

    if-eqz v22, :cond_4f0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v22

    if-nez v22, :cond_4f0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayMagnifier:Lcom/android/server/wm/DisplayMagnifier;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lcom/android/server/wm/DisplayMagnifier;->getMagnificationSpecForWindowLocked(Lcom/android/server/wm/WindowState;)Landroid/view/MagnificationSpec;

    move-result-object v14

    :cond_4f0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v22

    if-nez v22, :cond_50e

    if-eqz v14, :cond_504

    invoke-virtual {v14}, Landroid/view/MagnificationSpec;->isNop()Z

    move-result v22

    if-eqz v22, :cond_50e

    :cond_504
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/wm/WindowState;->getWindowEasyOneHandScaleSpecLocked()Landroid/view/MagnificationSpec;

    move-result-object v14

    :cond_50e
    if-nez v6, :cond_512

    if-eqz v14, :cond_68c

    :cond_512
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v9, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v15, v0, Lcom/android/server/wm/WindowManagerService;->mTmpFloats:[F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mTmpMatrix:Landroid/graphics/Matrix;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    move/from16 v23, v0

    move-object/from16 v0, v16

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    iget v0, v9, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/wm/WindowState;->mXOffset:I

    move/from16 v23, v0

    add-int v22, v22, v23

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    iget v0, v9, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/server/wm/WindowState;->mYOffset:I

    move/from16 v24, v0

    add-int v23, v23, v24

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, v16

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    if-eqz v6, :cond_5a9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mUniverseBackground:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mUniverseTransform:Landroid/view/animation/Transformation;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    :cond_5a9
    if-eqz v14, :cond_5d3

    invoke-virtual {v14}, Landroid/view/MagnificationSpec;->isNop()Z

    move-result v22

    if-nez v22, :cond_5d3

    iget v0, v14, Landroid/view/MagnificationSpec;->scale:F

    move/from16 v22, v0

    iget v0, v14, Landroid/view/MagnificationSpec;->scale:F

    move/from16 v23, v0

    move-object/from16 v0, v16

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget v0, v14, Landroid/view/MagnificationSpec;->offsetX:F

    move/from16 v22, v0

    iget v0, v14, Landroid/view/MagnificationSpec;->offsetY:F

    move/from16 v23, v0

    move-object/from16 v0, v16

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :cond_5d3
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/graphics/Matrix;->getValues([F)V

    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mHaveMatrix:Z

    const/16 v22, 0x0

    aget v22, v15, v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    const/16 v22, 0x3

    aget v22, v15, v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    const/16 v22, 0x1

    aget v22, v15, v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    const/16 v22, 0x4

    aget v22, v15, v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    const/16 v22, 0x2

    aget v20, v15, v22

    const/16 v22, 0x5

    aget v21, v15, v22

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v17

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    move-object/from16 v22, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v23, v0

    add-float v23, v23, v20

    int-to-float v0, v10

    move/from16 v24, v0

    add-float v24, v24, v21

    move-object/from16 v0, v22

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAlpha:F

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    if-eqz v6, :cond_66f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mUniverseBackground:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mUniverseTransform:Landroid/view/animation/Transformation;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v23

    mul-float v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    :cond_66f
    :goto_66f
    if-eqz v12, :cond_43b

    invoke-virtual {v12}, Lcom/android/server/wm/ScreenRotationAnimation;->isAnimating()Z

    move-result v22

    if-nez v22, :cond_43b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mHiddenBeforeRotationAnimation:Z

    move/from16 v22, v0

    if-eqz v22, :cond_43b

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    goto/16 :goto_43b

    :cond_689
    const/4 v6, 0x0

    goto/16 :goto_4bf

    :cond_68c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/wm/WindowState;->mXOffset:I

    move/from16 v22, v0

    if-nez v22, :cond_6c3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/wm/WindowState;->mYOffset:I

    move/from16 v22, v0

    if-eqz v22, :cond_6f4

    :cond_6c3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/wm/WindowState;->mXOffset:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/server/wm/WindowState;->mYOffset:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    invoke-virtual/range {v22 .. v24}, Landroid/graphics/RectF;->offset(FF)V

    :cond_6f4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAlpha:F

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mHaveMatrix:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    goto/16 :goto_66f
.end method

.method createSurfaceLocked()Landroid/view/SurfaceControl;
    .registers 15

    const/high16 v13, -0x8000

    const/high16 v12, 0x1000

    const/4 v2, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_125

    iput v10, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-nez v0, :cond_128

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iput-boolean v11, v0, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iput-boolean v11, v0, Lcom/android/server/wm/AppWindowToken;->deferClearAllDrawn:Z

    :cond_29
    :goto_29
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->makeWindowFreezingScreenIfNeededLocked(Lcom/android/server/wm/WindowState;)V

    const/4 v6, 0x4

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v7, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v0, v13

    if-eqz v0, :cond_3b

    or-int/2addr v6, v13

    :cond_3b
    iget v0, v7, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v0, v12

    if-eqz v0, :cond_41

    or-int/2addr v6, v12

    :cond_41
    iget v0, v7, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_49

    or-int/lit16 v6, v6, 0x80

    :cond_49
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    iget v0, v7, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_67

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget v3, v0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget v4, v0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    :cond_67
    if-gtz v3, :cond_6a

    const/4 v3, 0x1

    :cond_6a
    if-gtz v4, :cond_6d

    const/4 v4, 0x1

    :cond_6d
    iput-boolean v11, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceShown:Z

    iput v11, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceLayer:I

    iput v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceAlpha:F

    iput v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceX:F

    iput v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceY:F

    int-to-float v0, v3

    iput v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceW:F

    int-to-float v0, v4

    iput v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceH:F

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mLastSystemDecorRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v11, v11, v11, v11}, Landroid/graphics/Rect;->set(IIII)V

    :try_start_84
    iget v0, v7, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, 0x100

    and-int/2addr v0, v1

    if-eqz v0, :cond_130

    move v9, v10

    :goto_8c
    if-eqz v9, :cond_133

    const/4 v5, -0x3

    :goto_8f
    iget v0, v7, Landroid/view/WindowManager$LayoutParams;->format:I

    invoke-static {v0}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    move-result v0

    if-nez v0, :cond_99

    or-int/lit16 v6, v6, 0x400

    :cond_99
    new-instance v0, Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    iget-object v1, v1, Lcom/android/server/wm/Session;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-virtual {v7}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct/range {v0 .. v6}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    iput-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/wm/WindowState;->mHasSurface:Z
    :try_end_b1
    .catch Landroid/view/SurfaceControl$OutOfResourcesException; {:try_start_84 .. :try_end_b1} :catch_137
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_b1} :catch_14e

    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    :try_start_b4
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget v1, v1, Lcom/android/server/wm/WindowState;->mXOffset:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceX:F

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget v1, v1, Lcom/android/server/wm/WindowState;->mYOffset:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceY:F

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->isDisplayForSideSync(I)Z

    move-result v0

    if-eqz v0, :cond_f0

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceX:F

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget v1, v1, Lcom/android/server/wm/WindowState;->mVScaleForExternal:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceX:F

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceY:F

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget v1, v1, Lcom/android/server/wm/WindowState;->mHScaleForExternal:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceY:F

    :cond_f0
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceX:F

    iget v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceY:F

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl;->setPosition(FF)V

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    iput v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceLayer:I

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mLayerStack:I

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    and-int v0, v6, v12

    if-eqz v0, :cond_15e

    const-string v0, "INTENAL_ONLY"

    const-string v1, "Inside createSurfaceLocked Setting the highest layer stack value"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/high16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setLayer(I)V

    :goto_116
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setAlpha(F)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceShown:Z
    :try_end_11f
    .catchall {:try_start_b4 .. :try_end_11f} :catchall_188
    .catch Ljava/lang/RuntimeException; {:try_start_b4 .. :try_end_11f} :catch_166

    :goto_11f
    const/4 v0, 0x1

    :try_start_120
    iput-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z
    :try_end_122
    .catchall {:try_start_120 .. :try_end_122} :catchall_188

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    :cond_125
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    :goto_127
    return-object v0

    :cond_128
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iput-boolean v10, v0, Lcom/android/server/wm/AppWindowToken;->deferClearAllDrawn:Z

    goto/16 :goto_29

    :cond_130
    move v9, v11

    goto/16 :goto_8c

    :cond_133
    :try_start_133
    iget v5, v7, Landroid/view/WindowManager$LayoutParams;->format:I
    :try_end_135
    .catch Landroid/view/SurfaceControl$OutOfResourcesException; {:try_start_133 .. :try_end_135} :catch_137
    .catch Ljava/lang/Exception; {:try_start_133 .. :try_end_135} :catch_14e

    goto/16 :goto_8f

    :catch_137
    move-exception v8

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iput-boolean v11, v0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    const-string v0, "WindowStateAnimator"

    const-string v1, "OutOfResourcesException creating surface"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    const-string v1, "create"

    invoke-virtual {v0, p0, v1, v10}, Lcom/android/server/wm/WindowManagerService;->reclaimSomeSurfaceMemoryLocked(Lcom/android/server/wm/WindowStateAnimator;Ljava/lang/String;Z)Z

    iput v11, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v0, 0x0

    goto :goto_127

    :catch_14e
    move-exception v8

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iput-boolean v11, v0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    const-string v0, "WindowStateAnimator"

    const-string v1, "Exception creating surface"

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput v11, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v0, 0x0

    goto :goto_127

    :cond_15e
    :try_start_15e
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setLayer(I)V
    :try_end_165
    .catchall {:try_start_15e .. :try_end_165} :catchall_188
    .catch Ljava/lang/RuntimeException; {:try_start_15e .. :try_end_165} :catch_166

    goto :goto_116

    :catch_166
    move-exception v8

    :try_start_167
    const-string v0, "WindowStateAnimator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error creating surface in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    const-string v1, "create-init"

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->reclaimSomeSurfaceMemoryLocked(Lcom/android/server/wm/WindowStateAnimator;Ljava/lang/String;Z)Z
    :try_end_187
    .catchall {:try_start_167 .. :try_end_187} :catchall_188

    goto :goto_11f

    :catchall_188
    move-exception v0

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v0
.end method

.method destroyDeferredSurfaceLocked()V
    .registers 5

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->destroy()V

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowAnimator;->hideWallpapersLocked(Lcom/android/server/wm/WindowState;)V
    :try_end_10
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_10} :catch_17

    :cond_10
    :goto_10
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceDestroyDeferred:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Landroid/view/SurfaceControl;

    return-void

    :catch_17
    move-exception v0

    const-string v1, "WindowStateAnimator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception thrown when destroying Window "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " surface "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10
.end method

.method destroySurfaceLocked()V
    .registers 8

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v3, :cond_17

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v4, v4, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    if-ne v3, v4, :cond_17

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iput-boolean v6, v3, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    :cond_17
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v3, :cond_62

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    :goto_23
    if-lez v2, :cond_35

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    goto :goto_23

    :cond_35
    :try_start_35
    iget-boolean v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceDestroyDeferred:Z

    if-eqz v3, :cond_63

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v3, :cond_50

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Landroid/view/SurfaceControl;

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eq v3, v4, :cond_50

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Landroid/view/SurfaceControl;

    if-eqz v3, :cond_4c

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Landroid/view/SurfaceControl;

    invoke-virtual {v3}, Landroid/view/SurfaceControl;->destroy()V

    :cond_4c
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    iput-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Landroid/view/SurfaceControl;

    :cond_50
    :goto_50
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowAnimator;->hideWallpapersLocked(Lcom/android/server/wm/WindowState;)V
    :try_end_57
    .catch Ljava/lang/RuntimeException; {:try_start_35 .. :try_end_57} :catch_69

    :goto_57
    iput-boolean v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceShown:Z

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iput-boolean v6, v3, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    iput v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    :cond_62
    return-void

    :cond_63
    :try_start_63
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v3}, Landroid/view/SurfaceControl;->destroy()V
    :try_end_68
    .catch Ljava/lang/RuntimeException; {:try_start_63 .. :try_end_68} :catch_69

    goto :goto_50

    :catch_69
    move-exception v1

    const-string v3, "WindowStateAnimator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception thrown when destroying Window "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " surface "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " session "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_57
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .registers 7

    const/high16 v2, 0x3f80

    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    if-nez v0, :cond_12

    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLocalAnimating:Z

    if-nez v0, :cond_12

    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationIsEntrance:Z

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_3d

    :cond_12
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAnimating="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mLocalAnimating="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLocalAnimating:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mAnimationIsEntrance="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationIsEntrance:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mAnimation="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_3d
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mHasTransformation:Z

    if-nez v0, :cond_45

    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mHasLocalTransformation:Z

    if-eqz v0, :cond_69

    :cond_45
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "XForm: has="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mHasTransformation:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " hasLocal="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mHasLocalTransformation:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0, p1}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :cond_69
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_e0

    if-eqz p3, :cond_97

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSurface="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDrawState="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    invoke-static {v0}, Lcom/android/server/wm/WindowStateAnimator;->drawStateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mLastHidden="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    :cond_97
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Surface: shown="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceShown:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " layer="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceLayer:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " alpha="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceAlpha:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    const-string v0, " rect=("

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceX:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceY:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    const-string v0, ") "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceW:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    const-string v0, " x "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceH:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(F)V

    :cond_e0
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_f1

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mPendingDestroySurface="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mPendingDestroySurface:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_f1
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceResized:Z

    if-nez v0, :cond_f9

    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceDestroyDeferred:Z

    if-eqz v0, :cond_110

    :cond_f9
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSurfaceResized="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceResized:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mSurfaceDestroyDeferred="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceDestroyDeferred:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    :cond_110
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7e9

    if-ne v0, v1, :cond_12a

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mUniverseTransform="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mUniverseTransform:Landroid/view/animation/Transformation;

    invoke-virtual {v0, p1}, Landroid/view/animation/Transformation;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :cond_12a
    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_13c

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAlpha:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_13c

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastAlpha:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_15d

    :cond_13c
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mShownAlpha="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    const-string v0, " mAlpha="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAlpha:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    const-string v0, " mLastAlpha="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastAlpha:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(F)V

    :cond_15d
    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mHaveMatrix:Z

    if-nez v0, :cond_169

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget v0, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_1a0

    :cond_169
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mGlobalScale="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget v0, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    const-string v0, " mDsDx="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    const-string v0, " mDtDx="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    const-string v0, " mDsDy="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    const-string v0, " mDtDy="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(F)V

    :cond_1a0
    return-void
.end method

.method finishDrawingLocked()Z
    .registers 3

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    if-ne v1, v0, :cond_9

    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method finishExit()V
    .registers 6

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_1e

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowStateAnimator;->finishExit()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_1e
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowState;->mExiting:Z

    if-nez v2, :cond_25

    :cond_24
    :goto_24
    return-void

    :cond_25
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->isWindowAnimating()Z

    move-result v2

    if-nez v2, :cond_24

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v2, :cond_40

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/server/wm/WindowState;->mDestroying:Z

    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->hide()V

    :cond_40
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iput-boolean v4, v2, Lcom/android/server/wm/WindowState;->mExiting:Z

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    if-eqz v2, :cond_57

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iput-boolean v4, v2, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    :cond_57
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowAnimator;->hideWallpapersLocked(Lcom/android/server/wm/WindowState;)V

    goto :goto_24
.end method

.method hide()V
    .registers 8

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-boolean v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    if-nez v4, :cond_87

    iput-boolean v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v4, :cond_87

    iput-boolean v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceShown:Z

    :try_start_e
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v4}, Landroid/view/SurfaceControl;->hide()V

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x7d4

    if-ne v4, v5, :cond_47

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v3, 0x0

    :goto_26
    if-ge v3, v0, :cond_47

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4, v3}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    iget-object v4, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v4, v4, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v4, :cond_44

    iget-object v4, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceShown:Z

    iget-object v4, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v4, v4, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v4}, Landroid/view/SurfaceControl;->hide()V

    :cond_44
    add-int/lit8 v3, v3, 0x1

    goto :goto_26

    :cond_47
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x7db

    if-ne v4, v5, :cond_87

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v3, 0x0

    :goto_5a
    if-ge v3, v0, :cond_87

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4, v3}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    const/4 v4, 0x1

    iput-boolean v4, v1, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z
    :try_end_69
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_69} :catch_6c

    add-int/lit8 v3, v3, 0x1

    goto :goto_5a

    :catch_6c
    move-exception v2

    const-string v4, "WindowStateAnimator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception hiding surface in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_87
    return-void
.end method

.method public hideSurfaceBeofreScreenRotationAnimation(Landroid/graphics/Matrix;F)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mHiddenBeforeRotationAnimation:Z

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p2}, Landroid/view/SurfaceControl;->setAlpha(F)V

    :cond_c
    return-void
.end method

.method isAnimating()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAttachedWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAttachedWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_20

    :cond_e
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowToken;->inPendingTransaction:Z

    if-eqz v0, :cond_22

    :cond_20
    const/4 v0, 0x1

    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method isDummyAnimation()Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    sget-object v1, Lcom/android/server/wm/AppWindowAnimator;->sDummyAnimation:Landroid/view/animation/Animation;

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method isWindowAnimating()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method performShowLocked()Z
    .registers 7

    const/4 v5, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->isHiddenFromUserLocked()Z

    move-result v4

    if-eqz v4, :cond_50

    const-string v3, "WindowStateAnimator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "current user violation "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v5, v5, Lcom/android/server/wm/WindowManagerService;->mCurrentUserId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " trying to display "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v5, v5, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", belonging to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget v5, v5, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4f
    :goto_4f
    return v2

    :cond_50
    iget v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    if-ne v4, v5, :cond_4f

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->isReadyForDisplayIgnoringKeyguard()Z

    move-result v4

    if-eqz v4, :cond_4f

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->enableScreenIfNeededLocked()V

    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->applyEnterAnimationLocked()V

    const/high16 v4, -0x4080

    iput v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastAlpha:F

    const/4 v4, 0x4

    iput v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    :cond_78
    :goto_78
    if-lez v1, :cond_9c

    add-int/lit8 v1, v1, -0x1

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    iget-boolean v4, v0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    if-eqz v4, :cond_78

    iput-boolean v2, v0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v4, v4, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v4, :cond_78

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowStateAnimator;->performShowLocked()Z

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iput-boolean v3, v4, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    goto :goto_78

    :cond_9c
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v2, v5, :cond_d5

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v2, :cond_d5

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iput-boolean v3, v2, Lcom/android/server/wm/AppWindowToken;->firstWindowDrawn:Z

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v2, v2, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    if-eqz v2, :cond_ce

    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->clearAnimation()V

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mFinishedStarting:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/4 v4, 0x7

    invoke-virtual {v2, v4}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    :cond_ce
    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    :cond_d5
    move v2, v3

    goto/16 :goto_4f
.end method

.method public prepareSurfaceLocked(Z)V
    .registers 14

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v6, :cond_f

    iget-boolean v4, v3, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    if-eqz v4, :cond_e

    iput-boolean v5, v3, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    :cond_e
    :goto_e
    return-void

    :cond_f
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->computeShownFrameLocked()V

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowStateAnimator;->setSurfaceBoundariesLocked(Z)V

    iget-boolean v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mIsWallpaper:Z

    if-eqz v6, :cond_77

    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v6, v6, Lcom/android/server/wm/WindowState;->mWallpaperVisible:Z

    if-nez v6, :cond_77

    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->hide()V

    :cond_23
    :goto_23
    iget-object v6, v3, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v6, v6, Lcom/android/server/wm/WindowStateAnimator;->mLastMatrix44F:Landroid/view/animation/ModelViewState;

    invoke-virtual {v6}, Landroid/view/animation/ModelViewState;->getMatrix()Landroid/view/animation/ModelViewMatrix;

    move-result-object v6

    iget-object v7, v3, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v7, v7, Lcom/android/server/wm/WindowStateAnimator;->mMatrix44F:Landroid/view/animation/ModelViewState;

    invoke-virtual {v7}, Landroid/view/animation/ModelViewState;->getMatrix()Landroid/view/animation/ModelViewMatrix;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/view/animation/ModelViewMatrix;->compareTo(Landroid/view/animation/ModelViewMatrix;Landroid/view/animation/ModelViewMatrix;)Z

    move-result v6

    if-nez v6, :cond_195

    move v2, v4

    :goto_3a
    if-eqz v2, :cond_5a

    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v6, :cond_5a

    :try_start_40
    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mMatrix44F:Landroid/view/animation/ModelViewState;

    invoke-virtual {v7}, Landroid/view/animation/ModelViewState;->getMatrix()Landroid/view/animation/ModelViewMatrix;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/animation/ModelViewMatrix;->getArray()[F

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/SurfaceControl;->setMatrix3D([F)V

    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastMatrix44F:Landroid/view/animation/ModelViewState;

    iget-object v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mMatrix44F:Landroid/view/animation/ModelViewState;

    invoke-virtual {v7}, Landroid/view/animation/ModelViewState;->getMatrix()Landroid/view/animation/ModelViewMatrix;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/animation/ModelViewState;->setMatrix(Landroid/view/animation/ModelViewMatrix;)Z
    :try_end_5a
    .catch Ljava/lang/RuntimeException; {:try_start_40 .. :try_end_5a} :catch_198

    :cond_5a
    :goto_5a
    if-eqz v0, :cond_e

    iget-boolean v6, v3, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    if-eqz v6, :cond_72

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v6

    if-nez v6, :cond_1bc

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget v6, v5, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    and-int/lit8 v6, v6, -0x9

    iput v6, v5, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iput-object v3, v5, Lcom/android/server/wm/WindowAnimator;->mLastWindowFreezeSource:Ljava/lang/Object;

    :cond_72
    :goto_72
    iget-object v5, v3, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iput-boolean v4, v5, Lcom/android/server/wm/WindowToken;->hasVisible:Z

    goto :goto_e

    :cond_77
    iget-boolean v6, v3, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    if-nez v6, :cond_81

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    move-result v6

    if-nez v6, :cond_90

    :cond_81
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->hide()V

    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v6, v3}, Lcom/android/server/wm/WindowAnimator;->hideWallpapersLocked(Lcom/android/server/wm/WindowState;)V

    iget-boolean v6, v3, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    if-eqz v6, :cond_23

    iput-boolean v5, v3, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    goto :goto_23

    :cond_90
    iget v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastLayer:I

    iget v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    if-ne v6, v7, :cond_d2

    iget v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastAlpha:F

    iget v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    cmpl-float v6, v6, v7

    if-nez v6, :cond_d2

    iget v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDsDx:F

    iget v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    cmpl-float v6, v6, v7

    if-nez v6, :cond_d2

    iget v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDtDx:F

    iget v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    cmpl-float v6, v6, v7

    if-nez v6, :cond_d2

    iget v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDsDy:F

    iget v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    cmpl-float v6, v6, v7

    if-nez v6, :cond_d2

    iget v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDtDy:F

    iget v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    cmpl-float v6, v6, v7

    if-nez v6, :cond_d2

    iget v6, v3, Lcom/android/server/wm/WindowState;->mLastHScale:F

    iget v7, v3, Lcom/android/server/wm/WindowState;->mHScale:F

    cmpl-float v6, v6, v7

    if-nez v6, :cond_d2

    iget v6, v3, Lcom/android/server/wm/WindowState;->mLastVScale:F

    iget v7, v3, Lcom/android/server/wm/WindowState;->mVScale:F

    cmpl-float v6, v6, v7

    if-nez v6, :cond_d2

    iget-boolean v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    if-eqz v6, :cond_192

    :cond_d2
    const/4 v0, 0x1

    iget v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    iput v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastAlpha:F

    iget v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    iput v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastLayer:I

    iget v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    iput v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDsDx:F

    iget v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    iput v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDtDx:F

    iget v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    iput v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDsDy:F

    iget v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    iput v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastDtDy:F

    iget v6, v3, Lcom/android/server/wm/WindowState;->mHScale:F

    iput v6, v3, Lcom/android/server/wm/WindowState;->mLastHScale:F

    iget v6, v3, Lcom/android/server/wm/WindowState;->mVScale:F

    iput v6, v3, Lcom/android/server/wm/WindowState;->mLastVScale:F

    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v6, :cond_23

    :try_start_f7
    iget v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    iput v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceAlpha:F

    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    invoke-virtual {v6, v7}, Landroid/view/SurfaceControl;->setAlpha(F)V

    iget v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    iput v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceLayer:I

    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v6, v6, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v7, 0x1000

    and-int/2addr v6, v7

    if-eqz v6, :cond_186

    const-string v6, "INTENAL_ONLY"

    const-string v7, "Inside prepareSurfaceLocked Setting the highest layer stack value"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/high16 v7, 0x80

    invoke-virtual {v6, v7}, Landroid/view/SurfaceControl;->setLayer(I)V

    :goto_11f
    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    iget v8, v3, Lcom/android/server/wm/WindowState;->mHScale:F

    mul-float/2addr v7, v8

    iget v8, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    iget v9, v3, Lcom/android/server/wm/WindowState;->mVScale:F

    mul-float/2addr v8, v9

    iget v9, p0, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    iget v10, v3, Lcom/android/server/wm/WindowState;->mHScale:F

    mul-float/2addr v9, v10

    iget v10, p0, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    iget v11, v3, Lcom/android/server/wm/WindowState;->mVScale:F

    mul-float/2addr v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->updateForcedLocalOrientationInTransactionLocked()V

    iget-boolean v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    if-eqz v6, :cond_157

    iget v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_157

    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->showSurfaceRobustlyLocked()Z

    move-result v6

    if-eqz v6, :cond_18e

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    iget-boolean v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mIsWallpaper:Z

    if-eqz v6, :cond_157

    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v7, 0x1

    invoke-virtual {v6, v3, v7}, Lcom/android/server/wm/WindowManagerService;->dispatchWallpaperVisibility(Lcom/android/server/wm/WindowState;Z)V

    :cond_157
    :goto_157
    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v6, :cond_23

    iget-object v6, v3, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    const/4 v7, 0x1

    iput-boolean v7, v6, Lcom/android/server/wm/WindowToken;->hasVisible:Z
    :try_end_160
    .catch Ljava/lang/RuntimeException; {:try_start_f7 .. :try_end_160} :catch_162

    goto/16 :goto_23

    :catch_162
    move-exception v1

    const-string v6, "WindowStateAnimator"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error updating surface in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-nez p1, :cond_23

    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    const-string v7, "update"

    invoke-virtual {v6, p0, v7, v4}, Lcom/android/server/wm/WindowManagerService;->reclaimSomeSurfaceMemoryLocked(Lcom/android/server/wm/WindowStateAnimator;Ljava/lang/String;Z)Z

    goto/16 :goto_23

    :cond_186
    :try_start_186
    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    invoke-virtual {v6, v7}, Landroid/view/SurfaceControl;->setLayer(I)V

    goto :goto_11f

    :cond_18e
    const/4 v6, 0x0

    iput-boolean v6, v3, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z
    :try_end_191
    .catch Ljava/lang/RuntimeException; {:try_start_186 .. :try_end_191} :catch_162

    goto :goto_157

    :cond_192
    const/4 v0, 0x1

    goto/16 :goto_23

    :cond_195
    move v2, v5

    goto/16 :goto_3a

    :catch_198
    move-exception v1

    const-string v6, "WindowStateAnimator"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error updating surface in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-nez p1, :cond_5a

    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    const-string v7, "update"

    invoke-virtual {v6, p0, v7, v4}, Lcom/android/server/wm/WindowManagerService;->reclaimSomeSurfaceMemoryLocked(Lcom/android/server/wm/WindowStateAnimator;Ljava/lang/String;Z)Z

    goto/16 :goto_5a

    :cond_1bc
    iput-boolean v5, v3, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    goto/16 :goto_72
.end method

.method public setAnimation(Landroid/view/animation/Animation;)V
    .registers 5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    iput-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLocalAnimating:Z

    iput-object p1, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->restrictDuration(J)V

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v1, v1, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScale:F

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0}, Landroid/view/animation/Transformation;->clear()V

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mTransformation:Landroid/view/animation/Transformation;

    iget-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    if-eqz v0, :cond_2a

    const/4 v0, 0x0

    :goto_23
    invoke-virtual {v1, v0}, Landroid/view/animation/Transformation;->setAlpha(F)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mHasLocalTransformation:Z

    return-void

    :cond_2a
    const/high16 v0, 0x3f80

    goto :goto_23
.end method

.method setSurfaceBoundariesLocked(Z)V
    .registers 15

    const/high16 v12, 0x200

    const/4 v4, 0x0

    const/4 v9, 0x1

    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v8, v6, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v8, v8, 0x4000

    if-eqz v8, :cond_d7

    iget v7, v6, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    iget v2, v6, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    :goto_12
    if-ge v7, v9, :cond_15

    const/4 v7, 0x1

    :cond_15
    if-ge v2, v9, :cond_18

    const/4 v2, 0x1

    :cond_18
    iget-object v8, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v8, v8, Lcom/android/server/wm/WindowManagerService;->mIsMultiWindowEnabled:Z

    if-eqz v8, :cond_39

    iget-boolean v8, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceShown:Z

    if-eqz v8, :cond_39

    iget-object v8, v6, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v10, 0x7db

    if-eq v8, v10, :cond_39

    if-eq v7, v9, :cond_2e

    if-ne v2, v9, :cond_e5

    :cond_2e
    iget-boolean v8, v6, Lcom/android/server/wm/WindowState;->mTempHidden:Z

    if-nez v8, :cond_39

    iput-boolean v9, v6, Lcom/android/server/wm/WindowState;->mTempHidden:Z

    iget-object v8, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v8}, Landroid/view/SurfaceControl;->hide()V

    :cond_39
    :goto_39
    iget v8, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceW:F

    int-to-float v10, v7

    cmpl-float v8, v8, v10

    if-nez v8, :cond_47

    iget v8, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceH:F

    int-to-float v10, v2

    cmpl-float v8, v8, v10

    if-eqz v8, :cond_48

    :cond_47
    move v4, v9

    :cond_48
    if-eqz v4, :cond_60

    int-to-float v8, v7

    iput v8, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceW:F

    int-to-float v8, v2

    iput v8, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceH:F

    iget-object v8, v6, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v8, :cond_60

    iget-object v8, v6, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    iget-object v8, v8, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/2addr v8, v12

    if-eqz v8, :cond_60

    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->computeShownFrameLocked()V

    :cond_60
    iget-object v8, v6, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    iget v3, v8, Landroid/graphics/RectF;->left:F

    iget-object v8, v6, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    iget v5, v8, Landroid/graphics/RectF;->top:F

    iget v8, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceX:F

    cmpl-float v8, v8, v3

    if-nez v8, :cond_74

    iget v8, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceY:F

    cmpl-float v8, v8, v5

    if-eqz v8, :cond_9b

    :cond_74
    :try_start_74
    iput v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceX:F

    iput v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceY:F

    iget-object v8, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v10

    invoke-virtual {v8, v10}, Lcom/android/server/wm/WindowManagerService;->isDisplayForSideSync(I)Z

    move-result v8

    if-eqz v8, :cond_92

    iget v8, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceX:F

    iget v10, v6, Lcom/android/server/wm/WindowState;->mVScaleForExternal:F

    mul-float/2addr v8, v10

    iput v8, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceX:F

    iget v8, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceY:F

    iget v10, v6, Lcom/android/server/wm/WindowState;->mHScaleForExternal:F

    mul-float/2addr v8, v10

    iput v8, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceY:F

    :cond_92
    iget-object v8, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v10, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceX:F

    iget v11, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceY:F

    invoke-virtual {v8, v10, v11}, Landroid/view/SurfaceControl;->setPosition(FF)V
    :try_end_9b
    .catch Ljava/lang/RuntimeException; {:try_start_74 .. :try_end_9b} :catch_f2

    :cond_9b
    :goto_9b
    if-eqz v4, :cond_d3

    const/4 v8, 0x1

    :try_start_9e
    iput-boolean v8, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceResized:Z

    iget-object v8, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v8, v7, v2}, Landroid/view/SurfaceControl;->setSize(II)V

    iget-object v8, v6, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v8}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    iget-object v8, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    const/4 v10, 0x4

    invoke-virtual {v8, v0, v10}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->getWindowModeLw()I

    move-result v8

    invoke-static {v8}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v8

    if-eq v8, v12, :cond_d3

    iget-object v8, v6, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_d3

    iget-object v8, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v8, v8, Lcom/android/server/wm/WindowManagerService;->mShownForcedLocalOrientationWindow:Z

    if-nez v8, :cond_d3

    iget-object v10, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v8, v6, Lcom/android/server/wm/WindowState;->mExiting:Z

    if-eqz v8, :cond_130

    const/4 v8, 0x0

    :goto_d0
    invoke-virtual {v10, p0, v8}, Lcom/android/server/wm/WindowManagerService;->startDimmingLocked(Lcom/android/server/wm/WindowStateAnimator;F)V
    :try_end_d3
    .catch Ljava/lang/RuntimeException; {:try_start_9e .. :try_end_d3} :catch_135

    :cond_d3
    :goto_d3
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowStateAnimator;->updateSurfaceWindowCrop(Z)V

    return-void

    :cond_d7
    iget-object v8, v6, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v7

    iget-object v8, v6, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v2

    goto/16 :goto_12

    :cond_e5
    iget-boolean v8, v6, Lcom/android/server/wm/WindowState;->mTempHidden:Z

    if-eqz v8, :cond_39

    iput-boolean v4, v6, Lcom/android/server/wm/WindowState;->mTempHidden:Z

    iget-object v8, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v8}, Landroid/view/SurfaceControl;->show()V

    goto/16 :goto_39

    :catch_f2
    move-exception v1

    const-string v8, "WindowStateAnimator"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error positioning surface of "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " pos=("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-nez p1, :cond_9b

    iget-object v8, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    const-string v10, "position"

    invoke-virtual {v8, p0, v10, v9}, Lcom/android/server/wm/WindowManagerService;->reclaimSomeSurfaceMemoryLocked(Lcom/android/server/wm/WindowStateAnimator;Ljava/lang/String;Z)Z

    goto/16 :goto_9b

    :cond_130
    :try_start_130
    iget-object v8, v6, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->dimAmount:F
    :try_end_134
    .catch Ljava/lang/RuntimeException; {:try_start_130 .. :try_end_134} :catch_135

    goto :goto_d0

    :catch_135
    move-exception v1

    const-string v8, "WindowStateAnimator"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error resizing surface of "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " size=("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "x"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-nez p1, :cond_d3

    iget-object v8, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    const-string v10, "size"

    invoke-virtual {v8, p0, v10, v9}, Lcom/android/server/wm/WindowManagerService;->reclaimSomeSurfaceMemoryLocked(Lcom/android/server/wm/WindowStateAnimator;Ljava/lang/String;Z)Z

    goto/16 :goto_d3
.end method

.method setTransparentRegionHintLocked(Landroid/graphics/Region;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_c

    const-string v0, "WindowStateAnimator"

    const-string v1, "setTransparentRegionHint: null mSurface after mHasSurface true"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_b
    return-void

    :cond_c
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    :try_start_f
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setTransparentRegionHint(Landroid/graphics/Region;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_18

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    goto :goto_b

    :catchall_18
    move-exception v0

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v0
.end method

.method setWallpaperOffset(Landroid/graphics/RectF;)V
    .registers 8

    iget v3, p1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v3

    iget v3, p1, Landroid/graphics/RectF;->top:F

    float-to-int v2, v3

    iget v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceX:F

    int-to-float v4, v1

    cmpl-float v3, v3, v4

    if-nez v3, :cond_14

    iget v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceY:F

    int-to-float v4, v2

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_1e

    :cond_14
    int-to-float v3, v1

    iput v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceX:F

    int-to-float v3, v2

    iput v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceY:F

    iget-boolean v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    if-eqz v3, :cond_1f

    :cond_1e
    :goto_1e
    return-void

    :cond_1f
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    :try_start_22
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v1

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v5, v5, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v2

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/view/SurfaceControl;->setPosition(FF)V

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/server/wm/WindowStateAnimator;->updateSurfaceWindowCrop(Z)V
    :try_end_3b
    .catchall {:try_start_22 .. :try_end_3b} :catchall_78
    .catch Ljava/lang/RuntimeException; {:try_start_22 .. :try_end_3b} :catch_3f

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    goto :goto_1e

    :catch_3f
    move-exception v0

    :try_start_40
    const-string v3, "WindowStateAnimator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error positioning surface of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " pos=("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_74
    .catchall {:try_start_40 .. :try_end_74} :catchall_78

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    goto :goto_1e

    :catchall_78
    move-exception v3

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v3
.end method

.method showSurfaceRobustlyLocked()Z
    .registers 10

    const/4 v4, 0x1

    const/4 v5, 0x0

    :try_start_2
    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v6, :cond_5c

    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceShown:Z

    const-string v6, "JPN"

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_38

    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v6, v6, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v7, 0x7db

    if-ne v6, v7, :cond_38

    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v6, v6, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v3, 0x0

    :goto_26
    if-ge v3, v0, :cond_38

    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v6, v6, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v6, v3}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    const/4 v6, 0x0

    iput-boolean v6, v1, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_26

    :cond_38
    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v6, v6, Lcom/android/server/wm/WindowManagerService;->mIsMultiWindowEnabled:Z

    if-eqz v6, :cond_93

    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v6, v6, Lcom/android/server/wm/WindowState;->mTempHidden:Z

    if-eqz v6, :cond_5d

    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v6}, Landroid/view/SurfaceControl;->hide()V

    :goto_49
    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v6, v6, Lcom/android/server/wm/WindowState;->mTurnOnScreen:Z

    if-eqz v6, :cond_5c

    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    const/4 v7, 0x0

    iput-boolean v7, v6, Lcom/android/server/wm/WindowState;->mTurnOnScreen:Z

    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget v7, v6, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    or-int/lit8 v7, v7, 0x10

    iput v7, v6, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    :cond_5c
    :goto_5c
    return v4

    :cond_5d
    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v6}, Landroid/view/SurfaceControl;->show()V
    :try_end_62
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_62} :catch_63

    goto :goto_49

    :catch_63
    move-exception v2

    const-string v6, "WindowStateAnimator"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failure showing surface "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    const-string v7, "show"

    invoke-virtual {v6, p0, v7, v4}, Lcom/android/server/wm/WindowManagerService;->reclaimSomeSurfaceMemoryLocked(Lcom/android/server/wm/WindowStateAnimator;Ljava/lang/String;Z)Z

    move v4, v5

    goto :goto_5c

    :cond_93
    :try_start_93
    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v6}, Landroid/view/SurfaceControl;->show()V
    :try_end_98
    .catch Ljava/lang/RuntimeException; {:try_start_93 .. :try_end_98} :catch_63

    goto :goto_49
.end method

.method stepAnimationLocked(J)Z
    .registers 14

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-boolean v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    iput-boolean v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mWasAnimating:Z

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->okToDisplay()Z

    move-result v5

    if-eqz v5, :cond_9c

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v5

    if-eqz v5, :cond_64

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v5, :cond_64

    iput-boolean v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mHasTransformation:Z

    iput-boolean v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mHasLocalTransformation:Z

    iget-boolean v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mLocalAnimating:Z

    if-nez v5, :cond_55

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v6, v6, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    iget-object v7, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v7, v7, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    iget v8, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimDw:I

    iget v9, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimDh:I

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/view/animation/Animation;->initialize(IIII)V

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v5, v5, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v1

    iget v5, v1, Landroid/view/DisplayInfo;->appWidth:I

    iput v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimDw:I

    iget v5, v1, Landroid/view/DisplayInfo;->appHeight:I

    iput v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimDh:I

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v5, p1, p2}, Landroid/view/animation/Animation;->setStartTime(J)V

    iput-boolean v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mLocalAnimating:Z

    iput-boolean v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    :cond_55
    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v5, :cond_64

    iget-boolean v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mLocalAnimating:Z

    if-eqz v5, :cond_64

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/WindowStateAnimator;->stepAnimation(J)Z

    move-result v2

    if-eqz v2, :cond_64

    :goto_63
    return v3

    :cond_64
    iput-boolean v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mHasLocalTransformation:Z

    iget-boolean v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mLocalAnimating:Z

    if-eqz v5, :cond_6e

    iget-boolean v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationIsEntrance:Z

    if-eqz v5, :cond_83

    :cond_6e
    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    if-eqz v5, :cond_83

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v5, v5, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v5, :cond_83

    iput-boolean v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    iput-boolean v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mHasTransformation:Z

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3}, Landroid/view/animation/Transformation;->clear()V

    move v3, v4

    goto :goto_63

    :cond_83
    iget-boolean v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mHasTransformation:Z

    if-eqz v5, :cond_93

    iput-boolean v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    :cond_89
    :goto_89
    iget-boolean v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    if-nez v5, :cond_a3

    iget-boolean v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mLocalAnimating:Z

    if-nez v5, :cond_a3

    move v3, v4

    goto :goto_63

    :cond_93
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->isAnimating()Z

    move-result v5

    if-eqz v5, :cond_89

    iput-boolean v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    goto :goto_89

    :cond_9c
    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v5, :cond_89

    iput-boolean v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    goto :goto_89

    :cond_a3
    iput-boolean v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    iput-boolean v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mLocalAnimating:Z

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v5, :cond_b2

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v5}, Landroid/view/animation/Animation;->cancel()V

    iput-object v10, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    :cond_b2
    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget-object v5, v5, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    if-ne v5, v6, :cond_be

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iput-object v10, v5, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    :cond_be
    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget v5, v5, Lcom/android/server/wm/WindowState;->mLayer:I

    iput v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v5, v5, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-eqz v5, :cond_164

    iget v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v6, v6, Lcom/android/server/wm/WindowManagerService;->mInputMethodAnimLayerAdjustment:I

    add-int/2addr v5, v6

    iput v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    :cond_d3
    :goto_d3
    iput-boolean v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mHasTransformation:Z

    iput-boolean v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mHasLocalTransformation:Z

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v5, v5, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v6, v6, Lcom/android/server/wm/WindowState;->mPolicyVisibilityAfterAnim:Z

    if-eq v5, v6, :cond_106

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v6, v6, Lcom/android/server/wm/WindowState;->mPolicyVisibilityAfterAnim:Z

    iput-boolean v6, v5, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v5, v5, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iput-boolean v3, v5, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v5, v5, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    if-nez v5, :cond_106

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    if-ne v5, v6, :cond_101

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-boolean v3, v5, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    :cond_101
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->enableScreenIfNeededLocked()V

    :cond_106
    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3}, Landroid/view/animation/Transformation;->clear()V

    iget v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v5, 0x4

    if-ne v3, v5, :cond_142

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v5, 0x3

    if-ne v3, v5, :cond_142

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v3, :cond_142

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v3, v3, Lcom/android/server/wm/AppWindowToken;->firstWindowDrawn:Z

    if-eqz v3, :cond_142

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v3, v3, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    if-eqz v3, :cond_142

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mFinishedStarting:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v5, v5, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/4 v5, 0x7

    invoke-virtual {v3, v5}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    :cond_142
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->finishExit()V

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    const/16 v5, 0x8

    invoke-virtual {v3, v0, v5}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v3, :cond_161

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    :cond_161
    move v3, v4

    goto/16 :goto_63

    :cond_164
    iget-boolean v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mIsWallpaper:Z

    if-eqz v5, :cond_d3

    iget v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    iget-object v6, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v6, v6, Lcom/android/server/wm/WindowManagerService;->mWallpaperAnimLayerAdjustment:I

    add-int/2addr v5, v6

    iput v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    goto/16 :goto_d3
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "WindowStateAnimator{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public updateForcedLocalOrientationInTransactionLocked()V
    .registers 16

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v14, 0x0

    iget-object v12, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v12, v12, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v12, :cond_96

    iget-object v12, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v12, v12, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget v12, v12, Lcom/android/server/wm/AppWindowToken;->forcedLocalOrientation:I

    const/4 v13, -0x1

    if-eq v12, v13, :cond_96

    iget-object v12, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v12, :cond_96

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    const/4 v0, 0x0

    iget-object v12, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v12, v12, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v12}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v2

    iget v12, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v13, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v9

    iget v12, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v13, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget-object v12, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v12, v12, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget v12, v12, Lcom/android/server/wm/AppWindowToken;->forcedLocalOrientation:I

    const/16 v13, 0xf

    if-ne v12, v13, :cond_46

    iget-object v12, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v12, v12, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    invoke-static {v12, v10}, Lcom/android/server/wm/ScreenRotationAnimation;->deltaRotation(II)I

    move-result v0

    :cond_46
    iget-object v12, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v12, v12, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget v12, v12, Lcom/android/server/wm/AppWindowToken;->forcedLocalOrientation:I

    const/16 v13, 0x10

    if-ne v12, v13, :cond_5b

    iget-object v12, p0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v12, v12, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    invoke-static {v12, v11}, Lcom/android/server/wm/ScreenRotationAnimation;->deltaRotation(II)I

    move-result v0

    move v8, v9

    move v9, v3

    move v3, v8

    :cond_5b
    packed-switch v0, :pswitch_data_fe

    :goto_5e
    iget-object v12, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v12}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v1

    iget-object v12, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v12, v1}, Lcom/android/server/wm/WindowAnimator;->getScreenRotationAnimationLocked(I)Lcom/android/server/wm/ScreenRotationAnimation;

    move-result-object v7

    if-eqz v7, :cond_fb

    invoke-virtual {v7}, Lcom/android/server/wm/ScreenRotationAnimation;->isAnimating()Z

    move-result v12

    if-eqz v12, :cond_fb

    move v6, v10

    :goto_73
    if-eqz v6, :cond_75

    :cond_75
    const/16 v12, 0x9

    new-array v4, v12, [F

    invoke-virtual {v5, v4}, Landroid/graphics/Matrix;->getValues([F)V

    iget-object v12, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v13, 0x2

    aget v13, v4, v13

    const/4 v14, 0x5

    aget v14, v4, v14

    invoke-virtual {v12, v13, v14}, Landroid/view/SurfaceControl;->setPosition(FF)V

    iget-object v12, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    aget v11, v4, v11

    const/4 v13, 0x3

    aget v13, v4, v13

    aget v10, v4, v10

    const/4 v14, 0x4

    aget v14, v4, v14

    invoke-virtual {v12, v11, v13, v10, v14}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    :cond_96
    return-void

    :pswitch_97
    invoke-virtual {v5}, Landroid/graphics/Matrix;->reset()V

    iget-object v12, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v12, v12, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v12, v12, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v12, v12

    iget-object v13, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v13, v13, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v13, v13, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v13, v13

    invoke-virtual {v5, v12, v13}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_5e

    :pswitch_ac
    const/high16 v12, 0x42b4

    invoke-virtual {v5, v12, v14, v14}, Landroid/graphics/Matrix;->setRotate(FFF)V

    iget-object v12, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v12, v12, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v12, v12, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int v12, v3, v12

    int-to-float v12, v12

    iget-object v13, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v13, v13, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v13, v13, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v13, v13

    invoke-virtual {v5, v12, v13}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_5e

    :pswitch_c5
    const/high16 v12, 0x4334

    invoke-virtual {v5, v12, v14, v14}, Landroid/graphics/Matrix;->setRotate(FFF)V

    iget-object v12, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v12, v12, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v12, v12, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int v12, v9, v12

    int-to-float v12, v12

    iget-object v13, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v13, v13, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v13, v13, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int v13, v3, v13

    int-to-float v13, v13

    invoke-virtual {v5, v12, v13}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_5e

    :pswitch_e1
    const/high16 v12, 0x4387

    invoke-virtual {v5, v12, v14, v14}, Landroid/graphics/Matrix;->setRotate(FFF)V

    iget-object v12, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v12, v12, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v12, v12, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v12, v12

    iget-object v13, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v13, v13, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v13, v13, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int v13, v9, v13

    int-to-float v13, v13

    invoke-virtual {v5, v12, v13}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_5e

    :cond_fb
    move v6, v11

    goto/16 :goto_73

    :pswitch_data_fe
    .packed-switch 0x0
        :pswitch_97
        :pswitch_ac
        :pswitch_c5
        :pswitch_e1
    .end packed-switch
.end method

.method updateSurfaceWindowCrop(Z)V
    .registers 27

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v15, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v7

    iget-object v0, v15, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v19, v0

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0x4000

    move/from16 v19, v0

    if-eqz v19, :cond_227

    iget-object v0, v15, Lcom/android/server/wm/WindowState;->mSystemDecorRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    iget v0, v15, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    move/from16 v22, v0

    iget v0, v15, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    move/from16 v23, v0

    invoke-virtual/range {v19 .. v23}, Landroid/graphics/Rect;->set(IIII)V

    :goto_31
    iget-object v0, v15, Lcom/android/server/wm/WindowState;->mSystemDecorRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    iget-object v0, v15, Lcom/android/server/wm/WindowState;->mLastSystemDecorRect:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_a4

    iget-object v0, v15, Lcom/android/server/wm/WindowState;->mLastSystemDecorRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    iget-object v0, v15, Lcom/android/server/wm/WindowState;->mSystemDecorRect:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :try_start_4a
    iget-object v0, v15, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v19, v0

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0x200

    move/from16 v19, v0

    if-eqz v19, :cond_80

    iget-object v0, v15, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v19, v0

    const/16 v20, 0x7dd

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_80

    iget-object v0, v15, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v19, v0

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0x4000

    move/from16 v19, v0

    if-eqz v19, :cond_476

    :cond_80
    invoke-virtual {v15}, Lcom/android/server/wm/WindowState;->getWindowModeLw()I

    move-result v19

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0x800

    move/from16 v19, v0

    if-nez v19, :cond_476

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    move-object/from16 v19, v0

    iget-object v0, v15, Lcom/android/server/wm/WindowState;->mSystemDecorRect:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/view/SurfaceControl;->setWindowCrop(Landroid/graphics/Rect;)V

    :goto_99
    iget-object v0, v15, Lcom/android/server/wm/WindowState;->mLastCropFrame:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    iget-object v0, v15, Lcom/android/server/wm/WindowState;->mSystemDecorRect:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V
    :try_end_a4
    .catch Ljava/lang/RuntimeException; {:try_start_4a .. :try_end_a4} :catch_49a

    :cond_a4
    :goto_a4
    iget-object v0, v15, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v19, v0

    if-eqz v19, :cond_226

    iget-object v0, v15, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v19, v0

    if-eqz v19, :cond_226

    iget-object v0, v15, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v19, v0

    const/16 v20, 0x3e9

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_226

    iget-object v0, v15, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wm/WindowState;->getWindowModeLw()I

    move-result v17

    const/4 v6, 0x0

    const/high16 v19, 0x200

    and-int v19, v19, v17

    if-eqz v19, :cond_4f4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v9, v0, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    iget v12, v15, Lcom/android/server/wm/WindowState;->mHScale:F

    iget v14, v15, Lcom/android/server/wm/WindowState;->mVScale:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceH:F

    move/from16 v19, v0

    mul-float v11, v19, v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceW:F

    move/from16 v19, v0

    mul-float v18, v19, v12

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-instance v6, Landroid/graphics/Rect;

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceW:F

    move/from16 v21, v0

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceH:F

    move/from16 v22, v0

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-direct {v6, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iget v0, v9, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    iget v0, v9, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    cmpl-float v19, v18, v19

    if-lez v19, :cond_178

    iget v0, v9, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    iget v0, v9, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v5, v19, v12

    iget-object v0, v15, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v19, v0

    if-gez v19, :cond_4e4

    iget-object v0, v15, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v19, v0

    mul-int/lit8 v19, v19, -0x1

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v19, v19, v12

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    iput v0, v6, Landroid/graphics/Rect;->left:I

    :goto_164
    iget v0, v6, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    add-float v19, v19, v5

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    iput v0, v6, Landroid/graphics/Rect;->right:I

    :cond_178
    iget v0, v9, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    iget v0, v9, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    cmpl-float v19, v11, v19

    if-lez v19, :cond_1d8

    iget v0, v9, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    iget v0, v9, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v4, v19, v14

    iget-object v0, v15, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v19, v0

    if-gez v19, :cond_4ec

    iget-object v0, v15, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v19, v0

    mul-int/lit8 v19, v19, -0x1

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v19, v19, v14

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    iput v0, v6, Landroid/graphics/Rect;->top:I

    :goto_1c4
    iget v0, v6, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    add-float v19, v19, v4

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    iput v0, v6, Landroid/graphics/Rect;->bottom:I

    :cond_1d8
    const/high16 v19, 0x20

    and-int v19, v19, v17

    if-nez v19, :cond_1ea

    iget-object v0, v15, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v9, v0}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v19

    if-nez v19, :cond_1fe

    :cond_1ea
    iget v0, v6, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    iput v0, v6, Landroid/graphics/Rect;->right:I

    iget v0, v6, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    iput v0, v6, Landroid/graphics/Rect;->bottom:I

    :cond_1fe
    :goto_1fe
    if-eqz v6, :cond_226

    iget-object v0, v15, Lcom/android/server/wm/WindowState;->mLastCropFrame:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_226

    invoke-virtual {v6}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_226

    :try_start_212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/view/SurfaceControl;->setWindowCrop(Landroid/graphics/Rect;)V
    :try_end_21d
    .catch Ljava/lang/RuntimeException; {:try_start_212 .. :try_end_21d} :catch_4fe

    :cond_21d
    :goto_21d
    iget-object v0, v15, Lcom/android/server/wm/WindowState;->mLastCropFrame:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_226
    return-void

    :cond_227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v19, v0

    invoke-virtual {v15}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Lcom/android/server/wm/WindowManagerService;->isDisplayForSideSync(I)Z

    move-result v19

    if-eqz v19, :cond_2c1

    iget-object v0, v15, Lcom/android/server/wm/WindowState;->mSystemDecorRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    iget-object v0, v15, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->width()I

    move-result v22

    iget-object v0, v15, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Rect;->height()I

    move-result v23

    invoke-virtual/range {v19 .. v23}, Landroid/graphics/Rect;->set(IIII)V

    iget v0, v7, Landroid/view/DisplayInfo;->logicalWidth:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    iget v0, v15, Lcom/android/server/wm/WindowState;->mVScaleForExternal:F

    move/from16 v20, v0

    div-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    iget-object v0, v15, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    sub-int v16, v19, v20

    iget v0, v7, Landroid/view/DisplayInfo;->logicalHeight:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    iget v0, v15, Lcom/android/server/wm/WindowState;->mHScaleForExternal:F

    move/from16 v20, v0

    div-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    iget-object v0, v15, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    sub-int v10, v19, v20

    iget-object v0, v15, Lcom/android/server/wm/WindowState;->mSystemDecorRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    iget-object v0, v15, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v20, v0

    iget-object v0, v15, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    move/from16 v0, v21

    neg-int v0, v0

    move/from16 v21, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3, v10}, Landroid/graphics/Rect;->intersect(IIII)Z

    goto/16 :goto_31

    :cond_2c1
    invoke-virtual {v15}, Lcom/android/server/wm/WindowState;->isDefaultDisplay()Z

    move-result v19

    if-nez v19, :cond_329

    iget-object v0, v15, Lcom/android/server/wm/WindowState;->mSystemDecorRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    iget-object v0, v15, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->width()I

    move-result v22

    iget-object v0, v15, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Rect;->height()I

    move-result v23

    invoke-virtual/range {v19 .. v23}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, v15, Lcom/android/server/wm/WindowState;->mSystemDecorRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    iget-object v0, v15, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v20, v0

    iget-object v0, v15, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    move/from16 v0, v21

    neg-int v0, v0

    move/from16 v21, v0

    iget v0, v7, Landroid/view/DisplayInfo;->logicalWidth:I

    move/from16 v22, v0

    iget-object v0, v15, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    iget v0, v7, Landroid/view/DisplayInfo;->logicalHeight:I

    move/from16 v23, v0

    iget-object v0, v15, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    invoke-virtual/range {v19 .. v23}, Landroid/graphics/Rect;->intersect(IIII)Z

    goto/16 :goto_31

    :cond_329
    iget v0, v15, Lcom/android/server/wm/WindowState;->mLayer:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mSystemDecorLayer:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_37f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mUniverseBackground:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v19, v0

    if-nez v19, :cond_36a

    iget-object v0, v15, Lcom/android/server/wm/WindowState;->mSystemDecorRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    iget-object v0, v15, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->width()I

    move-result v22

    iget-object v0, v15, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Rect;->height()I

    move-result v23

    invoke-virtual/range {v19 .. v23}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_31

    :cond_36a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mScreenRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowStateAnimator;->applyDecorRect(Landroid/graphics/Rect;)V

    goto/16 :goto_31

    :cond_37f
    iget-object v0, v15, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v19, v0

    const/16 v20, 0x7e9

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_3ae

    iget-object v0, v15, Lcom/android/server/wm/WindowState;->mSystemDecorRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    iget-object v0, v15, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->width()I

    move-result v22

    iget-object v0, v15, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Rect;->height()I

    move-result v23

    invoke-virtual/range {v19 .. v23}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_31

    :cond_3ae
    iget-object v0, v15, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v19, v0

    const/16 v20, 0x7dd

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_3cc

    iget v0, v15, Lcom/android/server/wm/WindowState;->mSystemUiVisibility:I

    move/from16 v19, v0

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0x1000

    move/from16 v19, v0

    if-eqz v19, :cond_3e1

    :cond_3cc
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mScreenRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowStateAnimator;->applyDecorRect(Landroid/graphics/Rect;)V

    goto/16 :goto_31

    :cond_3e1
    iget-object v0, v15, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_461

    iget-object v0, v15, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v19, v0

    const/16 v20, 0x63

    move/from16 v0, v19

    move/from16 v1, v20

    if-gt v0, v1, :cond_461

    iget v0, v15, Lcom/android/server/wm/WindowState;->mSystemUiVisibility:I

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x4

    if-nez v19, :cond_461

    new-instance v13, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mSystemDecorRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    iget-object v0, v15, Lcom/android/server/wm/WindowState;->mContentInsets:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mSystemDecorRect:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mSystemDecorRect:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-direct {v13, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/server/wm/WindowStateAnimator;->applyDecorRect(Landroid/graphics/Rect;)V

    goto/16 :goto_31

    :cond_461
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mSystemDecorRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowStateAnimator;->applyDecorRect(Landroid/graphics/Rect;)V

    goto/16 :goto_31

    :cond_476
    :try_start_476
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    move-object/from16 v19, v0

    new-instance v20, Landroid/graphics/Rect;

    const/16 v21, 0x0

    const/16 v22, 0x0

    iget-object v0, v15, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Rect;->width()I

    move-result v23

    iget-object v0, v15, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Rect;->height()I

    move-result v24

    invoke-direct/range {v20 .. v24}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual/range {v19 .. v20}, Landroid/view/SurfaceControl;->setWindowCrop(Landroid/graphics/Rect;)V
    :try_end_498
    .catch Ljava/lang/RuntimeException; {:try_start_476 .. :try_end_498} :catch_49a

    goto/16 :goto_99

    :catch_49a
    move-exception v8

    const-string v19, "WindowStateAnimator"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Error setting crop surface of "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " crop="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget-object v0, v15, Lcom/android/server/wm/WindowState;->mSystemDecorRect:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-nez p1, :cond_a4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v19, v0

    const-string v20, "crop"

    const/16 v21, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/WindowManagerService;->reclaimSomeSurfaceMemoryLocked(Lcom/android/server/wm/WindowStateAnimator;Ljava/lang/String;Z)Z

    goto/16 :goto_a4

    :cond_4e4
    const/16 v19, 0x0

    move/from16 v0, v19

    iput v0, v6, Landroid/graphics/Rect;->left:I

    goto/16 :goto_164

    :cond_4ec
    const/16 v19, 0x0

    move/from16 v0, v19

    iput v0, v6, Landroid/graphics/Rect;->top:I

    goto/16 :goto_1c4

    :cond_4f4
    const/high16 v19, 0x100

    and-int v19, v19, v17

    if-eqz v19, :cond_1fe

    iget-object v6, v15, Lcom/android/server/wm/WindowState;->mSystemDecorRect:Landroid/graphics/Rect;

    goto/16 :goto_1fe

    :catch_4fe
    move-exception v8

    const-string v19, "WindowStateAnimator"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Error setting crop surface of "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " crop="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget-object v0, v15, Lcom/android/server/wm/WindowState;->mSystemDecorRect:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-nez p1, :cond_21d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v19, v0

    const-string v20, "crop"

    const/16 v21, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/WindowManagerService;->reclaimSomeSurfaceMemoryLocked(Lcom/android/server/wm/WindowStateAnimator;Ljava/lang/String;Z)Z

    goto/16 :goto_21d
.end method
