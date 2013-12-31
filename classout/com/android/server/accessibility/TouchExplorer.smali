.class Lcom/android/server/accessibility/TouchExplorer;
.super Ljava/lang/Object;
.source "TouchExplorer.java"

# interfaces
.implements Lcom/android/server/accessibility/EventStreamTransformation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/TouchExplorer$1;,
        Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;,
        Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;,
        Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;,
        Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;,
        Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;,
        Lcom/android/server/accessibility/TouchExplorer$ExitGestureDetectionModeDelayed;,
        Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;
    }
.end annotation


# static fields
.field private static final ALL_POINTER_ID_BITS:I = -0x1

.field private static final DEBUG:Z = false

.field private static final EXIT_GESTURE_DETECTION_TIMEOUT:I = 0x7d0

.field private static final GESTURE_DETECTION_VELOCITY_DIP:I = 0x3e8

.field private static final INVALID_NO:I = -0x1

.field private static final INVALID_POINTER_ID:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String; = "TouchExplorer"

.field private static final MAX_DRAGGING_ANGLE_COS:F = 0.52532196f

.field private static final MAX_POINTER_COUNT:I = 0x20

.field private static final MAX_SWIPE_ANGLE:I = 0x2d

.field private static final MIN_POINTER_DISTANCE_TO_USE_MIDDLE_LOCATION_DIP:I = 0xc8

.field private static final MIN_PREDICTION_SCORE:F = 2.0f

.field private static final STATE_DELEGATING:I = 0x4

.field private static final STATE_DRAGGING:I = 0x2

.field private static final STATE_GESTURE_DETECTING:I = 0x5

.field private static final STATE_TOUCH_EXPLORING:I = 0x1

.field private static final SWIPE_DOWN_GESTURE:I = 0x2

.field private static final SWIPE_LEFT_BOTTOM_GESTURE:I = 0xc9

.field private static final SWIPE_LEFT_GESTURE:I = 0x3

.field private static final SWIPE_LEFT_TOP_GESTURE:I = 0xc8

.field private static final SWIPE_RIGHT_BOTTOM_GESTURE:I = 0x65

.field private static final SWIPE_RIGHT_GESTURE:I = 0x4

.field private static final SWIPE_RIGHT_TOP_GESTURE:I = 0x64

.field private static final SWIPE_UP_GESTURE:I = 0x1

.field private static final TOUCH_TOLERANCE:I = 0x3


# instance fields
.field private isX_increasing:Z

.field private isY_increasing:Z

.field private final mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

.field private final mContext:Landroid/content/Context;

.field private mCurrentState:I

.field private final mDetermineUserIntentTimeout:I

.field private final mDoubleTapDetector:Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;

.field private final mDoubleTapSlop:I

.field private final mDoubleTapTimeout:I

.field private mDraggingPointerId:I

.field private final mExitGestureDetectionModeDelayed:Lcom/android/server/accessibility/TouchExplorer$ExitGestureDetectionModeDelayed;

.field private mGestureLibrary:Landroid/gesture/GestureLibrary;

.field private final mHandler:Landroid/os/Handler;

.field private final mInjectedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

.field private mLastTouchedWindowId:I

.field private mLongPressingPointerDeltaX:I

.field private mLongPressingPointerDeltaY:I

.field private mLongPressingPointerId:I

.field private mNext:Lcom/android/server/accessibility/EventStreamTransformation;

.field private final mPerformLongPressDelayed:Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;

.field private mPreviousX:F

.field private mPreviousY:F

.field private final mReceivedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;

.field private final mScaledGestureDetectionVelocity:I

.field private final mScaledMinPointerDistanceToUseMiddleLocation:I

.field private final mSendHoverEnterDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;

.field private final mSendHoverExitDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;

.field private final mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

.field private final mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

.field private final mStrokeBuffer:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/gesture/GesturePoint;",
            ">;"
        }
    .end annotation
.end field

.field private final mTapTimeout:I

.field private final mTempPointerIds:[I

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTouchExplorationInProgress:Z

.field private final mTouchSlop:I

.field private final mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .registers 9

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v3, p0, Lcom/android/server/accessibility/TouchExplorer;->isX_increasing:Z

    iput-boolean v3, p0, Lcom/android/server/accessibility/TouchExplorer;->isY_increasing:Z

    const/16 v1, 0x20

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mTempPointerIds:[I

    iput v5, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mVelocityTracker:Landroid/view/VelocityTracker;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mTempRect:Landroid/graphics/Rect;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0x64

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mStrokeBuffer:Ljava/util/ArrayList;

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerId:I

    iput-object p1, p0, Lcom/android/server/accessibility/TouchExplorer;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/accessibility/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    new-instance v1, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;

    invoke-direct {v1, p0, p1}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;-><init>(Lcom/android/server/accessibility/TouchExplorer;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;

    new-instance v1, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    invoke-direct {v1, p0}, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;-><init>(Lcom/android/server/accessibility/TouchExplorer;)V

    iput-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v1

    iput v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mTapTimeout:I

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v1

    iput v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mDetermineUserIntentTimeout:I

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v1

    iput v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mDoubleTapTimeout:I

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mTouchSlop:I

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result v1

    iput v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mDoubleTapSlop:I

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;

    invoke-direct {v1, p0, v4}, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;-><init>(Lcom/android/server/accessibility/TouchExplorer;Lcom/android/server/accessibility/TouchExplorer$1;)V

    iput-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mPerformLongPressDelayed:Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;

    new-instance v1, Lcom/android/server/accessibility/TouchExplorer$ExitGestureDetectionModeDelayed;

    invoke-direct {v1, p0, v4}, Lcom/android/server/accessibility/TouchExplorer$ExitGestureDetectionModeDelayed;-><init>(Lcom/android/server/accessibility/TouchExplorer;Lcom/android/server/accessibility/TouchExplorer$1;)V

    iput-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mExitGestureDetectionModeDelayed:Lcom/android/server/accessibility/TouchExplorer$ExitGestureDetectionModeDelayed;

    const/high16 v1, 0x110

    invoke-static {p1, v1}, Landroid/gesture/GestureLibraries;->fromRawResource(Landroid/content/Context;I)Landroid/gesture/GestureLibrary;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mGestureLibrary:Landroid/gesture/GestureLibrary;

    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mGestureLibrary:Landroid/gesture/GestureLibrary;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/gesture/GestureLibrary;->setOrientationStyle(I)V

    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mGestureLibrary:Landroid/gesture/GestureLibrary;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/gesture/GestureLibrary;->setSequenceType(I)V

    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mGestureLibrary:Landroid/gesture/GestureLibrary;

    invoke-virtual {v1}, Landroid/gesture/GestureLibrary;->load()Z

    new-instance v1, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;

    const/16 v2, 0x9

    invoke-direct {v1, p0, v2, v5}, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;-><init>(Lcom/android/server/accessibility/TouchExplorer;IZ)V

    iput-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;

    new-instance v1, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;

    const/16 v2, 0xa

    invoke-direct {v1, p0, v2, v3}, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;-><init>(Lcom/android/server/accessibility/TouchExplorer;IZ)V

    iput-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;

    new-instance v1, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    const/16 v2, 0x400

    iget v3, p0, Lcom/android/server/accessibility/TouchExplorer;->mDetermineUserIntentTimeout:I

    invoke-direct {v1, p0, v2, v3}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;-><init>(Lcom/android/server/accessibility/TouchExplorer;II)V

    iput-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    new-instance v1, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    const/high16 v2, 0x20

    iget v3, p0, Lcom/android/server/accessibility/TouchExplorer;->mDetermineUserIntentTimeout:I

    invoke-direct {v1, p0, v2, v3}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;-><init>(Lcom/android/server/accessibility/TouchExplorer;II)V

    iput-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    new-instance v1, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;

    invoke-direct {v1, p0, v4}, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;-><init>(Lcom/android/server/accessibility/TouchExplorer;Lcom/android/server/accessibility/TouchExplorer$1;)V

    iput-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mDoubleTapDetector:Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x4348

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mScaledMinPointerDistanceToUseMiddleLocation:I

    const/high16 v1, 0x447a

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mScaledGestureDetectionVelocity:I

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/accessibility/TouchExplorer;)Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;
    .registers 2

    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/accessibility/TouchExplorer;)Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;
    .registers 2

    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mPerformLongPressDelayed:Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/accessibility/TouchExplorer;)Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;
    .registers 2

    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/accessibility/TouchExplorer;)Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;
    .registers 2

    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/accessibility/TouchExplorer;)Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;
    .registers 2

    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/accessibility/TouchExplorer;)Landroid/graphics/Rect;
    .registers 2

    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mTempRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/accessibility/TouchExplorer;)Lcom/android/server/accessibility/AccessibilityManagerService;
    .registers 2

    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/accessibility/TouchExplorer;)I
    .registers 2

    iget v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mLastTouchedWindowId:I

    return v0
.end method

.method static synthetic access$1800(Lcom/android/server/accessibility/TouchExplorer;Landroid/view/MotionEvent;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendActionDownAndUp(Landroid/view/MotionEvent;I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/accessibility/TouchExplorer;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/accessibility/TouchExplorer;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/TouchExplorer;->sendAccessibilityEvent(I)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/accessibility/TouchExplorer;)Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;
    .registers 2

    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/android/server/accessibility/TouchExplorer;I)I
    .registers 2

    iput p1, p0, Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerId:I

    return p1
.end method

.method static synthetic access$2302(Lcom/android/server/accessibility/TouchExplorer;I)I
    .registers 2

    iput p1, p0, Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerDeltaX:I

    return p1
.end method

.method static synthetic access$2402(Lcom/android/server/accessibility/TouchExplorer;I)I
    .registers 2

    iput p1, p0, Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerDeltaY:I

    return p1
.end method

.method static synthetic access$2500(Lcom/android/server/accessibility/TouchExplorer;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/TouchExplorer;->sendHoverExitAndTouchExplorationGestureEndIfNeeded(I)V

    return-void
.end method

.method static synthetic access$2602(Lcom/android/server/accessibility/TouchExplorer;I)I
    .registers 2

    iput p1, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    return p1
.end method

.method static synthetic access$2700(Lcom/android/server/accessibility/TouchExplorer;Landroid/view/MotionEvent;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendDownForAllActiveNotInjectedPointers(Landroid/view/MotionEvent;I)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/server/accessibility/TouchExplorer;)I
    .registers 2

    iget v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mDetermineUserIntentTimeout:I

    return v0
.end method

.method static synthetic access$2900(Lcom/android/server/accessibility/TouchExplorer;Landroid/view/MotionEvent;III)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/accessibility/TouchExplorer;)I
    .registers 2

    iget v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mTapTimeout:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/accessibility/TouchExplorer;)I
    .registers 2

    iget v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mTouchSlop:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/accessibility/TouchExplorer;)I
    .registers 2

    iget v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mDoubleTapTimeout:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/accessibility/TouchExplorer;)I
    .registers 2

    iget v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mDoubleTapSlop:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/accessibility/TouchExplorer;)Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;
    .registers 2

    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;

    return-object v0
.end method

.method private calculateAngle(IIII)I
    .registers 13

    sub-int v4, p4, p2

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v1

    sub-int v4, p3, p1

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-double v4, v1

    int-to-double v6, v0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    double-to-int v4, v4

    return v4
.end method

.method private clear(Landroid/view/MotionEvent;I)V
    .registers 6

    const/4 v2, -0x1

    const/4 v1, 0x0

    iget v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    packed-switch v0, :pswitch_data_62

    :goto_7
    :pswitch_7
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->remove()V

    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->remove()V

    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mPerformLongPressDelayed:Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->remove()V

    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mExitGestureDetectionModeDelayed:Lcom/android/server/accessibility/TouchExplorer$ExitGestureDetectionModeDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$ExitGestureDetectionModeDelayed;->remove()V

    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->remove()V

    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->remove()V

    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;

    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->clear()V

    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->clear()V

    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mDoubleTapDetector:Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;

    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->clear()V

    iput v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerId:I

    iput v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerDeltaX:I

    iput v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerDeltaY:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    invoke-interface {v0}, Lcom/android/server/accessibility/EventStreamTransformation;->clear()V

    :cond_46
    iput-boolean v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mTouchExplorationInProgress:Z

    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->onTouchInteractionEnd()V

    return-void

    :pswitch_4e
    invoke-direct {p0, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendHoverExitAndTouchExplorationGestureEndIfNeeded(I)V

    goto :goto_7

    :pswitch_52
    iput v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mDraggingPointerId:I

    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendUpForInjectedDownPointers(Landroid/view/MotionEvent;I)V

    goto :goto_7

    :pswitch_58
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendUpForInjectedDownPointers(Landroid/view/MotionEvent;I)V

    goto :goto_7

    :pswitch_5c
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mStrokeBuffer:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_7

    :pswitch_data_62
    .packed-switch 0x1
        :pswitch_4e
        :pswitch_52
        :pswitch_7
        :pswitch_58
        :pswitch_5c
    .end packed-switch
.end method

.method private computeInjectionAction(II)I
    .registers 6

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_24

    :goto_4
    return p1

    :sswitch_5
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->getInjectedPointerDownCount()I

    move-result v1

    if-nez v1, :cond_f

    const/4 p1, 0x0

    goto :goto_4

    :cond_f
    shl-int/lit8 v1, p2, 0x8

    or-int/lit8 p1, v1, 0x5

    goto :goto_4

    :sswitch_14
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->getInjectedPointerDownCount()I

    move-result v2

    if-ne v2, v1, :cond_1e

    move p1, v1

    goto :goto_4

    :cond_1e
    shl-int/lit8 v1, p2, 0x8

    or-int/lit8 p1, v1, 0x6

    goto :goto_4

    nop

    :sswitch_data_24
    .sparse-switch
        0x0 -> :sswitch_5
        0x5 -> :sswitch_5
        0x6 -> :sswitch_14
    .end sparse-switch
.end method

.method private getNotInjectedActivePointerCount(Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;)I
    .registers 6

    invoke-virtual {p1}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getActivePointers()I

    move-result v1

    invoke-virtual {p2}, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->getInjectedPointersDown()I

    move-result v2

    xor-int/lit8 v2, v2, -0x1

    and-int v0, v1, v2

    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v1

    return v1
.end method

.method private static getStateSymbolicName(I)Ljava/lang/String;
    .registers 4

    packed-switch p0, :pswitch_data_28

    :pswitch_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1c
    const-string v0, "STATE_TOUCH_EXPLORING"

    :goto_1e
    return-object v0

    :pswitch_1f
    const-string v0, "STATE_DRAGGING"

    goto :goto_1e

    :pswitch_22
    const-string v0, "STATE_DELEGATING"

    goto :goto_1e

    :pswitch_25
    const-string v0, "STATE_GESTURE_DETECTING"

    goto :goto_1e

    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_1f
        :pswitch_3
        :pswitch_22
        :pswitch_25
    .end packed-switch
.end method

.method private handleMotionEventGestureDetecting(Landroid/view/MotionEvent;I)V
    .registers 29

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v22

    packed-switch v22, :pswitch_data_28e

    :cond_7
    :goto_7
    return-void

    :pswitch_8
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/accessibility/TouchExplorer;->isX_increasing:Z

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/accessibility/TouchExplorer;->isY_increasing:Z

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v16

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v19

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/accessibility/TouchExplorer;->mPreviousX:F

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/accessibility/TouchExplorer;->mPreviousY:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/TouchExplorer;->mStrokeBuffer:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    new-instance v23, Landroid/gesture/GesturePoint;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v24

    move-object/from16 v0, v23

    move/from16 v1, v16

    move/from16 v2, v19

    move-wide/from16 v3, v24

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/gesture/GesturePoint;-><init>(FFJ)V

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :pswitch_47
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v16

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/accessibility/TouchExplorer;->mPreviousX:F

    move/from16 v22, v0

    sub-float v22, v16, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(F)F

    move-result v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/accessibility/TouchExplorer;->mPreviousY:F

    move/from16 v22, v0

    sub-float v22, v19, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(F)F

    move-result v7

    const/high16 v22, 0x4040

    cmpl-float v22, v6, v22

    if-gez v22, :cond_73

    const/high16 v22, 0x4040

    cmpl-float v22, v7, v22

    if-ltz v22, :cond_7

    :cond_73
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/accessibility/TouchExplorer;->mPreviousX:F

    move/from16 v22, v0

    sub-float v22, v16, v22

    const/16 v23, 0x0

    cmpl-float v22, v22, v23

    if-lez v22, :cond_c7

    const/16 v22, 0x1

    :goto_83
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/accessibility/TouchExplorer;->isX_increasing:Z

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/accessibility/TouchExplorer;->mPreviousY:F

    move/from16 v22, v0

    sub-float v22, v19, v22

    const/16 v23, 0x0

    cmpl-float v22, v22, v23

    if-lez v22, :cond_ca

    const/16 v22, 0x1

    :goto_99
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/accessibility/TouchExplorer;->isY_increasing:Z

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/accessibility/TouchExplorer;->mPreviousX:F

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/accessibility/TouchExplorer;->mPreviousY:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/TouchExplorer;->mStrokeBuffer:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    new-instance v23, Landroid/gesture/GesturePoint;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v24

    move-object/from16 v0, v23

    move/from16 v1, v16

    move/from16 v2, v19

    move-wide/from16 v3, v24

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/gesture/GesturePoint;-><init>(FFJ)V

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    :cond_c7
    const/16 v22, 0x0

    goto :goto_83

    :cond_ca
    const/16 v22, 0x0

    goto :goto_99

    :pswitch_cd
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/accessibility/AccessibilityManagerService;->onTouchInteractionEnd()V

    const/high16 v22, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/accessibility/TouchExplorer;->sendAccessibilityEvent(I)V

    const/high16 v22, 0x20

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/accessibility/TouchExplorer;->sendAccessibilityEvent(I)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v16

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/TouchExplorer;->mStrokeBuffer:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    new-instance v23, Landroid/gesture/GesturePoint;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v24

    move-object/from16 v0, v23

    move/from16 v1, v16

    move/from16 v2, v19

    move-wide/from16 v3, v24

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/gesture/GesturePoint;-><init>(FFJ)V

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v8, Landroid/gesture/Gesture;

    invoke-direct {v8}, Landroid/gesture/Gesture;-><init>()V

    new-instance v22, Landroid/gesture/GestureStroke;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/TouchExplorer;->mStrokeBuffer:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-direct/range {v22 .. v23}, Landroid/gesture/GestureStroke;-><init>(Ljava/util/ArrayList;)V

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Landroid/gesture/Gesture;->addStroke(Landroid/gesture/GestureStroke;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/TouchExplorer;->mGestureLibrary:Landroid/gesture/GestureLibrary;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Landroid/gesture/GestureLibrary;->recognize(Landroid/gesture/Gesture;)Ljava/util/ArrayList;

    move-result-object v14

    const/4 v10, 0x0

    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v22

    if-nez v22, :cond_207

    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/gesture/Prediction;

    iget-wide v0, v5, Landroid/gesture/Prediction;->score:D

    move-wide/from16 v22, v0

    const-wide/high16 v24, 0x4000

    cmpl-double v22, v22, v24

    if-ltz v22, :cond_160

    :try_start_146
    iget-object v0, v5, Landroid/gesture/Prediction;->name:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const/16 v22, 0xb

    move/from16 v0, v22

    if-eq v9, v0, :cond_160

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Lcom/android/server/accessibility/AccessibilityManagerService;->onGesture(I)Z
    :try_end_15f
    .catch Ljava/lang/NumberFormatException; {:try_start_146 .. :try_end_15f} :catch_224

    const/4 v10, 0x1

    :cond_160
    :goto_160
    if-nez v10, :cond_207

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/TouchExplorer;->mStrokeBuffer:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    add-int/lit8 v11, v22, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/TouchExplorer;->mStrokeBuffer:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/gesture/GesturePoint;

    move-object/from16 v0, v22

    iget v0, v0, Landroid/gesture/GesturePoint;->x:F

    move/from16 v22, v0

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/TouchExplorer;->mStrokeBuffer:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/gesture/GesturePoint;

    move-object/from16 v0, v22

    iget v0, v0, Landroid/gesture/GesturePoint;->y:F

    move/from16 v22, v0

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/TouchExplorer;->mStrokeBuffer:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/gesture/GesturePoint;

    move-object/from16 v0, v22

    iget v0, v0, Landroid/gesture/GesturePoint;->x:F

    move/from16 v22, v0

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/TouchExplorer;->mStrokeBuffer:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/gesture/GesturePoint;

    move-object/from16 v0, v22

    iget v0, v0, Landroid/gesture/GesturePoint;->y:F

    move/from16 v22, v0

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v20

    move/from16 v3, v18

    move/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/accessibility/TouchExplorer;->calculateAngle(IIII)I

    move-result v15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/accessibility/TouchExplorer;->isX_increasing:Z

    move/from16 v22, v0

    if-eqz v22, :cond_243

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/accessibility/TouchExplorer;->isY_increasing:Z

    move/from16 v22, v0

    if-eqz v22, :cond_243

    const/16 v13, 0x65

    :goto_1f2
    const/4 v9, -0x1

    sparse-switch v13, :sswitch_data_29a

    :goto_1f6
    const/16 v22, -0x1

    move/from16 v0, v22

    if-eq v9, v0, :cond_207

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Lcom/android/server/accessibility/AccessibilityManagerService;->onGesture(I)Z

    :cond_207
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/TouchExplorer;->mStrokeBuffer:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/TouchExplorer;->mExitGestureDetectionModeDelayed:Lcom/android/server/accessibility/TouchExplorer$ExitGestureDetectionModeDelayed;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/accessibility/TouchExplorer$ExitGestureDetectionModeDelayed;->remove()V

    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    goto/16 :goto_7

    :catch_224
    move-exception v12

    const-string v22, "TouchExplorer"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Non numeric gesture id:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    iget-object v0, v5, Landroid/gesture/Prediction;->name:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_160

    :cond_243
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/accessibility/TouchExplorer;->isY_increasing:Z

    move/from16 v22, v0

    if-eqz v22, :cond_24e

    const/16 v13, 0xc9

    goto :goto_1f2

    :cond_24e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/accessibility/TouchExplorer;->isX_increasing:Z

    move/from16 v22, v0

    if-eqz v22, :cond_259

    const/16 v13, 0x64

    goto :goto_1f2

    :cond_259
    const/16 v13, 0xc8

    goto :goto_1f2

    :sswitch_25c
    const/16 v22, 0x2d

    move/from16 v0, v22

    if-gt v15, v0, :cond_264

    const/4 v9, 0x4

    goto :goto_1f6

    :cond_264
    const/4 v9, 0x1

    goto :goto_1f6

    :sswitch_266
    const/16 v22, 0x2d

    move/from16 v0, v22

    if-gt v15, v0, :cond_26e

    const/4 v9, 0x3

    goto :goto_1f6

    :cond_26e
    const/4 v9, 0x1

    goto :goto_1f6

    :sswitch_270
    const/16 v22, 0x2d

    move/from16 v0, v22

    if-gt v15, v0, :cond_279

    const/4 v9, 0x3

    goto/16 :goto_1f6

    :cond_279
    const/4 v9, 0x2

    goto/16 :goto_1f6

    :sswitch_27c
    const/16 v22, 0x2d

    move/from16 v0, v22

    if-gt v15, v0, :cond_285

    const/4 v9, 0x4

    goto/16 :goto_1f6

    :cond_285
    const/4 v9, 0x2

    goto/16 :goto_1f6

    :pswitch_288
    invoke-direct/range {p0 .. p2}, Lcom/android/server/accessibility/TouchExplorer;->clear(Landroid/view/MotionEvent;I)V

    goto/16 :goto_7

    nop

    :pswitch_data_28e
    .packed-switch 0x0
        :pswitch_8
        :pswitch_cd
        :pswitch_47
        :pswitch_288
    .end packed-switch

    :sswitch_data_29a
    .sparse-switch
        0x64 -> :sswitch_25c
        0x65 -> :sswitch_27c
        0xc8 -> :sswitch_266
        0xc9 -> :sswitch_270
    .end sparse-switch
.end method

.method private handleMotionEventStateDelegating(Landroid/view/MotionEvent;I)V
    .registers 7

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    packed-switch v2, :pswitch_data_48

    :cond_8
    :goto_8
    :pswitch_8
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEventStripInactivePointers(Landroid/view/MotionEvent;I)V

    return-void

    :pswitch_c
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Delegating state can only be reached if there is at least one pointer down!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_14
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;

    iget-object v3, p0, Lcom/android/server/accessibility/TouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    invoke-direct {p0, v2, v3}, Lcom/android/server/accessibility/TouchExplorer;->getNotInjectedActivePointerCount(Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;)I

    move-result v0

    if-lez v0, :cond_8

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendDownForAllActiveNotInjectedPointers(Landroid/view/MotionEvent;I)V

    goto :goto_8

    :pswitch_26
    const/high16 v2, 0x20

    invoke-direct {p0, v2}, Lcom/android/server/accessibility/TouchExplorer;->sendAccessibilityEvent(I)V

    :pswitch_2b
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->onTouchInteractionEnd()V

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerId:I

    iput v3, p0, Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerDeltaX:I

    iput v3, p0, Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerDeltaY:I

    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;

    invoke-virtual {v2}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getActivePointerCount()I

    move-result v2

    if-nez v2, :cond_8

    const/4 v2, 0x1

    iput v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    goto :goto_8

    :pswitch_43
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/TouchExplorer;->clear(Landroid/view/MotionEvent;I)V

    goto :goto_8

    nop

    :pswitch_data_48
    .packed-switch 0x0
        :pswitch_c
        :pswitch_26
        :pswitch_14
        :pswitch_43
        :pswitch_8
        :pswitch_8
        :pswitch_2b
    .end packed-switch
.end method

.method private handleMotionEventStateDragging(Landroid/view/MotionEvent;I)V
    .registers 26

    const/16 v19, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/accessibility/TouchExplorer;->mDraggingPointerId:I

    move/from16 v20, v0

    shl-int v14, v19, v20

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v19

    packed-switch v19, :pswitch_data_210

    :cond_11
    :goto_11
    :pswitch_11
    return-void

    :pswitch_12
    new-instance v19, Ljava/lang/IllegalStateException;

    const-string v20, "Dragging state can be reached only if two pointers are already down"

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v19

    :pswitch_1a
    const/16 v19, 0x4

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/accessibility/TouchExplorer;->mDraggingPointerId:I

    move/from16 v19, v0

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_3d

    const/16 v19, 0x1

    :try_start_32
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v14, v3}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V
    :try_end_3d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_32 .. :try_end_3d} :catch_41

    :cond_3d
    :goto_3d
    invoke-direct/range {p0 .. p2}, Lcom/android/server/accessibility/TouchExplorer;->sendDownForAllActiveNotInjectedPointers(Landroid/view/MotionEvent;I)V

    goto :goto_11

    :catch_41
    move-exception v9

    const-string v19, "TouchExplorer"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Error: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3d

    :pswitch_5d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getActivePointerCount()I

    move-result v4

    packed-switch v4, :pswitch_data_222

    const/16 v19, 0x4

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    const/16 v19, 0x1

    :try_start_74
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v14, v3}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V
    :try_end_7f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_74 .. :try_end_7f} :catch_141

    :goto_7f
    invoke-direct/range {p0 .. p2}, Lcom/android/server/accessibility/TouchExplorer;->sendDownForAllActiveNotInjectedPointers(Landroid/view/MotionEvent;I)V

    goto :goto_11

    :pswitch_83
    invoke-direct/range {p0 .. p1}, Lcom/android/server/accessibility/TouchExplorer;->isDraggingGesture(Landroid/view/MotionEvent;)Z

    move-result v19

    if-eqz v19, :cond_134

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/accessibility/TouchExplorer;->mTempPointerIds:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->populateActivePointerIds([I)V

    const/16 v19, 0x0

    aget v19, v15, v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v10

    const/16 v19, 0x1

    aget v19, v15, v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v16

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v12

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v17

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v18

    sub-float v5, v11, v17

    sub-float v6, v12, v18

    float-to-double v0, v5

    move-wide/from16 v19, v0

    float-to-double v0, v6

    move-wide/from16 v21, v0

    invoke-static/range {v19 .. v22}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/accessibility/TouchExplorer;->mScaledMinPointerDistanceToUseMiddleLocation:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v19, v0

    cmpl-double v19, v7, v19

    if-lez v19, :cond_fa

    const/high16 v19, 0x4000

    div-float v19, v5, v19

    const/high16 v20, 0x4000

    div-float v20, v6, v20

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    :cond_fa
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/accessibility/TouchExplorer;->mDraggingPointerId:I

    move/from16 v19, v0

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_11

    const/16 v19, 0x2

    :try_start_10a
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v14, v3}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V
    :try_end_115
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10a .. :try_end_115} :catch_117

    goto/16 :goto_11

    :catch_117
    move-exception v9

    const-string v19, "TouchExplorer"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Error: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    :cond_134
    const/16 v19, 0x4

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    invoke-direct/range {p0 .. p2}, Lcom/android/server/accessibility/TouchExplorer;->sendDownForAllActiveNotInjectedPointers(Landroid/view/MotionEvent;I)V

    goto/16 :goto_11

    :catch_141
    move-exception v9

    const-string v19, "TouchExplorer"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Error: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7f

    :pswitch_15e
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/accessibility/TouchExplorer;->mDraggingPointerId:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ne v13, v0, :cond_11

    const/16 v19, -0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/accessibility/TouchExplorer;->mDraggingPointerId:I

    const/16 v19, 0x1

    :try_start_17e
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v14, v3}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V
    :try_end_189
    .catch Ljava/lang/IllegalArgumentException; {:try_start_17e .. :try_end_189} :catch_18b

    goto/16 :goto_11

    :catch_18b
    move-exception v9

    const-string v19, "TouchExplorer"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Error: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    :pswitch_1a8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/accessibility/AccessibilityManagerService;->onTouchInteractionEnd()V

    const/high16 v19, 0x20

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/accessibility/TouchExplorer;->sendAccessibilityEvent(I)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/accessibility/TouchExplorer;->mDraggingPointerId:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ne v13, v0, :cond_1e5

    const/16 v19, -0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/accessibility/TouchExplorer;->mDraggingPointerId:I

    const/16 v19, 0x1

    :try_start_1da
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v14, v3}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V
    :try_end_1e5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1da .. :try_end_1e5} :catch_1ef

    :cond_1e5
    :goto_1e5
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    goto/16 :goto_11

    :catch_1ef
    move-exception v9

    const-string v19, "TouchExplorer"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Error: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e5

    :pswitch_20b
    invoke-direct/range {p0 .. p2}, Lcom/android/server/accessibility/TouchExplorer;->clear(Landroid/view/MotionEvent;I)V

    goto/16 :goto_11

    :pswitch_data_210
    .packed-switch 0x0
        :pswitch_12
        :pswitch_1a8
        :pswitch_5d
        :pswitch_20b
        :pswitch_11
        :pswitch_1a
        :pswitch_15e
    .end packed-switch

    :pswitch_data_222
    .packed-switch 0x1
        :pswitch_11
        :pswitch_83
    .end packed-switch
.end method

.method private handleMotionEventStateTouchExploring(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getActivePointerCount()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/TouchExplorer;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/TouchExplorer;->mDoubleTapDetector:Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->onMotionEvent(Landroid/view/MotionEvent;I)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v18

    packed-switch v18, :pswitch_data_492

    :cond_2d
    :goto_2d
    :pswitch_2d
    return-void

    :pswitch_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/accessibility/AccessibilityManagerService;->onTouchInteractionStart()V

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/server/accessibility/TouchExplorer;->handleMotionEventGestureDetecting(Landroid/view/MotionEvent;I)V

    :pswitch_40
    packed-switch v4, :pswitch_data_4a4

    goto :goto_2d

    :pswitch_44
    new-instance v18, Ljava/lang/IllegalStateException;

    const-string v19, "The must always be one active pointer intouch exploring state!"

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v18

    :pswitch_4c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;

    move-object/from16 v18, v0

    #calls: Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->isPending()Z
    invoke-static/range {v18 .. v18}, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->access$400(Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;)Z

    move-result v18

    if-eqz v18, :cond_6a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->remove()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->remove()V

    :cond_6a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    move-result v18

    if-eqz v18, :cond_7f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->forceSendAndRemove()V

    :cond_7f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    move-result v18

    if-eqz v18, :cond_94

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->forceSendAndRemove()V

    :cond_94
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_a9

    const/high16 v18, 0x10

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/accessibility/TouchExplorer;->sendAccessibilityEvent(I)V

    :cond_a9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/TouchExplorer;->mPerformLongPressDelayed:Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->remove()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/TouchExplorer;->mDoubleTapDetector:Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->firstTapDetected()Z

    move-result v18

    if-eqz v18, :cond_cf

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/TouchExplorer;->mPerformLongPressDelayed:Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->post(Landroid/view/MotionEvent;I)V

    goto/16 :goto_2d

    :cond_cf
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/accessibility/TouchExplorer;->mTouchExplorationInProgress:Z

    move/from16 v18, v0

    if-nez v18, :cond_2d

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getPrimaryActivePointerId()I

    move-result v13

    const/16 v18, 0x1

    shl-int v14, v18, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move/from16 v2, v19

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v14, v3}, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->post(Landroid/view/MotionEvent;ZII)V

    goto/16 :goto_2d

    :pswitch_f4
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getPrimaryActivePointerId()I

    move-result v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v15

    const/16 v18, 0x1

    shl-int v14, v18, v13

    packed-switch v4, :pswitch_data_4ac

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;

    move-object/from16 v18, v0

    #calls: Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->isPending()Z
    invoke-static/range {v18 .. v18}, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->access$400(Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;)Z

    move-result v18

    if-eqz v18, :cond_401

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->remove()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->remove()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/TouchExplorer;->mPerformLongPressDelayed:Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->remove()V

    :goto_12c
    const/16 v18, 0x4

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/server/accessibility/TouchExplorer;->sendDownForAllActiveNotInjectedPointers(Landroid/view/MotionEvent;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/TouchExplorer;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/VelocityTracker;->clear()V

    goto/16 :goto_2d

    :pswitch_148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;

    move-object/from16 v18, v0

    #calls: Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->isPending()Z
    invoke-static/range {v18 .. v18}, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->access$400(Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;)Z

    move-result v18

    if-eqz v18, :cond_29e

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/server/accessibility/TouchExplorer;->handleMotionEventGestureDetecting(Landroid/view/MotionEvent;I)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownX(I)F

    move-result v18

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/view/MotionEvent;->getX(I)F

    move-result v19

    sub-float v5, v18, v19

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownY(I)F

    move-result v18

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/view/MotionEvent;->getY(I)F

    move-result v19

    sub-float v6, v18, v19

    float-to-double v0, v5

    move-wide/from16 v18, v0

    float-to-double v0, v6

    move-wide/from16 v20, v0

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/accessibility/TouchExplorer;->mDoubleTapSlop:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    cmpl-double v18, v11, v18

    if-lez v18, :cond_2d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/TouchExplorer;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    const/16 v19, 0x3e8

    invoke-virtual/range {v18 .. v19}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/TouchExplorer;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/TouchExplorer;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v9

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v18

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v19

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->max(FF)F

    move-result v10

    float-to-double v0, v8

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x4000

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v18

    float-to-double v0, v9

    move-wide/from16 v20, v0

    const-wide/high16 v22, 0x4000

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v20

    add-double v18, v18, v20

    const/high16 v20, 0x4000

    mul-float v20, v20, v8

    mul-float v20, v20, v9

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    add-double v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/accessibility/TouchExplorer;->mScaledGestureDetectionVelocity:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    cmpl-float v18, v10, v18

    if-gtz v18, :cond_217

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/accessibility/TouchExplorer;->mScaledGestureDetectionVelocity:I

    move/from16 v18, v0

    move/from16 v0, v18

    add-int/lit16 v0, v0, -0x96

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    cmpl-float v18, v17, v18

    if-lez v18, :cond_257

    :cond_217
    const/16 v18, 0x5

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/TouchExplorer;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/VelocityTracker;->clear()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->remove()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->remove()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/TouchExplorer;->mPerformLongPressDelayed:Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->remove()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/TouchExplorer;->mExitGestureDetectionModeDelayed:Lcom/android/server/accessibility/TouchExplorer$ExitGestureDetectionModeDelayed;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/accessibility/TouchExplorer$ExitGestureDetectionModeDelayed;->post()V

    const/high16 v18, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/accessibility/TouchExplorer;->sendAccessibilityEvent(I)V

    goto/16 :goto_2d

    :cond_257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->forceSendAndRemove()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->remove()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/TouchExplorer;->mPerformLongPressDelayed:Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->remove()V

    const/16 v18, 0x7

    :try_start_274
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    move/from16 v3, p3

    invoke-direct {v0, v1, v2, v14, v3}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V
    :try_end_27f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_274 .. :try_end_27f} :catch_281

    goto/16 :goto_2d

    :catch_281
    move-exception v7

    const-string v18, "TouchExplorer"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Error: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2d

    :cond_29e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/TouchExplorer;->mPerformLongPressDelayed:Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->isPending()Z

    move-result v18

    if-eqz v18, :cond_2e8

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownX(I)F

    move-result v18

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/view/MotionEvent;->getX(I)F

    move-result v19

    sub-float v5, v18, v19

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownY(I)F

    move-result v18

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/view/MotionEvent;->getY(I)F

    move-result v19

    sub-float v6, v18, v19

    float-to-double v0, v5

    move-wide/from16 v18, v0

    float-to-double v0, v6

    move-wide/from16 v20, v0

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/accessibility/TouchExplorer;->mTouchSlop:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    cmpl-double v18, v11, v18

    if-lez v18, :cond_2e8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/TouchExplorer;->mPerformLongPressDelayed:Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->remove()V

    :cond_2e8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/TouchExplorer;->mDoubleTapDetector:Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->firstTapDetected()Z

    move-result v18

    if-nez v18, :cond_2d

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/accessibility/TouchExplorer;->sendTouchExplorationGestureStartAndHoverEnterIfNeeded(I)V

    const/16 v18, 0x7

    :try_start_2fd
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    move/from16 v3, p3

    invoke-direct {v0, v1, v2, v14, v3}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V
    :try_end_308
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2fd .. :try_end_308} :catch_30a

    goto/16 :goto_2d

    :catch_30a
    move-exception v7

    const-string v18, "TouchExplorer"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Error: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2d

    :pswitch_327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;

    move-object/from16 v18, v0

    #calls: Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->isPending()Z
    invoke-static/range {v18 .. v18}, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->access$400(Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;)Z

    move-result v18

    if-eqz v18, :cond_38c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->remove()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->remove()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/TouchExplorer;->mPerformLongPressDelayed:Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->remove()V

    :goto_34e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/TouchExplorer;->mStrokeBuffer:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->clear()V

    invoke-direct/range {p0 .. p1}, Lcom/android/server/accessibility/TouchExplorer;->isDraggingGesture(Landroid/view/MotionEvent;)Z

    move-result v18

    if-eqz v18, :cond_3ef

    const/16 v18, 0x2

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/server/accessibility/TouchExplorer;->mDraggingPointerId:I

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getLastReceivedDownEdgeFlags()I

    move-result v18

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setEdgeFlags(I)V

    const/16 v18, 0x0

    :try_start_376
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    move/from16 v3, p3

    invoke-direct {v0, v1, v2, v14, v3}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V
    :try_end_381
    .catch Ljava/lang/IllegalArgumentException; {:try_start_376 .. :try_end_381} :catch_3d3

    :goto_381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/TouchExplorer;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/VelocityTracker;->clear()V

    goto/16 :goto_2d

    :cond_38c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/TouchExplorer;->mPerformLongPressDelayed:Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->remove()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownX(I)F

    move-result v18

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/view/MotionEvent;->getX(I)F

    move-result v19

    sub-float v5, v18, v19

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownY(I)F

    move-result v18

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/view/MotionEvent;->getY(I)F

    move-result v19

    sub-float v6, v18, v19

    float-to-double v0, v5

    move-wide/from16 v18, v0

    float-to-double v0, v6

    move-wide/from16 v20, v0

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/accessibility/TouchExplorer;->mDoubleTapSlop:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    cmpg-double v18, v11, v18

    if-ltz v18, :cond_2d

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/accessibility/TouchExplorer;->sendHoverExitAndTouchExplorationGestureEndIfNeeded(I)V

    goto/16 :goto_34e

    :catch_3d3
    move-exception v7

    const-string v18, "TouchExplorer"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Error: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_381

    :cond_3ef
    const/16 v18, 0x4

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/server/accessibility/TouchExplorer;->sendDownForAllActiveNotInjectedPointers(Landroid/view/MotionEvent;I)V

    goto :goto_381

    :cond_401
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/TouchExplorer;->mPerformLongPressDelayed:Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->remove()V

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/accessibility/TouchExplorer;->sendHoverExitAndTouchExplorationGestureEndIfNeeded(I)V

    goto/16 :goto_12c

    :pswitch_413
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/accessibility/AccessibilityManagerService;->onTouchInteractionEnd()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/TouchExplorer;->mStrokeBuffer:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->clear()V

    :pswitch_425
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getLastReceivedUpPointerId()I

    move-result v13

    const/16 v18, 0x1

    shl-int v14, v18, v13

    packed-switch v4, :pswitch_data_4b6

    :cond_430
    :goto_430
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/TouchExplorer;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/VelocityTracker;->clear()V

    goto/16 :goto_2d

    :pswitch_43b
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->wasLastReceivedUpPointerActive()Z

    move-result v18

    if-eqz v18, :cond_430

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/TouchExplorer;->mPerformLongPressDelayed:Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->remove()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverEnterDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;

    move-object/from16 v18, v0

    #calls: Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->isPending()Z
    invoke-static/range {v18 .. v18}, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->access$400(Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;)Z

    move-result v18

    if-eqz v18, :cond_47f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/TouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move/from16 v2, v19

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v14, v3}, Lcom/android/server/accessibility/TouchExplorer$SendHoverDelayed;->post(Landroid/view/MotionEvent;ZII)V

    :goto_469
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    move-result v18

    if-nez v18, :cond_430

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->post()V

    goto :goto_430

    :cond_47f
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/accessibility/TouchExplorer;->sendHoverExitAndTouchExplorationGestureEndIfNeeded(I)V

    goto :goto_469

    :pswitch_487
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/server/accessibility/TouchExplorer;->clear(Landroid/view/MotionEvent;I)V

    goto/16 :goto_2d

    :pswitch_data_492
    .packed-switch 0x0
        :pswitch_2e
        :pswitch_413
        :pswitch_f4
        :pswitch_487
        :pswitch_2d
        :pswitch_40
        :pswitch_425
    .end packed-switch

    :pswitch_data_4a4
    .packed-switch 0x0
        :pswitch_44
        :pswitch_4c
    .end packed-switch

    :pswitch_data_4ac
    .packed-switch 0x0
        :pswitch_2d
        :pswitch_148
        :pswitch_327
    .end packed-switch

    :pswitch_data_4b6
    .packed-switch 0x0
        :pswitch_43b
    .end packed-switch
.end method

.method private isDraggingGesture(Landroid/view/MotionEvent;)Z
    .registers 15

    iget-object v11, p0, Lcom/android/server/accessibility/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;

    iget-object v10, p0, Lcom/android/server/accessibility/TouchExplorer;->mTempPointerIds:[I

    invoke-virtual {v11, v10}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->populateActivePointerIds([I)V

    const/4 v8, 0x0

    aget v8, v10, v8

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v9

    const/4 v8, 0x1

    aget v8, v10, v8

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v12

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    invoke-virtual {p1, v12}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    invoke-virtual {p1, v12}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    invoke-virtual {v11, v9}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownX(I)F

    move-result v0

    invoke-virtual {v11, v9}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownY(I)F

    move-result v1

    invoke-virtual {v11, v12}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownX(I)F

    move-result v2

    invoke-virtual {v11, v12}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownY(I)F

    move-result v3

    const v8, 0x3f067b80

    invoke-static/range {v0 .. v8}, Lcom/android/server/accessibility/GestureUtils;->isDraggingGesture(FFFFFFFFF)Z

    move-result v8

    return v8
.end method

.method private sendAccessibilityEvent(I)V
    .registers 5

    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    sparse-switch p1, :sswitch_data_20

    :cond_16
    :goto_16
    return-void

    :sswitch_17
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mTouchExplorationInProgress:Z

    goto :goto_16

    :sswitch_1b
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mTouchExplorationInProgress:Z

    goto :goto_16

    nop

    :sswitch_data_20
    .sparse-switch
        0x200 -> :sswitch_17
        0x400 -> :sswitch_1b
    .end sparse-switch
.end method

.method private sendActionDownAndUp(Landroid/view/MotionEvent;I)V
    .registers 9

    const/4 v4, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    shl-int v2, v4, v1

    const/4 v3, 0x0

    :try_start_c
    invoke-direct {p0, p1, v3, v2, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    const/4 v3, 0x1

    invoke-direct {p0, p1, v3, v2, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V
    :try_end_13
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_13} :catch_14

    :goto_13
    return-void

    :catch_14
    move-exception v0

    const-string v3, "TouchExplorer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13
.end method

.method private sendDownForAllActiveNotInjectedPointers(Landroid/view/MotionEvent;I)V
    .registers 15

    const/4 v11, 0x1

    iget-object v7, p0, Lcom/android/server/accessibility/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;

    iget-object v3, p0, Lcom/android/server/accessibility/TouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v4, :cond_1d

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->isInjectedPointerDown(I)Z

    move-result v8

    if-eqz v8, :cond_1a

    shl-int v8, v11, v5

    or-int/2addr v6, v8

    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_1d
    const/4 v2, 0x0

    :goto_1e
    if-ge v2, v4, :cond_59

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    invoke-virtual {v7, v5}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->isActivePointer(I)Z

    move-result v8

    if-nez v8, :cond_2d

    :cond_2a
    :goto_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    :cond_2d
    invoke-virtual {v3, v5}, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->isInjectedPointerDown(I)Z

    move-result v8

    if-nez v8, :cond_2a

    shl-int v8, v11, v5

    or-int/2addr v6, v8

    const/4 v8, 0x0

    invoke-direct {p0, v8, v2}, Lcom/android/server/accessibility/TouchExplorer;->computeInjectionAction(II)I

    move-result v0

    :try_start_3b
    invoke-direct {p0, p1, v0, v6, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V
    :try_end_3e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3b .. :try_end_3e} :catch_3f

    goto :goto_2a

    :catch_3f
    move-exception v1

    const-string v8, "TouchExplorer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a

    :cond_59
    return-void
.end method

.method private sendHoverExitAndTouchExplorationGestureEndIfNeeded(I)V
    .registers 8

    const/16 v4, 0xa

    iget-object v3, p0, Lcom/android/server/accessibility/TouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    invoke-virtual {v3}, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->getLastInjectedHoverEvent()Landroid/view/MotionEvent;

    move-result-object v1

    if-eqz v1, :cond_26

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    if-eq v3, v4, :cond_26

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getPointerIdBits()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v3}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    move-result v3

    if-nez v3, :cond_21

    iget-object v3, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v3}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->post()V

    :cond_21
    const/16 v3, 0xa

    :try_start_23
    invoke-direct {p0, v1, v3, v2, p1}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V
    :try_end_26
    .catch Ljava/lang/IllegalArgumentException; {:try_start_23 .. :try_end_26} :catch_27

    :cond_26
    :goto_26
    return-void

    :catch_27
    move-exception v0

    const-string v3, "TouchExplorer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26
.end method

.method private sendMotionEvent(Landroid/view/MotionEvent;III)V
    .registers 28

    invoke-virtual/range {p1 .. p2}, Landroid/view/MotionEvent;->setAction(I)V

    const/16 v18, 0x0

    const/4 v2, -0x1

    move/from16 v0, p3

    if-ne v0, v2, :cond_6e

    move-object/from16 v18, p1

    :goto_c
    if-nez p2, :cond_77

    invoke-virtual/range {v18 .. v18}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/view/MotionEvent;->setDownTime(J)V

    :goto_17
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerId:I

    if-ltz v2, :cond_c4

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerId:I

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v22

    invoke-virtual/range {v18 .. v18}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v20

    invoke-static/range {v20 .. v20}, Landroid/view/MotionEvent$PointerProperties;->createArray(I)[Landroid/view/MotionEvent$PointerProperties;

    move-result-object v8

    invoke-static/range {v20 .. v20}, Landroid/view/MotionEvent$PointerCoords;->createArray(I)[Landroid/view/MotionEvent$PointerCoords;

    move-result-object v9

    const/16 v19, 0x0

    :goto_35
    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_85

    aget-object v2, v8, v19

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    aget-object v2, v9, v19

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    move/from16 v0, v19

    move/from16 v1, v22

    if-ne v0, v1, :cond_6b

    aget-object v2, v9, v19

    iget v3, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerDeltaX:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    aget-object v2, v9, v19

    iget v3, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/accessibility/TouchExplorer;->mLongPressingPointerDeltaY:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    :cond_6b
    add-int/lit8 v19, v19, 0x1

    goto :goto_35

    :cond_6e
    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->split(I)Landroid/view/MotionEvent;

    move-result-object v18

    goto :goto_c

    :cond_77
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/accessibility/TouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    invoke-virtual {v2}, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->getLastInjectedDownEventTime()J

    move-result-wide v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/view/MotionEvent;->setDownTime(J)V

    goto :goto_17

    :cond_85
    invoke-virtual/range {v18 .. v18}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v2

    invoke-virtual/range {v18 .. v18}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual/range {v18 .. v18}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    invoke-virtual/range {v18 .. v18}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v7

    invoke-virtual/range {v18 .. v18}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v10

    invoke-virtual/range {v18 .. v18}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v11

    const/high16 v12, 0x3f80

    const/high16 v13, 0x3f80

    invoke-virtual/range {v18 .. v18}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v14

    invoke-virtual/range {v18 .. v18}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v15

    invoke-virtual/range {v18 .. v18}, Landroid/view/MotionEvent;->getSource()I

    move-result v16

    invoke-virtual/range {v18 .. v18}, Landroid/view/MotionEvent;->getFlags()I

    move-result v17

    invoke-static/range {v2 .. v17}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c2

    invoke-virtual/range {v18 .. v18}, Landroid/view/MotionEvent;->recycle()V

    :cond_c2
    move-object/from16 v18, v21

    :cond_c4
    const/high16 v2, 0x4000

    or-int p4, p4, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/accessibility/TouchExplorer;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v2, :cond_da

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/accessibility/TouchExplorer;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    const/4 v3, 0x0

    move-object/from16 v0, v18

    move/from16 v1, p4

    invoke-interface {v2, v0, v3, v1}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    :cond_da
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/accessibility/TouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->onMotionEvent(Landroid/view/MotionEvent;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f0

    invoke-virtual/range {v18 .. v18}, Landroid/view/MotionEvent;->recycle()V

    :cond_f0
    return-void
.end method

.method private sendMotionEventStripInactivePointers(Landroid/view/MotionEvent;I)V
    .registers 14

    iget-object v7, p0, Lcom/android/server/accessibility/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v8

    invoke-virtual {v7}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getActivePointerCount()I

    move-result v9

    if-ne v8, v9, :cond_2f

    :try_start_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    const/4 v9, -0x1

    invoke-direct {p0, p1, v8, v9, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V
    :try_end_14
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_14} :catch_15

    :cond_14
    :goto_14
    return-void

    :catch_15
    move-exception v2

    const-string v8, "TouchExplorer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    :cond_2f
    invoke-virtual {v7}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getActivePointerCount()I

    move-result v8

    if-nez v8, :cond_3b

    invoke-virtual {v7}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->wasLastReceivedUpPointerActive()Z

    move-result v8

    if-eqz v8, :cond_14

    :cond_3b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v8

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    const/4 v8, 0x2

    if-eq v0, v8, :cond_50

    invoke-virtual {v7, v1}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->isActiveOrWasLastActiveUpPointer(I)Z

    move-result v8

    if-eqz v8, :cond_14

    :cond_50
    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    const/4 v6, 0x0

    :goto_56
    if-ge v6, v3, :cond_68

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    invoke-virtual {v7, v4}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->isActiveOrWasLastActiveUpPointer(I)Z

    move-result v8

    if-eqz v8, :cond_65

    const/4 v8, 0x1

    shl-int/2addr v8, v4

    or-int/2addr v5, v8

    :cond_65
    add-int/lit8 v6, v6, 0x1

    goto :goto_56

    :cond_68
    :try_start_68
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    invoke-direct {p0, p1, v8, v5, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V
    :try_end_6f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_68 .. :try_end_6f} :catch_70

    goto :goto_14

    :catch_70
    move-exception v2

    const-string v8, "TouchExplorer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14
.end method

.method private sendTouchExplorationGestureStartAndHoverEnterIfNeeded(I)V
    .registers 8

    iget-object v3, p0, Lcom/android/server/accessibility/TouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    invoke-virtual {v3}, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->getLastInjectedHoverEvent()Landroid/view/MotionEvent;

    move-result-object v1

    if-eqz v1, :cond_1e

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_1e

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getPointerIdBits()I

    move-result v2

    const/16 v3, 0x200

    invoke-direct {p0, v3}, Lcom/android/server/accessibility/TouchExplorer;->sendAccessibilityEvent(I)V

    const/16 v3, 0x9

    :try_start_1b
    invoke-direct {p0, v1, v3, v2, p1}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V
    :try_end_1e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1b .. :try_end_1e} :catch_1f

    :cond_1e
    :goto_1e
    return-void

    :catch_1f
    move-exception v0

    const-string v3, "TouchExplorer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e
.end method

.method private sendUpForInjectedDownPointers(Landroid/view/MotionEvent;I)V
    .registers 14

    const/4 v10, 0x1

    iget-object v3, p0, Lcom/android/server/accessibility/TouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v4, :cond_3d

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->isInjectedPointerDown(I)Z

    move-result v7

    if-nez v7, :cond_18

    :goto_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_18
    shl-int v7, v10, v5

    or-int/2addr v6, v7

    invoke-direct {p0, v10, v2}, Lcom/android/server/accessibility/TouchExplorer;->computeInjectionAction(II)I

    move-result v0

    :try_start_1f
    invoke-direct {p0, p1, v0, v6, p2}, Lcom/android/server/accessibility/TouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V
    :try_end_22
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1f .. :try_end_22} :catch_23

    goto :goto_15

    :catch_23
    move-exception v1

    const-string v7, "TouchExplorer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    :cond_3d
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 4

    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;

    invoke-virtual {v1}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getLastReceivedEvent()Landroid/view/MotionEvent;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;

    invoke-virtual {v1}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getLastReceivedEvent()Landroid/view/MotionEvent;

    move-result-object v1

    const/high16 v2, 0x200

    invoke-direct {p0, v1, v2}, Lcom/android/server/accessibility/TouchExplorer;->clear(Landroid/view/MotionEvent;I)V

    :cond_13
    return-void
.end method

.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 5

    const/16 v2, 0x100

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v1}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    move-result v1

    if-eqz v1, :cond_1a

    if-ne v0, v2, :cond_1a

    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v1}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->remove()V

    const/16 v1, 0x400

    invoke-direct {p0, v1}, Lcom/android/server/accessibility/TouchExplorer;->sendAccessibilityEvent(I)V

    :cond_1a
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v1}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    move-result v1

    if-eqz v1, :cond_2e

    if-ne v0, v2, :cond_2e

    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v1}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->remove()V

    const/high16 v1, 0x20

    invoke-direct {p0, v1}, Lcom/android/server/accessibility/TouchExplorer;->sendAccessibilityEvent(I)V

    :cond_2e
    sparse-switch v0, :sswitch_data_5e

    :goto_31
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v1, :cond_3a

    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    invoke-interface {v1, p1}, Lcom/android/server/accessibility/EventStreamTransformation;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_3a
    return-void

    :sswitch_3b
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    #getter for: Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->mLastInjectedHoverEventForClick:Landroid/view/MotionEvent;
    invoke-static {v1}, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->access$300(Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;)Landroid/view/MotionEvent;

    move-result-object v1

    if-eqz v1, :cond_52

    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    #getter for: Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->mLastInjectedHoverEventForClick:Landroid/view/MotionEvent;
    invoke-static {v1}, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->access$300(Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    const/4 v2, 0x0

    #setter for: Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->mLastInjectedHoverEventForClick:Landroid/view/MotionEvent;
    invoke-static {v1, v2}, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->access$302(Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    :cond_52
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mLastTouchedWindowId:I

    goto :goto_31

    :sswitch_56
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v1

    iput v1, p0, Lcom/android/server/accessibility/TouchExplorer;->mLastTouchedWindowId:I

    goto :goto_31

    nop

    :sswitch_data_5e
    .sparse-switch
        0x20 -> :sswitch_3b
        0x80 -> :sswitch_56
        0x100 -> :sswitch_56
        0x8000 -> :sswitch_3b
    .end sparse-switch
.end method

.method public onDestroy()V
    .registers 1

    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 7

    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;

    invoke-virtual {v0, p2}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->onMotionEvent(Landroid/view/MotionEvent;)V

    iget v0, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    packed-switch v0, :pswitch_data_36

    :pswitch_a
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/accessibility/TouchExplorer;->mCurrentState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_25
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/TouchExplorer;->handleMotionEventStateTouchExploring(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    :goto_28
    return-void

    :pswitch_29
    invoke-direct {p0, p1, p3}, Lcom/android/server/accessibility/TouchExplorer;->handleMotionEventStateDragging(Landroid/view/MotionEvent;I)V

    goto :goto_28

    :pswitch_2d
    invoke-direct {p0, p1, p3}, Lcom/android/server/accessibility/TouchExplorer;->handleMotionEventStateDelegating(Landroid/view/MotionEvent;I)V

    goto :goto_28

    :pswitch_31
    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/TouchExplorer;->handleMotionEventGestureDetecting(Landroid/view/MotionEvent;I)V

    goto :goto_28

    nop

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_25
        :pswitch_29
        :pswitch_a
        :pswitch_2d
        :pswitch_31
    .end packed-switch
.end method

.method public setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/accessibility/TouchExplorer;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "TouchExplorer"

    return-object v0
.end method
