.class final Lcom/android/server/wm/WindowState;
.super Ljava/lang/Object;
.source "WindowState.java"

# interfaces
.implements Landroid/view/WindowManagerPolicy$WindowState;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/WindowState$DeathRecipient;
    }
.end annotation


# static fields
.field static final DEBUG_VISIBILITY:Z = false

.field static final SHOW_LIGHT_TRANSACTIONS:Z = false

.field static final SHOW_SURFACE_ALLOC:Z = false

.field static final SHOW_TRANSACTIONS:Z = false

.field static final TAG:Ljava/lang/String; = "WindowState"


# instance fields
.field mAppFreezing:Z

.field final mAppOp:I

.field mAppOpVisibility:Z

.field mAppToken:Lcom/android/server/wm/AppWindowToken;

.field mAttachedHidden:Z

.field final mAttachedWindow:Lcom/android/server/wm/WindowState;

.field final mAttrs:Landroid/view/WindowManager$LayoutParams;

.field final mBaseLayer:I

.field final mChildWindows:Lcom/android/server/wm/WindowList;

.field final mClient:Landroid/view/IWindow;

.field final mCompatFrame:Landroid/graphics/Rect;

.field private mConfigHasChanged:Z

.field mConfiguration:Landroid/content/res/Configuration;

.field final mContainingFrame:Landroid/graphics/Rect;

.field mContentChanged:Z

.field final mContentFrame:Landroid/graphics/Rect;

.field final mContentInsets:Landroid/graphics/Rect;

.field mContentInsetsChanged:Z

.field final mContext:Landroid/content/Context;

.field final mDeathRecipient:Lcom/android/server/wm/WindowState$DeathRecipient;

.field mDestroying:Z

.field mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field final mDisplayFrame:Landroid/graphics/Rect;

.field mEnforceSizeCompat:Z

.field mExiting:Z

.field mFocusCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/view/IWindowFocusObserver;",
            ">;"
        }
    .end annotation
.end field

.field final mFrame:Landroid/graphics/Rect;

.field final mGivenContentInsets:Landroid/graphics/Rect;

.field mGivenInsetsPending:Z

.field final mGivenTouchableRegion:Landroid/graphics/Region;

.field final mGivenVisibleInsets:Landroid/graphics/Rect;

.field mGlobalScale:F

.field mHScale:F

.field mHScaleForExternal:F

.field mHasSurface:Z

.field mHaveFrame:Z

.field mInputChannel:Landroid/view/InputChannel;

.field final mInputWindowHandle:Lcom/android/server/input/InputWindowHandle;

.field mInvGlobalScale:F

.field final mIsControlBar:Z

.field final mIsFloatingLayer:Z

.field final mIsImWindow:Z

.field final mIsToolkitBar:Z

.field final mIsWallpaper:Z

.field final mLastContentInsets:Landroid/graphics/Rect;

.field final mLastCropFrame:Landroid/graphics/Rect;

.field final mLastFrame:Landroid/graphics/Rect;

.field mLastFreezeDuration:I

.field mLastHScale:F

.field final mLastOverscanInsets:Landroid/graphics/Rect;

.field mLastRequestedHeight:I

.field mLastRequestedWidth:I

.field final mLastSystemDecorRect:Landroid/graphics/Rect;

.field mLastTitle:Ljava/lang/CharSequence;

.field mLastVScale:F

.field final mLastVisibleInsets:Landroid/graphics/Rect;

.field mLayer:I

.field final mLayoutAttached:Z

.field mLayoutNeeded:Z

.field mLayoutSeq:I

.field mObscured:Z

.field mOrientationChanging:Z

.field final mOverscanFrame:Landroid/graphics/Rect;

.field final mOverscanInsets:Landroid/graphics/Rect;

.field mOverscanInsetsChanged:Z

.field final mOwnerUid:I

.field final mParentFrame:Landroid/graphics/Rect;

.field final mPolicy:Landroid/view/WindowManagerPolicy;

.field mPolicyVisibility:Z

.field mPolicyVisibilityAfterAnim:Z

.field mRebuilding:Z

.field mRelayoutCalled:Z

.field mRemoveOnExit:Z

.field mRemoved:Z

.field final mRequestedFrame:Landroid/graphics/Rect;

.field mRequestedHeight:I

.field mRequestedWidth:I

.field mRootToken:Lcom/android/server/wm/WindowToken;

.field mSeq:I

.field final mService:Lcom/android/server/wm/WindowManagerService;

.field final mSession:Lcom/android/server/wm/Session;

.field private mShowToOwnerOnly:Z

.field final mShownFrame:Landroid/graphics/RectF;

.field mStringNameCache:Ljava/lang/String;

.field final mSubLayer:I

.field final mSystemDecorRect:Landroid/graphics/Rect;

.field mSystemUiVisibility:I

.field mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

.field mTempHidden:Z

.field final mTmpMatrix:Landroid/graphics/Matrix;

.field mToken:Lcom/android/server/wm/WindowToken;

.field mTouchableInsets:I

.field mTurnOnScreen:Z

.field mVScale:F

.field mVScaleForExternal:F

.field mViewVisibility:I

.field final mVisibleFrame:Landroid/graphics/Rect;

.field final mVisibleInsets:Landroid/graphics/Rect;

.field mVisibleInsetsChanged:Z

.field mWallpaperVisible:Z

.field mWallpaperX:F

.field mWallpaperXStep:F

.field mWallpaperY:F

.field mWallpaperYStep:F

.field mWasExiting:Z

.field final mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

.field final mWindowId:Landroid/view/IWindowId;

.field mXOffset:I

.field mYOffset:I

.field mZoneChanged:Z


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/Session;Landroid/view/IWindow;Lcom/android/server/wm/WindowToken;Lcom/android/server/wm/WindowState;IILandroid/view/WindowManager$LayoutParams;ILcom/android/server/wm/DisplayContent;)V
    .registers 20

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v6}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v6, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    new-instance v6, Lcom/android/server/wm/WindowList;

    invoke-direct {v6}, Lcom/android/server/wm/WindowList;-><init>()V

    iput-object v6, p0, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibilityAfterAnim:Z

    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/server/wm/WindowState;->mAppOpVisibility:Z

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/wm/WindowState;->mTempHidden:Z

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Lcom/android/server/wm/WindowState;->mLastCropFrame:Landroid/graphics/Rect;

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Lcom/android/server/wm/WindowState;->mRequestedFrame:Landroid/graphics/Rect;

    const/4 v6, -0x1

    iput v6, p0, Lcom/android/server/wm/WindowState;->mLayoutSeq:I

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/server/wm/WindowState;->mConfiguration:Landroid/content/res/Configuration;

    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    iput-object v6, p0, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Lcom/android/server/wm/WindowState;->mVisibleInsets:Landroid/graphics/Rect;

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Lcom/android/server/wm/WindowState;->mLastVisibleInsets:Landroid/graphics/Rect;

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Lcom/android/server/wm/WindowState;->mContentInsets:Landroid/graphics/Rect;

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Lcom/android/server/wm/WindowState;->mLastContentInsets:Landroid/graphics/Rect;

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Lcom/android/server/wm/WindowState;->mOverscanInsets:Landroid/graphics/Rect;

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Lcom/android/server/wm/WindowState;->mLastOverscanInsets:Landroid/graphics/Rect;

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Lcom/android/server/wm/WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Lcom/android/server/wm/WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    new-instance v6, Landroid/graphics/Region;

    invoke-direct {v6}, Landroid/graphics/Region;-><init>()V

    iput-object v6, p0, Lcom/android/server/wm/WindowState;->mGivenTouchableRegion:Landroid/graphics/Region;

    const/4 v6, 0x0

    iput v6, p0, Lcom/android/server/wm/WindowState;->mTouchableInsets:I

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Lcom/android/server/wm/WindowState;->mSystemDecorRect:Landroid/graphics/Rect;

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Lcom/android/server/wm/WindowState;->mLastSystemDecorRect:Landroid/graphics/Rect;

    const/high16 v6, 0x3f80

    iput v6, p0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    const/high16 v6, 0x3f80

    iput v6, p0, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    const/high16 v6, 0x3f80

    iput v6, p0, Lcom/android/server/wm/WindowState;->mHScale:F

    const/high16 v6, 0x3f80

    iput v6, p0, Lcom/android/server/wm/WindowState;->mVScale:F

    const/high16 v6, 0x3f80

    iput v6, p0, Lcom/android/server/wm/WindowState;->mHScaleForExternal:F

    const/high16 v6, 0x3f80

    iput v6, p0, Lcom/android/server/wm/WindowState;->mVScaleForExternal:F

    const/high16 v6, 0x3f80

    iput v6, p0, Lcom/android/server/wm/WindowState;->mLastHScale:F

    const/high16 v6, 0x3f80

    iput v6, p0, Lcom/android/server/wm/WindowState;->mLastVScale:F

    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    iput-object v6, p0, Lcom/android/server/wm/WindowState;->mTmpMatrix:Landroid/graphics/Matrix;

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Lcom/android/server/wm/WindowState;->mLastFrame:Landroid/graphics/Rect;

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Lcom/android/server/wm/WindowState;->mDisplayFrame:Landroid/graphics/Rect;

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Lcom/android/server/wm/WindowState;->mOverscanFrame:Landroid/graphics/Rect;

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Lcom/android/server/wm/WindowState;->mParentFrame:Landroid/graphics/Rect;

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/wm/WindowState;->mZoneChanged:Z

    const/high16 v6, -0x4080

    iput v6, p0, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    const/high16 v6, -0x4080

    iput v6, p0, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    const/high16 v6, -0x4080

    iput v6, p0, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    const/high16 v6, -0x4080

    iput v6, p0, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    iput-object p1, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-object p2, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iput-object p3, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    iput p6, p0, Lcom/android/server/wm/WindowState;->mAppOp:I

    iput-object p4, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iget v6, p2, Lcom/android/server/wm/Session;->mUid:I

    iput v6, p0, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    new-instance v6, Lcom/android/server/wm/WindowState$1;

    invoke-direct {v6, p0}, Lcom/android/server/wm/WindowState$1;-><init>(Lcom/android/server/wm/WindowState;)V

    iput-object v6, p0, Lcom/android/server/wm/WindowState;->mWindowId:Landroid/view/IWindowId;

    iget-object v6, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p8

    invoke-virtual {v6, v0}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    move/from16 v0, p9

    iput v0, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v6, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iput-object v6, p0, Lcom/android/server/wm/WindowState;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v6, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    iput-object v6, p0, Lcom/android/server/wm/WindowState;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/wm/WindowState$DeathRecipient;

    const/4 v6, 0x0

    invoke-direct {v3, p0, v6}, Lcom/android/server/wm/WindowState$DeathRecipient;-><init>(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState$1;)V

    move/from16 v0, p7

    iput v0, p0, Lcom/android/server/wm/WindowState;->mSeq:I

    iget-object v6, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v7, 0x2000

    and-int/2addr v6, v7

    if-eqz v6, :cond_1f9

    const/4 v6, 0x1

    :goto_148
    iput-boolean v6, p0, Lcom/android/server/wm/WindowState;->mEnforceSizeCompat:Z

    :try_start_14a
    invoke-interface {p3}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v3, v7}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_152
    .catch Landroid/os/RemoteException; {:try_start_14a .. :try_end_152} :catch_1fc

    iput-object v3, p0, Lcom/android/server/wm/WindowState;->mDeathRecipient:Lcom/android/server/wm/WindowState$DeathRecipient;

    iget-object v6, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v7, 0x3e8

    if-lt v6, v7, :cond_164

    iget-object v6, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v7, 0x7cf

    if-le v6, v7, :cond_16c

    :cond_164
    iget-object v6, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v7, 0x8a1

    if-ne v6, v7, :cond_241

    :cond_16c
    iget-object v6, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v7, 0x8a1

    if-ne v6, v7, :cond_222

    iget-object v6, p5, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v6, :cond_222

    iget-object v6, p0, Lcom/android/server/wm/WindowState;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v7, p5, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    iget-object v7, v7, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-interface {v6, v7}, Landroid/view/WindowManagerPolicy;->windowTypeToLayerLw(I)I

    move-result v6

    mul-int/lit16 v6, v6, 0x2710

    add-int/lit16 v6, v6, 0x3e8

    iput v6, p0, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    :goto_18a
    iget-object v6, p0, Lcom/android/server/wm/WindowState;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, p8

    iget v7, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-interface {v6, v7}, Landroid/view/WindowManagerPolicy;->subWindowTypeToLayerLw(I)I

    move-result v6

    iput v6, p0, Lcom/android/server/wm/WindowState;->mSubLayer:I

    iput-object p5, p0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    iget-object v6, p0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    iget-object v6, v6, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v6, p0}, Lcom/android/server/wm/WindowList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v7, 0x3eb

    if-eq v6, v7, :cond_234

    const/4 v6, 0x1

    :goto_1a8
    iput-boolean v6, p0, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    iget-object v6, p5, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v7, 0x7db

    if-eq v6, v7, :cond_1ba

    iget-object v6, p5, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v7, 0x7dc

    if-ne v6, v7, :cond_237

    :cond_1ba
    const/4 v6, 0x1

    :goto_1bb
    iput-boolean v6, p0, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    iget-object v6, p5, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v7, 0x7dd

    if-ne v6, v7, :cond_239

    const/4 v6, 0x1

    :goto_1c6
    iput-boolean v6, p0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    iget-boolean v6, p0, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-nez v6, :cond_1d0

    iget-boolean v6, p0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-eqz v6, :cond_23b

    :cond_1d0
    const/4 v6, 0x1

    :goto_1d1
    iput-boolean v6, p0, Lcom/android/server/wm/WindowState;->mIsFloatingLayer:Z

    iget-object v6, p5, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v7, 0x898

    if-eq v6, v7, :cond_1e3

    iget-object v6, p5, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v7, 0x899

    if-ne v6, v7, :cond_23d

    :cond_1e3
    const/4 v6, 0x1

    :goto_1e4
    iput-boolean v6, p0, Lcom/android/server/wm/WindowState;->mIsControlBar:Z

    iget-object v6, p5, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v7, 0x8a2

    if-ne v6, v7, :cond_23f

    const/4 v6, 0x1

    :goto_1ef
    iput-boolean v6, p0, Lcom/android/server/wm/WindowState;->mIsToolkitBar:Z

    :goto_1f1
    move-object v2, p0

    :goto_1f2
    iget-object v6, v2, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v6, :cond_2ad

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    goto :goto_1f2

    :cond_1f9
    const/4 v6, 0x0

    goto/16 :goto_148

    :catch_1fc
    move-exception v4

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/server/wm/WindowState;->mDeathRecipient:Lcom/android/server/wm/WindowState$DeathRecipient;

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/wm/WindowState;->mIsFloatingLayer:Z

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/wm/WindowState;->mIsControlBar:Z

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/wm/WindowState;->mIsToolkitBar:Z

    const/4 v6, 0x0

    iput v6, p0, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    const/4 v6, 0x0

    iput v6, p0, Lcom/android/server/wm/WindowState;->mSubLayer:I

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/input/InputWindowHandle;

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    :goto_221
    return-void

    :cond_222
    iget-object v6, p0, Lcom/android/server/wm/WindowState;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v7, p5, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-interface {v6, v7}, Landroid/view/WindowManagerPolicy;->windowTypeToLayerLw(I)I

    move-result v6

    mul-int/lit16 v6, v6, 0x2710

    add-int/lit16 v6, v6, 0x3e8

    iput v6, p0, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    goto/16 :goto_18a

    :cond_234
    const/4 v6, 0x0

    goto/16 :goto_1a8

    :cond_237
    const/4 v6, 0x0

    goto :goto_1bb

    :cond_239
    const/4 v6, 0x0

    goto :goto_1c6

    :cond_23b
    const/4 v6, 0x0

    goto :goto_1d1

    :cond_23d
    const/4 v6, 0x0

    goto :goto_1e4

    :cond_23f
    const/4 v6, 0x0

    goto :goto_1ef

    :cond_241
    iget-object v6, p0, Lcom/android/server/wm/WindowState;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, p8

    iget v7, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-interface {v6, v7}, Landroid/view/WindowManagerPolicy;->windowTypeToLayerLw(I)I

    move-result v6

    mul-int/lit16 v6, v6, 0x2710

    add-int/lit16 v6, v6, 0x3e8

    iput v6, p0, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    const/4 v6, 0x0

    iput v6, p0, Lcom/android/server/wm/WindowState;->mSubLayer:I

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    iget-object v6, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v7, 0x7db

    if-eq v6, v7, :cond_26a

    iget-object v6, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v7, 0x7dc

    if-ne v6, v7, :cond_2a3

    :cond_26a
    const/4 v6, 0x1

    :goto_26b
    iput-boolean v6, p0, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    iget-object v6, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v7, 0x7dd

    if-ne v6, v7, :cond_2a5

    const/4 v6, 0x1

    :goto_276
    iput-boolean v6, p0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    iget-boolean v6, p0, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-nez v6, :cond_280

    iget-boolean v6, p0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-eqz v6, :cond_2a7

    :cond_280
    const/4 v6, 0x1

    :goto_281
    iput-boolean v6, p0, Lcom/android/server/wm/WindowState;->mIsFloatingLayer:Z

    iget-object v6, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v7, 0x898

    if-eq v6, v7, :cond_293

    iget-object v6, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v7, 0x899

    if-ne v6, v7, :cond_2a9

    :cond_293
    const/4 v6, 0x1

    :goto_294
    iput-boolean v6, p0, Lcom/android/server/wm/WindowState;->mIsControlBar:Z

    iget-object v6, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v7, 0x8a2

    if-ne v6, v7, :cond_2ab

    const/4 v6, 0x1

    :goto_29f
    iput-boolean v6, p0, Lcom/android/server/wm/WindowState;->mIsToolkitBar:Z

    goto/16 :goto_1f1

    :cond_2a3
    const/4 v6, 0x0

    goto :goto_26b

    :cond_2a5
    const/4 v6, 0x0

    goto :goto_276

    :cond_2a7
    const/4 v6, 0x0

    goto :goto_281

    :cond_2a9
    const/4 v6, 0x0

    goto :goto_294

    :cond_2ab
    const/4 v6, 0x0

    goto :goto_29f

    :cond_2ad
    iget-object v1, v2, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    :goto_2af
    iget-object v6, v1, Lcom/android/server/wm/WindowToken;->appWindowToken:Lcom/android/server/wm/AppWindowToken;

    if-nez v6, :cond_2c3

    iget-object v6, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    iget-object v7, v1, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowToken;

    if-eqz v5, :cond_2c3

    if-ne v1, v5, :cond_302

    :cond_2c3
    iput-object v1, p0, Lcom/android/server/wm/WindowState;->mRootToken:Lcom/android/server/wm/WindowToken;

    iget-object v6, v1, Lcom/android/server/wm/WindowToken;->appWindowToken:Lcom/android/server/wm/AppWindowToken;

    iput-object v6, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    new-instance v6, Lcom/android/server/wm/WindowStateAnimator;

    invoke-direct {v6, p0}, Lcom/android/server/wm/WindowStateAnimator;-><init>(Lcom/android/server/wm/WindowState;)V

    iput-object v6, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v6, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v0, p8

    iget v7, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    iput v7, v6, Lcom/android/server/wm/WindowStateAnimator;->mAlpha:F

    const/4 v6, 0x0

    iput v6, p0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    const/4 v6, 0x0

    iput v6, p0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    const/4 v6, 0x0

    iput v6, p0, Lcom/android/server/wm/WindowState;->mLastRequestedWidth:I

    const/4 v6, 0x0

    iput v6, p0, Lcom/android/server/wm/WindowState;->mLastRequestedHeight:I

    const/4 v6, 0x0

    iput v6, p0, Lcom/android/server/wm/WindowState;->mXOffset:I

    const/4 v6, 0x0

    iput v6, p0, Lcom/android/server/wm/WindowState;->mYOffset:I

    const/4 v6, 0x0

    iput v6, p0, Lcom/android/server/wm/WindowState;->mLayer:I

    new-instance v7, Lcom/android/server/input/InputWindowHandle;

    iget-object v6, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v6, :cond_304

    iget-object v6, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v6, v6, Lcom/android/server/wm/AppWindowToken;->mInputApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    :goto_2f7
    invoke-virtual/range {p10 .. p10}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v8

    invoke-direct {v7, v6, p0, v8}, Lcom/android/server/input/InputWindowHandle;-><init>(Lcom/android/server/input/InputApplicationHandle;Ljava/lang/Object;I)V

    iput-object v7, p0, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/input/InputWindowHandle;

    goto/16 :goto_221

    :cond_302
    move-object v1, v5

    goto :goto_2af

    :cond_304
    const/4 v6, 0x0

    goto :goto_2f7
.end method

.method private static applyInsets(Landroid/graphics/Region;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 8

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    iget v4, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/graphics/Region;->set(IIII)Z

    return-void
.end method


# virtual methods
.method attach()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    invoke-virtual {v0}, Lcom/android/server/wm/Session;->windowAddedLocked()V

    return-void
.end method

.method public final canReceiveKeys()Z
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowManagerService;->mSkipWidgetFocus:Z

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x834

    if-eq v1, v2, :cond_1d

    :cond_f
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowManagerService;->mSkipWidgetFocus:Z

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x836

    if-ne v1, v2, :cond_1e

    :cond_1d
    :goto_1d
    return v0

    :cond_1e
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleOrAdding()Z

    move-result v1

    if-eqz v1, :cond_1d

    iget v1, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    if-nez v1, :cond_1d

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_1d

    const/4 v0, 0x1

    goto :goto_1d
.end method

.method public computeFrameLw(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 37

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/WindowState;->mHaveFrame:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->getWindowModeLw()I

    move-result v2

    and-int/lit16 v2, v2, 0x800

    if-eqz v2, :cond_59

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_59

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->hScale:F

    const/4 v6, 0x0

    cmpl-float v2, v2, v6

    if-nez v2, :cond_59

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->vScale:F

    const/4 v6, 0x0

    cmpl-float v2, v2, v6

    if-nez v2, :cond_59

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/high16 v6, -0x2000

    and-int/2addr v2, v6

    if-eqz v2, :cond_59

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v2, :cond_59

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/WindowState;->mHScale:F

    const/4 v6, 0x0

    cmpl-float v2, v2, v6

    if-eqz v2, :cond_59

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/WindowState;->mVScale:F

    const/4 v6, 0x0

    cmpl-float v2, v2, v6

    if-eqz v2, :cond_59

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_59
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/WindowState;->mDisplayFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget v2, v5, Landroid/graphics/Rect;->right:I

    iget v6, v5, Landroid/graphics/Rect;->left:I

    sub-int v21, v2, v6

    iget v2, v5, Landroid/graphics/Rect;->bottom:I

    iget v6, v5, Landroid/graphics/Rect;->top:I

    sub-int v20, v2, v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v2, v2, 0x4000

    if-eqz v2, :cond_42f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-gez v2, :cond_3ef

    move/from16 v3, v21

    :goto_8b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-gez v2, :cond_40f

    move/from16 v4, v20

    :goto_95
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mParentFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_af

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mParentFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/WindowState;->mContentChanged:Z

    :cond_af
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/WindowState;->mLastRequestedWidth:I

    if-ne v2, v6, :cond_c3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/WindowState;->mLastRequestedHeight:I

    if-eq v2, v6, :cond_f7

    :cond_c3
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wm/WindowState;->mLastRequestedWidth:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wm/WindowState;->mLastRequestedHeight:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v6, 0x200

    and-int/2addr v2, v6

    if-nez v2, :cond_f2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_f3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v6, 0x200

    and-int/2addr v2, v6

    if-eqz v2, :cond_f3

    :cond_f2
    const/4 v11, 0x0

    :cond_f3
    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/server/wm/WindowState;->mContentChanged:Z

    :cond_f7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mOverscanFrame:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p4

    invoke-virtual {v10, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v16

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v15

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/WindowState;->mEnforceSizeCompat:Z

    if-eqz v2, :cond_47d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    mul-float v24, v2, v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    mul-float v26, v2, v6

    :goto_146
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->getWindowModeLw()I

    move-result v2

    invoke-static {v2}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v2

    const/high16 v6, 0x200

    if-ne v2, v6, :cond_15f

    const v2, -0x11000001

    and-int v17, v17, v2

    :cond_15f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    move/from16 v0, v21

    int-to-float v7, v0

    mul-float/2addr v6, v7

    add-float v6, v6, v24

    float-to-int v6, v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v28, v0

    mul-float v7, v7, v28

    add-float v7, v7, v26

    float-to-int v7, v7

    invoke-static/range {v2 .. v8}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;IILandroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move-object/from16 v0, p2

    invoke-static {v2, v0, v8}, Landroid/view/Gravity;->applyDisplay(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->getWindowModeLw()I

    move-result v2

    and-int/lit16 v2, v2, 0x800

    if-eqz v2, :cond_24d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->hScale:F

    const/4 v6, 0x0

    cmpl-float v2, v2, v6

    if-nez v2, :cond_24d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->vScale:F

    const/4 v6, 0x0

    cmpl-float v2, v2, v6

    if-nez v2, :cond_24d

    const/high16 v2, -0x2000

    and-int v2, v2, v17

    if-nez v2, :cond_24d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v2, :cond_24d

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/WindowState;->mHScale:F

    const/4 v6, 0x0

    cmpl-float v2, v2, v6

    if-eqz v2, :cond_24d

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/WindowState;->mVScale:F

    const/4 v6, 0x0

    cmpl-float v2, v2, v6

    if-eqz v2, :cond_24d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v6}, Lcom/android/server/wm/WindowManagerService;->getScaleBaseWindowState(Lcom/android/server/wm/WindowState;Z)Lcom/android/server/wm/WindowState;

    move-result-object v9

    if-eqz v9, :cond_24d

    iget-object v2, v9, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-eqz v2, :cond_24d

    iget-object v2, v9, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-eqz v2, :cond_24d

    iget v2, v8, Landroid/graphics/Rect;->left:I

    iget-object v6, v9, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget-object v0, v9, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v28, v0

    sub-int v7, v7, v28

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowState;->mHScale:F

    move/from16 v28, v0

    mul-float v7, v7, v28

    add-float/2addr v6, v7

    const/high16 v7, 0x3f00

    add-float/2addr v6, v7

    float-to-int v6, v6

    sub-int v25, v2, v6

    iget v2, v8, Landroid/graphics/Rect;->top:I

    iget-object v6, v9, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iget-object v0, v9, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v28, v0

    sub-int v7, v7, v28

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowState;->mVScale:F

    move/from16 v28, v0

    mul-float v7, v7, v28

    add-float/2addr v6, v7

    const/high16 v7, 0x3f00

    add-float/2addr v6, v7

    float-to-int v6, v6

    sub-int v27, v2, v6

    if-lez v25, :cond_244

    move/from16 v0, v25

    neg-int v2, v0

    const/4 v6, 0x0

    invoke-virtual {v8, v2, v6}, Landroid/graphics/Rect;->offset(II)V

    :cond_244
    if-lez v27, :cond_24d

    const/4 v2, 0x0

    move/from16 v0, v27

    neg-int v6, v0

    invoke-virtual {v8, v2, v6}, Landroid/graphics/Rect;->offset(II)V

    :cond_24d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mRequestedFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    move/from16 v29, v0

    add-int v28, v28, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    move/from16 v30, v0

    add-int v29, v29, v30

    move/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v2, v6, v7, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    iget v2, v10, Landroid/graphics/Rect;->left:I

    iget v6, v8, Landroid/graphics/Rect;->left:I

    if-ge v2, v6, :cond_296

    iget v2, v8, Landroid/graphics/Rect;->left:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    :cond_296
    iget v2, v10, Landroid/graphics/Rect;->top:I

    iget v6, v8, Landroid/graphics/Rect;->top:I

    if-ge v2, v6, :cond_2a0

    iget v2, v8, Landroid/graphics/Rect;->top:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    :cond_2a0
    iget v2, v10, Landroid/graphics/Rect;->right:I

    iget v6, v8, Landroid/graphics/Rect;->right:I

    if-le v2, v6, :cond_2aa

    iget v2, v8, Landroid/graphics/Rect;->right:I

    iput v2, v10, Landroid/graphics/Rect;->right:I

    :cond_2aa
    iget v2, v10, Landroid/graphics/Rect;->bottom:I

    iget v6, v8, Landroid/graphics/Rect;->bottom:I

    if-le v2, v6, :cond_2b4

    iget v2, v8, Landroid/graphics/Rect;->bottom:I

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    :cond_2b4
    move-object/from16 v0, v22

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v6, v8, Landroid/graphics/Rect;->left:I

    if-ge v2, v6, :cond_2c2

    iget v2, v8, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v22

    iput v2, v0, Landroid/graphics/Rect;->left:I

    :cond_2c2
    move-object/from16 v0, v22

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v6, v8, Landroid/graphics/Rect;->top:I

    if-ge v2, v6, :cond_2d0

    iget v2, v8, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v22

    iput v2, v0, Landroid/graphics/Rect;->top:I

    :cond_2d0
    move-object/from16 v0, v22

    iget v2, v0, Landroid/graphics/Rect;->right:I

    iget v6, v8, Landroid/graphics/Rect;->right:I

    if-le v2, v6, :cond_2de

    iget v2, v8, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v22

    iput v2, v0, Landroid/graphics/Rect;->right:I

    :cond_2de
    move-object/from16 v0, v22

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iget v6, v8, Landroid/graphics/Rect;->bottom:I

    if-le v2, v6, :cond_2ec

    iget v2, v8, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v22

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    :cond_2ec
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mOverscanInsets:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v6, v8, Landroid/graphics/Rect;->left:I

    if-le v2, v6, :cond_491

    move-object/from16 v0, v18

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v6, v8, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v6

    :goto_301
    move-object/from16 v0, v19

    iput v2, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v18

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v6, v8, Landroid/graphics/Rect;->top:I

    if-le v2, v6, :cond_494

    move-object/from16 v0, v18

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v6, v8, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v6

    :goto_314
    move-object/from16 v0, v19

    iput v2, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v18

    iget v2, v0, Landroid/graphics/Rect;->right:I

    iget v6, v8, Landroid/graphics/Rect;->right:I

    if-ge v2, v6, :cond_497

    iget v2, v8, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v18

    iget v6, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v6

    :goto_327
    move-object/from16 v0, v19

    iput v2, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v18

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iget v6, v8, Landroid/graphics/Rect;->bottom:I

    if-ge v2, v6, :cond_49a

    iget v2, v8, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v18

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v6

    :goto_33a
    move-object/from16 v0, v19

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wm/WindowState;->mContentInsets:Landroid/graphics/Rect;

    iget v2, v10, Landroid/graphics/Rect;->left:I

    iget v6, v8, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v6

    iput v2, v12, Landroid/graphics/Rect;->left:I

    iget v2, v10, Landroid/graphics/Rect;->top:I

    iget v6, v8, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v6

    iput v2, v12, Landroid/graphics/Rect;->top:I

    iget v2, v8, Landroid/graphics/Rect;->right:I

    iget v6, v10, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v6

    iput v2, v12, Landroid/graphics/Rect;->right:I

    iget v2, v8, Landroid/graphics/Rect;->bottom:I

    iget v6, v10, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v6

    iput v2, v12, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mVisibleInsets:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v6, v8, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v6

    move-object/from16 v0, v23

    iput v2, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v22

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v6, v8, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v6

    move-object/from16 v0, v23

    iput v2, v0, Landroid/graphics/Rect;->top:I

    iget v2, v8, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v22

    iget v6, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v6

    move-object/from16 v0, v23

    iput v2, v0, Landroid/graphics/Rect;->right:I

    iget v2, v8, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v22

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v6

    move-object/from16 v0, v23

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/WindowState;->mEnforceSizeCompat:Z

    if-eqz v2, :cond_3c1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->scale(F)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    invoke-virtual {v12, v2}, Landroid/graphics/Rect;->scale(F)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->scale(F)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    invoke-virtual {v2, v6}, Landroid/graphics/Rect;->scale(F)V

    :cond_3c1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-eqz v2, :cond_3ee

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v2

    move/from16 v0, v16

    if-ne v0, v2, :cond_3d5

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-eq v15, v2, :cond_3ee

    :cond_3d5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v6, v14, Landroid/view/DisplayInfo;->appWidth:I

    iget v7, v14, Landroid/view/DisplayInfo;->appHeight:I

    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v2, v0, v6, v7, v1}, Lcom/android/server/wm/WindowManagerService;->updateWallpaperOffsetLocked(Lcom/android/server/wm/WindowState;IIZ)Z

    :cond_3ee
    return-void

    :cond_3ef
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/WindowState;->mEnforceSizeCompat:Z

    if-eqz v2, :cond_407

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    mul-float/2addr v2, v6

    const/high16 v6, 0x3f00

    add-float/2addr v2, v6

    float-to-int v3, v2

    goto/16 :goto_8b

    :cond_407
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto/16 :goto_8b

    :cond_40f
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/WindowState;->mEnforceSizeCompat:Z

    if-eqz v2, :cond_427

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    mul-float/2addr v2, v6

    const/high16 v6, 0x3f00

    add-float/2addr v2, v6

    float-to-int v4, v2

    goto/16 :goto_95

    :cond_427
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto/16 :goto_95

    :cond_42f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v6, -0x1

    if-ne v2, v6, :cond_447

    move/from16 v3, v21

    :goto_43a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v6, -0x1

    if-ne v2, v6, :cond_461

    move/from16 v4, v20

    goto/16 :goto_95

    :cond_447
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/WindowState;->mEnforceSizeCompat:Z

    if-eqz v2, :cond_45c

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    mul-float/2addr v2, v6

    const/high16 v6, 0x3f00

    add-float/2addr v2, v6

    float-to-int v3, v2

    goto :goto_43a

    :cond_45c
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    goto :goto_43a

    :cond_461
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/WindowState;->mEnforceSizeCompat:Z

    if-eqz v2, :cond_477

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    mul-float/2addr v2, v6

    const/high16 v6, 0x3f00

    add-float/2addr v2, v6

    float-to-int v4, v2

    goto/16 :goto_95

    :cond_477
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    goto/16 :goto_95

    :cond_47d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v0, v2

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v0, v2

    move/from16 v26, v0

    goto/16 :goto_146

    :cond_491
    const/4 v2, 0x0

    goto/16 :goto_301

    :cond_494
    const/4 v2, 0x0

    goto/16 :goto_314

    :cond_497
    const/4 v2, 0x0

    goto/16 :goto_327

    :cond_49a
    const/4 v2, 0x0

    goto/16 :goto_33a
.end method

.method disposeInputChannel()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    invoke-virtual {v0, v1}, Lcom/android/server/input/InputManagerService;->unregisterInputChannel(Landroid/view/InputChannel;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    iput-object v2, p0, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    :cond_15
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput-object v2, v0, Lcom/android/server/input/InputWindowHandle;->inputChannel:Landroid/view/InputChannel;

    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .registers 11

    const/high16 v6, 0x3f80

    const/high16 v5, -0x4080

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mDisplayId="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, " mSession="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v2, " mClient="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v2}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mOwnerUid="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, " mShowToOwnerOnly="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mShowToOwnerOnly:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    const-string v2, " package="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, " appop="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/WindowState;->mAppOp:I

    invoke-static {v2}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mAttrs="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Requested w="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, " h="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, " mLayoutSeq="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/WindowState;->mLayoutSeq:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    iget v2, p0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    iget v3, p0, Lcom/android/server/wm/WindowState;->mLastRequestedWidth:I

    if-ne v2, v3, :cond_98

    iget v2, p0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    iget v3, p0, Lcom/android/server/wm/WindowState;->mLastRequestedHeight:I

    if-eq v2, v3, :cond_af

    :cond_98
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "LastRequested w="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/WindowState;->mLastRequestedWidth:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, " h="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/WindowState;->mLastRequestedHeight:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    :cond_af
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-nez v2, :cond_b7

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    if-eqz v2, :cond_ce

    :cond_b7
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mAttachedWindow="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v2, " mLayoutAttached="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    :cond_ce
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-nez v2, :cond_e2

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-nez v2, :cond_e2

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mIsFloatingLayer:Z

    if-nez v2, :cond_e2

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mIsControlBar:Z

    if-nez v2, :cond_e2

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mIsToolkitBar:Z

    if-eqz v2, :cond_127

    :cond_e2
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mIsControlBar="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mIsControlBar:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mIsToolkitBar="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mIsToolkitBar:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mIsImWindow="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    const-string v2, " mIsWallpaper="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    const-string v2, " mIsFloatingLayer="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mIsFloatingLayer:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    const-string v2, " mWallpaperVisible="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mWallpaperVisible:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    :cond_127
    if-eqz p3, :cond_174

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mBaseLayer="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, " mSubLayer="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/WindowState;->mSubLayer:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, " mAnimLayer="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/WindowState;->mLayer:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, "+"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v2, :cond_4f0

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v2, v2, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget v2, v2, Lcom/android/server/wm/AppWindowAnimator;->animLayerAdjustment:I

    :goto_159
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, "="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, " mLastLayer="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mLastLayer:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    :cond_174
    if-eqz p3, :cond_1f2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mToken="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mRootToken="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mRootToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v2, :cond_1a1

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mAppToken="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_1a1
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v2, :cond_1b2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mTargetAppToken="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_1b2
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mViewVisibility=0x"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, " mHaveFrame="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mHaveFrame:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    const-string v2, " mObscured="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mObscured:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mSeq="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/WindowState;->mSeq:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, " mSystemUiVisibility=0x"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/WindowState;->mSystemUiVisibility:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1f2
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    if-eqz v2, :cond_202

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibilityAfterAnim:Z

    if-eqz v2, :cond_202

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mAppOpVisibility:Z

    if-eqz v2, :cond_202

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    if-eqz v2, :cond_22d

    :cond_202
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mPolicyVisibility="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    const-string v2, " mPolicyVisibilityAfterAnim="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibilityAfterAnim:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    const-string v2, " mAppOpVisibility="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mAppOpVisibility:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    const-string v2, " mAttachedHidden="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    :cond_22d
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    if-eqz v2, :cond_235

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    if-eqz v2, :cond_24c

    :cond_235
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mRelayoutCalled="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    const-string v2, " mLayoutNeeded="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    :cond_24c
    iget v2, p0, Lcom/android/server/wm/WindowState;->mXOffset:I

    if-nez v2, :cond_254

    iget v2, p0, Lcom/android/server/wm/WindowState;->mYOffset:I

    if-eqz v2, :cond_26b

    :cond_254
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Offsets x="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/WindowState;->mXOffset:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, " y="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/WindowState;->mYOffset:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    :cond_26b
    if-eqz p3, :cond_2c6

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mGivenContentInsets="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    const-string v2, " mGivenVisibleInsets="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    iget v2, p0, Lcom/android/server/wm/WindowState;->mTouchableInsets:I

    if-nez v2, :cond_28f

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mGivenInsetsPending:Z

    if-eqz v2, :cond_2b9

    :cond_28f
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mTouchableInsets="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/WindowState;->mTouchableInsets:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, " mGivenInsetsPending="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mGivenInsetsPending:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "touchable region="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_2b9
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mConfiguration="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_2c6
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mHasSurface="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    const-string v2, " mShownFrame="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    invoke-virtual {v2, p1}, Landroid/graphics/RectF;->printShortString(Ljava/io/PrintWriter;)V

    const-string v2, " isReadyForDisplay()="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isReadyForDisplay()Z

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    if-eqz p3, :cond_31f

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mFrame="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    const-string v2, " last="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mLastFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mSystemDecorRect="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mSystemDecorRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    const-string v2, " last="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mLastSystemDecorRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :cond_31f
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mEnforceSizeCompat:Z

    if-eqz v2, :cond_333

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mCompatFrame="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :cond_333
    if-eqz p3, :cond_3cb

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Frames: containing="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    const-string v2, " parent="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mParentFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "    display="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    const-string v2, " overscan="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mOverscanFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "    content="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    const-string v2, " visible="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Cur insets: overscan="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mOverscanInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    const-string v2, " content="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    const-string v2, " visible="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Lst insets: overscan="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mLastOverscanInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    const-string v2, " content="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mLastContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    const-string v2, " visible="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mLastVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :cond_3cb
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v2, ":"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, v3, p3}, Lcom/android/server/wm/WindowStateAnimator;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mExiting:Z

    if-nez v2, :cond_400

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    if-nez v2, :cond_400

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-nez v2, :cond_400

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mRemoved:Z

    if-eqz v2, :cond_42b

    :cond_400
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mExiting="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mExiting:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    const-string v2, " mRemoveOnExit="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    const-string v2, " mDestroying="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    const-string v2, " mRemoved="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mRemoved:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    :cond_42b
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    if-nez v2, :cond_437

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    if-nez v2, :cond_437

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mTurnOnScreen:Z

    if-eqz v2, :cond_458

    :cond_437
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mOrientationChanging="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    const-string v2, " mAppFreezing="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    const-string v2, " mTurnOnScreen="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mTurnOnScreen:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    :cond_458
    iget v2, p0, Lcom/android/server/wm/WindowState;->mLastFreezeDuration:I

    if-eqz v2, :cond_46d

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mLastFreezeDuration="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/WindowState;->mLastFreezeDuration:I

    int-to-long v2, v2

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :cond_46d
    iget v2, p0, Lcom/android/server/wm/WindowState;->mHScale:F

    cmpl-float v2, v2, v6

    if-nez v2, :cond_479

    iget v2, p0, Lcom/android/server/wm/WindowState;->mVScale:F

    cmpl-float v2, v2, v6

    if-eqz v2, :cond_490

    :cond_479
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mHScale="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/WindowState;->mHScale:F

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(F)V

    const-string v2, " mVScale="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/WindowState;->mVScale:F

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(F)V

    :cond_490
    iget v2, p0, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    cmpl-float v2, v2, v5

    if-nez v2, :cond_49c

    iget v2, p0, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    cmpl-float v2, v2, v5

    if-eqz v2, :cond_4b3

    :cond_49c
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mWallpaperX="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(F)V

    const-string v2, " mWallpaperY="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(F)V

    :cond_4b3
    iget v2, p0, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    cmpl-float v2, v2, v5

    if-nez v2, :cond_4bf

    iget v2, p0, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    cmpl-float v2, v2, v5

    if-eqz v2, :cond_4d6

    :cond_4bf
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mWallpaperXStep="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(F)V

    const-string v2, " mWallpaperYStep="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(F)V

    :cond_4d6
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getWindowModeLw()I

    move-result v2

    invoke-static {v2}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v1

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "appWindowMode="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/high16 v2, 0x100

    if-ne v1, v2, :cond_4ff

    const-string v2, "normal"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_4ef
    :goto_4ef
    return-void

    :cond_4f0
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v2, :cond_4fc

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v2, v2, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget v2, v2, Lcom/android/server/wm/AppWindowAnimator;->animLayerAdjustment:I

    goto/16 :goto_159

    :cond_4fc
    const/4 v2, 0x0

    goto/16 :goto_159

    :cond_4ff
    const/high16 v2, 0x200

    if-ne v1, v2, :cond_4ef

    const-string v2, "freestyle"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4ef
.end method

.method public getAppToken()Landroid/view/IApplicationToken;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public bridge synthetic getAttachedWindowLw()Landroid/view/WindowManagerPolicy$WindowState;
    .registers 2

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getAttachedWindowLw()Lcom/android/server/wm/WindowState;

    move-result-object v0

    return-object v0
.end method

.method public getAttachedWindowLw()Lcom/android/server/wm/WindowState;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    return-object v0
.end method

.method public getAttrs()Landroid/view/WindowManager$LayoutParams;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method public getContentFrameLw()Landroid/graphics/Rect;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getDisplayFrameLw()Landroid/graphics/Rect;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mDisplayFrame:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getDisplayId()I
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    return v0
.end method

.method public getForcedLocalOrientation()I
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget v0, v0, Lcom/android/server/wm/AppWindowToken;->forcedLocalOrientation:I

    :goto_8
    return v0

    :cond_9
    const/4 v0, -0x1

    goto :goto_8
.end method

.method public getFrameLw()Landroid/graphics/Rect;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getGivenContentInsetsLw()Landroid/graphics/Rect;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getGivenInsetsPendingLw()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mGivenInsetsPending:Z

    return v0
.end method

.method public getGivenVisibleInsetsLw()Landroid/graphics/Rect;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getInputDispatchingTimeoutNanos()J
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-wide v0, v0, Lcom/android/server/wm/AppWindowToken;->inputDispatchingTimeoutNanos:J

    :goto_8
    return-wide v0

    :cond_9
    const-wide v0, 0x12a05f200L

    goto :goto_8
.end method

.method public getNeedsMenuLw(Landroid/view/WindowManagerPolicy$WindowState;)Z
    .registers 8

    const/4 v3, 0x0

    const/4 v0, -0x1

    move-object v2, p0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v1

    :goto_7
    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_1a

    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v5, 0x800

    and-int/2addr v4, v5

    if-eqz v4, :cond_19

    const/4 v3, 0x1

    :cond_19
    return v3

    :cond_1a
    if-eq v2, p1, :cond_19

    if-gez v0, :cond_22

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    :cond_22
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_19

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    goto :goto_7
.end method

.method public getOverscanFrameLw()Landroid/graphics/Rect;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mOverscanFrame:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getOwningPackage()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getOwningUid()I
    .registers 2

    iget v0, p0, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    return v0
.end method

.method public getRequestedFrameLw()Landroid/graphics/Rect;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mRequestedFrame:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getShownFrameLw()Landroid/graphics/RectF;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getSurfaceLayer()I
    .registers 2

    iget v0, p0, Lcom/android/server/wm/WindowState;->mLayer:I

    return v0
.end method

.method public getSystemUiVisibility()I
    .registers 3

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getWindowModeLw()I

    move-result v0

    invoke-static {v0}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v0

    const/high16 v1, 0x100

    if-eq v0, v1, :cond_13

    iget v0, p0, Lcom/android/server/wm/WindowState;->mSystemUiVisibility:I

    and-int/lit8 v0, v0, -0x8

    iput v0, p0, Lcom/android/server/wm/WindowState;->mSystemUiVisibility:I

    :goto_12
    return v0

    :cond_13
    iget v0, p0, Lcom/android/server/wm/WindowState;->mSystemUiVisibility:I

    goto :goto_12
.end method

.method public getTouchableRegion(Landroid/graphics/Region;)V
    .registers 11

    const/high16 v8, 0x3f00

    const/4 v7, 0x0

    new-instance v1, Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-direct {v1, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->hScale:F

    cmpl-float v4, v4, v7

    if-eqz v4, :cond_38

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->vScale:F

    cmpl-float v4, v4, v7

    if-eqz v4, :cond_38

    iget v4, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/android/server/wm/WindowState;->mHScale:F

    mul-float/2addr v5, v6

    sub-float/2addr v5, v8

    float-to-int v5, v5

    add-int/2addr v4, v5

    iput v4, v1, Landroid/graphics/Rect;->right:I

    iget v4, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/android/server/wm/WindowState;->mVScale:F

    mul-float/2addr v5, v6

    sub-float/2addr v5, v8

    float-to-int v5, v5

    add-int/2addr v4, v5

    iput v4, v1, Landroid/graphics/Rect;->bottom:I

    :cond_38
    iget v4, p0, Lcom/android/server/wm/WindowState;->mTouchableInsets:I

    packed-switch v4, :pswitch_data_c0

    invoke-virtual {p1, v1}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    :goto_40
    return-void

    :pswitch_41
    new-instance v0, Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    invoke-direct {v0, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->hScale:F

    cmpl-float v4, v4, v7

    if-eqz v4, :cond_76

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->vScale:F

    cmpl-float v4, v4, v7

    if-eqz v4, :cond_76

    iget v4, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/android/server/wm/WindowState;->mHScale:F

    mul-float/2addr v5, v6

    sub-float/2addr v5, v8

    float-to-int v5, v5

    add-int/2addr v4, v5

    iput v4, v0, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/android/server/wm/WindowState;->mVScale:F

    mul-float/2addr v5, v6

    sub-float/2addr v5, v8

    float-to-int v5, v5

    add-int/2addr v4, v5

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    :cond_76
    invoke-static {p1, v1, v0}, Lcom/android/server/wm/WindowState;->applyInsets(Landroid/graphics/Region;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_40

    :pswitch_7a
    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    invoke-direct {v3, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->hScale:F

    cmpl-float v4, v4, v7

    if-eqz v4, :cond_af

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->vScale:F

    cmpl-float v4, v4, v7

    if-eqz v4, :cond_af

    iget v4, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/android/server/wm/WindowState;->mHScale:F

    mul-float/2addr v5, v6

    sub-float/2addr v5, v8

    float-to-int v5, v5

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->right:I

    iget v4, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/android/server/wm/WindowState;->mVScale:F

    mul-float/2addr v5, v6

    sub-float/2addr v5, v8

    float-to-int v5, v5

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    :cond_af
    invoke-static {p1, v1, v3}, Lcom/android/server/wm/WindowState;->applyInsets(Landroid/graphics/Region;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_40

    :pswitch_b3
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mGivenTouchableRegion:Landroid/graphics/Region;

    invoke-virtual {p1, v2}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    iget v4, v1, Landroid/graphics/Rect;->left:I

    iget v5, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Region;->translate(II)V

    goto :goto_40

    :pswitch_data_c0
    .packed-switch 0x1
        :pswitch_41
        :pswitch_7a
        :pswitch_b3
    .end packed-switch
.end method

.method public getVisibleFrameLw()Landroid/graphics/Rect;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    return-object v0
.end method

.method getWindowEasyOneHandScaleSpecLocked()Landroid/view/MagnificationSpec;
    .registers 5

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v2, Lcom/android/server/wm/DisplayContent;->mEasyOneHandScaleSpec:Landroid/view/MagnificationSpec;

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Landroid/view/MagnificationSpec;->isNop()Z

    move-result v2

    if-nez v2, :cond_20

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_21

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-interface {v2, v3}, Landroid/view/WindowManagerPolicy;->canMagnifyWindow(I)Z

    move-result v2

    if-nez v2, :cond_21

    move-object v0, v1

    :cond_20
    :goto_20
    return-object v0

    :cond_21
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-interface {v2, v3}, Landroid/view/WindowManagerPolicy;->canMagnifyWindow(I)Z

    move-result v2

    if-nez v2, :cond_20

    move-object v0, v1

    goto :goto_20
.end method

.method getWindowList()Lcom/android/server/wm/WindowList;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v0

    return-object v0
.end method

.method public getWindowModeLw()I
    .registers 4

    const/high16 v0, 0x100

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_23

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget v0, v1, Lcom/android/server/wm/WindowToken;->appWindowMode:I

    :cond_a
    :goto_a
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    if-eqz v1, :cond_22

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x3ec

    if-eq v1, v2, :cond_1e

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x3e9

    if-ne v1, v2, :cond_22

    :cond_1e
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iget v0, v1, Lcom/android/server/wm/WindowToken;->appWindowMode:I

    :cond_22
    return v0

    :cond_23
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iget v0, v1, Lcom/android/server/wm/WindowToken;->appWindowMode:I

    goto :goto_a
.end method

.method public hasAppShownWindows()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowToken;->firstWindowDrawn:Z

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public hasDrawnLw()Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hideLw(Z)Z
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowState;->hideLw(ZZ)Z

    move-result v0

    return v0
.end method

.method hideLw(ZZ)Z
    .registers 9

    const/4 v3, 0x1

    const/4 v2, 0x0

    move-object v1, p0

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    if-eqz p1, :cond_10

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->okToDisplay()Z

    move-result v4

    if-nez v4, :cond_10

    const/4 p1, 0x0

    :cond_10
    if-eqz p1, :cond_17

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibilityAfterAnim:Z

    :goto_14
    if-nez v0, :cond_1a

    :goto_16
    return v2

    :cond_17
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    goto :goto_14

    :cond_1a
    if-eqz p1, :cond_29

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const/4 v5, 0x2

    invoke-virtual {v4, v5, v2}, Lcom/android/server/wm/WindowStateAnimator;->applyAnimationLocked(IZ)Z

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v4, v4, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-nez v4, :cond_29

    const/4 p1, 0x0

    :cond_29
    if-eqz p1, :cond_36

    iput-boolean v2, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibilityAfterAnim:Z

    :cond_2d
    :goto_2d
    if-eqz p2, :cond_34

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    :cond_34
    move v2, v3

    goto :goto_16

    :cond_36
    iput-boolean v2, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibilityAfterAnim:Z

    iput-boolean v2, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->enableScreenIfNeededLocked()V

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-ne v2, p0, :cond_2d

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-boolean v3, v2, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    goto :goto_2d
.end method

.method public isAlive()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v0}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    return v0
.end method

.method public isAllDrawnLw()Z
    .registers 7

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v5

    if-eqz v5, :cond_27

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v3, 0x0

    :goto_f
    if-ge v3, v0, :cond_24

    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v5, v3}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v5

    if-eqz v5, :cond_21

    add-int/lit8 v4, v4, 0x1

    :cond_21
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_24
    if-ne v0, v4, :cond_27

    const/4 v1, 0x1

    :cond_27
    return v1
.end method

.method public isAnimatingLw()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method isClosing()Z
    .registers 3

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mExiting:Z

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method isConfigChanged()Z
    .registers 4

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    if-eq v1, v2, :cond_29

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mConfiguration:Landroid/content/res/Configuration;

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v1

    if-eqz v1, :cond_29

    :cond_18
    const/4 v0, 0x1

    :goto_19
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x7d4

    if-ne v1, v2, :cond_28

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mConfigHasChanged:Z

    or-int/2addr v1, v0

    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mConfigHasChanged:Z

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mConfigHasChanged:Z

    :cond_28
    return v0

    :cond_29
    const/4 v0, 0x0

    goto :goto_19
.end method

.method isConfigDiff(I)Z
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    if-eq v0, v1, :cond_1b

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mConfiguration:Landroid/content/res/Configuration;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v0

    and-int/2addr v0, p1

    if-eqz v0, :cond_1b

    const/4 v0, 0x1

    :goto_1a
    return v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method public isDefaultDisplay()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-boolean v0, v0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    return v0
.end method

.method public isDisplayedLw()Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v1

    if-eqz v1, :cond_26

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    if-eqz v1, :cond_26

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    if-nez v1, :cond_16

    if-eqz v0, :cond_24

    iget-boolean v1, v0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-eqz v1, :cond_24

    :cond_16
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    if-nez v1, :cond_24

    if-eqz v0, :cond_26

    iget-object v1, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v1, v1, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v1, :cond_26

    :cond_24
    const/4 v1, 0x1

    :goto_25
    return v1

    :cond_26
    const/4 v1, 0x0

    goto :goto_25
.end method

.method public isDrawFinishedLw()Z
    .registers 3

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v0, :cond_1f

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1d

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1d

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1f

    :cond_1d
    const/4 v0, 0x1

    :goto_1e
    return v0

    :cond_1f
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method public isDrawnLw()Z
    .registers 3

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v0, :cond_18

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_16

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_18

    :cond_16
    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public isFocused()Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_5
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-ne v0, p0, :cond_e

    const/4 v0, 0x1

    :goto_c
    monitor-exit v1

    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_c

    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_10

    throw v0
.end method

.method isFullscreen(II)Z
    .registers 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x1000

    and-int/2addr v1, v2

    if-eqz v1, :cond_b

    :cond_a
    :goto_a
    return v0

    :cond_b
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    if-gtz v1, :cond_a

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-gtz v1, :cond_a

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    if-lt v1, p1, :cond_a

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-lt v1, p2, :cond_a

    const/4 v0, 0x1

    goto :goto_a
.end method

.method public isGoneForLayoutLw()Z
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget v1, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    const/16 v2, 0x8

    if-eq v1, v2, :cond_26

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    if-eqz v1, :cond_26

    if-nez v0, :cond_14

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mRootToken:Lcom/android/server/wm/WindowToken;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowToken;->hidden:Z

    if-nez v1, :cond_26

    :cond_14
    if-eqz v0, :cond_1a

    iget-boolean v1, v0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-nez v1, :cond_26

    :cond_1a
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    if-nez v1, :cond_26

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mExiting:Z

    if-nez v1, :cond_26

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-eqz v1, :cond_28

    :cond_26
    const/4 v1, 0x1

    :goto_27
    return v1

    :cond_28
    const/4 v1, 0x0

    goto :goto_27
.end method

.method isHiddenFromUserLocked()Z
    .registers 6

    const/4 v2, 0x0

    move-object v1, p0

    :goto_2
    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v3, :cond_9

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    goto :goto_2

    :cond_9
    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7d0

    if-ge v3, v4, :cond_3e

    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v3, :cond_3e

    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v3, v3, Lcom/android/server/wm/AppWindowToken;->showWhenLocked:Z

    if-eqz v3, :cond_3e

    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-gtz v3, :cond_3e

    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-gtz v3, :cond_3e

    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/view/DisplayInfo;->appWidth:I

    if-lt v3, v4, :cond_3e

    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget v4, v0, Landroid/view/DisplayInfo;->appHeight:I

    if-lt v3, v4, :cond_3e

    :cond_3d
    :goto_3d
    return v2

    :cond_3e
    iget-boolean v3, v1, Lcom/android/server/wm/WindowState;->mShowToOwnerOnly:Z

    if-eqz v3, :cond_3d

    iget v3, v1, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v4, v4, Lcom/android/server/wm/WindowManagerService;->mCurrentUserId:I

    if-eq v3, v4, :cond_3d

    const/4 v2, 0x1

    goto :goto_3d
.end method

.method isIdentityMatrix(FFFF)Z
    .registers 11

    const v5, 0x3f800054

    const v4, 0x3f7fff58

    const v3, 0x358637bd

    const v2, -0x4a79c843

    const/4 v0, 0x0

    cmpg-float v1, p1, v4

    if-ltz v1, :cond_15

    cmpl-float v1, p1, v5

    if-lez v1, :cond_16

    :cond_15
    :goto_15
    return v0

    :cond_16
    cmpg-float v1, p4, v4

    if-ltz v1, :cond_15

    cmpl-float v1, p4, v5

    if-gtz v1, :cond_15

    cmpg-float v1, p2, v2

    if-ltz v1, :cond_15

    cmpl-float v1, p2, v3

    if-gtz v1, :cond_15

    cmpg-float v1, p3, v2

    if-ltz v1, :cond_15

    cmpl-float v1, p3, v3

    if-gtz v1, :cond_15

    const/4 v0, 0x1

    goto :goto_15
.end method

.method isOnScreen()Z
    .registers 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v3, :cond_e

    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    if-eqz v3, :cond_e

    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-eqz v3, :cond_f

    :cond_e
    :goto_e
    return v1

    :cond_f
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_29

    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    if-nez v3, :cond_1b

    iget-boolean v3, v0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-eqz v3, :cond_27

    :cond_1b
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v3, v3, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-nez v3, :cond_27

    iget-object v3, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v3, v3, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_e

    :cond_27
    move v1, v2

    goto :goto_e

    :cond_29
    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    if-eqz v3, :cond_33

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v3, v3, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_e

    :cond_33
    move v1, v2

    goto :goto_e
.end method

.method isOpaqueDrawn()Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_f

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7dd

    if-ne v0, v1, :cond_29

    :cond_f
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_29

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-nez v0, :cond_29

    :cond_27
    const/4 v0, 0x1

    :goto_28
    return v0

    :cond_29
    const/4 v0, 0x0

    goto :goto_28
.end method

.method isPotentialDragTarget()Z
    .registers 2

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mRemoved:Z

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/input/InputWindowHandle;

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method isReadyForDisplay()Z
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mRootToken:Lcom/android/server/wm/WindowToken;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowToken;->waitingToShow:Z

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v1}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v1

    if-eqz v1, :cond_12

    :cond_11
    :goto_11
    return v0

    :cond_12
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v1, :cond_11

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    if-eqz v1, :cond_11

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-nez v1, :cond_11

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    if-nez v1, :cond_2c

    iget v1, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    if-nez v1, :cond_2c

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mRootToken:Lcom/android/server/wm/WindowToken;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowToken;->hidden:Z

    if-eqz v1, :cond_3e

    :cond_2c
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-nez v1, :cond_3e

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v1, v1, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v1, v1, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v1, :cond_11

    :cond_3e
    const/4 v0, 0x1

    goto :goto_11
.end method

.method isReadyForDisplayIgnoringKeyguard()Z
    .registers 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mRootToken:Lcom/android/server/wm/WindowToken;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowToken;->waitingToShow:Z

    if-eqz v2, :cond_12

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v2}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v2

    if-eqz v2, :cond_12

    :cond_11
    :goto_11
    return v1

    :cond_12
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-nez v0, :cond_1a

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    if-eqz v2, :cond_11

    :cond_1a
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v2, :cond_11

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-nez v2, :cond_11

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    if-nez v2, :cond_30

    iget v2, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    if-nez v2, :cond_30

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mRootToken:Lcom/android/server/wm/WindowToken;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowToken;->hidden:Z

    if-eqz v2, :cond_46

    :cond_30
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-nez v2, :cond_46

    if-eqz v0, :cond_11

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v2, v2, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowStateAnimator;->isDummyAnimation()Z

    move-result v2

    if-nez v2, :cond_11

    :cond_46
    const/4 v1, 0x1

    goto :goto_11
.end method

.method public isVisibleLw()Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v1, :cond_1e

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    if-eqz v1, :cond_1e

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    if-nez v1, :cond_1e

    if-eqz v0, :cond_14

    iget-boolean v1, v0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-nez v1, :cond_1e

    :cond_14
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mExiting:Z

    if-nez v1, :cond_1e

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-nez v1, :cond_1e

    const/4 v1, 0x1

    :goto_1d
    return v1

    :cond_1e
    const/4 v1, 0x0

    goto :goto_1d
.end method

.method isVisibleNow()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v0, :cond_1c

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    if-eqz v0, :cond_1c

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mRootToken:Lcom/android/server/wm/WindowToken;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowToken;->hidden:Z

    if-nez v0, :cond_1c

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mExiting:Z

    if-nez v0, :cond_1c

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-nez v0, :cond_1c

    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method isVisibleOrAdding()Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-nez v1, :cond_e

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    if-nez v1, :cond_26

    iget v1, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    if-nez v1, :cond_26

    :cond_e
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    if-eqz v1, :cond_26

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    if-nez v1, :cond_26

    if-eqz v0, :cond_1c

    iget-boolean v1, v0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-nez v1, :cond_26

    :cond_1c
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mExiting:Z

    if-nez v1, :cond_26

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-nez v1, :cond_26

    const/4 v1, 0x1

    :goto_25
    return v1

    :cond_26
    const/4 v1, 0x0

    goto :goto_25
.end method

.method public isVisibleOrBehindKeyguardLw()Z
    .registers 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mRootToken:Lcom/android/server/wm/WindowToken;

    iget-boolean v4, v4, Lcom/android/server/wm/WindowToken;->waitingToShow:Z

    if-eqz v4, :cond_13

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v4}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v4

    if-eqz v4, :cond_13

    :goto_12
    return v3

    :cond_13
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_4a

    iget-object v4, v1, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v4, v4, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v4, :cond_48

    move v0, v2

    :goto_1e
    iget-boolean v4, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v4, :cond_50

    iget-boolean v4, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-nez v4, :cond_50

    iget-boolean v4, p0, Lcom/android/server/wm/WindowState;->mExiting:Z

    if-nez v4, :cond_50

    if-nez v1, :cond_4c

    iget-boolean v4, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    if-eqz v4, :cond_50

    :cond_30
    iget-boolean v4, p0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    if-nez v4, :cond_3e

    iget v4, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    if-nez v4, :cond_3e

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mRootToken:Lcom/android/server/wm/WindowToken;

    iget-boolean v4, v4, Lcom/android/server/wm/WindowToken;->hidden:Z

    if-eqz v4, :cond_46

    :cond_3e
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v4, v4, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-nez v4, :cond_46

    if-eqz v0, :cond_50

    :cond_46
    :goto_46
    move v3, v2

    goto :goto_12

    :cond_48
    move v0, v3

    goto :goto_1e

    :cond_4a
    move v0, v3

    goto :goto_1e

    :cond_4c
    iget-boolean v4, v1, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-eqz v4, :cond_30

    :cond_50
    move v2, v3

    goto :goto_46
.end method

.method public isWinVisibleLw()Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v1, :cond_24

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    if-eqz v1, :cond_24

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    if-nez v1, :cond_24

    if-eqz v0, :cond_1a

    iget-boolean v1, v0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-eqz v1, :cond_1a

    iget-object v1, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-boolean v1, v1, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    if-eqz v1, :cond_24

    :cond_1a
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mExiting:Z

    if-nez v1, :cond_24

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-nez v1, :cond_24

    const/4 v1, 0x1

    :goto_23
    return v1

    :cond_24
    const/4 v1, 0x0

    goto :goto_23
.end method

.method makeInputChannelName()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method prelayout()V
    .registers 3

    const/high16 v1, 0x3f80

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mEnforceSizeCompat:Z

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mCompatibleScreenScale:F

    iput v0, p0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    iget v0, p0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    div-float v0, v1, v0

    iput v0, p0, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    :goto_12
    return-void

    :cond_13
    iput v1, p0, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    iput v1, p0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    goto :goto_12
.end method

.method public registerFocusObserver(Landroid/view/IWindowFocusObserver;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_5
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mFocusCallbacks:Landroid/os/RemoteCallbackList;

    if-nez v0, :cond_10

    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowState;->mFocusCallbacks:Landroid/os/RemoteCallbackList;

    :cond_10
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mFocusCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    monitor-exit v1

    return-void

    :catchall_17
    move-exception v0

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_17

    throw v0
.end method

.method removeLocked()V
    .registers 4

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->disposeInputChannel()V

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowList;->remove(Ljava/lang/Object;)Z

    :cond_e
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->destroyDeferredSurfaceLocked()V

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->destroySurfaceLocked()V

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    invoke-virtual {v0}, Lcom/android/server/wm/Session;->windowRemovedLocked()V

    :try_start_1d
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v0}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mDeathRecipient:Lcom/android/server/wm/WindowState$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_29
    .catch Ljava/lang/RuntimeException; {:try_start_1d .. :try_end_29} :catch_2a

    :goto_29
    return-void

    :catch_2a
    move-exception v0

    goto :goto_29
.end method

.method public reportFocusChangedSerialized(ZZ)V
    .registers 7

    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v3, p1, p2}, Landroid/view/IWindow;->windowFocusChanged(ZZ)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_3a

    :goto_5
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mFocusCallbacks:Landroid/os/RemoteCallbackList;

    if-eqz v3, :cond_39

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mFocusCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    :goto_10
    if-ge v1, v0, :cond_34

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mFocusCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/view/IWindowFocusObserver;

    if-eqz p1, :cond_28

    :try_start_1c
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWindowId:Landroid/view/IWindowId;

    invoke-interface {v3}, Landroid/view/IWindowId;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/view/IWindowFocusObserver;->focusGained(Landroid/os/IBinder;)V

    :goto_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_28
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWindowId:Landroid/view/IWindowId;

    invoke-interface {v3}, Landroid/view/IWindowId;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/view/IWindowFocusObserver;->focusLost(Landroid/os/IBinder;)V
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_31} :catch_32

    goto :goto_25

    :catch_32
    move-exception v3

    goto :goto_25

    :cond_34
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mFocusCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    :cond_39
    return-void

    :catch_3a
    move-exception v3

    goto :goto_5
.end method

.method public setAppOpVisibilityLw(Z)Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mAppOpVisibility:Z

    if-eq v2, p1, :cond_12

    iput-boolean p1, p0, Lcom/android/server/wm/WindowState;->mAppOpVisibility:Z

    if-eqz p1, :cond_e

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowState;->showLw(ZZ)Z

    :goto_d
    return v0

    :cond_e
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowState;->hideLw(ZZ)Z

    goto :goto_d

    :cond_12
    move v0, v1

    goto :goto_d
.end method

.method setConfiguration(Landroid/content/res/Configuration;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/wm/WindowState;->mConfiguration:Landroid/content/res/Configuration;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mConfigHasChanged:Z

    return-void
.end method

.method public setDisplayContent(Lcom/android/server/wm/DisplayContent;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    return-void
.end method

.method setInputChannel(Landroid/view/InputChannel;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Window already has an input channel."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iput-object p1, p0, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput-object p1, v0, Lcom/android/server/input/InputWindowHandle;->inputChannel:Landroid/view/InputChannel;

    return-void
.end method

.method public setShowToOwnerOnlyLocked(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/wm/WindowState;->mShowToOwnerOnly:Z

    return-void
.end method

.method shouldAnimateMove()Z
    .registers 3

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mContentChanged:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mZoneChanged:Z

    if-eqz v0, :cond_44

    :cond_8
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mExiting:Z

    if-nez v0, :cond_44

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    if-nez v0, :cond_44

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->okToDisplay()Z

    move-result v0

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mLastFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-ne v0, v1, :cond_2e

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mLastFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    if-eq v0, v1, :cond_44

    :cond_2e
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_44

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->shouldAnimateMove()Z

    move-result v0

    if-nez v0, :cond_44

    :cond_42
    const/4 v0, 0x1

    :goto_43
    return v0

    :cond_44
    const/4 v0, 0x0

    goto :goto_43
.end method

.method public showLw(Z)Z
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowState;->showLw(ZZ)Z

    move-result v0

    return v0
.end method

.method showLw(ZZ)Z
    .registers 8

    const/4 v1, 0x0

    const/4 v2, 0x1

    move-object v0, p0

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isHiddenFromUserLocked()Z

    move-result v3

    if-eqz v3, :cond_4c

    const-string v2, "WindowState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "current user violation "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v4, v4, Lcom/android/server/wm/WindowManagerService;->mCurrentUserId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " trying to display "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", belonging to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4b
    :goto_4b
    return v1

    :cond_4c
    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mAppOpVisibility:Z

    if-eqz v3, :cond_4b

    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    if-eqz v3, :cond_58

    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibilityAfterAnim:Z

    if-nez v3, :cond_4b

    :cond_58
    if-eqz p1, :cond_63

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->okToDisplay()Z

    move-result v1

    if-nez v1, :cond_77

    const/4 p1, 0x0

    :cond_63
    :goto_63
    iput-boolean v2, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    iput-boolean v2, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibilityAfterAnim:Z

    if-eqz p1, :cond_6e

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v1, v2, v2}, Lcom/android/server/wm/WindowStateAnimator;->applyAnimationLocked(IZ)Z

    :cond_6e
    if-eqz p2, :cond_75

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    :cond_75
    move v1, v2

    goto :goto_4b

    :cond_77
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    if-eqz v1, :cond_63

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-nez v1, :cond_63

    const/4 p1, 0x0

    goto :goto_63
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-gtz v1, :cond_12

    :cond_e
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    :cond_12
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mStringNameCache:Ljava/lang/String;

    if-eqz v1, :cond_20

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mLastTitle:Ljava/lang/CharSequence;

    if-ne v1, v0, :cond_20

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mWasExiting:Z

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mExiting:Z

    if-eq v1, v2, :cond_6b

    :cond_20
    iput-object v0, p0, Lcom/android/server/wm/WindowState;->mLastTitle:Ljava/lang/CharSequence;

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mExiting:Z

    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mWasExiting:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Window{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " u"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v2, v2, Lcom/android/server/wm/Session;->mUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mLastTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mExiting:Z

    if-eqz v1, :cond_6e

    const-string v1, " EXITING}"

    :goto_61
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/WindowState;->mStringNameCache:Ljava/lang/String;

    :cond_6b
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mStringNameCache:Ljava/lang/String;

    return-object v1

    :cond_6e
    const-string v1, "}"

    goto :goto_61
.end method

.method public unregisterFocusObserver(Landroid/view/IWindowFocusObserver;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_5
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mFocusCallbacks:Landroid/os/RemoteCallbackList;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mFocusCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    :cond_e
    monitor-exit v1

    return-void

    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_10

    throw v0
.end method
