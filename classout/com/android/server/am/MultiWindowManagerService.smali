.class public Lcom/android/server/am/MultiWindowManagerService;
.super Landroid/sec/multiwindow/impl/IMultiWindowManager$Stub;
.source "MultiWindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/MultiWindowManagerService$MinimizeCallback;,
        Lcom/android/server/am/MultiWindowManagerService$CallbackDeathRecipient;,
        Lcom/android/server/am/MultiWindowManagerService$H;,
        Lcom/android/server/am/MultiWindowManagerService$Movement;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field public static LIMIT_NUM_OF_MULTI_INSTANCE:I = 0x0

.field private static QUADVIEW_DISPLAY_RATIO:F = 0.0f

.field private static QUADVIEW_FULL_DISPLAY_RATIO:F = 0.0f

.field public static START_ACTIVITY_WITH_LAST_PINUP:Z = false

.field private static final TAG:Ljava/lang/String; = "MultiWindowManagerService"

.field private static mSelf:Lcom/android/server/am/MultiWindowManagerService;


# instance fields
.field private A:Landroid/graphics/Rect;

.field private B:Landroid/graphics/Rect;

.field private C:Landroid/graphics/Rect;

.field private D:Landroid/graphics/Rect;

.field private E:Landroid/graphics/Rect;

.field private F:Landroid/graphics/Rect;

.field private SPLIT_ZONE_LEFT:Z

.field private SPLIT_ZONE_RIGHT:Z

.field private mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

.field private mAlarmStateListener:Landroid/content/BroadcastReceiver;

.field private mAppListPosition:I

.field mAvoideLaunchStyleAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBehaviorBasedLaunch:Z

.field mCallbackDeathRecipients:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MultiWindowManagerService$CallbackDeathRecipient;",
            ">;"
        }
    .end annotation
.end field

.field private mCenterBarDirection:I

.field private mCenterBarDockingMargin:I

.field private mCenterBarFlingSize:I

.field private mCenterBarPoint:Landroid/graphics/Point;

.field private mContext:Landroid/content/Context;

.field private mCurrMovements:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MultiWindowManagerService$Movement;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentArrangeState:I

.field private mCurrentLaunchMode:I

.field mFixedRatioAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mHandler:Lcom/android/server/am/MultiWindowManagerService$H;

.field private mIgnoreIntentWindowMode:Z

.field private mIsMultiDisplay:Z

.field private mIsTouchDown:Z

.field private mIvt:[B

.field private mLastArrangeState:I

.field private mLastDisplay:Landroid/graphics/Point;

.field private mLock:Ljava/lang/Object;

.field mMinimizeCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MultiWindowManagerService$MinimizeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mMinimizeIconState:I

.field private mMovements:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MultiWindowManagerService$Movement;",
            ">;"
        }
    .end annotation
.end field

.field private mMovingMargin:I

.field private mMultiDisplayId:I

.field mNotSupportScaleAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOldPositionX:F

.field private mOldPositionY:F

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field mShiftPosition:Ljava/lang/Runnable;

.field private mShiftX:I

.field private mShiftXArrange:I

.field private mShiftY:I

.field mSkipFullScreenAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportAllApps:Z

.field mSupportAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mSupportControlbar:Z

.field private mSupportHalfSplit:Z

.field mSupportMultiInstanceAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mSupportScaleAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mToolkitWindowDefHeight:I

.field mToolkitWindowDefWidth:I

.field mToolkitWindowX:I

.field mToolkitWindowY:I

.field private mVibrator:Landroid/os/SystemVibrator;

.field mWindowDefHeight:I

.field mWindowDefWidth:I

.field mWindowGap:I

.field private mWindowInfoMapByComponent:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private mWindowInfoMapByTaskId:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private mWindowManager:Landroid/view/WindowManager;

.field mWindowMinimizedHeight:I

.field mWindowMinimizedWidth:I

.field mbLoadSupportControlbar:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x1

    const-class v0, Lcom/android/server/am/MultiWindowManagerService;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_1f

    move v0, v1

    :goto_a
    sput-boolean v0, Lcom/android/server/am/MultiWindowManagerService;->$assertionsDisabled:Z

    sput-boolean v1, Lcom/android/server/am/MultiWindowManagerService;->START_ACTIVITY_WITH_LAST_PINUP:Z

    const/4 v0, 0x2

    sput v0, Lcom/android/server/am/MultiWindowManagerService;->LIMIT_NUM_OF_MULTI_INSTANCE:I

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/MultiWindowManagerService;->mSelf:Lcom/android/server/am/MultiWindowManagerService;

    const v0, 0x3ecccccd

    sput v0, Lcom/android/server/am/MultiWindowManagerService;->QUADVIEW_DISPLAY_RATIO:F

    const v0, 0x3f4ccccd

    sput v0, Lcom/android/server/am/MultiWindowManagerService;->QUADVIEW_FULL_DISPLAY_RATIO:F

    return-void

    :cond_1f
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V
    .registers 9

    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/sec/multiwindow/impl/IMultiWindowManager$Stub;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    iput-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iput-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Landroid/view/WindowManager;

    iput-boolean v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mIgnoreIntentWindowMode:Z

    iput-boolean v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mBehaviorBasedLaunch:Z

    iput-boolean v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mSupportAllApps:Z

    iput-boolean v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mSupportHalfSplit:Z

    iput v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentLaunchMode:I

    iput v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentArrangeState:I

    iput v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mLastArrangeState:I

    iput-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mLastDisplay:Landroid/graphics/Point;

    iput-boolean v1, p0, Lcom/android/server/am/MultiWindowManagerService;->SPLIT_ZONE_LEFT:Z

    iput-boolean v3, p0, Lcom/android/server/am/MultiWindowManagerService;->SPLIT_ZONE_RIGHT:Z

    iput-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarPoint:Landroid/graphics/Point;

    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarDirection:I

    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarFlingSize:I

    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarDockingMargin:I

    const/16 v0, 0x26

    new-array v0, v0, [B

    fill-array-data v0, :array_da

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mIvt:[B

    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowGap:I

    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowDefWidth:I

    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowDefHeight:I

    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mToolkitWindowDefWidth:I

    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mToolkitWindowDefHeight:I

    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mToolkitWindowX:I

    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mToolkitWindowY:I

    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowMinimizedWidth:I

    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowMinimizedHeight:I

    iput-boolean v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mbLoadSupportControlbar:Z

    iput-boolean v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mSupportControlbar:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mSupportAppList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mSupportScaleAppList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mSupportMultiInstanceAppList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mAvoideLaunchStyleAppList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mSkipFullScreenAppList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mNotSupportScaleAppList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mFixedRatioAppList:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mIsMultiDisplay:Z

    iput v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mMultiDisplayId:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mCallbackDeathRecipients:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mMinimizeCallbacks:Ljava/util/ArrayList;

    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mShiftX:I

    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mShiftY:I

    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mShiftXArrange:I

    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mMovingMargin:I

    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mMinimizeIconState:I

    iput v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mOldPositionX:F

    iput v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mOldPositionY:F

    iput-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mMovements:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrMovements:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mIsTouchDown:Z

    iput-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    iput-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mAlarmStateListener:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/am/MultiWindowManagerService$H;

    invoke-direct {v0, p0}, Lcom/android/server/am/MultiWindowManagerService$H;-><init>(Lcom/android/server/am/MultiWindowManagerService;)V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mHandler:Lcom/android/server/am/MultiWindowManagerService$H;

    new-instance v0, Lcom/android/server/am/MultiWindowManagerService$3;

    invoke-direct {v0, p0}, Lcom/android/server/am/MultiWindowManagerService$3;-><init>(Lcom/android/server/am/MultiWindowManagerService;)V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mShiftPosition:Ljava/lang/Runnable;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByTaskId:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByComponent:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    sput-object p0, Lcom/android/server/am/MultiWindowManagerService;->mSelf:Lcom/android/server/am/MultiWindowManagerService;

    iput-object p2, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mMovements:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrMovements:Ljava/util/ArrayList;

    return-void

    :array_da
    .array-data 0x1
        0x1t
        0x0t
        0x1t
        0x0t
        0xat
        0x0t
        0x14t
        0x0t
        0x0t
        0x0t
        0x20t
        0x1t
        0x0t
        0x0t
        0x7ft
        0x0t
        0x0t
        0x42t
        0x0t
        0x0t
        0x4dt
        0x0t
        0x61t
        0x0t
        0x67t
        0x0t
        0x53t
        0x0t
        0x77t
        0x0t
        0x65t
        0x0t
        0x65t
        0x0t
        0x70t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/server/am/MultiWindowManagerService;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrMovements:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/am/MultiWindowManagerService;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mMovements:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/am/MultiWindowManagerService;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mIsMultiDisplay:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/am/MultiWindowManagerService;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/ActivityManagerService;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/am/MultiWindowManagerService;)I
    .registers 2

    iget v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mShiftX:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/am/MultiWindowManagerService;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mIsTouchDown:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/am/MultiWindowManagerService;)[B
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mIvt:[B

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/SystemVibrator;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mVibrator:Landroid/os/SystemVibrator;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/am/MultiWindowManagerService;)I
    .registers 2

    iget v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mShiftXArrange:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/server/am/MultiWindowManagerService;I)I
    .registers 2

    iput p1, p0, Lcom/android/server/am/MultiWindowManagerService;->mMinimizeIconState:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/server/am/MultiWindowManagerService;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/am/MultiWindowManagerService;->minimizeAll(Ljava/lang/String;)V

    return-void
.end method

.method private addMinimizeCallback(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .registers 8

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mMinimizeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/MultiWindowManagerService$MinimizeCallback;

    iget-object v2, v0, Lcom/android/server/am/MultiWindowManagerService$MinimizeCallback;->mCallback:Landroid/os/IBinder;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :goto_1a
    return-void

    :cond_1b
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mMinimizeCallbacks:Ljava/util/ArrayList;

    const/4 v3, 0x0

    new-instance v4, Lcom/android/server/am/MultiWindowManagerService$MinimizeCallback;

    invoke-direct {v4, p0, p1, p2}, Lcom/android/server/am/MultiWindowManagerService$MinimizeCallback;-><init>(Lcom/android/server/am/MultiWindowManagerService;Landroid/os/IBinder;Landroid/os/IBinder;)V

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1a
.end method

.method private applyCenterBarDocking(Landroid/graphics/Point;)V
    .registers 8

    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10500fa

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v2, v3

    iget v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarDockingMargin:I

    div-int/lit8 v4, v2, 0x2

    add-int v0, v3, v4

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    invoke-static {v1}, Landroid/sec/multiwindow/impl/MultiWindowManager;->getAppDisplaySize(Landroid/graphics/Point;)V

    iget v3, p1, Landroid/graphics/Point;->x:I

    iget v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarFlingSize:I

    add-int/2addr v4, v0

    if-gt v3, v4, :cond_33

    iget v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarFlingSize:I

    iput v3, p1, Landroid/graphics/Point;->x:I

    :cond_27
    :goto_27
    iget v3, p1, Landroid/graphics/Point;->y:I

    iget v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarFlingSize:I

    add-int/2addr v4, v0

    if-gt v3, v4, :cond_5e

    iget v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarFlingSize:I

    iput v3, p1, Landroid/graphics/Point;->y:I

    :cond_32
    :goto_32
    return-void

    :cond_33
    iget v3, p1, Landroid/graphics/Point;->x:I

    iget v4, v1, Landroid/graphics/Point;->x:I

    iget v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarFlingSize:I

    add-int/2addr v5, v0

    sub-int/2addr v4, v5

    if-lt v3, v4, :cond_45

    iget v3, v1, Landroid/graphics/Point;->x:I

    iget v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarFlingSize:I

    sub-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Point;->x:I

    goto :goto_27

    :cond_45
    iget v3, p1, Landroid/graphics/Point;->x:I

    iget v4, v1, Landroid/graphics/Point;->x:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v4, v0

    if-lt v3, v4, :cond_27

    iget v3, p1, Landroid/graphics/Point;->x:I

    iget v4, v1, Landroid/graphics/Point;->x:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v0

    if-gt v3, v4, :cond_27

    iget v3, v1, Landroid/graphics/Point;->x:I

    div-int/lit8 v3, v3, 0x2

    iput v3, p1, Landroid/graphics/Point;->x:I

    goto :goto_27

    :cond_5e
    iget v3, p1, Landroid/graphics/Point;->y:I

    iget v4, v1, Landroid/graphics/Point;->y:I

    iget v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarFlingSize:I

    add-int/2addr v5, v0

    sub-int/2addr v4, v5

    if-lt v3, v4, :cond_75

    iget v3, v1, Landroid/graphics/Point;->y:I

    iget v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarFlingSize:I

    sub-int/2addr v3, v4

    invoke-static {}, Landroid/sec/multiwindow/impl/MultiWindowManager;->getStatusBarHeight()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Point;->y:I

    goto :goto_32

    :cond_75
    iget v3, p1, Landroid/graphics/Point;->y:I

    iget v4, v1, Landroid/graphics/Point;->y:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v4, v0

    if-lt v3, v4, :cond_32

    iget v3, p1, Landroid/graphics/Point;->y:I

    iget v4, v1, Landroid/graphics/Point;->y:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v0

    if-gt v3, v4, :cond_32

    iget v3, v1, Landroid/graphics/Point;->y:I

    div-int/lit8 v3, v3, 0x2

    invoke-static {}, Landroid/sec/multiwindow/impl/MultiWindowManager;->getStatusBarHeight()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Point;->y:I

    goto :goto_32
.end method

.method private calculateCascadeWindowPosition(Landroid/graphics/Rect;Landroid/os/Bundle;)V
    .registers 8

    if-eqz p2, :cond_51

    const-string v2, "android.intent.extra.WINDOW_LAST_SIZE"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    if-nez v0, :cond_14

    const-string v2, "android.intent.extra.WINDOW_DEFAULT_SIZE"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    :cond_14
    if-eqz v0, :cond_51

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    invoke-static {v1}, Landroid/sec/multiwindow/impl/MultiWindowManager;->getAppDisplaySize(Landroid/graphics/Point;)V

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowGap:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowGap:I

    add-int/2addr v3, v4

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    if-ge v2, v3, :cond_44

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowGap:I

    add-int/2addr v2, v3

    iget v3, v1, Landroid/graphics/Point;->x:I

    if-ge v2, v3, :cond_52

    iget v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowGap:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    :cond_44
    :goto_44
    iget v2, v1, Landroid/graphics/Point;->y:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    if-ge v2, v3, :cond_51

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowGap:I

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    :cond_51
    return-void

    :cond_52
    const/4 v2, 0x0

    iget v3, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_44
.end method

.method private calculateCascadeWindowSize(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Z)Landroid/graphics/Rect;
    .registers 14

    iget v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowDefWidth:I

    iget v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowDefHeight:I

    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v6, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v7, v7, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {p0, v6, v7}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v5

    if-nez v5, :cond_1f

    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_15
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v8, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    const/4 v9, 0x0

    invoke-virtual {p0, v6, v8, v9}, Lcom/android/server/am/MultiWindowManagerService;->getDefaultWindowInfoLocked(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v5

    monitor-exit v7
    :try_end_1f
    .catchall {:try_start_15 .. :try_end_1f} :catchall_66

    :cond_1f
    if-eqz v5, :cond_45

    const-string v6, "android.intent.extra.WINDOW_LAST_SIZE"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    if-eqz v1, :cond_33

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_33

    if-eqz p3, :cond_3b

    :cond_33
    const-string v6, "android.intent.extra.WINDOW_DEFAULT_SIZE"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    :cond_3b
    if-eqz v1, :cond_45

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v0

    :cond_45
    new-instance v2, Landroid/graphics/Rect;

    iget v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowGap:I

    iget v7, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowGap:I

    iget v8, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowGap:I

    add-int/2addr v8, v4

    iget v9, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowGap:I

    add-int/2addr v9, v0

    invoke-direct {v2, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    if-eqz p2, :cond_65

    iget-object v6, p2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v6, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    iget-object v7, p2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v7, v7, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {p0, v6, v7}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/server/am/MultiWindowManagerService;->calculateCascadeWindowPosition(Landroid/graphics/Rect;Landroid/os/Bundle;)V

    :cond_65
    return-object v2

    :catchall_66
    move-exception v6

    :try_start_67
    monitor-exit v7
    :try_end_68
    .catchall {:try_start_67 .. :try_end_68} :catchall_66

    throw v6
.end method

.method private calculateRotatedPosition(ILandroid/os/Bundle;Landroid/graphics/Point;)V
    .registers 21

    const-string v13, "android.intent.extra.WINDOW_LAST_SIZE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    if-nez v4, :cond_16

    const-string v13, "android.intent.extra.WINDOW_DEFAULT_SIZE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    :cond_16
    move/from16 v0, p1

    and-int/lit16 v13, v0, 0x800

    if-eqz v13, :cond_74

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v10

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v3

    iget v13, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v13, v10

    iput v13, v4, Landroid/graphics/Rect;->bottom:I

    iget v13, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v13, v3

    iput v13, v4, Landroid/graphics/Rect;->right:I

    const/high16 v13, 0x20

    and-int v13, v13, p1

    if-eqz v13, :cond_35

    :cond_34
    :goto_34
    return-void

    :cond_35
    iget v13, v4, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p3

    iget v14, v0, Landroid/graphics/Point;->y:I

    if-le v13, v14, :cond_5c

    const/4 v13, 0x0

    move-object/from16 v0, p3

    iget v14, v0, Landroid/graphics/Point;->y:I

    iget v15, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v14, v15

    invoke-virtual {v4, v13, v14}, Landroid/graphics/Rect;->offset(II)V

    :cond_48
    :goto_48
    iget v13, v4, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p3

    iget v14, v0, Landroid/graphics/Point;->x:I

    if-le v13, v14, :cond_68

    move-object/from16 v0, p3

    iget v13, v0, Landroid/graphics/Point;->x:I

    iget v14, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v13, v14

    const/4 v14, 0x0

    invoke-virtual {v4, v13, v14}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_34

    :cond_5c
    iget v13, v4, Landroid/graphics/Rect;->top:I

    if-gez v13, :cond_48

    const/4 v13, 0x0

    iget v14, v4, Landroid/graphics/Rect;->top:I

    neg-int v14, v14

    invoke-virtual {v4, v13, v14}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_48

    :cond_68
    iget v13, v4, Landroid/graphics/Rect;->left:I

    if-gez v13, :cond_34

    iget v13, v4, Landroid/graphics/Rect;->left:I

    neg-int v13, v13

    const/4 v14, 0x0

    invoke-virtual {v4, v13, v14}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_34

    :cond_74
    const/high16 v13, 0x20

    and-int v13, v13, p1

    if-nez v13, :cond_34

    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v13

    int-to-double v13, v13

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/MultiWindowManagerService;->mLastDisplay:Landroid/graphics/Point;

    iget v15, v15, Landroid/graphics/Point;->x:I

    int-to-double v15, v15

    div-double v6, v13, v15

    iget v13, v4, Landroid/graphics/Rect;->top:I

    int-to-double v13, v13

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/MultiWindowManagerService;->mLastDisplay:Landroid/graphics/Point;

    iget v15, v15, Landroid/graphics/Point;->y:I

    int-to-double v15, v15

    div-double v8, v13, v15

    move-object/from16 v0, p3

    iget v13, v0, Landroid/graphics/Point;->x:I

    int-to-double v13, v13

    mul-double/2addr v13, v6

    double-to-int v1, v13

    move-object/from16 v0, p3

    iget v13, v0, Landroid/graphics/Point;->y:I

    int-to-double v13, v13

    mul-double/2addr v13, v8

    double-to-int v2, v13

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    sub-int v13, v1, v13

    iput v13, v5, Landroid/graphics/Point;->x:I

    iput v2, v5, Landroid/graphics/Point;->y:I

    iget v13, v5, Landroid/graphics/Point;->x:I

    iget v14, v4, Landroid/graphics/Rect;->left:I

    sub-int v11, v13, v14

    iget v13, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v13, v11

    iput v13, v4, Landroid/graphics/Rect;->left:I

    iget v13, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v13, v11

    iput v13, v4, Landroid/graphics/Rect;->right:I

    iget v13, v5, Landroid/graphics/Point;->y:I

    iget v14, v4, Landroid/graphics/Rect;->top:I

    sub-int v12, v13, v14

    iget v13, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v13, v12

    iput v13, v4, Landroid/graphics/Rect;->top:I

    iget v13, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v13, v12

    iput v13, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v13

    move-object/from16 v0, p3

    iget v14, v0, Landroid/graphics/Point;->y:I

    if-le v13, v14, :cond_34

    iget v13, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v14

    move-object/from16 v0, p3

    iget v15, v0, Landroid/graphics/Point;->y:I

    sub-int/2addr v14, v15

    sub-int/2addr v13, v14

    iput v13, v4, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_34
.end method

.method private calculateToolkitWindowSize(I)Landroid/graphics/Rect;
    .registers 8

    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mToolkitWindowX:I

    iget v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mToolkitWindowY:I

    iget v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mToolkitWindowX:I

    iget v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mToolkitWindowDefWidth:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mToolkitWindowY:I

    iget v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mToolkitWindowDefHeight:I

    add-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method private getEmptySplitZone(Ljava/util/ArrayList;)I
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;)I"
        }
    .end annotation

    const/16 v7, 0x40

    const/4 v0, 0x0

    const/4 v3, 0x0

    if-eqz p1, :cond_1c

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    iget v4, v2, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit8 v4, v4, 0xf

    or-int/2addr v3, v4

    goto :goto_a

    :cond_1c
    if-eqz v3, :cond_3d

    xor-int/lit8 v4, v3, -0x1

    and-int/lit8 v0, v4, 0xf

    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    and-int/lit8 v4, v0, 0x3

    if-eqz v4, :cond_3e

    and-int/lit8 v0, v0, -0xd

    and-int/lit8 v4, v0, 0x3

    const/4 v6, 0x3

    if-ne v4, v6, :cond_3c

    :try_start_30
    iget v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentLaunchMode:I

    if-eq v4, v7, :cond_3a

    iget v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentLaunchMode:I

    const/16 v6, 0x20

    if-ne v4, v6, :cond_3c

    :cond_3a
    and-int/lit8 v0, v0, -0x3

    :cond_3c
    :goto_3c
    monitor-exit v5

    :cond_3d
    return v0

    :cond_3e
    and-int/lit8 v4, v0, 0xc

    const/16 v6, 0xc

    if-ne v4, v6, :cond_3c

    iget v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentLaunchMode:I

    if-eq v4, v7, :cond_4e

    iget v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentLaunchMode:I

    const/16 v6, 0x10

    if-ne v4, v6, :cond_3c

    :cond_4e
    and-int/lit8 v0, v0, -0x9

    goto :goto_3c

    :catchall_51
    move-exception v4

    monitor-exit v5
    :try_end_53
    .catchall {:try_start_30 .. :try_end_53} :catchall_51

    throw v4
.end method

.method public static getSelf()Lcom/android/server/am/MultiWindowManagerService;
    .registers 1

    sget-object v0, Lcom/android/server/am/MultiWindowManagerService;->mSelf:Lcom/android/server/am/MultiWindowManagerService;

    return-object v0
.end method

.method private handleTouchDown(Landroid/view/MotionEvent;)V
    .registers 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mOldPositionX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mOldPositionY:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mIsTouchDown:Z

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mVibrator:Landroid/os/SystemVibrator;

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mIvt:[B

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mVibrator:Landroid/os/SystemVibrator;

    invoke-virtual {v2}, Landroid/os/SystemVibrator;->getMaxMagnitude()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/SystemVibrator;->vibrateImmVibe([BI)V

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mHandler:Lcom/android/server/am/MultiWindowManagerService$H;

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mShiftPosition:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/am/MultiWindowManagerService$H;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private handleTouchMove(Landroid/view/MotionEvent;)V
    .registers 8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iget v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mOldPositionX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v2, v2

    invoke-static {v2}, Landroid/util/MathUtils;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mMovingMargin:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_31

    iget v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mOldPositionY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v2, v2

    invoke-static {v2}, Landroid/util/MathUtils;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mMovingMargin:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_31

    :goto_30
    return-void

    :cond_31
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mMovements:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/server/am/MultiWindowManagerService$Movement;

    iget v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowMinimizedHeight:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float v4, v0, v4

    iget v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowMinimizedHeight:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float v5, v1, v5

    invoke-direct {v3, p0, v4, v5}, Lcom/android/server/am/MultiWindowManagerService$Movement;-><init>(Lcom/android/server/am/MultiWindowManagerService;FF)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_30
.end method

.method private handleTouchUp(Landroid/view/MotionEvent;)V
    .registers 6

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mIsTouchDown:Z

    iget v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mMinimizeIconState:I

    if-nez v0, :cond_4a

    iget v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mOldPositionX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v0, v0

    invoke-static {v0}, Landroid/util/MathUtils;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mMovingMargin:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4a

    iget v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mOldPositionY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v0, v0

    invoke-static {v0}, Landroid/util/MathUtils;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mMovingMargin:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4a

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mHandler:Lcom/android/server/am/MultiWindowManagerService$H;

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mHandler:Lcom/android/server/am/MultiWindowManagerService$H;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/am/MultiWindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/MultiWindowManagerService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_3d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mOldPositionX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mOldPositionY:F

    return-void

    :cond_4a
    iput v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mMinimizeIconState:I

    goto :goto_3d
.end method

.method private initMinimizeInfo(Landroid/os/IBinder;)V
    .registers 7

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrMovements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mMovements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mMinimizeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_12
    if-ge v0, v1, :cond_21

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrMovements:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/server/am/MultiWindowManagerService$Movement;

    invoke-direct {v3, p0, v4, v4}, Lcom/android/server/am/MultiWindowManagerService$Movement;-><init>(Lcom/android/server/am/MultiWindowManagerService;FF)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_21
    return-void
.end method

.method private minimizeAll(Ljava/lang/String;)V
    .registers 9

    const/4 v6, 0x1

    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mMainStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v3, v6, v6}, Lcom/android/server/am/ActivityStack;->getFrontResumedActivities(ZZ)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->isHomeActivity:Z

    if-nez v3, :cond_d

    if-eqz p1, :cond_27

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    :cond_27
    iget v3, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v3}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isCascadeWindow(I)Z

    move-result v3

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mMainStack:Lcom/android/server/am/ActivityStack;

    iget v4, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const/4 v5, 0x2

    invoke-virtual {v3, v0, v4, v5, v6}, Lcom/android/server/am/ActivityStack;->notifyWindowStatusChangedLocked(Lcom/android/server/am/ActivityRecord;IIZ)V

    goto :goto_d

    :cond_3a
    return-void
.end method

.method private removeMinimizeCallback(Landroid/os/IBinder;)V
    .registers 6

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mMinimizeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_7
    if-ge v0, v1, :cond_27

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mMinimizeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/MultiWindowManagerService$MinimizeCallback;

    iget-object v2, v2, Lcom/android/server/am/MultiWindowManagerService$MinimizeCallback;->mCallback:Landroid/os/IBinder;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mMinimizeCallbacks:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mMinimizeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_27
    return-void
.end method

.method private updateWindowRects()V
    .registers 15

    const/4 v9, 0x0

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    invoke-static {v0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->getAppDisplaySize(Landroid/graphics/Point;)V

    invoke-static {}, Landroid/sec/multiwindow/impl/MultiWindowManager;->getStatusBarHeight()I

    move-result v7

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v1, v0, Landroid/graphics/Point;->y:I

    div-int/lit8 v10, v1, 0x2

    add-int v4, v10, v7

    div-int/lit8 v5, v2, 0x2

    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x10500fa

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    const/high16 v11, 0x4000

    div-float/2addr v10, v11

    float-to-int v8, v10

    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x1050112

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v3, v10

    if-le v2, v1, :cond_a0

    const/4 v6, 0x1

    :goto_39
    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v10

    :try_start_3c
    iget-object v11, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarPoint:Landroid/graphics/Point;

    if-eqz v11, :cond_48

    iget-object v11, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarPoint:Landroid/graphics/Point;

    iget v5, v11, Landroid/graphics/Point;->x:I

    iget-object v11, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarPoint:Landroid/graphics/Point;

    iget v4, v11, Landroid/graphics/Point;->y:I

    :cond_48
    monitor-exit v10
    :try_end_49
    .catchall {:try_start_3c .. :try_end_49} :catchall_a2

    if-eqz v6, :cond_a5

    new-instance v10, Landroid/graphics/Rect;

    sub-int v11, v5, v8

    add-int/2addr v11, v3

    sub-int v12, v4, v8

    invoke-direct {v10, v9, v9, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->C:Landroid/graphics/Rect;

    new-instance v10, Landroid/graphics/Rect;

    add-int v11, v4, v8

    sub-int v12, v5, v8

    add-int/2addr v12, v3

    add-int v13, v1, v7

    invoke-direct {v10, v9, v11, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->D:Landroid/graphics/Rect;

    new-instance v10, Landroid/graphics/Rect;

    add-int v11, v5, v8

    sub-int/2addr v11, v3

    sub-int v12, v4, v8

    invoke-direct {v10, v11, v9, v2, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->E:Landroid/graphics/Rect;

    new-instance v9, Landroid/graphics/Rect;

    add-int v10, v5, v8

    sub-int/2addr v10, v3

    add-int v11, v4, v8

    add-int v12, v1, v7

    invoke-direct {v9, v10, v11, v2, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v9, p0, Lcom/android/server/am/MultiWindowManagerService;->F:Landroid/graphics/Rect;

    :goto_7f
    new-instance v9, Landroid/graphics/Rect;

    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->C:Landroid/graphics/Rect;

    invoke-direct {v9, v10}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v9, p0, Lcom/android/server/am/MultiWindowManagerService;->A:Landroid/graphics/Rect;

    iget-object v9, p0, Lcom/android/server/am/MultiWindowManagerService;->A:Landroid/graphics/Rect;

    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->D:Landroid/graphics/Rect;

    invoke-virtual {v9, v10}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    new-instance v9, Landroid/graphics/Rect;

    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->E:Landroid/graphics/Rect;

    invoke-direct {v9, v10}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v9, p0, Lcom/android/server/am/MultiWindowManagerService;->B:Landroid/graphics/Rect;

    iget-object v9, p0, Lcom/android/server/am/MultiWindowManagerService;->B:Landroid/graphics/Rect;

    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->F:Landroid/graphics/Rect;

    invoke-virtual {v9, v10}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    return-void

    :cond_a0
    move v6, v9

    goto :goto_39

    :catchall_a2
    move-exception v9

    :try_start_a3
    monitor-exit v10
    :try_end_a4
    .catchall {:try_start_a3 .. :try_end_a4} :catchall_a2

    throw v9

    :cond_a5
    new-instance v10, Landroid/graphics/Rect;

    sub-int v11, v5, v8

    sub-int v12, v4, v8

    add-int/2addr v12, v3

    invoke-direct {v10, v9, v9, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->C:Landroid/graphics/Rect;

    new-instance v10, Landroid/graphics/Rect;

    add-int v11, v4, v8

    sub-int/2addr v11, v3

    sub-int v12, v5, v8

    add-int v13, v1, v7

    invoke-direct {v10, v9, v11, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->E:Landroid/graphics/Rect;

    new-instance v10, Landroid/graphics/Rect;

    add-int v11, v5, v8

    sub-int v12, v4, v8

    add-int/2addr v12, v3

    invoke-direct {v10, v11, v9, v2, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->D:Landroid/graphics/Rect;

    new-instance v9, Landroid/graphics/Rect;

    add-int v10, v5, v8

    add-int v11, v4, v8

    sub-int/2addr v11, v3

    add-int v12, v1, v7

    invoke-direct {v9, v10, v11, v2, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v9, p0, Lcom/android/server/am/MultiWindowManagerService;->F:Landroid/graphics/Rect;

    goto :goto_7f
.end method


# virtual methods
.method public addWindowInfo(Lcom/android/server/am/ActivityRecord;Ljava/util/ArrayList;)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/ActivityRecord;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v8, v13, Lcom/android/server/am/TaskRecord;->taskId:I

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v5, v13, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    const/4 v4, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_4f

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/ActivityRecord;

    if-eqz v9, :cond_4f

    iget-object v13, v9, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v13, v13, Lcom/android/server/am/TaskRecord;->taskId:I

    iget-object v14, v9, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v14, v14, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v10

    move-object/from16 v0, p1

    iget v13, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v13}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v13

    const/high16 v14, 0x200

    if-ne v13, v14, :cond_4f

    iget v13, v9, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit16 v13, v13, 0x800

    if-eqz v13, :cond_4f

    const-string v13, "android.intent.extra.WINDOW_LAST_SIZE"

    invoke-virtual {v10, v13}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    :cond_4f
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v14

    :try_start_54
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v10}, Lcom/android/server/am/MultiWindowManagerService;->getDefaultWindowInfoLocked(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByTaskId:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Bundle;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByComponent:Ljava/util/HashMap;

    invoke-virtual {v13, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    move-object/from16 v0, p1

    iget v13, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit8 v13, v13, 0xf

    if-eqz v13, :cond_ca

    const-string v13, "android.intent.extra.WINDOW_LAST_SIZE"

    move-object/from16 v0, p1

    iget v15, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/server/am/MultiWindowManagerService;->calculateSplitWindowSize(I)Landroid/graphics/Rect;

    move-result-object v15

    invoke-virtual {v11, v13, v15}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_89
    :goto_89
    move-object/from16 v0, p1

    iget v13, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit16 v13, v13, 0x2000

    if-eqz v13, :cond_a0

    const-string v13, "android.intent.extra.WINDOW_LAST_SIZE"

    move-object/from16 v0, p1

    iget v15, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/am/MultiWindowManagerService;->calculateToolkitWindowSize(I)Landroid/graphics/Rect;

    move-result-object v15

    invoke-virtual {v11, v13, v15}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_a0
    if-eqz v7, :cond_f5

    invoke-virtual {v7, v11}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :goto_a5
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12, v11}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    if-nez v1, :cond_101

    invoke-virtual {v3}, Landroid/content/Intent;->getWindowPosition()Landroid/graphics/Rect;

    move-result-object v13

    if-nez v13, :cond_c1

    if-nez v4, :cond_c1

    const-string v13, "android.intent.extra.WINDOW_DEFAULT_SIZE"

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/graphics/Rect;

    const-string v13, "android.intent.extra.WINDOW_LAST_SIZE"

    invoke-virtual {v12, v13, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_c1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByComponent:Ljava/util/HashMap;

    invoke-virtual {v13, v5, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_c8
    monitor-exit v14

    return-void

    :cond_ca
    invoke-virtual {v3}, Landroid/content/Intent;->getWindowPosition()Landroid/graphics/Rect;

    move-result-object v13

    if-nez v13, :cond_89

    const/4 v6, 0x0

    if-eqz v4, :cond_e1

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    :goto_d8
    const-string v13, "android.intent.extra.WINDOW_LAST_SIZE"

    invoke-virtual {v11, v13, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_89

    :catchall_de
    move-exception v13

    monitor-exit v14
    :try_end_e0
    .catchall {:try_start_54 .. :try_end_e0} :catchall_de

    throw v13

    :cond_e1
    if-eqz v7, :cond_ec

    :try_start_e3
    const-string v13, "android.intent.extra.WINDOW_LAST_SIZE"

    invoke-virtual {v7, v13}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/graphics/Rect;

    goto :goto_d8

    :cond_ec
    const-string v13, "android.intent.extra.WINDOW_DEFAULT_SIZE"

    invoke-virtual {v11, v13}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/graphics/Rect;

    goto :goto_d8

    :cond_f5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByTaskId:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v15, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a5

    :cond_101
    invoke-virtual {v1, v12}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
    :try_end_104
    .catchall {:try_start_e3 .. :try_end_104} :catchall_de

    goto :goto_c8
.end method

.method public applyMultiInstanceStyle(Lcom/android/server/am/ActivityRecord;)V
    .registers 5

    iget-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->bMultiInstance:Z

    if-eqz v0, :cond_1d

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/MultiWindowManagerService;->getRunningTaskCnt(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)I

    move-result v0

    sget v1, Lcom/android/server/am/MultiWindowManagerService;->LIMIT_NUM_OF_MULTI_INSTANCE:I

    if-lt v0, v1, :cond_1d

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const v2, -0x8000001

    and-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :cond_1d
    return-void
.end method

.method public applyMultiWindowLaunchStyle(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)V
    .registers 10

    const/high16 v6, 0x4c

    const/high16 v5, 0x40

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "multi_window_enabled"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_4f

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "open_multi_window_view"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_4f

    const-string v2, "android"

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_45

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mMainStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v2, p1}, Lcom/android/server/am/ActivityStack;->indexOfActivityLocked(Lcom/android/server/am/ActivityRecord;)I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    if-ltz v2, :cond_45

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mMainStack:Lcom/android/server/am/ActivityStack;

    iget-object v2, v2, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/am/ActivityRecord;

    :cond_45
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mAvoideLaunchStyleAppList:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_50

    :cond_4f
    :goto_4f
    return-void

    :cond_50
    iget-boolean v2, p2, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-nez v2, :cond_5a

    invoke-virtual {p0, p2}, Lcom/android/server/am/MultiWindowManagerService;->skipFullScreenCheck(Lcom/android/server/am/ActivityRecord;)Z

    move-result v2

    if-eqz v2, :cond_4f

    :cond_5a
    iget-object v2, p2, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    if-eqz v2, :cond_4f

    iget-object v2, p2, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4f

    iget-object v2, p2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    if-eqz v2, :cond_4f

    iget v2, p2, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/2addr v2, v5

    if-eqz v2, :cond_4f

    iget v2, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/2addr v2, v5

    if-eqz v2, :cond_4f

    const-string v2, "android.intent.action.VIEW"

    iget-object v3, p2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_ae

    const-string v2, "android.provider.Contacts.SEARCH_SUGGESTION_CLICKED"

    iget-object v3, p2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_ae

    const-string v2, "com.android.gallery.action.SEARCH_VIEW"

    iget-object v3, p2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_ae

    const-string v2, "com.sec.android.app.music.intent.action.PLAY_VIA"

    iget-object v3, p2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4f

    :cond_ae
    iget v2, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const/high16 v3, 0x100

    and-int/2addr v2, v3

    if-eqz v2, :cond_d9

    iget v2, p2, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/2addr v2, v6

    iput v2, p2, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    iget v2, p2, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const v3, 0x200000c

    or-int/2addr v2, v3

    iput v2, p2, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    :goto_c2
    iget-object v2, p2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    const/high16 v3, 0x1000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v2, p2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->launchMode:I

    if-nez v2, :cond_4f

    iget-object v2, p2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    const v3, 0x8000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_4f

    :cond_d9
    iget v2, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit8 v2, v2, 0xf

    xor-int/lit8 v2, v2, -0x1

    and-int/lit8 v1, v2, 0xf

    iget v2, p2, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/2addr v2, v6

    iput v2, p2, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    iget v2, p2, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const/high16 v3, 0x200

    or-int/2addr v3, v1

    or-int/2addr v2, v3

    iput v2, p2, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    goto :goto_c2
.end method

.method public arrangeSplitWindow()V
    .registers 14

    const/4 v5, 0x1

    const/high16 v12, 0x3f00

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mMainStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v10, v9, v5}, Lcom/android/server/am/ActivityStack;->getFrontResumedActivities(ZZ)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_63

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ActivityRecord;

    if-eqz v7, :cond_63

    const/4 v1, 0x0

    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarPoint:Landroid/graphics/Point;

    if-eqz v10, :cond_64

    new-instance v1, Landroid/graphics/Point;

    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarPoint:Landroid/graphics/Point;

    invoke-direct {v1, v10}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    :goto_22
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v10}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v10

    invoke-virtual {v10, v4}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget v10, v4, Landroid/graphics/Point;->x:I

    iget v11, v4, Landroid/graphics/Point;->y:I

    if-le v10, v11, :cond_6a

    :goto_36
    iget v9, v4, Landroid/graphics/Point;->x:I

    int-to-float v9, v9

    sget v10, Lcom/android/server/am/MultiWindowManagerService;->QUADVIEW_FULL_DISPLAY_RATIO:F

    mul-float/2addr v9, v10

    add-float/2addr v9, v12

    float-to-int v3, v9

    iget v9, v4, Landroid/graphics/Point;->y:I

    int-to-float v9, v9

    sget v10, Lcom/android/server/am/MultiWindowManagerService;->QUADVIEW_FULL_DISPLAY_RATIO:F

    mul-float/2addr v9, v10

    add-float/2addr v9, v12

    float-to-int v2, v9

    iget v9, v7, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit8 v8, v9, 0xf

    packed-switch v8, :pswitch_data_98

    :goto_4d
    :pswitch_4d
    packed-switch v8, :pswitch_data_b4

    :goto_50
    :pswitch_50
    new-instance v6, Landroid/content/Intent;

    const-string v9, "com.sec.android.action.ARRANGE_CONTROLL_BAR"

    invoke-direct {v6, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v9, "com.samsung.android.multiwindow.refreshcenterbar"

    invoke-virtual {v6, v9, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v9, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    sget-object v10, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v9, v6, v10}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_63
    return-void

    :cond_64
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    goto :goto_22

    :cond_6a
    move v5, v9

    goto :goto_36

    :pswitch_6c
    if-eqz v5, :cond_71

    iput v3, v1, Landroid/graphics/Point;->x:I

    goto :goto_4d

    :cond_71
    iput v2, v1, Landroid/graphics/Point;->y:I

    goto :goto_4d

    :pswitch_74
    if-eqz v5, :cond_7c

    iget v9, v4, Landroid/graphics/Point;->x:I

    sub-int/2addr v9, v3

    iput v9, v1, Landroid/graphics/Point;->x:I

    goto :goto_4d

    :cond_7c
    iget v9, v4, Landroid/graphics/Point;->y:I

    sub-int/2addr v9, v2

    iput v9, v1, Landroid/graphics/Point;->y:I

    goto :goto_4d

    :pswitch_82
    if-eqz v5, :cond_87

    iput v2, v1, Landroid/graphics/Point;->y:I

    goto :goto_50

    :cond_87
    iput v3, v1, Landroid/graphics/Point;->x:I

    goto :goto_50

    :pswitch_8a
    if-eqz v5, :cond_92

    iget v9, v4, Landroid/graphics/Point;->y:I

    sub-int/2addr v9, v2

    iput v9, v1, Landroid/graphics/Point;->y:I

    goto :goto_50

    :cond_92
    iget v9, v4, Landroid/graphics/Point;->x:I

    sub-int/2addr v9, v3

    iput v9, v1, Landroid/graphics/Point;->x:I

    goto :goto_50

    :pswitch_data_98
    .packed-switch 0x1
        :pswitch_6c
        :pswitch_6c
        :pswitch_6c
        :pswitch_74
        :pswitch_4d
        :pswitch_4d
        :pswitch_4d
        :pswitch_74
        :pswitch_4d
        :pswitch_4d
        :pswitch_4d
        :pswitch_74
    .end packed-switch

    :pswitch_data_b4
    .packed-switch 0x1
        :pswitch_82
        :pswitch_8a
        :pswitch_50
        :pswitch_82
        :pswitch_50
        :pswitch_50
        :pswitch_50
        :pswitch_8a
    .end packed-switch
.end method

.method public arrangeToolkitWindowInfos(IILjava/util/ArrayList;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_33

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    iget v4, v2, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit16 v4, v4, 0x2000

    if-eqz v4, :cond_30

    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v4, v4, Lcom/android/server/am/TaskRecord;->taskId:I

    iget-object v5, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v5, v5, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {p0, v4, v5}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v3

    iget v4, v2, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit8 v4, v4, -0x10

    iput v4, v2, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const-string v4, "android.intent.extra.WINDOW_LAST_SIZE"

    iget v5, v2, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-direct {p0, v5}, Lcom/android/server/am/MultiWindowManagerService;->calculateToolkitWindowSize(I)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_33
    return-void
.end method

.method public arrangeWindowInfo(ILandroid/os/Bundle;)V
    .registers 8

    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_3
    invoke-static {p1}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v0

    const/high16 v2, 0x100

    if-ne v0, v2, :cond_d

    monitor-exit v3

    :goto_c
    return-void

    :cond_d
    invoke-static {p1}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v1

    and-int/lit8 v2, p1, 0xf

    if-eqz v2, :cond_23

    const-string v2, "android.intent.extra.WINDOW_LAST_SIZE"

    invoke-virtual {p0, p1}, Lcom/android/server/am/MultiWindowManagerService;->calculateSplitWindowSize(I)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {p2, v2, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_1e
    :goto_1e
    monitor-exit v3

    goto :goto_c

    :catchall_20
    move-exception v2

    monitor-exit v3
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw v2

    :cond_23
    and-int/lit16 v2, p1, 0x2000

    if-eqz v2, :cond_1e

    :try_start_27
    const-string v2, "android.intent.extra.WINDOW_LAST_SIZE"

    invoke-direct {p0, p1}, Lcom/android/server/am/MultiWindowManagerService;->calculateToolkitWindowSize(I)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {p2, v2, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_30
    .catchall {:try_start_27 .. :try_end_30} :catchall_20

    goto :goto_1e
.end method

.method public arrangeWindowInfos(IILjava/util/ArrayList;)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    iget-object v13, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v13

    :try_start_7
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    invoke-static {v4}, Landroid/sec/multiwindow/impl/MultiWindowManager;->getAppDisplaySize(Landroid/graphics/Point;)V

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x0

    const/4 v7, 0x0

    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1e
    :goto_1e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ActivityRecord;

    iget v12, v8, Lcom/android/server/am/ActivityRecord;->userId:I

    if-eq v12, v2, :cond_1e

    iget v12, v8, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v8, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1e

    :catchall_38
    move-exception v12

    monitor-exit v13
    :try_end_3a
    .catchall {:try_start_7 .. :try_end_3a} :catchall_38

    throw v12

    :cond_3b
    add-int/lit8 v5, v1, -0x1

    :goto_3d
    if-ltz v5, :cond_b7

    :try_start_3f
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ActivityRecord;

    const/16 p2, 0x4

    iget v12, v8, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit8 v12, v12, 0xf

    if-eqz v12, :cond_51

    const/16 p2, 0x8

    :cond_51
    sparse-switch p2, :sswitch_data_116

    :goto_54
    add-int/lit8 v5, v5, -0x1

    goto :goto_3d

    :sswitch_57
    iget-object v12, v8, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v12, v12, Lcom/android/server/am/TaskRecord;->taskId:I

    iget-object v14, v8, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v14, v14, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {p0, v12, v14}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v11

    move/from16 v0, p1

    and-int/lit16 v12, v0, 0x80

    if-eqz v12, :cond_6e

    iget v12, v8, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-direct {p0, v12, v11, v4}, Lcom/android/server/am/MultiWindowManagerService;->calculateRotatedPosition(ILandroid/os/Bundle;Landroid/graphics/Point;)V

    :cond_6e
    iget-object v12, v8, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v12, v12, Lcom/android/server/am/TaskRecord;->taskId:I

    iget-object v14, v8, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v14, v14, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {p0, v12, v14, v11}, Lcom/android/server/am/MultiWindowManagerService;->updateWindowInfo(ILandroid/content/ComponentName;Landroid/os/Bundle;)V

    goto :goto_54

    :sswitch_7a
    const/4 v3, 0x2

    rem-int/lit8 v12, v1, 0x2

    if-nez v12, :cond_b2

    const/4 v7, 0x1

    :goto_80
    iget-object v12, v8, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v12, v12, Lcom/android/server/am/TaskRecord;->taskId:I

    iget-object v14, v8, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v14, v14, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {p0, v12, v14}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v11

    const/high16 v12, 0x1000

    and-int v12, v12, p1

    if-eqz v12, :cond_a2

    iget v12, v8, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit8 v12, v12, -0x10

    iput v12, v8, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    iget v14, v8, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    rem-int v12, v7, v3

    if-nez v12, :cond_b4

    const/4 v12, 0x3

    :goto_9f
    or-int/2addr v12, v14

    iput v12, v8, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    :cond_a2
    const-string v12, "android.intent.extra.WINDOW_LAST_SIZE"

    iget v14, v8, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-virtual {p0, v14}, Lcom/android/server/am/MultiWindowManagerService;->calculateSplitWindowSize(I)Landroid/graphics/Rect;

    move-result-object v14

    invoke-virtual {v11, v12, v14}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    add-int/lit8 v12, v7, 0x1

    rem-int v7, v12, v3

    goto :goto_54

    :cond_b2
    const/4 v7, 0x0

    goto :goto_80

    :cond_b4
    const/16 v12, 0xc

    goto :goto_9f

    :cond_b7
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_bb
    :goto_bb
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_d6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v10, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    if-eqz v9, :cond_bb

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iput v12, v8, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    goto :goto_bb

    :cond_d6
    move/from16 v0, p1

    and-int/lit16 v12, v0, 0x80

    if-eqz v12, :cond_e3

    new-instance v12, Landroid/graphics/Point;

    invoke-direct {v12, v4}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    iput-object v12, p0, Lcom/android/server/am/MultiWindowManagerService;->mLastDisplay:Landroid/graphics/Point;

    :cond_e3
    const/4 v5, 0x0

    :goto_e4
    if-ge v5, v1, :cond_114

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ActivityRecord;

    iget v12, v8, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit16 v12, v12, 0x2000

    if-eqz v12, :cond_111

    iget-object v12, v8, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v12, v12, Lcom/android/server/am/TaskRecord;->taskId:I

    iget-object v14, v8, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v14, v14, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {p0, v12, v14}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v11

    iget v12, v8, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit8 v12, v12, -0x10

    iput v12, v8, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const-string v12, "android.intent.extra.WINDOW_LAST_SIZE"

    iget v14, v8, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-direct {p0, v14}, Lcom/android/server/am/MultiWindowManagerService;->calculateToolkitWindowSize(I)Landroid/graphics/Rect;

    move-result-object v14

    invoke-virtual {v11, v12, v14}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_111
    add-int/lit8 v5, v5, 0x1

    goto :goto_e4

    :cond_114
    monitor-exit v13
    :try_end_115
    .catchall {:try_start_3f .. :try_end_115} :catchall_38

    return-void

    :sswitch_data_116
    .sparse-switch
        0x4 -> :sswitch_57
        0x8 -> :sswitch_7a
    .end sparse-switch
.end method

.method public calculateCenterbarPoint(Lcom/android/server/am/ActivityRecord;)Landroid/graphics/Point;
    .registers 14

    const/4 v11, 0x3

    const/4 v10, 0x2

    iget v8, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit8 v7, v8, 0xf

    if-eqz v7, :cond_12

    const/16 v8, 0xc

    if-eq v7, v8, :cond_12

    if-eq v7, v10, :cond_12

    const/16 v8, 0x8

    if-ne v7, v8, :cond_15

    :cond_12
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarPoint:Landroid/graphics/Point;

    :goto_14
    return-object v1

    :cond_15
    iget-object v8, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v4, v8, Landroid/content/res/Configuration;->orientation:I

    iget-object v8, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v8, v8, Lcom/android/server/am/TaskRecord;->taskId:I

    iget-object v9, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v9, v9, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {p0, v8, v9}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v6

    const-string v8, "android.intent.extra.WINDOW_LAST_SIZE"

    invoke-virtual {v6, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget-object v8, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x10500fa

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    const/high16 v9, 0x4000

    div-float/2addr v8, v9

    float-to-int v5, v8

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iget-object v8, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    if-eqz v3, :cond_64

    iget v8, v3, Landroid/graphics/Rect;->bottom:I

    iget v9, v2, Landroid/graphics/Point;->y:I

    if-ne v8, v9, :cond_6c

    iget v8, v3, Landroid/graphics/Rect;->right:I

    iget v9, v2, Landroid/graphics/Point;->x:I

    if-ne v8, v9, :cond_6c

    :cond_64
    const-string v8, "android.intent.extra.WINDOW_DEFAULT_SIZE"

    invoke-virtual {v6, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    :cond_6c
    if-eqz v3, :cond_80

    const/4 v8, 0x1

    if-ne v4, v8, :cond_91

    if-ne v7, v11, :cond_83

    iget v0, v3, Landroid/graphics/Rect;->bottom:I

    new-instance v1, Landroid/graphics/Point;

    iget v8, v2, Landroid/graphics/Point;->x:I

    div-int/lit8 v8, v8, 0x2

    add-int v9, v0, v5

    invoke-direct {v1, v8, v9}, Landroid/graphics/Point;-><init>(II)V

    :cond_80
    :goto_80
    iput-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarPoint:Landroid/graphics/Point;

    goto :goto_14

    :cond_83
    iget v0, v3, Landroid/graphics/Rect;->right:I

    new-instance v1, Landroid/graphics/Point;

    add-int v8, v0, v5

    iget-object v9, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarPoint:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->y:I

    invoke-direct {v1, v8, v9}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_80

    :cond_91
    if-ne v4, v10, :cond_80

    if-ne v7, v11, :cond_a8

    iget v0, v3, Landroid/graphics/Rect;->right:I

    new-instance v1, Landroid/graphics/Point;

    add-int v8, v0, v5

    iget v9, v2, Landroid/graphics/Point;->y:I

    div-int/lit8 v9, v9, 0x2

    invoke-static {}, Landroid/sec/multiwindow/impl/MultiWindowManager;->getStatusBarHeight()I

    move-result v10

    add-int/2addr v9, v10

    invoke-direct {v1, v8, v9}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_80

    :cond_a8
    iget v0, v3, Landroid/graphics/Rect;->bottom:I

    new-instance v1, Landroid/graphics/Point;

    iget-object v8, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarPoint:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->x:I

    add-int v9, v0, v5

    invoke-direct {v1, v8, v9}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_80
.end method

.method public calculateSplitWindowSize(I)Landroid/graphics/Rect;
    .registers 9

    const/high16 v6, 0x3f00

    invoke-direct {p0}, Lcom/android/server/am/MultiWindowManagerService;->updateWindowRects()V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    and-int/lit8 v4, p1, 0x1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_14

    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->C:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    :cond_14
    and-int/lit8 v4, p1, 0x2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1e

    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->D:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    :cond_1e
    and-int/lit8 v4, p1, 0x4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_28

    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->E:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    :cond_28
    and-int/lit8 v4, p1, 0x8

    const/16 v5, 0x8

    if-ne v4, v5, :cond_33

    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->F:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    :cond_33
    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isSupportFixedSplitView(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_8d

    iget v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentArrangeState:I

    and-int/lit8 v4, v4, 0x70

    if-eqz v4, :cond_8d

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget v4, v0, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    sget v5, Lcom/android/server/am/MultiWindowManagerService;->QUADVIEW_DISPLAY_RATIO:F

    mul-float/2addr v4, v5

    add-float/2addr v4, v6

    float-to-int v3, v4

    iget v4, v0, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    sget v5, Lcom/android/server/am/MultiWindowManagerService;->QUADVIEW_DISPLAY_RATIO:F

    mul-float/2addr v4, v5

    add-float/2addr v4, v6

    float-to-int v1, v4

    and-int/lit8 v4, p1, 0xf

    if-eqz v4, :cond_8d

    iget v4, v2, Landroid/graphics/Rect;->left:I

    if-nez v4, :cond_8e

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-ge v4, v3, :cond_78

    iget v4, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v5

    sub-int v5, v3, v5

    sub-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->left:I

    :cond_78
    :goto_78
    iget v4, v2, Landroid/graphics/Rect;->top:I

    if-nez v4, :cond_a0

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-ge v4, v1, :cond_8d

    iget v4, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v5

    sub-int v5, v1, v5

    sub-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->top:I

    :cond_8d
    :goto_8d
    return-object v2

    :cond_8e
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-ge v4, v3, :cond_78

    iget v4, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v5

    sub-int v5, v3, v5

    add-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->right:I

    goto :goto_78

    :cond_a0
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-ge v4, v1, :cond_8d

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v5

    sub-int v5, v1, v5

    add-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->bottom:I

    goto :goto_8d
.end method

.method public checkBehaviorBasedLaunch()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mBehaviorBasedLaunch:Z

    return v0
.end method

.method public checkCenterBarRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 6

    const/4 v3, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mMainStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v2, v3, v3}, Lcom/android/server/am/ActivityStack;->getFrontResumedActivities(ZZ)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/MultiWindowManagerService;->checkWindowInfos(Ljava/util/ArrayList;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    return-object v1
.end method

.method public checkIdleStateNow(Ljava/util/ArrayList;Lcom/android/server/am/ActivityRecord;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;",
            "Lcom/android/server/am/ActivityRecord;",
            ")Z"
        }
    .end annotation

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    :goto_7
    if-ltz v3, :cond_17

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    iget v5, v1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit8 v5, v5, 0xf

    or-int/2addr v4, v5

    add-int/lit8 v3, v3, -0x1

    goto :goto_7

    :cond_17
    iget v5, p2, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v5}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v2

    const/16 v5, 0xf

    if-eq v4, v5, :cond_25

    const/high16 v5, 0x200

    if-ne v2, v5, :cond_27

    :cond_25
    const/4 v5, 0x1

    :goto_26
    return v5

    :cond_27
    const/4 v5, 0x0

    goto :goto_26
.end method

.method public checkIgnoreIntentWindowMode()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mIgnoreIntentWindowMode:Z

    return v0
.end method

.method public checkSupportAllApps()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mSupportAllApps:Z

    return v0
.end method

.method public checkWindowInfos(Ljava/util/ArrayList;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;",
            "Landroid/graphics/Rect;",
            ")",
            "Landroid/graphics/Rect;"
        }
    .end annotation

    if-nez p1, :cond_4

    const/4 v5, 0x0

    :goto_3
    return-object v5

    :cond_4
    iget-object v9, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v3, v9, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_ae

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    iget-object v9, v4, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v10, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v9, v10, :cond_14

    iget-object v9, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v9, v9, Lcom/android/server/am/TaskRecord;->taskId:I

    iget-object v10, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v10, v10, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {p0, v9, v10}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v6

    const-string v9, "android.intent.extra.WINDOW_MINIMUM_SIZE"

    invoke-virtual {v6, v9}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    if-eqz v1, :cond_14

    const/4 v8, 0x0

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    const/4 v2, 0x0

    iget v9, v4, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit8 v7, v9, 0xf

    const/4 v9, 0x3

    if-ne v7, v9, :cond_7c

    invoke-virtual {p0, v7}, Lcom/android/server/am/MultiWindowManagerService;->calculateSplitWindowSize(I)Landroid/graphics/Rect;

    move-result-object v8

    const/4 v9, 0x1

    if-ne v3, v9, :cond_68

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v9

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v10

    sub-int v2, v9, v10

    if-lez v2, :cond_61

    const/4 v9, 0x0

    invoke-virtual {v5, v9, v2}, Landroid/graphics/Rect;->offset(II)V

    :cond_61
    :goto_61
    invoke-virtual {v5, p2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_14

    goto :goto_3

    :cond_68
    const/4 v9, 0x2

    if-ne v3, v9, :cond_61

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v9

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v10

    sub-int v2, v9, v10

    if-lez v2, :cond_61

    const/4 v9, 0x0

    invoke-virtual {v5, v2, v9}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_61

    :cond_7c
    const/16 v9, 0xc

    if-ne v7, v9, :cond_61

    invoke-virtual {p0, v7}, Lcom/android/server/am/MultiWindowManagerService;->calculateSplitWindowSize(I)Landroid/graphics/Rect;

    move-result-object v8

    const/4 v9, 0x1

    if-ne v3, v9, :cond_99

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v9

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v10

    sub-int v2, v9, v10

    if-lez v2, :cond_61

    const/4 v9, 0x0

    neg-int v10, v2

    invoke-virtual {v5, v9, v10}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_61

    :cond_99
    const/4 v9, 0x2

    if-ne v3, v9, :cond_61

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v9

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v10

    sub-int v2, v9, v10

    if-lez v2, :cond_61

    neg-int v9, v2

    const/4 v10, 0x0

    invoke-virtual {v5, v9, v10}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_61

    :cond_ae
    const/4 v5, 0x0

    goto/16 :goto_3
.end method

.method public dispatchMinimizeEvent(Landroid/os/IBinder;Landroid/view/MotionEvent;)V
    .registers 4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_18

    :goto_7
    return-void

    :pswitch_8
    invoke-direct {p0, p1}, Lcom/android/server/am/MultiWindowManagerService;->initMinimizeInfo(Landroid/os/IBinder;)V

    invoke-direct {p0, p2}, Lcom/android/server/am/MultiWindowManagerService;->handleTouchDown(Landroid/view/MotionEvent;)V

    goto :goto_7

    :pswitch_f
    invoke-direct {p0, p2}, Lcom/android/server/am/MultiWindowManagerService;->handleTouchMove(Landroid/view/MotionEvent;)V

    goto :goto_7

    :pswitch_13
    invoke-direct {p0, p2}, Lcom/android/server/am/MultiWindowManagerService;->handleTouchUp(Landroid/view/MotionEvent;)V

    goto :goto_7

    nop

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_8
        :pswitch_13
        :pswitch_f
    .end packed-switch
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 17

    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    const-string v11, "android.permission.DUMP"

    invoke-virtual {v10, v11}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v10

    if-eqz v10, :cond_33

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Permission Denial: can\'t dump MultiWindowManager from from pid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", uid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_32
    return-void

    :cond_33
    iget-object v11, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v11

    :try_start_36
    const-string v10, ""

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v10, "----------------------------------------------------------------------"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v10, "MULTIWINDOW SERVICE (dumpsys multiwindow service)"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v10, "mCenterBarPoint = "

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarPoint:Landroid/graphics/Point;

    if-eqz v10, :cond_94

    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarPoint:Landroid/graphics/Point;

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :goto_53
    const-string v10, "ArrangeState = "

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentArrangeState:I

    and-int/lit8 v10, v10, 0x8

    if-eqz v10, :cond_9d

    const-string v10, "ARRANGE_SPLITED"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_63
    const-string v10, ""

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v10, "Total MultiWindowServiceCallback size = "

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mCallbackDeathRecipients:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(I)V

    const-string v10, "----------------------------------------------------------------------"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v5, 0x0

    :goto_7c
    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mCallbackDeathRecipients:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v5, v10, :cond_d8

    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mCallbackDeathRecipients:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/MultiWindowManagerService$CallbackDeathRecipient;

    iget-object v10, v2, Lcom/android/server/am/MultiWindowManagerService$CallbackDeathRecipient;->mToken:Landroid/os/IBinder;

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_7c

    :cond_94
    const-string v10, "null"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_53

    :catchall_9a
    move-exception v10

    monitor-exit v11
    :try_end_9c
    .catchall {:try_start_36 .. :try_end_9c} :catchall_9a

    throw v10

    :cond_9d
    :try_start_9d
    iget v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentArrangeState:I

    and-int/lit8 v10, v10, 0x20

    if-eqz v10, :cond_a9

    const-string v10, "ARRANGE_SPLITED3R"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_63

    :cond_a9
    iget v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentArrangeState:I

    and-int/lit8 v10, v10, 0x10

    if-eqz v10, :cond_b5

    const-string v10, "ARRANGE_SPLITED3L"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_63

    :cond_b5
    iget v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentArrangeState:I

    and-int/lit8 v10, v10, 0x20

    if-eqz v10, :cond_c7

    iget v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentArrangeState:I

    and-int/lit8 v10, v10, 0x10

    if-eqz v10, :cond_c7

    const-string v10, "ARRANGE_SPLITED4"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_63

    :cond_c7
    iget v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentArrangeState:I

    const/4 v12, 0x2

    if-ne v10, v12, :cond_d2

    const-string v10, "ARRANGE_DEFINED"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_63

    :cond_d2
    const-string v10, "ARRANGE_UNDEFINED"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_63

    :cond_d8
    const-string v10, ""

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v10, "MinimizeCallback size = "

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mMinimizeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(I)V

    const-string v10, "----------------------------------------------------------------------"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v5, 0x0

    :goto_f1
    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mMinimizeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v5, v10, :cond_109

    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mMinimizeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/MultiWindowManagerService$MinimizeCallback;

    iget-object v10, v1, Lcom/android/server/am/MultiWindowManagerService$MinimizeCallback;->mToken:Landroid/os/IBinder;

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_f1

    :cond_109
    const-string v10, ""

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v10, "mWindowInfoMapByComponent size = "

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByComponent:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(I)V

    const-string v10, "----------------------------------------------------------------------"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByComponent:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_12b
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_154

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/ComponentName;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    const-string v10, "No : "

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v10, ""

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_12b

    :cond_154
    const-string v10, "mWindowInfoMapByTaskId size = "

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByTaskId:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(I)V

    const-string v10, "----------------------------------------------------------------------"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByTaskId:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_171
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_19a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    const-string v10, "No : "

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v10, ""

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_171

    :cond_19a
    const-string v10, "----------------------------------------------------------------------"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    monitor-exit v11
    :try_end_1a0
    .catchall {:try_start_9d .. :try_end_1a0} :catchall_9a

    goto/16 :goto_32
.end method

.method public findDockingWindowZone(IIIII)I
    .registers 27

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/MultiWindowManagerService;->updateWindowRects()V

    invoke-static {}, Landroid/sec/multiwindow/impl/MultiWindowManager;->getStatusBarHeight()I

    move-result v12

    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Landroid/view/WindowManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    const/4 v11, 0x0

    if-gez p3, :cond_20

    const/16 p3, 0x0

    :cond_20
    iget v0, v4, Landroid/graphics/Point;->x:I

    move/from16 v17, v0

    iget v0, v4, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_1f2

    move/from16 v3, p3

    iget v11, v4, Landroid/graphics/Point;->y:I

    :goto_32
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v14, v0, [Landroid/util/Pair;

    const/16 v17, 0x0

    new-instance v18, Landroid/util/Pair;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->A:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    const/16 v20, 0x3

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-direct/range {v18 .. v20}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v18, v14, v17

    const/16 v17, 0x1

    new-instance v18, Landroid/util/Pair;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->B:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    const/16 v20, 0xc

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-direct/range {v18 .. v20}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v18, v14, v17

    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v6, v0, [Landroid/util/Pair;

    const/16 v17, 0x0

    new-instance v18, Landroid/util/Pair;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->A:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    const/16 v20, 0x3

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-direct/range {v18 .. v20}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v18, v6, v17

    const/16 v17, 0x1

    new-instance v18, Landroid/util/Pair;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->E:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    const/16 v20, 0x4

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-direct/range {v18 .. v20}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v18, v6, v17

    const/16 v17, 0x2

    new-instance v18, Landroid/util/Pair;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->F:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-direct/range {v18 .. v20}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v18, v6, v17

    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v7, v0, [Landroid/util/Pair;

    const/16 v17, 0x0

    new-instance v18, Landroid/util/Pair;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->B:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    const/16 v20, 0xc

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-direct/range {v18 .. v20}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v18, v7, v17

    const/16 v17, 0x1

    new-instance v18, Landroid/util/Pair;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->C:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-direct/range {v18 .. v20}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v18, v7, v17

    const/16 v17, 0x2

    new-instance v18, Landroid/util/Pair;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->D:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    const/16 v20, 0x2

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-direct/range {v18 .. v20}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v18, v7, v17

    const/16 v17, 0x4

    move/from16 v0, v17

    new-array v8, v0, [Landroid/util/Pair;

    const/16 v17, 0x0

    new-instance v18, Landroid/util/Pair;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->C:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-direct/range {v18 .. v20}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v18, v8, v17

    const/16 v17, 0x1

    new-instance v18, Landroid/util/Pair;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->D:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    const/16 v20, 0x2

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-direct/range {v18 .. v20}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v18, v8, v17

    const/16 v17, 0x2

    new-instance v18, Landroid/util/Pair;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->E:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    const/16 v20, 0x4

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-direct/range {v18 .. v20}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v18, v8, v17

    const/16 v17, 0x3

    new-instance v18, Landroid/util/Pair;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->F:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-direct/range {v18 .. v20}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v18, v8, v17

    const/16 v17, 0x6

    move/from16 v0, v17

    new-array v5, v0, [Landroid/util/Pair;

    const/16 v17, 0x0

    new-instance v18, Landroid/util/Pair;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->C:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-direct/range {v18 .. v20}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v18, v5, v17

    const/16 v17, 0x1

    new-instance v18, Landroid/util/Pair;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->D:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    const/16 v20, 0x2

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-direct/range {v18 .. v20}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v18, v5, v17

    const/16 v17, 0x2

    new-instance v18, Landroid/util/Pair;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->E:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    const/16 v20, 0x4

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-direct/range {v18 .. v20}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v18, v5, v17

    const/16 v17, 0x3

    new-instance v18, Landroid/util/Pair;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->F:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-direct/range {v18 .. v20}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v18, v5, v17

    const/16 v17, 0x4

    new-instance v18, Landroid/util/Pair;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->A:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    const/16 v20, 0x3

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-direct/range {v18 .. v20}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v18, v5, v17

    const/16 v17, 0x5

    new-instance v18, Landroid/util/Pair;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->B:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    const/16 v20, 0xc

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-direct/range {v18 .. v20}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v18, v5, v17

    const/16 v16, 0x0

    sparse-switch p1, :sswitch_data_26a

    :goto_1cf
    :sswitch_1cf
    move-object/from16 v2, v16

    array-length v10, v2

    const/4 v9, 0x0

    :goto_1d3
    if-ge v9, v10, :cond_267

    aget-object v15, v2, v9

    iget-object v13, v15, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v13, Landroid/graphics/Rect;

    add-int v17, p3, v12

    move/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v13, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v17

    if-eqz v17, :cond_263

    iget-object v0, v15, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    :goto_1f1
    return v17

    :cond_1f2
    move/from16 v3, p2

    iget v11, v4, Landroid/graphics/Point;->x:I

    goto/16 :goto_32

    :sswitch_1f8
    move-object/from16 v16, v14

    goto :goto_1cf

    :sswitch_1fb
    if-nez p5, :cond_21e

    move/from16 v0, p4

    if-le v3, v0, :cond_20a

    sub-int v17, v11, p4

    move/from16 v0, v17

    if-ge v3, v0, :cond_20a

    move-object/from16 v16, v14

    goto :goto_1cf

    :cond_20a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mSupportHalfSplit:Z

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_21b

    move-object/from16 v16, v5

    goto :goto_1cf

    :cond_21b
    move-object/from16 v16, v14

    goto :goto_1cf

    :cond_21e
    move-object/from16 v16, v14

    goto :goto_1cf

    :sswitch_221
    if-nez p5, :cond_233

    move/from16 v0, p4

    if-le v3, v0, :cond_230

    sub-int v17, v11, p4

    move/from16 v0, v17

    if-ge v3, v0, :cond_230

    move-object/from16 v16, v14

    goto :goto_1cf

    :cond_230
    move-object/from16 v16, v5

    goto :goto_1cf

    :cond_233
    move-object/from16 v16, v6

    goto :goto_1cf

    :sswitch_236
    if-nez p5, :cond_248

    move/from16 v0, p4

    if-le v3, v0, :cond_245

    sub-int v17, v11, p4

    move/from16 v0, v17

    if-ge v3, v0, :cond_245

    move-object/from16 v16, v14

    goto :goto_1cf

    :cond_245
    move-object/from16 v16, v5

    goto :goto_1cf

    :cond_248
    move-object/from16 v16, v7

    goto :goto_1cf

    :sswitch_24b
    if-nez p5, :cond_25f

    move/from16 v0, p4

    if-le v3, v0, :cond_25b

    sub-int v17, v11, p4

    move/from16 v0, v17

    if-ge v3, v0, :cond_25b

    move-object/from16 v16, v14

    goto/16 :goto_1cf

    :cond_25b
    move-object/from16 v16, v5

    goto/16 :goto_1cf

    :cond_25f
    move-object/from16 v16, v8

    goto/16 :goto_1cf

    :cond_263
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1d3

    :cond_267
    const/16 v17, 0x0

    goto :goto_1f1

    :sswitch_data_26a
    .sparse-switch
        0x1 -> :sswitch_1cf
        0x2 -> :sswitch_1f8
        0x4 -> :sswitch_1cf
        0x8 -> :sswitch_1fb
        0x10 -> :sswitch_221
        0x20 -> :sswitch_236
        0x40 -> :sswitch_24b
    .end sparse-switch
.end method

.method public getAppListPosition()I
    .registers 2

    iget v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mAppListPosition:I

    return v0
.end method

.method public getArrangeState()I
    .registers 3

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentArrangeState:I

    monitor-exit v1

    return v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public getCenterBarPoint()Landroid/graphics/Point;
    .registers 3

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarPoint:Landroid/graphics/Point;

    monitor-exit v1

    return-object v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public getCurrentLaunchMode()I
    .registers 3

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentLaunchMode:I

    monitor-exit v1

    return v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public getDefaultWindowInfoLocked(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 31

    const/4 v6, 0x0

    const/4 v4, 0x0

    const/4 v13, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x10500fa

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v21

    const/high16 v22, 0x4000

    div-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v17, v0

    const/16 v16, 0x0

    new-instance v19, Landroid/os/Bundle;

    invoke-direct/range {v19 .. v19}, Landroid/os/Bundle;-><init>()V

    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8}, Landroid/graphics/Point;-><init>()V

    invoke-static {v8}, Landroid/sec/multiwindow/impl/MultiWindowManager;->getAppDisplaySize(Landroid/graphics/Point;)V

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v21, v0

    if-eqz v21, :cond_17a

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v10, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    :goto_45
    :try_start_45
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v21

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v16

    if-eqz v10, :cond_b7

    const-string v21, "com.sec.android.multiwindow.DEFAULT_SIZE_W"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_72

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v21

    move/from16 v0, v21

    float-to-int v6, v0

    :cond_72
    const-string v21, "com.sec.android.multiwindow.DEFAULT_SIZE_H"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_89

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v21

    move/from16 v0, v21

    float-to-int v4, v0

    :cond_89
    const-string v21, "com.sec.android.multiwindow.MINIMUM_SIZE_W"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v12

    if-eqz v12, :cond_a0

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v21

    move/from16 v0, v21

    float-to-int v13, v0

    :cond_a0
    const-string v21, "com.sec.android.multiwindow.MINIMUM_SIZE_H"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v12

    if-eqz v12, :cond_b7

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Landroid/content/res/Resources;->getDimension(I)F
    :try_end_b3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_45 .. :try_end_b3} :catch_180
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_45 .. :try_end_b3} :catch_186

    move-result v21

    move/from16 v0, v21

    float-to-int v11, v0

    :cond_b7
    :goto_b7
    if-eqz v6, :cond_c1

    iget v0, v8, Landroid/graphics/Point;->x:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-le v6, v0, :cond_c5

    :cond_c1
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowDefWidth:I

    :cond_c5
    if-eqz v4, :cond_cf

    iget v0, v8, Landroid/graphics/Point;->y:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-le v4, v0, :cond_d3

    :cond_cf
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowDefHeight:I

    :cond_d3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarFlingSize:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v13, v0, :cond_e5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarFlingSize:I

    move/from16 v21, v0

    sub-int v13, v21, v17

    :cond_e5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarFlingSize:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v11, v0, :cond_f7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarFlingSize:I

    move/from16 v21, v0

    sub-int v11, v21, v17

    :cond_f7
    iget v0, v8, Landroid/graphics/Point;->x:I

    move/from16 v21, v0

    sub-int v21, v21, v6

    shr-int/lit8 v9, v21, 0x1

    iget v0, v8, Landroid/graphics/Point;->y:I

    move/from16 v21, v0

    sub-int v21, v21, v4

    shr-int/lit8 v21, v21, 0x1

    invoke-static {}, Landroid/sec/multiwindow/impl/MultiWindowManager;->getStatusBarHeight()I

    move-result v22

    add-int v18, v21, v22

    new-instance v20, Landroid/graphics/Rect;

    add-int v21, v9, v6

    add-int v22, v18, v4

    move-object/from16 v0, v20

    move/from16 v1, v18

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-direct {v0, v9, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v14, Landroid/graphics/Rect;

    add-int v21, v9, v13

    add-int v22, v18, v11

    move/from16 v0, v18

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v14, v9, v0, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/MultiWindowManagerService;->calculateCascadeWindowPosition(Landroid/graphics/Rect;Landroid/os/Bundle;)V

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getWindowPosition()Landroid/graphics/Rect;

    move-result-object v15

    if-eqz v15, :cond_145

    const-string v21, "android.intent.extra.WINDOW_LAST_SIZE"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v15}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_145
    const-string v21, "android.intent.extra.WINDOW_DEFAULT_SIZE"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v21, "android.intent.extra.WINDOW_MINIMUM_SIZE"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v14}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v21, "android.intent.extra.WINDOW_MINIMIZED_SIZE"

    new-instance v22, Landroid/graphics/Rect;

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowMinimizedWidth:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowMinimizedHeight:I

    move/from16 v26, v0

    invoke-direct/range {v22 .. v26}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-object v19

    :cond_17a
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    goto/16 :goto_45

    :catch_180
    move-exception v7

    invoke-virtual {v7}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_b7

    :catch_186
    move-exception v7

    invoke-virtual {v7}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto/16 :goto_b7
.end method

.method public getMinimizeIconState()I
    .registers 2

    iget v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mMinimizeIconState:I

    return v0
.end method

.method public getMultiDisplayState()Z
    .registers 3

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mIsMultiDisplay:Z

    monitor-exit v1

    return v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public getMultiDisplayTarget()I
    .registers 3

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mMultiDisplayId:I

    monitor-exit v1

    return v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public getNextSplitZone(Ljava/util/ArrayList;Lcom/android/server/am/ActivityRecord;)I
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;",
            "Lcom/android/server/am/ActivityRecord;",
            ")I"
        }
    .end annotation

    const/4 v4, 0x0

    if-eqz p2, :cond_b

    iget v5, p2, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit16 v5, v5, 0x2000

    if-eqz v5, :cond_b

    move v0, v4

    :goto_a
    return v0

    :cond_b
    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_21

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_21

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    iget v2, v1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    :cond_21
    and-int/lit8 v3, v2, 0xf

    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    packed-switch v3, :pswitch_data_3c

    :goto_29
    :pswitch_29
    :try_start_29
    monitor-exit v5

    goto :goto_a

    :catchall_2b
    move-exception v4

    monitor-exit v5
    :try_end_2d
    .catchall {:try_start_29 .. :try_end_2d} :catchall_2b

    throw v4

    :pswitch_2e
    const/16 v0, 0xc

    goto :goto_29

    :pswitch_31
    const/4 v0, 0x3

    goto :goto_29

    :pswitch_33
    const/4 v0, 0x2

    goto :goto_29

    :pswitch_35
    const/4 v0, 0x1

    goto :goto_29

    :pswitch_37
    const/16 v0, 0x8

    goto :goto_29

    :pswitch_3a
    const/4 v0, 0x4

    goto :goto_29

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_33
        :pswitch_35
        :pswitch_2e
        :pswitch_37
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_3a
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_31
    .end packed-switch
.end method

.method public getResumedTaskCount()I
    .registers 6

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mMainStack:Lcom/android/server/am/ActivityStack;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lcom/android/server/am/ActivityStack;->getFrontResumedActivities(ZZ)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    monitor-exit v2

    return v1

    :catchall_13
    move-exception v1

    monitor-exit v2
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public getRunningTaskCnt(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)I
    .registers 13

    const/4 v1, 0x0

    if-eqz p1, :cond_69

    iget-object v8, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    iget-object v8, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    if-eqz v8, :cond_1c

    new-instance v1, Landroid/content/ComponentName;

    iget-object v8, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iget-object v9, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    invoke-direct {v1, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1c
    :goto_1c
    const/4 v4, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_76

    iget v8, p1, Lcom/android/server/am/ActivityRecord;->userId:I

    :goto_22
    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    iget-object v8, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mMainStack:Lcom/android/server/am/ActivityStack;

    iget-object v8, v8, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    :goto_32
    if-ltz v3, :cond_b2

    iget-object v8, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mMainStack:Lcom/android/server/am/ActivityStack;

    iget-object v8, v8, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityRecord;

    iget-boolean v8, v5, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v8, :cond_66

    iget-object v8, v5, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eq v8, v2, :cond_66

    iget v8, v5, Lcom/android/server/am/ActivityRecord;->userId:I

    if-ne v8, v7, :cond_66

    iget-object v2, v5, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v8, v5, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v8, v8, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    if-eqz v8, :cond_84

    if-eqz p1, :cond_7d

    iget-object v8, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v8, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    :goto_5a
    iget-object v8, v5, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v8, v8, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_66

    add-int/lit8 v4, v4, 0x1

    :cond_66
    :goto_66
    add-int/lit8 v3, v3, -0x1

    goto :goto_32

    :cond_69
    if-eqz p2, :cond_1c

    iget-object v8, p2, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v8, :cond_1c

    iget-object v8, p2, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    goto :goto_1c

    :cond_76
    if-eqz p2, :cond_7b

    iget v8, p2, Lcom/android/server/am/TaskRecord;->userId:I

    goto :goto_22

    :cond_7b
    const/4 v8, -0x2

    goto :goto_22

    :cond_7d
    if-eqz p2, :cond_82

    iget-object v6, p2, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    goto :goto_5a

    :cond_82
    const/4 v6, 0x0

    goto :goto_5a

    :cond_84
    iget-object v8, v5, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v8, v8, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v8, :cond_9b

    iget-object v8, v5, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v8, v8, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9b

    add-int/lit8 v4, v4, 0x1

    goto :goto_66

    :cond_9b
    iget-object v8, v5, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v8, v8, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    if-eqz v8, :cond_66

    iget-object v8, v5, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v8, v8, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_66

    add-int/lit8 v4, v4, 0x1

    goto :goto_66

    :cond_b2
    return v4
.end method

.method public getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;
    .registers 9

    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_3
    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByTaskId:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4d

    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByTaskId:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    const-string v3, "android.intent.extra.WINDOW_LAST_SIZE"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    if-nez v1, :cond_4b

    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByComponent:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4b

    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByComponent:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    if-eqz v0, :cond_4b

    const-string v3, "android.intent.extra.WINDOW_LAST_SIZE"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    if-eqz v1, :cond_4b

    const-string v3, "android.intent.extra.WINDOW_LAST_SIZE"

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_4b
    monitor-exit v4

    :goto_4c
    return-object v2

    :cond_4d
    sget-boolean v3, Lcom/android/server/am/MultiWindowManagerService;->$assertionsDisabled:Z

    if-nez v3, :cond_5a

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    :catchall_57
    move-exception v3

    monitor-exit v4
    :try_end_59
    .catchall {:try_start_3 .. :try_end_59} :catchall_57

    throw v3

    :cond_5a
    :try_start_5a
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    monitor-exit v4
    :try_end_60
    .catchall {:try_start_5a .. :try_end_60} :catchall_57

    goto :goto_4c
.end method

.method public handleDisplayRemoved(I)V
    .registers 6

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mMultiDisplayId:I

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mHandler:Lcom/android/server/am/MultiWindowManagerService$H;

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mHandler:Lcom/android/server/am/MultiWindowManagerService$H;

    const/16 v2, 0xa

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Lcom/android/server/am/MultiWindowManagerService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/MultiWindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public init()V
    .registers 4

    invoke-virtual {p0}, Lcom/android/server/am/MultiWindowManagerService;->loadDefaultWindowInfo()V

    invoke-virtual {p0}, Lcom/android/server/am/MultiWindowManagerService;->loadDefaultSupportedAppList()V

    invoke-virtual {p0}, Lcom/android/server/am/MultiWindowManagerService;->loadAvoideLaunchStyleAppList()V

    invoke-virtual {p0}, Lcom/android/server/am/MultiWindowManagerService;->loadNotSupportScaleAppList()V

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    const-string v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/SystemVibrator;

    iput-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mVibrator:Landroid/os/SystemVibrator;

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10500fc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarFlingSize:I

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10500fd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarDockingMargin:I

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105010c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mShiftX:I

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105010d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mShiftY:I

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105010e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mShiftXArrange:I

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050110

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mMovingMargin:I

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isSupportQuadView(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mSupportHalfSplit:Z

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget v1, v0, Landroid/graphics/Point;->x:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mOldPositionX:F

    iget v1, v0, Landroid/graphics/Point;->y:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mOldPositionY:F

    return-void
.end method

.method public isEmptyZone(Ljava/util/List;I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;I)Z"
        }
    .end annotation

    if-eqz p1, :cond_1b

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    iget v2, v1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit8 v2, v2, 0xf

    and-int/2addr v2, p2

    if-eqz v2, :cond_6

    const/4 v2, 0x0

    :goto_1a
    return v2

    :cond_1b
    const/4 v2, 0x1

    goto :goto_1a
.end method

.method public isFixedRatioApp(Ljava/lang/String;)Z
    .registers 3

    invoke-virtual {p0, p1}, Lcom/android/server/am/MultiWindowManagerService;->isSupportApp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mFixedRatioAppList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public isMustNotSupportScaleApp(Landroid/content/pm/ActivityInfo;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v1, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mNotSupportScaleAppList:Ljava/util/ArrayList;

    iget-object v2, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v0, 0x1

    goto :goto_7
.end method

.method public isSupporMultiInstance(Landroid/content/pm/ActivityInfo;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v1, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mSupportMultiInstanceAppList:Ljava/util/ArrayList;

    iget-object v2, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_7

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "com.samsung.android.sdk.multiwindow.multiinstance.enable"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_26
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public isSupportApp(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mSupportAppList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "android"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method public isSupportControlbar()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isSupportFreeStyle(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mSupportControlbar:Z

    :goto_b
    iget-boolean v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mSupportControlbar:Z

    return v0

    :cond_e
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mSupportControlbar:Z

    goto :goto_b
.end method

.method public isSupportMultiWindow(Landroid/content/pm/ActivityInfo;)Z
    .registers 7

    const/4 v2, 0x0

    if-eqz p1, :cond_5a

    iget-object v3, p1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/server/am/MultiWindowManagerService;->isSupportApp(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2d

    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_5a

    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v3, :cond_5a

    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "com.sec.android.support.multiwindow"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2d

    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "com.samsung.android.sdk.multiwindow.enable"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5a

    :cond_2d
    const/4 v2, 0x1

    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v3, :cond_5a

    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "com.sec.android.multiwindow.activity.STYLE"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5a

    new-instance v1, Ljava/util/ArrayList;

    const-string v3, "\\|"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5a

    const-string v3, "fullscreenOnly"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5a

    const/4 v2, 0x0

    :cond_5a
    return v2
.end method

.method public isSupportPopup(Ljava/lang/String;)Z
    .registers 3

    const-string v0, "com.sec.android.app.popupuireceiver"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "com.android.providers.media"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "com.android.providers.downloads.ui"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public isSupportPopupApp(Landroid/content/pm/ActivityInfo;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v1, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_7

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "com.samsung.android.sdk.multiwindow.popupwindow.enable"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v0, 0x1

    goto :goto_7
.end method

.method public isSupportScaleApp(Landroid/content/pm/ActivityInfo;)Z
    .registers 7

    const/4 v2, 0x0

    if-eqz p1, :cond_7

    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v3, :cond_8

    :cond_7
    :goto_7
    return v2

    :cond_8
    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mSupportScaleAppList:Ljava/util/ArrayList;

    iget-object v4, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_26

    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v3, :cond_7

    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "com.samsung.android.sdk.multiwindow.penwindow.enable"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_26
    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v3, :cond_4f

    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "com.sec.android.multiwindow.STYLE"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4f

    new-instance v1, Ljava/util/ArrayList;

    const-string v3, "\\|"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v3, "freestyleOnly"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    :cond_4f
    const/4 v2, 0x1

    goto :goto_7
.end method

.method public launchExternalDisplay(Z)V
    .registers 5

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mMainStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v2, p1}, Lcom/android/server/am/ActivityStack;->relaunchExternalActivityLocked(Z)V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method public loadAvoideLaunchStyleAppList()V
    .registers 10

    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService;->mAvoideLaunchStyleAppList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService;->mSkipFullScreenAppList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    :try_start_a
    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1070061

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_28

    move-object v0, v2

    array-length v4, v0

    const/4 v3, 0x0

    :goto_1c
    if-ge v3, v4, :cond_28

    aget-object v1, v0, v3

    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService;->mAvoideLaunchStyleAppList:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    :cond_28
    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1070062

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_47

    move-object v0, v6

    array-length v4, v0

    const/4 v3, 0x0

    :goto_3a
    if-ge v3, v4, :cond_47

    aget-object v5, v0, v3

    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService;->mSkipFullScreenAppList:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_43
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_a .. :try_end_43} :catch_46

    add-int/lit8 v3, v3, 0x1

    goto :goto_3a

    :catch_46
    move-exception v7

    :cond_47
    return-void
.end method

.method public loadDefaultSupportedAppList()V
    .registers 21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mSupportAppList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mSupportScaleAppList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mSupportMultiInstanceAppList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->clear()V

    :try_start_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x107005c

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_43

    move-object v2, v12

    array-length v10, v2

    const/4 v9, 0x0

    :goto_31
    if-ge v9, v10, :cond_43

    aget-object v11, v2, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mSupportAppList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_31

    :cond_43
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x1070068

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_6c

    move-object/from16 v2, v16

    array-length v10, v2

    const/4 v9, 0x0

    :goto_5a
    if-ge v9, v10, :cond_6c

    aget-object v15, v2, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mSupportScaleAppList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_5a

    :cond_6c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x107005d

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_95

    move-object v2, v14

    array-length v10, v2

    const/4 v9, 0x0

    :goto_82
    if-ge v9, v10, :cond_95

    aget-object v13, v2, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mSupportMultiInstanceAppList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_91
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1b .. :try_end_91} :catch_94

    add-int/lit8 v9, v9, 0x1

    goto :goto_82

    :catch_94
    move-exception v17

    :cond_95
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v17

    const-string v18, "CscFeature_MultiWindow_AddOnApp"

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_10c

    new-instance v4, Ljava/util/ArrayList;

    const-string v17, ","

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_ba
    :goto_ba
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_10c

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v17, "-"

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_f2

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mSupportAppList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_ba

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mSupportAppList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_ba

    :cond_f2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mSupportAppList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_ba

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mSupportAppList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_ba

    :cond_10c
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v17

    const-string v18, "CscFeature_Framework_AddOnApp4PenWindow"

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_183

    new-instance v6, Ljava/util/ArrayList;

    const-string v17, ","

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_131
    :goto_131
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_183

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v17, "-"

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_169

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mSupportScaleAppList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_131

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mSupportScaleAppList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_131

    :cond_169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mSupportScaleAppList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_131

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mSupportScaleAppList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_131

    :cond_183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mFixedRatioAppList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->clear()V

    :try_start_18c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x1070060

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1b5

    move-object v2, v8

    array-length v10, v2

    const/4 v9, 0x0

    :goto_1a2
    if-ge v9, v10, :cond_1b5

    aget-object v7, v2, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mFixedRatioAppList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1b1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_18c .. :try_end_1b1} :catch_1b4

    add-int/lit8 v9, v9, 0x1

    goto :goto_1a2

    :catch_1b4
    move-exception v17

    :cond_1b5
    return-void
.end method

.method public loadDefaultWindowInfo()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10500f5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowGap:I

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10500f6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowDefWidth:I

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10500f7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowDefHeight:I

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10500f8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowMinimizedWidth:I

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10500f9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowMinimizedHeight:I

    return-void
.end method

.method public loadNotSupportScaleAppList()V
    .registers 8

    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mNotSupportScaleAppList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    :try_start_5
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1070063

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_24

    move-object v0, v4

    array-length v2, v0

    const/4 v1, 0x0

    :goto_17
    if-ge v1, v2, :cond_24

    aget-object v3, v0, v1

    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mNotSupportScaleAppList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_20
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_20} :catch_23

    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :catch_23
    move-exception v5

    :cond_24
    return-void
.end method

.method public minimizeAll()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/am/MultiWindowManagerService;->minimizeAll(Ljava/lang/String;)V

    return-void
.end method

.method public notifyMultiDisplayState(ZZ)Z
    .registers 6

    iget-boolean v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mIsMultiDisplay:Z

    if-ne v0, p1, :cond_6

    if-eqz p2, :cond_2c

    :cond_6
    const-string v0, "MultiWindowManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Send broadcast intent  ACTION_NOTIFY_MULTIDISPLAY_STATUS mIsMultiDisplay set as "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/android/server/am/MultiWindowManagerService;->mIsMultiDisplay:Z

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mHandler:Lcom/android/server/am/MultiWindowManagerService$H;

    new-instance v1, Lcom/android/server/am/MultiWindowManagerService$4;

    invoke-direct {v1, p0}, Lcom/android/server/am/MultiWindowManagerService$4;-><init>(Lcom/android/server/am/MultiWindowManagerService;)V

    invoke-virtual {v0, v1}, Lcom/android/server/am/MultiWindowManagerService$H;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    :goto_2b
    return v0

    :cond_2c
    const/4 v0, 0x0

    goto :goto_2b
.end method

.method public registerCallback(Landroid/os/IBinder;ILandroid/os/IBinder;)Z
    .registers 10

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mCallbackDeathRecipients:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/MultiWindowManagerService$CallbackDeathRecipient;

    iget-object v5, v0, Lcom/android/server/am/MultiWindowManagerService$CallbackDeathRecipient;->mCallback:Landroid/os/IBinder;

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    :cond_1c
    :goto_1c
    return v3

    :cond_1d
    if-eqz p1, :cond_1c

    new-instance v0, Lcom/android/server/am/MultiWindowManagerService$CallbackDeathRecipient;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/am/MultiWindowManagerService$CallbackDeathRecipient;-><init>(Lcom/android/server/am/MultiWindowManagerService;Landroid/os/IBinder;ILandroid/os/IBinder;)V

    const/4 v5, 0x0

    :try_start_25
    invoke-interface {p1, v0, v5}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_28} :catch_34

    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mCallbackDeathRecipients:Ljava/util/ArrayList;

    invoke-virtual {v5, v3, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    if-ne p2, v4, :cond_32

    invoke-direct {p0, p1, p3}, Lcom/android/server/am/MultiWindowManagerService;->addMinimizeCallback(Landroid/os/IBinder;Landroid/os/IBinder;)V

    :cond_32
    move v3, v4

    goto :goto_1c

    :catch_34
    move-exception v1

    goto :goto_1c
.end method

.method public removeWindowInfo(I)V
    .registers 5

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByTaskId:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-void

    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v0
.end method

.method public removeWindowInfoByComponent(Landroid/content/ComponentName;)V
    .registers 4

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByComponent:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public rotateCenterBar(I)V
    .registers 5

    iget v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarDirection:I

    if-ne p1, v1, :cond_5

    :goto_4
    return-void

    :cond_5
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput p1, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarDirection:I

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_f
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarPoint:Landroid/graphics/Point;

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iput v1, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iput v1, v0, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v0}, Lcom/android/server/am/MultiWindowManagerService;->applyCenterBarDocking(Landroid/graphics/Point;)V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarPoint:Landroid/graphics/Point;

    :cond_24
    monitor-exit v2

    goto :goto_4

    :catchall_26
    move-exception v1

    monitor-exit v2
    :try_end_28
    .catchall {:try_start_f .. :try_end_28} :catchall_26

    throw v1
.end method

.method public setAppListPosition(I)V
    .registers 2

    iput p1, p0, Lcom/android/server/am/MultiWindowManagerService;->mAppListPosition:I

    return-void
.end method

.method public setCenterBarDirection(I)V
    .registers 2

    iput p1, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarDirection:I

    return-void
.end method

.method public setCenterBarPoint(Landroid/graphics/Point;)V
    .registers 4

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iput-object p1, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarPoint:Landroid/graphics/Point;

    monitor-exit v1

    return-void

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public setMinimizeStackedIcon()V
    .registers 7

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mHandler:Lcom/android/server/am/MultiWindowManagerService$H;

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mHandler:Lcom/android/server/am/MultiWindowManagerService$H;

    const/4 v2, 0x2

    iget v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mOldPositionX:F

    float-to-int v3, v3

    iget v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowMinimizedHeight:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mOldPositionY:F

    float-to-int v4, v4

    iget v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowMinimizedHeight:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/am/MultiWindowManagerService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/MultiWindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setMultiDisplayState(Z)V
    .registers 4

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iput-boolean p1, p0, Lcom/android/server/am/MultiWindowManagerService;->mIsMultiDisplay:Z

    monitor-exit v1

    return-void

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public setMultiDisplayTarget(I)Z
    .registers 4

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iput p1, p0, Lcom/android/server/am/MultiWindowManagerService;->mMultiDisplayId:I

    monitor-exit v1

    const/4 v0, 0x1

    return v0

    :catchall_8
    move-exception v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public setToolkitRect(Landroid/graphics/Rect;)V
    .registers 5

    const/4 v1, 0x0

    if-nez p1, :cond_c

    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mToolkitWindowX:I

    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mToolkitWindowX:I

    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mToolkitWindowDefWidth:I

    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mToolkitWindowDefHeight:I

    :cond_b
    :goto_b
    return-void

    :cond_c
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mToolkitWindowX:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mToolkitWindowY:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget v2, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mToolkitWindowDefWidth:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mToolkitWindowDefHeight:I

    iget v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mToolkitWindowDefWidth:I

    if-nez v1, :cond_40

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    invoke-static {v0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->getAppDisplaySize(Landroid/graphics/Point;)V

    iget v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mToolkitWindowX:I

    if-nez v1, :cond_39

    iget v1, v0, Landroid/graphics/Point;->x:I

    div-int/lit8 v1, v1, 0x2

    neg-int v1, v1

    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mToolkitWindowX:I

    :cond_39
    iget v1, v0, Landroid/graphics/Point;->x:I

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mToolkitWindowDefWidth:I

    goto :goto_b

    :cond_40
    iget v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mToolkitWindowDefHeight:I

    if-nez v1, :cond_b

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    invoke-static {v0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->getAppDisplaySize(Landroid/graphics/Point;)V

    iget v1, v0, Landroid/graphics/Point;->y:I

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mToolkitWindowDefHeight:I

    goto :goto_b
.end method

.method public skipFullScreenCheck(Lcom/android/server/am/ActivityRecord;)Z
    .registers 4

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mSkipFullScreenAppList:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public systemReady()V
    .registers 5

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    if-nez v2, :cond_1e

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_1e

    :try_start_10
    new-instance v2, Lcom/android/server/am/MultiWindowManagerService$1;

    invoke-direct {v2, p0}, Lcom/android/server/am/MultiWindowManagerService$1;-><init>(Lcom/android/server/am/MultiWindowManagerService;)V

    iput-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v3, 0x20

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_1e
    .catch Ljava/lang/SecurityException; {:try_start_10 .. :try_end_1e} :catch_38

    :cond_1e
    :goto_1e
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mAlarmStateListener:Landroid/content/BroadcastReceiver;

    if-nez v2, :cond_37

    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "com.samsung.sec.android.clockpackage.alarm.ALARM_ALERT_FROM_ALARM"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/android/server/am/MultiWindowManagerService$2;

    invoke-direct {v2, p0}, Lcom/android/server/am/MultiWindowManagerService$2;-><init>(Lcom/android/server/am/MultiWindowManagerService;)V

    iput-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mAlarmStateListener:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mAlarmStateListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_37
    return-void

    :catch_38
    move-exception v2

    goto :goto_1e
.end method

.method public unRegisterCallback(Landroid/os/IBinder;)Z
    .registers 7

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mCallbackDeathRecipients:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v2, :cond_26

    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mCallbackDeathRecipients:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/MultiWindowManagerService$CallbackDeathRecipient;

    iget-object v4, v0, Lcom/android/server/am/MultiWindowManagerService$CallbackDeathRecipient;->mCallback:Landroid/os/IBinder;

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    invoke-interface {p1, v0, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mCallbackDeathRecipients:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0, p1}, Lcom/android/server/am/MultiWindowManagerService;->removeMinimizeCallback(Landroid/os/IBinder;)V

    const/4 v3, 0x1

    :cond_26
    return v3

    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_8
.end method

.method public updateArrangeState(Ljava/util/List;)I
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;)I"
        }
    .end annotation

    const/4 v11, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v0, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    iput v11, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentArrangeState:I

    if-eqz p1, :cond_6d

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_e
    :goto_e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ActivityRecord;

    iget v10, v8, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v10}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v6

    iget v10, v8, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v10}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v7

    const/high16 v10, 0x100

    if-ne v6, v10, :cond_38

    const/high16 v10, 0x40

    and-int/2addr v10, v7

    if-eqz v10, :cond_30

    const/4 v0, 0x2

    :cond_30
    :goto_30
    iget v10, v8, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit16 v10, v10, 0x1000

    if-eqz v10, :cond_e

    const/4 v1, 0x1

    goto :goto_e

    :cond_38
    const/high16 v10, 0x200

    if-ne v6, v10, :cond_30

    and-int/lit8 v9, v7, 0xf

    if-eqz v9, :cond_30

    and-int/lit8 v0, v0, -0x4

    const/4 v10, 0x3

    if-ne v9, v10, :cond_4a

    if-nez v5, :cond_4a

    or-int/lit8 v0, v0, 0x8

    goto :goto_30

    :cond_4a
    if-ne v9, v11, :cond_52

    and-int/lit8 v0, v0, -0x9

    or-int/lit8 v0, v0, 0x20

    const/4 v5, 0x1

    goto :goto_30

    :cond_52
    const/4 v10, 0x4

    if-ne v9, v10, :cond_30

    and-int/lit8 v0, v0, -0x9

    or-int/lit8 v0, v0, 0x10

    const/4 v5, 0x1

    goto :goto_30

    :cond_5b
    if-eqz v0, :cond_69

    and-int/lit8 v10, v0, 0x10

    if-eqz v10, :cond_97

    and-int/lit8 v10, v0, 0x20

    if-eqz v10, :cond_97

    const/16 v10, 0x40

    iput v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentArrangeState:I

    :cond_69
    :goto_69
    const/4 v10, 0x0

    invoke-virtual {p0, v1, v10}, Lcom/android/server/am/MultiWindowManagerService;->notifyMultiDisplayState(ZZ)Z

    :cond_6d
    iget v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mLastArrangeState:I

    iget v11, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentArrangeState:I

    if-eq v10, v11, :cond_9a

    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mCallbackDeathRecipients:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_79
    :goto_79
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/MultiWindowManagerService$CallbackDeathRecipient;

    iget v10, v3, Lcom/android/server/am/MultiWindowManagerService$CallbackDeathRecipient;->mType:I

    if-nez v10, :cond_79

    iget-object v10, v3, Lcom/android/server/am/MultiWindowManagerService$CallbackDeathRecipient;->mCallback:Landroid/os/IBinder;

    invoke-static {v10}, Landroid/sec/multiwindow/impl/IMultiWindowServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/sec/multiwindow/impl/IMultiWindowServiceCallback;

    move-result-object v2

    :try_start_8f
    iget v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentArrangeState:I

    invoke-interface {v2, v10}, Landroid/sec/multiwindow/impl/IMultiWindowServiceCallback;->onArrangeStateUpdate(I)V
    :try_end_94
    .catch Landroid/os/RemoteException; {:try_start_8f .. :try_end_94} :catch_95

    goto :goto_79

    :catch_95
    move-exception v10

    goto :goto_79

    :cond_97
    iput v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentArrangeState:I

    goto :goto_69

    :cond_9a
    iget v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentArrangeState:I

    iput v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mLastArrangeState:I

    iget v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentArrangeState:I

    return v10
.end method

.method public updateSplitZone(Lcom/android/server/am/ActivityRecord;Ljava/util/ArrayList;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/ActivityRecord;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;Z)V"
        }
    .end annotation

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v1, v1, Lcom/android/server/am/TaskRecord;->taskId:I

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v0

    iget v1, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v1}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v1

    const/high16 v2, 0x200

    if-ne v1, v2, :cond_25

    iget v1, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit8 v1, v1, -0x10

    iput v1, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    iget v1, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-virtual {p0, p2, p1}, Lcom/android/server/am/MultiWindowManagerService;->getNextSplitZone(Ljava/util/ArrayList;Lcom/android/server/am/ActivityRecord;)I

    move-result v2

    or-int/2addr v1, v2

    iput v1, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    :cond_25
    iget v1, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit8 v1, v1, 0xf

    if-eqz v1, :cond_36

    const-string v1, "android.intent.extra.WINDOW_LAST_SIZE"

    iget v2, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-virtual {p0, v2}, Lcom/android/server/am/MultiWindowManagerService;->calculateSplitWindowSize(I)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_36
    return-void
.end method

.method public updateSplitZoneAfterDestroy(Lcom/android/server/am/ActivityRecord;Ljava/util/List;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/ActivityRecord;",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;)Z"
        }
    .end annotation

    const/high16 v7, 0x4c

    const/4 v3, 0x1

    const/16 v6, 0xc

    const/4 v5, 0x3

    const/4 v2, 0x0

    if-eqz p2, :cond_25

    if-eqz p1, :cond_25

    iget v4, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit8 v1, v4, 0xf

    packed-switch v1, :pswitch_data_fa

    :cond_12
    :goto_12
    :pswitch_12
    return v2

    :pswitch_13
    invoke-virtual {p0, p2, v6}, Lcom/android/server/am/MultiWindowManagerService;->isEmptyZone(Ljava/util/List;I)Z

    move-result v4

    if-eqz v4, :cond_12

    iget v2, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/2addr v2, v7

    iput v2, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    iget v2, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const/high16 v4, 0x100

    or-int/2addr v2, v4

    iput v2, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    :cond_25
    :goto_25
    if-eqz p1, :cond_44

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v2, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {p0, v2, v4}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v0

    iget v2, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit8 v2, v2, 0xf

    if-eqz v2, :cond_44

    const-string v2, "android.intent.extra.WINDOW_LAST_SIZE"

    iget v4, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-virtual {p0, v4}, Lcom/android/server/am/MultiWindowManagerService;->calculateSplitWindowSize(I)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_44
    move v2, v3

    goto :goto_12

    :pswitch_46
    invoke-virtual {p0, p2, v5}, Lcom/android/server/am/MultiWindowManagerService;->isEmptyZone(Ljava/util/List;I)Z

    move-result v4

    if-eqz v4, :cond_12

    iget v2, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/2addr v2, v7

    iput v2, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    iget v2, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const/high16 v4, 0x100

    or-int/2addr v2, v4

    iput v2, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    goto :goto_25

    :pswitch_59
    const/4 v4, 0x2

    invoke-virtual {p0, p2, v4}, Lcom/android/server/am/MultiWindowManagerService;->isEmptyZone(Ljava/util/List;I)Z

    move-result v4

    if-eqz v4, :cond_6d

    iget v2, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit8 v2, v2, -0x10

    iput v2, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    iget v2, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    or-int/lit8 v2, v2, 0x3

    iput v2, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    goto :goto_25

    :cond_6d
    invoke-virtual {p0, p2, v6}, Lcom/android/server/am/MultiWindowManagerService;->isEmptyZone(Ljava/util/List;I)Z

    move-result v4

    if-eqz v4, :cond_12

    iget v2, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit8 v2, v2, -0x10

    iput v2, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    iget v2, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    or-int/lit8 v2, v2, 0xc

    iput v2, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    goto :goto_25

    :pswitch_80
    invoke-virtual {p0, p2, v3}, Lcom/android/server/am/MultiWindowManagerService;->isEmptyZone(Ljava/util/List;I)Z

    move-result v4

    if-eqz v4, :cond_93

    iget v2, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit8 v2, v2, -0x10

    iput v2, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    iget v2, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    or-int/lit8 v2, v2, 0x3

    iput v2, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    goto :goto_25

    :cond_93
    invoke-virtual {p0, p2, v6}, Lcom/android/server/am/MultiWindowManagerService;->isEmptyZone(Ljava/util/List;I)Z

    move-result v4

    if-eqz v4, :cond_12

    iget v2, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit8 v2, v2, -0x10

    iput v2, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    iget v2, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    or-int/lit8 v2, v2, 0xc

    iput v2, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    goto :goto_25

    :pswitch_a6
    const/16 v4, 0x8

    invoke-virtual {p0, p2, v4}, Lcom/android/server/am/MultiWindowManagerService;->isEmptyZone(Ljava/util/List;I)Z

    move-result v4

    if-eqz v4, :cond_bc

    iget v2, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit8 v2, v2, -0x10

    iput v2, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    iget v2, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    or-int/lit8 v2, v2, 0xc

    iput v2, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    goto/16 :goto_25

    :cond_bc
    invoke-virtual {p0, p2, v5}, Lcom/android/server/am/MultiWindowManagerService;->isEmptyZone(Ljava/util/List;I)Z

    move-result v4

    if-eqz v4, :cond_12

    iget v2, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit8 v2, v2, -0x10

    iput v2, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    iget v2, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    or-int/lit8 v2, v2, 0x3

    iput v2, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    goto/16 :goto_25

    :pswitch_d0
    const/4 v4, 0x4

    invoke-virtual {p0, p2, v4}, Lcom/android/server/am/MultiWindowManagerService;->isEmptyZone(Ljava/util/List;I)Z

    move-result v4

    if-eqz v4, :cond_e5

    iget v2, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit8 v2, v2, -0x10

    iput v2, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    iget v2, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    or-int/lit8 v2, v2, 0xc

    iput v2, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    goto/16 :goto_25

    :cond_e5
    invoke-virtual {p0, p2, v5}, Lcom/android/server/am/MultiWindowManagerService;->isEmptyZone(Ljava/util/List;I)Z

    move-result v4

    if-eqz v4, :cond_12

    iget v2, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit8 v2, v2, -0x10

    iput v2, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    iget v2, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    or-int/lit8 v2, v2, 0x3

    iput v2, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    goto/16 :goto_25

    nop

    :pswitch_data_fa
    .packed-switch 0x1
        :pswitch_59
        :pswitch_80
        :pswitch_13
        :pswitch_a6
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_d0
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_46
    .end packed-switch
.end method

.method public updateWindowInfo(ILandroid/content/ComponentName;Landroid/os/Bundle;)V
    .registers 9

    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    if-nez p3, :cond_e

    :try_start_5
    const-string v2, "MultiWindowManagerService"

    const-string v4, "updateWindowInfo: failed due because winInfo is null."

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v3

    :goto_d
    return-void

    :cond_e
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByTaskId:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    if-eqz v1, :cond_24

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_24
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByComponent:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    if-eqz v0, :cond_36

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_36
    monitor-exit v3

    goto :goto_d

    :catchall_38
    move-exception v2

    monitor-exit v3
    :try_end_3a
    .catchall {:try_start_5 .. :try_end_3a} :catchall_38

    throw v2
.end method
