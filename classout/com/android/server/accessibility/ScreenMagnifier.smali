.class public final Lcom/android/server/accessibility/ScreenMagnifier;
.super Landroid/view/IMagnificationCallbacks$Stub;
.source "ScreenMagnifier.java"

# interfaces
.implements Lcom/android/server/accessibility/EventStreamTransformation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/ScreenMagnifier$ScreenStateObserver;,
        Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;,
        Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;,
        Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;,
        Lcom/android/server/accessibility/ScreenMagnifier$StateViewportDraggingHandler;,
        Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;
    }
.end annotation


# static fields
.field private static final DEBUG_DETECTING:Z = false

.field private static final DEBUG_MAGNIFICATION_CONTROLLER:Z = false

.field private static final DEBUG_PANNING:Z = false

.field private static final DEBUG_SCALING:Z = false

.field private static final DEBUG_SET_MAGNIFICATION_SPEC:Z = false

.field private static final DEBUG_STATE_TRANSITIONS:Z = false

.field private static final DEFAULT_MAGNIFICATION_SCALE:F = 2.0f

.field private static final DEFAULT_SCREEN_MAGNIFICATION_AUTO_UPDATE:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = null

.field private static final MESSAGE_ON_MAGNIFIED_BOUNDS_CHANGED:I = 0x1

.field private static final MESSAGE_ON_RECTANGLE_ON_SCREEN_REQUESTED:I = 0x2

.field private static final MESSAGE_ON_ROTATION_CHANGED:I = 0x4

.field private static final MESSAGE_ON_USER_CONTEXT_CHANGED:I = 0x3

.field private static final MULTI_TAP_TIME_SLOP_ADJUSTMENT:I = 0x32

#the value of this static final field might be set in the static constructor
.field private static final MY_PID:I = 0x0

.field private static final STATE_DELEGATING:I = 0x1

.field private static final STATE_DETECTING:I = 0x2

.field private static final STATE_MAGNIFIED_INTERACTION:I = 0x4

.field private static final STATE_VIEWPORT_DRAGGING:I = 0x3


# instance fields
.field private final mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

.field private final mContext:Landroid/content/Context;

.field private mCurrentState:I

.field private mDelegatingStateDownTime:J

.field private final mDetectingStateHandler:Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;

.field private final mHandler:Landroid/os/Handler;

.field private final mLongAnimationDuration:J

.field private final mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

.field private final mMagnifiedBounds:Landroid/graphics/Region;

.field private final mMagnifiedContentInteractonStateHandler:Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;

.field private final mMultiTapDistanceSlop:I

.field private final mMultiTapTimeSlop:I

.field private mNext:Lcom/android/server/accessibility/EventStreamTransformation;

.field private mPreviousState:I

.field private final mScreenStateObserver:Lcom/android/server/accessibility/ScreenMagnifier$ScreenStateObserver;

.field private final mStateViewportDraggingHandler:Lcom/android/server/accessibility/ScreenMagnifier$StateViewportDraggingHandler;

.field private final mTapDistanceSlop:I

.field private final mTapTimeSlop:I

.field private mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

.field private mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

.field private final mTempRect:Landroid/graphics/Rect;

.field private final mTempRect1:Landroid/graphics/Rect;

.field private mTranslationEnabledBeforePan:Z

.field private mUpdateMagnificationSpecOnNextBoundsChange:Z

.field private final mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/android/server/accessibility/ScreenMagnifier;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/accessibility/ScreenMagnifier;->LOG_TAG:Ljava/lang/String;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    sput v0, Lcom/android/server/accessibility/ScreenMagnifier;->MY_PID:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/android/server/accessibility/AccessibilityManagerService;)V
    .registers 7

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/view/IMagnificationCallbacks$Stub;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mTempRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mTempRect1:Landroid/graphics/Rect;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mTapTimeSlop:I

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    add-int/lit8 v0, v0, -0x32

    iput v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mMultiTapTimeSlop:I

    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mMagnifiedBounds:Landroid/graphics/Region;

    new-instance v0, Lcom/android/server/accessibility/ScreenMagnifier$1;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/ScreenMagnifier$1;-><init>(Lcom/android/server/accessibility/ScreenMagnifier;)V

    iput-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mContext:Landroid/content/Context;

    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mWindowManager:Landroid/view/IWindowManager;

    iput-object p3, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mLongAnimationDuration:J

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mTapDistanceSlop:I

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mMultiTapDistanceSlop:I

    new-instance v0, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;

    invoke-direct {v0, p0, v2}, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;-><init>(Lcom/android/server/accessibility/ScreenMagnifier;Lcom/android/server/accessibility/ScreenMagnifier$1;)V

    iput-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mDetectingStateHandler:Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;

    new-instance v0, Lcom/android/server/accessibility/ScreenMagnifier$StateViewportDraggingHandler;

    invoke-direct {v0, p0, v2}, Lcom/android/server/accessibility/ScreenMagnifier$StateViewportDraggingHandler;-><init>(Lcom/android/server/accessibility/ScreenMagnifier;Lcom/android/server/accessibility/ScreenMagnifier$1;)V

    iput-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mStateViewportDraggingHandler:Lcom/android/server/accessibility/ScreenMagnifier$StateViewportDraggingHandler;

    new-instance v0, Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;

    invoke-direct {v0, p0, p1}, Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;-><init>(Lcom/android/server/accessibility/ScreenMagnifier;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mMagnifiedContentInteractonStateHandler:Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;

    new-instance v0, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    iget-wide v1, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mLongAnimationDuration:J

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;-><init>(Lcom/android/server/accessibility/ScreenMagnifier;J)V

    iput-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    new-instance v0, Lcom/android/server/accessibility/ScreenMagnifier$ScreenStateObserver;

    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/accessibility/ScreenMagnifier$ScreenStateObserver;-><init>(Lcom/android/server/accessibility/ScreenMagnifier;Landroid/content/Context;Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;)V

    iput-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mScreenStateObserver:Lcom/android/server/accessibility/ScreenMagnifier$ScreenStateObserver;

    :try_start_87
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v0, p0}, Landroid/view/IWindowManager;->setMagnificationCallbacks(Landroid/view/IMagnificationCallbacks;)V
    :try_end_8c
    .catch Landroid/os/RemoteException; {:try_start_87 .. :try_end_8c} :catch_91

    :goto_8c
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/server/accessibility/ScreenMagnifier;->transitionToState(I)V

    return-void

    :catch_91
    move-exception v0

    goto :goto_8c
.end method

.method static synthetic access$000(Lcom/android/server/accessibility/ScreenMagnifier;Landroid/graphics/Region;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/ScreenMagnifier;->handleOnMagnifiedBoundsChanged(Landroid/graphics/Region;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/accessibility/ScreenMagnifier;IIII)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/accessibility/ScreenMagnifier;->handleOnRectangleOnScreenRequested(IIII)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/accessibility/ScreenMagnifier;)Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;
    .registers 2

    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/accessibility/ScreenMagnifier;)F
    .registers 2

    invoke-direct {p0}, Lcom/android/server/accessibility/ScreenMagnifier;->getPersistedScale()F

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/accessibility/ScreenMagnifier;F)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/ScreenMagnifier;->persistScale(F)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/accessibility/ScreenMagnifier;)I
    .registers 2

    iget v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mPreviousState:I

    return v0
.end method

.method static synthetic access$1400(Lcom/android/server/accessibility/ScreenMagnifier;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/ScreenMagnifier;->transitionToState(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/accessibility/ScreenMagnifier;)Landroid/graphics/Region;
    .registers 2

    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mMagnifiedBounds:Landroid/graphics/Region;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/accessibility/ScreenMagnifier;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mTranslationEnabledBeforePan:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/android/server/accessibility/ScreenMagnifier;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mTranslationEnabledBeforePan:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/server/accessibility/ScreenMagnifier;)I
    .registers 2

    iget v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mMultiTapTimeSlop:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/accessibility/ScreenMagnifier;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/accessibility/ScreenMagnifier;->handleOnUserContextChanged()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/accessibility/ScreenMagnifier;)I
    .registers 2

    iget v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mMultiTapDistanceSlop:I

    return v0
.end method

.method static synthetic access$2100(Lcom/android/server/accessibility/ScreenMagnifier;)I
    .registers 2

    iget v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mTapDistanceSlop:I

    return v0
.end method

.method static synthetic access$2200(Lcom/android/server/accessibility/ScreenMagnifier;)I
    .registers 2

    iget v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mTapTimeSlop:I

    return v0
.end method

.method static synthetic access$2400(Lcom/android/server/accessibility/ScreenMagnifier;I)[Landroid/view/MotionEvent$PointerCoords;
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/ScreenMagnifier;->getTempPointerCoordsWithMinSize(I)[Landroid/view/MotionEvent$PointerCoords;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/accessibility/ScreenMagnifier;I)[Landroid/view/MotionEvent$PointerProperties;
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/ScreenMagnifier;->getTempPointerPropertiesWithMinSize(I)[Landroid/view/MotionEvent$PointerProperties;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/accessibility/ScreenMagnifier;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/accessibility/ScreenMagnifier;)Lcom/android/server/accessibility/AccessibilityManagerService;
    .registers 2

    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/server/accessibility/ScreenMagnifier;)Landroid/view/IWindowManager;
    .registers 2

    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mWindowManager:Landroid/view/IWindowManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/accessibility/ScreenMagnifier;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/ScreenMagnifier;->handleOnRotationChanged(I)V

    return-void
.end method

.method static synthetic access$3000(Landroid/content/Context;)Z
    .registers 2

    invoke-static {p0}, Lcom/android/server/accessibility/ScreenMagnifier;->isScreenMagnificationAutoUpdateEnabled(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/accessibility/ScreenMagnifier;)I
    .registers 2

    iget v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mCurrentState:I

    return v0
.end method

.method private getMagnifiedFrameInContentCoords(Landroid/graphics/Rect;)V
    .registers 5

    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    invoke-virtual {v1}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->getMagnificationSpec()Landroid/view/MagnificationSpec;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mMagnifiedBounds:Landroid/graphics/Region;

    invoke-virtual {v1, p1}, Landroid/graphics/Region;->getBounds(Landroid/graphics/Rect;)Z

    iget v1, v0, Landroid/view/MagnificationSpec;->offsetX:F

    neg-float v1, v1

    float-to-int v1, v1

    iget v2, v0, Landroid/view/MagnificationSpec;->offsetY:F

    neg-float v2, v2

    float-to-int v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    const/high16 v1, 0x3f80

    iget v2, v0, Landroid/view/MagnificationSpec;->scale:F

    div-float/2addr v1, v2

    invoke-virtual {p1, v1}, Landroid/graphics/Rect;->scale(F)V

    return-void
.end method

.method private getPersistedScale()F
    .registers 4

    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_display_magnification_scale"

    const/high16 v2, 0x4000

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method private getTempPointerCoordsWithMinSize(I)[Landroid/view/MotionEvent$PointerCoords;
    .registers 7

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    if-eqz v4, :cond_26

    iget-object v4, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    array-length v1, v4

    :goto_8
    if-ge v1, p1, :cond_17

    iget-object v2, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    new-array v4, p1, [Landroid/view/MotionEvent$PointerCoords;

    iput-object v4, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    if-eqz v2, :cond_17

    iget-object v4, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    invoke-static {v2, v3, v4, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_17
    move v0, v1

    :goto_18
    if-ge v0, p1, :cond_28

    iget-object v3, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    new-instance v4, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v4}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    :cond_26
    move v1, v3

    goto :goto_8

    :cond_28
    iget-object v3, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    return-object v3
.end method

.method private getTempPointerPropertiesWithMinSize(I)[Landroid/view/MotionEvent$PointerProperties;
    .registers 7

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    if-eqz v4, :cond_26

    iget-object v4, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    array-length v1, v4

    :goto_8
    if-ge v1, p1, :cond_17

    iget-object v2, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    new-array v4, p1, [Landroid/view/MotionEvent$PointerProperties;

    iput-object v4, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    if-eqz v2, :cond_17

    iget-object v4, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    invoke-static {v2, v3, v4, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_17
    move v0, v1

    :goto_18
    if-ge v0, p1, :cond_28

    iget-object v3, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    new-instance v4, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v4}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    :cond_26
    move v1, v3

    goto :goto_8

    :cond_28
    iget-object v3, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    return-object v3
.end method

.method private handleMotionEventStateDelegating(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    packed-switch v2, :pswitch_data_48

    :cond_7
    :goto_7
    iget-object v2, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v2, :cond_33

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    invoke-virtual {v2}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->isMagnifying()Z

    move-result v2

    if-eqz v2, :cond_29

    iget-object v2, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mMagnifiedBounds:Landroid/graphics/Region;

    float-to-int v3, v0

    float-to-int v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Region;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/ScreenMagnifier;->getScaledEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    :cond_29
    iget-wide v2, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mDelegatingStateDownTime:J

    invoke-virtual {p1, v2, v3}, Landroid/view/MotionEvent;->setDownTime(J)V

    iget-object v2, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    invoke-interface {v2, p1, p2, p3}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    :cond_33
    return-void

    :pswitch_34
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mDelegatingStateDownTime:J

    goto :goto_7

    :pswitch_3b
    iget-object v2, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mDetectingStateHandler:Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;

    #getter for: Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->mDelayedEventQueue:Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;
    invoke-static {v2}, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->access$800(Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;)Lcom/android/server/accessibility/ScreenMagnifier$MotionEventInfo;

    move-result-object v2

    if-nez v2, :cond_7

    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/android/server/accessibility/ScreenMagnifier;->transitionToState(I)V

    goto :goto_7

    :pswitch_data_48
    .packed-switch 0x0
        :pswitch_34
        :pswitch_3b
    .end packed-switch
.end method

.method private handleOnMagnifiedBoundsChanged(Landroid/graphics/Region;)V
    .registers 10

    const/4 v7, 0x0

    iget-boolean v5, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mUpdateMagnificationSpecOnNextBoundsChange:Z

    if-eqz v5, :cond_35

    iput-boolean v7, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mUpdateMagnificationSpecOnNextBoundsChange:Z

    iget-object v5, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    invoke-virtual {v5}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->getMagnificationSpec()Landroid/view/MagnificationSpec;

    move-result-object v4

    iget-object v2, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mMagnifiedBounds:Landroid/graphics/Region;

    invoke-virtual {v5, v2}, Landroid/graphics/Region;->getBounds(Landroid/graphics/Rect;)Z

    iget v3, v4, Landroid/view/MagnificationSpec;->scale:F

    iget v5, v4, Landroid/view/MagnificationSpec;->offsetX:F

    neg-float v5, v5

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    add-float/2addr v5, v6

    div-float v0, v5, v3

    iget v5, v4, Landroid/view/MagnificationSpec;->offsetY:F

    neg-float v5, v5

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    add-float/2addr v5, v6

    div-float v1, v5, v3

    iget-object v5, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    invoke-virtual {v5, v3, v0, v1, v7}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->setScaleAndMagnifiedRegionCenter(FFFZ)V

    :cond_35
    iget-object v5, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mMagnifiedBounds:Landroid/graphics/Region;

    invoke-virtual {v5, p1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    iget-object v5, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->onMagnificationStateChanged()V

    return-void
.end method

.method private handleOnRectangleOnScreenRequested(IIII)V
    .registers 14

    iget-object v2, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mTempRect:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mMagnifiedBounds:Landroid/graphics/Region;

    invoke-virtual {v6, v2}, Landroid/graphics/Region;->getBounds(Landroid/graphics/Rect;)Z

    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/graphics/Rect;->intersects(IIII)Z

    move-result v6

    if-nez v6, :cond_e

    :goto_d
    return-void

    :cond_e
    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mTempRect1:Landroid/graphics/Rect;

    invoke-direct {p0, v1}, Lcom/android/server/accessibility/ScreenMagnifier;->getMagnifiedFrameInContentCoords(Landroid/graphics/Rect;)V

    sub-int v6, p3, p1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v7

    if-le v6, v7, :cond_4d

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    if-nez v0, :cond_47

    iget v6, v1, Landroid/graphics/Rect;->left:I

    sub-int v6, p1, v6

    int-to-float v4, v6

    :goto_2a
    sub-int v6, p4, p2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v7

    if-le v6, v7, :cond_63

    iget v6, v1, Landroid/graphics/Rect;->top:I

    sub-int v6, p2, v6

    int-to-float v5, v6

    :goto_37
    iget-object v6, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    invoke-virtual {v6}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->getScale()F

    move-result v3

    iget-object v6, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    mul-float v7, v4, v3

    mul-float v8, v5, v3

    invoke-virtual {v6, v7, v8}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->offsetMagnifiedRegionCenter(FF)V

    goto :goto_d

    :cond_47
    iget v6, v1, Landroid/graphics/Rect;->right:I

    sub-int v6, p3, v6

    int-to-float v4, v6

    goto :goto_2a

    :cond_4d
    iget v6, v1, Landroid/graphics/Rect;->left:I

    if-ge p1, v6, :cond_57

    iget v6, v1, Landroid/graphics/Rect;->left:I

    sub-int v6, p1, v6

    int-to-float v4, v6

    goto :goto_2a

    :cond_57
    iget v6, v1, Landroid/graphics/Rect;->right:I

    if-le p3, v6, :cond_61

    iget v6, v1, Landroid/graphics/Rect;->right:I

    sub-int v6, p3, v6

    int-to-float v4, v6

    goto :goto_2a

    :cond_61
    const/4 v4, 0x0

    goto :goto_2a

    :cond_63
    iget v6, v1, Landroid/graphics/Rect;->top:I

    if-ge p2, v6, :cond_6d

    iget v6, v1, Landroid/graphics/Rect;->top:I

    sub-int v6, p2, v6

    int-to-float v5, v6

    goto :goto_37

    :cond_6d
    iget v6, v1, Landroid/graphics/Rect;->bottom:I

    if-le p4, v6, :cond_77

    iget v6, v1, Landroid/graphics/Rect;->bottom:I

    sub-int v6, p4, v6

    int-to-float v5, v6

    goto :goto_37

    :cond_77
    const/4 v5, 0x0

    goto :goto_37
.end method

.method private handleOnRotationChanged(I)V
    .registers 3

    invoke-direct {p0}, Lcom/android/server/accessibility/ScreenMagnifier;->resetMagnificationIfNeeded()V

    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    invoke-virtual {v0}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->isMagnifying()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mUpdateMagnificationSpecOnNextBoundsChange:Z

    :cond_e
    return-void
.end method

.method private handleOnUserContextChanged()V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/accessibility/ScreenMagnifier;->resetMagnificationIfNeeded()V

    return-void
.end method

.method private static isScreenMagnificationAutoUpdateEnabled(Landroid/content/Context;)Z
    .registers 4

    const/4 v0, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accessibility_display_magnification_auto_update"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_e

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private persistScale(F)V
    .registers 4

    new-instance v0, Lcom/android/server/accessibility/ScreenMagnifier$2;

    invoke-direct {v0, p0, p1}, Lcom/android/server/accessibility/ScreenMagnifier$2;-><init>(Lcom/android/server/accessibility/ScreenMagnifier;F)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/ScreenMagnifier$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private resetMagnificationIfNeeded()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    invoke-virtual {v0}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->isMagnifying()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/accessibility/ScreenMagnifier;->isScreenMagnificationAutoUpdateEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->reset(Z)V

    :cond_16
    return-void
.end method

.method private transitionToState(I)V
    .registers 3

    iget v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mCurrentState:I

    iput v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mPreviousState:I

    iput p1, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mCurrentState:I

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mCurrentState:I

    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mDetectingStateHandler:Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;

    invoke-virtual {v0}, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->clear()V

    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mStateViewportDraggingHandler:Lcom/android/server/accessibility/ScreenMagnifier$StateViewportDraggingHandler;

    invoke-virtual {v0}, Lcom/android/server/accessibility/ScreenMagnifier$StateViewportDraggingHandler;->clear()V

    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mMagnifiedContentInteractonStateHandler:Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;

    #calls: Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;->clear()V
    invoke-static {v0}, Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;->access$700(Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;)V

    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    invoke-interface {v0}, Lcom/android/server/accessibility/EventStreamTransformation;->clear()V

    :cond_1b
    return-void
.end method

.method public getScaledEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .registers 24

    sget-object v2, Lcom/android/server/accessibility/ScreenMagnifier;->LOG_TAG:Ljava/lang/String;

    const-string v3, "getScaledEvent get called"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/server/accessibility/ScreenMagnifier;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mEvent.getEventTime() before"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/accessibility/ScreenMagnifier;->mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    invoke-virtual {v2}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->getScale()F

    move-result v19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/accessibility/ScreenMagnifier;->mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    invoke-virtual {v2}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->getOffsetX()F

    move-result v20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/accessibility/ScreenMagnifier;->mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    invoke-virtual {v2}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->getOffsetY()F

    move-result v21

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v7

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/accessibility/ScreenMagnifier;->getTempPointerCoordsWithMinSize(I)[Landroid/view/MotionEvent$PointerCoords;

    move-result-object v9

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/accessibility/ScreenMagnifier;->getTempPointerPropertiesWithMinSize(I)[Landroid/view/MotionEvent$PointerProperties;

    move-result-object v8

    const/16 v18, 0x0

    :goto_4d
    move/from16 v0, v18

    if-ge v0, v7, :cond_a8

    aget-object v2, v9, v18

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    aget-object v2, v9, v18

    aget-object v3, v9, v18

    iget v3, v3, Landroid/view/MotionEvent$PointerCoords;->x:F

    sub-float v3, v3, v20

    div-float v3, v3, v19

    iput v3, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    aget-object v2, v9, v18

    aget-object v3, v9, v18

    iget v3, v3, Landroid/view/MotionEvent$PointerCoords;->y:F

    sub-float v3, v3, v21

    div-float v3, v3, v19

    iput v3, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    sget-object v2, Lcom/android/server/accessibility/ScreenMagnifier;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "coords[i].x :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v9, v18

    iget v4, v4, Landroid/view/MotionEvent$PointerCoords;->x:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":::: coords[i].y"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v9, v18

    iget v4, v4, Landroid/view/MotionEvent$PointerCoords;->y:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    aget-object v2, v8, v18

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    add-int/lit8 v18, v18, 0x1

    goto :goto_4d

    :cond_a8
    sget-object v2, Lcom/android/server/accessibility/ScreenMagnifier;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mEvent.getEventTime() after"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    const/4 v10, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v11

    const/high16 v12, 0x3f80

    const/high16 v13, 0x3f80

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v14

    const/4 v15, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v16

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v17

    invoke-static/range {v2 .. v17}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object p1

    return-object p1
.end method

.method public isScreenMagnified()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    invoke-virtual {v0}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->isMagnifying()Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    invoke-interface {v0, p1}, Lcom/android/server/accessibility/EventStreamTransformation;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_9
    return-void
.end method

.method public onDestroy()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mScreenStateObserver:Lcom/android/server/accessibility/ScreenMagnifier$ScreenStateObserver;

    invoke-virtual {v0}, Lcom/android/server/accessibility/ScreenMagnifier$ScreenStateObserver;->destroy()V

    :try_start_5
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->setMagnificationCallbacks(Landroid/view/IMagnificationCallbacks;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_b} :catch_c

    :goto_b
    return-void

    :catch_c
    move-exception v0

    goto :goto_b
.end method

.method public onMagnifedBoundsChanged(Landroid/graphics/Region;)V
    .registers 5

    invoke-static {p1}, Landroid/graphics/Region;->obtain(Landroid/graphics/Region;)Landroid/graphics/Region;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    sget v1, Lcom/android/server/accessibility/ScreenMagnifier;->MY_PID:I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    if-eq v1, v2, :cond_19

    invoke-virtual {p1}, Landroid/graphics/Region;->recycle()V

    :cond_19
    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 7

    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mMagnifiedContentInteractonStateHandler:Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/ScreenMagnifier$MagnifiedContentInteractonStateHandler;->onMotionEvent(Landroid/view/MotionEvent;)V

    iget v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mCurrentState:I

    packed-switch v0, :pswitch_data_36

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mCurrentState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_25
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/ScreenMagnifier;->handleMotionEventStateDelegating(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    :goto_28
    :pswitch_28
    return-void

    :pswitch_29
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mDetectingStateHandler:Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/accessibility/ScreenMagnifier$DetectingStateHandler;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    goto :goto_28

    :pswitch_2f
    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mStateViewportDraggingHandler:Lcom/android/server/accessibility/ScreenMagnifier$StateViewportDraggingHandler;

    #calls: Lcom/android/server/accessibility/ScreenMagnifier$StateViewportDraggingHandler;->onMotionEvent(Landroid/view/MotionEvent;I)V
    invoke-static {v0, p1, p3}, Lcom/android/server/accessibility/ScreenMagnifier$StateViewportDraggingHandler;->access$600(Lcom/android/server/accessibility/ScreenMagnifier$StateViewportDraggingHandler;Landroid/view/MotionEvent;I)V

    goto :goto_28

    nop

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_25
        :pswitch_29
        :pswitch_2f
        :pswitch_28
    .end packed-switch
.end method

.method public onRectangleOnScreenRequested(IIII)V
    .registers 8

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput p1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    iput p2, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    iput p3, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    iput p4, v0, Lcom/android/internal/os/SomeArgs;->argi4:I

    iget-object v1, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onRotationChanged(I)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onUserContextChanged()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/accessibility/ScreenMagnifier;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    return-void
.end method
