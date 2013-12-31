.class final Lcom/android/server/am/ActivityStack;
.super Ljava/lang/Object;
.source "ActivityStack.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ActivityStack$DelayedRotationRequest;,
        Lcom/android/server/am/ActivityStack$ActivityStackHandler;,
        Lcom/android/server/am/ActivityStack$ScheduleDestroyArgs;,
        Lcom/android/server/am/ActivityStack$ActivityState;
    }
.end annotation


# static fields
.field static final ACTIVITY_INACTIVE_RESET_TIME:J = 0x0L

.field static final DEBUG_ADD_REMOVE:Z = false

.field static final DEBUG_APP:Z = false

.field static final DEBUG_CLEANUP:Z = false

.field static final DEBUG_CONFIGURATION:Z = false

#the value of this static final field might be set in the static constructor
.field static final DEBUG_MID:Z = false

#the value of this static final field might be set in the static constructor
.field private static final DEBUG_MULTIWINDOW:Z = false

.field static final DEBUG_ORIENTATION:Z = false

.field static final DEBUG_PAUSE:Z = false

.field static final DEBUG_RESULTS:Z = false

.field static final DEBUG_SAVED_STATE:Z = false

.field static final DEBUG_STATES:Z = false

.field static final DEBUG_SWITCH:Z = false

.field static final DEBUG_TASKS:Z = false

.field static final DEBUG_TRANSITION:Z = false

.field static final DEBUG_USER_LEAVING:Z = false

.field static final DEBUG_VISBILITY:Z = false

.field static final DELAY_TO_UNFREEZE:I = 0x1f4

.field static final DESTROY_ACTIVITIES_MSG:I = 0x6d

.field static final DESTROY_TIMEOUT:I = 0x2710

.field static final DESTROY_TIMEOUT_MSG:I = 0x69

.field private static final FINISH_AFTER_PAUSE:I = 0x1

.field private static final FINISH_AFTER_VISIBLE:I = 0x2

.field private static final FINISH_IMMEDIATELY:I = 0x0

.field static final IDLE_NOW_MSG:I = 0x67

.field static final IDLE_TIMEOUT:I = 0x2710

.field static final IDLE_TIMEOUT_MSG:I = 0x66

#the value of this static final field might be set in the static constructor
.field private static final IS_TYPE_MRVL:Z = false

.field static final LAUNCH_TICK:I = 0x1f4

.field static final LAUNCH_TICK_MSG:I = 0x6b

.field static final LAUNCH_TIMEOUT:I = 0x2710

.field static final LAUNCH_TIMEOUT_MSG:I = 0x68

.field static final PAUSE_TIMEOUT:I = 0x1f4

.field static final PAUSE_TIMEOUT_MSG:I = 0x65

.field static final RESUME_TOP_ACTIVITY_MSG:I = 0x6a

.field static final SHOW_APP_STARTING_PREVIEW:Z = true

.field static final SLEEP_TIMEOUT:I = 0x1388

.field static final SLEEP_TIMEOUT_MSG:I = 0x64

.field static final START_WARN_TIME:J = 0x1388L

.field static final STOP_TIMEOUT:I = 0x2710

.field static final STOP_TIMEOUT_MSG:I = 0x6c

.field static final TAG:Ljava/lang/String; = "ActivityManager"

.field static final VALIDATE_TOKENS:Z

.field private static final hardwareInfo:Ljava/lang/String;

.field private static lastPackageName:Ljava/lang/String;

.field static final localLOGV:Z

.field static final mActivityTrigger:Lcom/android/internal/app/ActivityTrigger;


# instance fields
.field mConfigWillChange:Z

.field final mContext:Landroid/content/Context;

.field mCurrentArrange:I

.field private mCurrentUser:I

.field mDelayedRotationRequest:Lcom/android/server/am/ActivityStack$DelayedRotationRequest;

.field mDismissKeyguardOnNextActivity:Z

.field final mFinishingActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mGoingToSleep:Landroid/os/PowerManager$WakeLock;

.field final mGoingToSleepActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mHandler:Landroid/os/Handler;

.field final mHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field mInitialStartTime:J

.field mIsFreeStyle:Z

.field mIsIdleNow:Z

.field final mIsMultiWindowEnabled:Z

.field mIsMultiWindowMode:Z

.field final mLRUActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

.field private mLastScreenshotActivity:Lcom/android/server/am/ActivityRecord;

.field private mLastScreenshotBitmap:Landroid/graphics/Bitmap;

.field mLastStartedActivity:Lcom/android/server/am/ActivityRecord;

.field final mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

.field final mMainStack:Z

.field final mNoAnimActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field mPausingActivities:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field mPausingActivity:Lcom/android/server/am/ActivityRecord;

.field mPendingDismissKeyguardOnNextActivity:Z

.field mResumedActivity:Lcom/android/server/am/ActivityRecord;

.field private mSecretThumbnail:Landroid/graphics/Bitmap;

.field final mService:Lcom/android/server/am/ActivityManagerService;

.field mSleepTimeout:Z

.field mSplitZoneInfo:Z

.field final mStartingUsers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/UserStartedState;",
            ">;"
        }
    .end annotation
.end field

.field final mStoppingActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field mThumbnailHeight:I

.field mThumbnailWidth:I

.field mUserLeaving:Z

.field final mValidateAppTokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field final mWaitingActivityLaunched:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/IActivityManager$WaitResult;",
            ">;"
        }
    .end annotation
.end field

.field final mWaitingActivityVisible:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/IActivityManager$WaitResult;",
            ">;"
        }
    .end annotation
.end field

.field final mWaitingVisibleActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v2, 0x0

    const/4 v1, 0x1

    const-string v0, "0x494d"

    const-string v3, "ro.debug_level"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_39

    move v0, v1

    :goto_11
    sput-boolean v0, Lcom/android/server/am/ActivityStack;->DEBUG_MID:Z

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-eq v0, v1, :cond_3b

    :goto_19
    sput-boolean v1, Lcom/android/server/am/ActivityStack;->DEBUG_MULTIWINDOW:Z

    const-string v0, "ro.hardware"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/ActivityStack;->hardwareInfo:Ljava/lang/String;

    const-string v0, "mrvl"

    const-string v1, "ro.board.platform"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/ActivityStack;->IS_TYPE_MRVL:Z

    new-instance v0, Lcom/android/internal/app/ActivityTrigger;

    invoke-direct {v0}, Lcom/android/internal/app/ActivityTrigger;-><init>()V

    sput-object v0, Lcom/android/server/am/ActivityStack;->mActivityTrigger:Lcom/android/internal/app/ActivityTrigger;

    return-void

    :cond_39
    move v0, v2

    goto :goto_11

    :cond_3b
    move v1, v2

    goto :goto_19
.end method

.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;ZLandroid/os/Looper;)V
    .registers 12

    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mValidateAppTokens:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mStoppingActivities:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mGoingToSleepActivities:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mFinishingActivities:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mWaitingActivityVisible:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mStartingUsers:Ljava/util/ArrayList;

    iput-object v4, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    iput-boolean v3, p0, Lcom/android/server/am/ActivityStack;->mSplitZoneInfo:Z

    iput v3, p0, Lcom/android/server/am/ActivityStack;->mCurrentArrange:I

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mPausingActivities:Ljava/util/LinkedList;

    iput-boolean v3, p0, Lcom/android/server/am/ActivityStack;->mIsIdleNow:Z

    iput-boolean v3, p0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowMode:Z

    iput-boolean v3, p0, Lcom/android/server/am/ActivityStack;->mIsFreeStyle:Z

    iput-object v4, p0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    iput-object v4, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    iput-object v4, p0, Lcom/android/server/am/ActivityStack;->mLastStartedActivity:Lcom/android/server/am/ActivityRecord;

    iput-boolean v3, p0, Lcom/android/server/am/ActivityStack;->mUserLeaving:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/am/ActivityStack;->mInitialStartTime:J

    iput-boolean v3, p0, Lcom/android/server/am/ActivityStack;->mSleepTimeout:Z

    iput-boolean v3, p0, Lcom/android/server/am/ActivityStack;->mDismissKeyguardOnNextActivity:Z

    iput-object v4, p0, Lcom/android/server/am/ActivityStack;->mLastScreenshotActivity:Lcom/android/server/am/ActivityRecord;

    iput-object v4, p0, Lcom/android/server/am/ActivityStack;->mLastScreenshotBitmap:Landroid/graphics/Bitmap;

    iput-boolean v3, p0, Lcom/android/server/am/ActivityStack;->mPendingDismissKeyguardOnNextActivity:Z

    iput v5, p0, Lcom/android/server/am/ActivityStack;->mThumbnailWidth:I

    iput v5, p0, Lcom/android/server/am/ActivityStack;->mThumbnailHeight:I

    iput-object v4, p0, Lcom/android/server/am/ActivityStack;->mDelayedRotationRequest:Lcom/android/server/am/ActivityStack$DelayedRotationRequest;

    new-instance v1, Lcom/android/server/am/ActivityStack$ActivityStackHandler;

    invoke-direct {v1, p0, p4}, Lcom/android/server/am/ActivityStack$ActivityStackHandler;-><init>(Lcom/android/server/am/ActivityStack;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object p2, p0, Lcom/android/server/am/ActivityStack;->mContext:Landroid/content/Context;

    iput-boolean p3, p0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    const-string v1, "power"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const-string v1, "ActivityManager-Sleep"

    invoke-virtual {v0, v6, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    const-string v1, "ActivityManager-Launch"

    invoke-virtual {v0, v6, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isEnabled(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    return-void
.end method

.method private applyWindowModeLocked(Lcom/android/server/am/ActivityRecord;Z)V
    .registers 8

    iget v2, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const/high16 v3, 0x40

    and-int/2addr v2, v3

    if-nez v2, :cond_16

    const-string v2, "android"

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    iget-boolean v2, p1, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-eqz v2, :cond_16

    :cond_15
    :goto_15
    return-void

    :cond_16
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_1e
    if-ltz v0, :cond_53

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_30

    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-eqz v2, :cond_3e

    :cond_30
    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v2, v3, :cond_3e

    if-eq v1, p1, :cond_3e

    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    if-nez v2, :cond_41

    :cond_3e
    add-int/lit8 v0, v0, -0x1

    goto :goto_1e

    :cond_41
    iget v2, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const/high16 v3, 0x4c

    and-int/2addr v2, v3

    iput v2, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    iget v2, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    iget v3, v1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const v4, -0x4c0001

    and-int/2addr v3, v4

    or-int/2addr v2, v3

    iput v2, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    :cond_53
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->isHomeTask(Lcom/android/server/am/ActivityRecord;)Z

    move-result v2

    if-eqz v2, :cond_15

    iget v2, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const v3, -0x400001

    and-int/2addr v2, v3

    iput v2, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    goto :goto_15
.end method

.method private checkCUVas(Lcom/android/server/am/ActivityRecord;Landroid/content/Intent;)Z
    .registers 16

    const-string v8, ""

    const-string v4, ""

    const-string v2, ""

    const/4 v9, 0x0

    const/4 v6, 0x0

    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->isMultiSimSlot()Z

    move-result v10

    if-eqz v10, :cond_136

    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getInsertedSimNum()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_112

    const/4 v10, 0x0

    invoke-static {v10}, Landroid/telephony/MultiSimTelephonyManager;->getDefault(I)Landroid/telephony/MultiSimTelephonyManager;

    move-result-object v6

    if-nez v6, :cond_1e

    const/4 v0, 0x0

    :cond_1d
    :goto_1d
    return v0

    :cond_1e
    invoke-virtual {v6}, Landroid/telephony/MultiSimTelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v8

    :cond_22
    :goto_22
    const/4 v0, 0x0

    const/4 v7, 0x0

    const/4 v1, 0x0

    const-string v10, "46001"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v11

    const-string v12, "CscFeature_Framework_CheckValidApp4SpecificMccMnc"

    invoke-virtual {v11, v12}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_15a

    const-string v10, "46001"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_15a

    const/4 v10, 0x7

    new-array v7, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "com.neusoft.td.android.wo116114"

    aput-object v11, v7, v10

    const/4 v10, 0x1

    const-string v11, "com.android.wo3g"

    aput-object v11, v7, v10

    const/4 v10, 0x2

    const-string v11, "com.infinit.wostore.ui"

    aput-object v11, v7, v10

    const/4 v10, 0x3

    const-string v11, "com.sinovatech.unicom.ui"

    aput-object v11, v7, v10

    const/4 v10, 0x4

    const-string v11, "com.neusoft.td.android.wo116114"

    aput-object v11, v7, v10

    const/4 v10, 0x5

    const-string v11, "com.asiainfo.android"

    aput-object v11, v7, v10

    const/4 v10, 0x6

    const-string v11, "com.samsung.wo3g"

    aput-object v11, v7, v10

    const/4 v10, 0x7

    new-array v1, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "com.neusoft.td.android.wo116114.ui.main.MainActivity"

    aput-object v11, v1, v10

    const/4 v10, 0x1

    const-string v11, "com.android.wo3g.wo3g"

    aput-object v11, v1, v10

    const/4 v10, 0x2

    const-string v11, "com.infinit.wostore.ui.ZBeginActivity"

    aput-object v11, v1, v10

    const/4 v10, 0x3

    const-string v11, "com.sinovatech.unicom.ui.WelcomeClient"

    aput-object v11, v1, v10

    const/4 v10, 0x4

    const-string v11, "com.neusoft.td.android.wo116114.activity.WelcomeActivity"

    aput-object v11, v1, v10

    const/4 v10, 0x5

    const-string v11, "com.asiainfo.android.MainActivity"

    aput-object v11, v1, v10

    const/4 v10, 0x6

    const-string v11, "com.samsung.wo3g.wo3g"

    aput-object v11, v1, v10

    :cond_8b
    :goto_8b
    if-eqz v7, :cond_1d

    const-string v10, "46001"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v11

    const-string v12, "CscFeature_Framework_CheckValidApp4SpecificMccMnc"

    invoke-virtual {v11, v12}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1bc

    if-eqz p1, :cond_1d

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    if-eqz v5, :cond_d1

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    if-eqz v10, :cond_d1

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_d1

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    if-eqz v10, :cond_d1

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1d

    :cond_d1
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    if-eqz v10, :cond_1d

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_1d

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_1d

    const/4 v3, 0x0

    :goto_ec
    array-length v10, v1

    if-ge v3, v10, :cond_1d

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    aget-object v11, v7, v3

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1b8

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v10

    aget-object v11, v1, v3

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1b8

    const/4 v0, 0x1

    goto/16 :goto_1d

    :cond_112
    const-string v10, "persist.sys.dataprefer.simid"

    const-string v11, ""

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_123

    const/4 v0, 0x0

    goto/16 :goto_1d

    :cond_123
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Landroid/telephony/MultiSimTelephonyManager;->getDefault(I)Landroid/telephony/MultiSimTelephonyManager;

    move-result-object v6

    if-nez v6, :cond_130

    const/4 v0, 0x0

    goto/16 :goto_1d

    :cond_130
    invoke-virtual {v6}, Landroid/telephony/MultiSimTelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_22

    :cond_136
    iget-object v10, p0, Lcom/android/server/am/ActivityStack;->mContext:Landroid/content/Context;

    const-string v11, "phone"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/TelephonyManager;

    if-nez v9, :cond_145

    const/4 v0, 0x0

    goto/16 :goto_1d

    :cond_145
    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_22

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x4

    if-le v10, v11, :cond_22

    const/4 v10, 0x0

    const/4 v11, 0x5

    invoke-virtual {v4, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_22

    :cond_15a
    const-string v10, "46000"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v11

    const-string v12, "CscFeature_Framework_CheckValidApp4SpecificMccMnc"

    invoke-virtual {v11, v12}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8b

    const-string v10, "46000"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_8b

    const-string v10, "46002"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_8b

    const-string v10, "46007"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_8b

    const/16 v10, 0x9

    new-array v7, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "com.aspire.mm"

    aput-object v11, v7, v10

    const/4 v10, 0x1

    const-string v11, "com.autonavi.cmccmap"

    aput-object v11, v7, v10

    const/4 v10, 0x2

    const-string v11, "com.cmcc.mobilevideo"

    aput-object v11, v7, v10

    const/4 v10, 0x3

    const-string v11, "cmccwm.mobilemusic"

    aput-object v11, v7, v10

    const/4 v10, 0x4

    const-string v11, "com.chinamobile.cmccwifi"

    aput-object v11, v7, v10

    const/4 v10, 0x5

    const-string v11, "cn.emagsoftware.gamehall"

    aput-object v11, v7, v10

    const/4 v10, 0x6

    const-string v11, "com.hisunflytone.android"

    aput-object v11, v7, v10

    const/4 v10, 0x7

    const-string v11, "com.huawei.pisa.activity"

    aput-object v11, v7, v10

    const/16 v10, 0x8

    const-string v11, "com.sec.android.app.customerservice"

    aput-object v11, v7, v10

    goto/16 :goto_8b

    :cond_1b8
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_ec

    :cond_1bc
    const-string v10, "46000"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v11

    const-string v12, "CscFeature_Framework_CheckValidApp4SpecificMccMnc"

    invoke-virtual {v11, v12}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1d

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    if-eqz v10, :cond_1d

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_1d

    const/4 v3, 0x0

    :goto_1df
    array-length v10, v7

    if-ge v3, v10, :cond_1d

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    aget-object v11, v7, v3

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1f5

    const/4 v0, 0x1

    goto/16 :goto_1d

    :cond_1f5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1df
.end method

.method private checkSplitState()Z
    .registers 8

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    add-int/lit8 v1, v0, -0x1

    :goto_a
    if-ltz v1, :cond_18

    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    iget-boolean v5, v3, Lcom/android/server/am/ActivityRecord;->isHomeActivity:Z

    if-eqz v5, :cond_19

    :cond_18
    :goto_18
    return v4

    :cond_19
    iget v5, v3, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const/high16 v6, 0x10

    and-int/2addr v5, v6

    if-nez v5, :cond_32

    iget v5, v3, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const/high16 v6, 0x20

    and-int/2addr v5, v6

    if-nez v5, :cond_32

    iget v5, v3, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit8 v5, v5, 0xf

    or-int/2addr v2, v5

    const/16 v5, 0xf

    if-ne v2, v5, :cond_32

    const/4 v4, 0x1

    goto :goto_18

    :cond_32
    add-int/lit8 v1, v1, -0x1

    goto :goto_a
.end method

.method private clearWindowModeLocked(Lcom/android/server/am/TaskRecord;)V
    .registers 7

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_20

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v3, p1, :cond_1d

    iget v3, v2, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const v4, -0x400001

    and-int/2addr v3, v4

    iput v3, v2, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_20
    return-void
.end method

.method private final completePauseLocked()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    invoke-direct {p0, v0}, Lcom/android/server/am/ActivityStack;->completePauseLocked(Lcom/android/server/am/ActivityRecord;)V

    return-void
.end method

.method private final completePauseLocked(Lcom/android/server/am/ActivityRecord;)V
    .registers 16

    if-eqz p1, :cond_29

    iget-boolean v8, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v8, :cond_96

    iget v8, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v8}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v8

    const/high16 v9, 0x200

    if-ne v8, v9, :cond_8f

    iget v8, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v8}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v8

    and-int/lit8 v8, v8, 0xf

    if-nez v8, :cond_8f

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {p0, p1, v8, v9}, Lcom/android/server/am/ActivityStack;->finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Lcom/android/server/am/ActivityRecord;

    move-result-object p1

    :goto_20
    iget-boolean v8, p0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v8, :cond_f0

    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mPausingActivities:Ljava/util/LinkedList;

    invoke-virtual {v8, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    :cond_29
    :goto_29
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v8}, Lcom/android/server/am/ActivityManagerService;->isSleeping()Z

    move-result v8

    if-nez v8, :cond_f5

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    :cond_34
    :goto_34
    if-eqz p1, :cond_8e

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->resumeKeyDispatchingLocked()V

    iget-object v8, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v8, :cond_8a

    iget-wide v8, p1, Lcom/android/server/am/ActivityRecord;->cpuTimeAtResume:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_8a

    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {v8}, Lcom/android/server/am/BatteryStatsService;->isOnBattery()Z

    move-result v8

    if-eqz v8, :cond_8a

    const-wide/16 v1, 0x0

    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v8, Lcom/android/server/am/ActivityManagerService;->mProcessStatsThread:Ljava/lang/Thread;

    monitor-enter v9

    :try_start_56
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/internal/os/ProcessStats;

    iget-object v10, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v10, v10, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v8, v10}, Lcom/android/internal/os/ProcessStats;->getCpuTimeForPid(I)J

    move-result-wide v10

    iget-wide v12, p1, Lcom/android/server/am/ActivityRecord;->cpuTimeAtResume:J

    sub-long v1, v10, v12

    monitor-exit v9
    :try_end_67
    .catchall {:try_start_56 .. :try_end_67} :catchall_118

    const-wide/16 v8, 0x0

    cmp-long v8, v1, v8

    if-lez v8, :cond_8a

    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {v8}, Lcom/android/server/am/BatteryStatsService;->getActiveStatistics()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v0

    monitor-enter v0

    :try_start_76
    iget-object v8, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v9, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl;->getProcessStatsLocked(ILjava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    move-result-object v4

    if-eqz v4, :cond_89

    invoke-virtual {v4, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->addForegroundTimeLocked(J)V

    :cond_89
    monitor-exit v0
    :try_end_8a
    .catchall {:try_start_76 .. :try_end_8a} :catchall_11b

    :cond_8a
    const-wide/16 v8, 0x0

    iput-wide v8, p1, Lcom/android/server/am/ActivityRecord;->cpuTimeAtResume:J

    :cond_8e
    return-void

    :cond_8f
    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-direct {p0, p1, v8, v9}, Lcom/android/server/am/ActivityStack;->finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Lcom/android/server/am/ActivityRecord;

    move-result-object p1

    goto :goto_20

    :cond_96
    iget-object v8, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v8, :cond_ed

    iget-boolean v8, p1, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    if-eqz v8, :cond_a6

    const/4 v8, 0x0

    iput-boolean v8, p1, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_a6
    iget-boolean v8, p1, Lcom/android/server/am/ActivityRecord;->configDestroy:Z

    if-eqz v8, :cond_b3

    const/4 v8, 0x1

    const/4 v9, 0x0

    const-string v10, "pause-config"

    invoke-virtual {p0, p1, v8, v9, v10}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZZLjava/lang/String;)Z

    goto/16 :goto_20

    :cond_b3
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {p0, v8, v9}, Lcom/android/server/am/ActivityStack;->getFrontResumedActivities(ZZ)Ljava/util/ArrayList;

    move-result-object v5

    invoke-static {}, Lcom/android/server/am/MultiWindowManagerService;->getSelf()Lcom/android/server/am/MultiWindowManagerService;

    move-result-object v3

    iget-boolean v8, p0, Lcom/android/server/am/ActivityStack;->mIsIdleNow:Z

    if-nez v8, :cond_cc

    invoke-virtual {v3, v5, p1}, Lcom/android/server/am/MultiWindowManagerService;->checkIdleStateNow(Ljava/util/ArrayList;Lcom/android/server/am/ActivityRecord;)Z

    move-result v8

    if-eqz v8, :cond_e6

    :cond_cc
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mPausingActivities:Ljava/util/LinkedList;

    invoke-virtual {v8}, Ljava/util/LinkedList;->size()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_e6

    const/4 v6, 0x1

    :goto_d6
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x3

    if-gt v8, v9, :cond_e1

    if-eqz v6, :cond_e8

    :cond_e1
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->scheduleIdleLocked()V

    goto/16 :goto_20

    :cond_e6
    const/4 v6, 0x0

    goto :goto_d6

    :cond_e8
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->checkReadyForSleepLocked()V

    goto/16 :goto_20

    :cond_ed
    const/4 p1, 0x0

    goto/16 :goto_20

    :cond_f0
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    goto/16 :goto_29

    :cond_f5
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->checkReadyForSleepLocked()V

    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v7

    if-eqz v7, :cond_103

    iget-boolean v8, p0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v8, :cond_113

    :cond_103
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->topResumedActivitiesLocked()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_34

    :goto_10d
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    goto/16 :goto_34

    :cond_113
    if-eqz p1, :cond_34

    if-eq v7, p1, :cond_34

    goto :goto_10d

    :catchall_118
    move-exception v8

    :try_start_119
    monitor-exit v9
    :try_end_11a
    .catchall {:try_start_119 .. :try_end_11a} :catchall_118

    throw v8

    :catchall_11b
    move-exception v8

    :try_start_11c
    monitor-exit v0
    :try_end_11d
    .catchall {:try_start_11c .. :try_end_11d} :catchall_11b

    throw v8
.end method

.method private final completeResumeLocked(Lcom/android/server/am/ActivityRecord;)V
    .registers 10

    const/4 v7, 0x0

    const/4 v6, 0x0

    iput-boolean v7, p1, Lcom/android/server/am/ActivityRecord;->idle:Z

    iput-object v6, p1, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    iput-object v6, p1, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x66

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    iput-object p1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x2710

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-boolean v3, p0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v3, :cond_22

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3, p1}, Lcom/android/server/am/ActivityManagerService;->reportResumedActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    :cond_22
    iget-boolean v3, p0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v3, :cond_36

    iget-boolean v3, p0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v3, :cond_53

    invoke-direct {p0}, Lcom/android/server/am/ActivityStack;->updatePinupHiddenFlag()V

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0, v6}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityManagerService;->setFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    :cond_36
    :goto_36
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3c
    :goto_3c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_59

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->pendingNotifyWindowState:Z

    if-eqz v3, :cond_3c

    iget v3, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const/4 v4, 0x1

    invoke-virtual {p0, v0, v3, v7, v4}, Lcom/android/server/am/ActivityStack;->notifyWindowStatusChangedLocked(Lcom/android/server/am/ActivityRecord;IIZ)V

    goto :goto_3c

    :cond_53
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3, p1}, Lcom/android/server/am/ActivityManagerService;->setFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    goto :goto_36

    :cond_59
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->resumeKeyDispatchingLocked()V

    invoke-virtual {p0, v6, v7}, Lcom/android/server/am/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_87

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v3, Lcom/android/server/am/ActivityManagerService;->mProcessStatsThread:Ljava/lang/Thread;

    monitor-enter v4

    :try_start_74
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/internal/os/ProcessStats;

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v5, v5, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v3, v5}, Lcom/android/internal/os/ProcessStats;->getCpuTimeForPid(I)J

    move-result-wide v5

    iput-wide v5, p1, Lcom/android/server/am/ActivityRecord;->cpuTimeAtResume:J

    monitor-exit v4

    :goto_83
    return-void

    :catchall_84
    move-exception v3

    monitor-exit v4
    :try_end_86
    .catchall {:try_start_74 .. :try_end_86} :catchall_84

    throw v3

    :cond_87
    const-wide/16 v3, 0x0

    iput-wide v3, p1, Lcom/android/server/am/ActivityRecord;->cpuTimeAtResume:J

    goto :goto_83
.end method

.method private final findActivityInHistoryLocked(Lcom/android/server/am/ActivityRecord;I)I
    .registers 7

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    :cond_6
    if-lez v1, :cond_1c

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    iget-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v2, :cond_6

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v2, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    if-eq v2, p2, :cond_1e

    :cond_1c
    const/4 v2, -0x1

    :goto_1d
    return v2

    :cond_1e
    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    move v2, v1

    goto :goto_1d
.end method

.method private findActivityLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Lcom/android/server/am/ActivityRecord;
    .registers 10

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    iget-object v5, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    if-eqz v5, :cond_11

    new-instance v1, Landroid/content/ComponentName;

    iget-object v5, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v6, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    invoke-direct {v1, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    iget-object v5, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    :goto_21
    if-ltz v2, :cond_43

    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    iget-boolean v5, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v5, :cond_40

    iget-object v5, v3, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_40

    iget v5, v3, Lcom/android/server/am/ActivityRecord;->userId:I

    if-ne v5, v4, :cond_40

    :goto_3f
    return-object v3

    :cond_40
    add-int/lit8 v2, v2, -0x1

    goto :goto_21

    :cond_43
    const/4 v3, 0x0

    goto :goto_3f
.end method

.method private findTaskLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Lcom/android/server/am/ActivityRecord;
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/am/ActivityStack;->findTaskLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Z)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method private findTaskLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Z)Lcom/android/server/am/ActivityRecord;
    .registers 14

    const/high16 v9, 0x800

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    iget-object v7, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    if-eqz v7, :cond_13

    new-instance v1, Landroid/content/ComponentName;

    iget-object v7, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v8, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    invoke-direct {v1, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_13
    const/4 v2, 0x0

    const/4 v4, 0x0

    iget-object v7, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    :goto_25
    if-ltz v3, :cond_cb

    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityRecord;

    iget-boolean v7, v5, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v7, :cond_98

    iget-object v7, v5, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eq v7, v2, :cond_98

    iget v7, v5, Lcom/android/server/am/ActivityRecord;->userId:I

    if-ne v7, v6, :cond_98

    if-eqz p3, :cond_9b

    :goto_3d
    iget-object v2, v5, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v7, v5, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v7, v7, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    if-eqz v7, :cond_a1

    iget-object v7, v5, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v7, v7, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    iget-object v8, p2, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_98

    if-nez v4, :cond_b5

    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v7

    and-int/2addr v7, v9

    if-nez v7, :cond_b5

    iget-object v7, v5, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v7, v7, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v7, :cond_b5

    iget-object v7, v5, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v7, v7, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getFlags()I

    move-result v7

    and-int/2addr v7, v9

    if-eqz v7, :cond_b5

    iget-object v7, v5, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v7, v7, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b5

    iget-object v7, v5, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v8, p2, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b5

    iget-object v7, v5, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v8, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v7, v8, :cond_97

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->canResumedActivitiesLocked()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b5

    :cond_97
    move-object v4, v5

    :cond_98
    add-int/lit8 v3, v3, -0x1

    goto :goto_25

    :cond_9b
    iget v7, v5, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v8, 0x3

    if-eq v7, v8, :cond_98

    goto :goto_3d

    :cond_a1
    iget-object v7, v5, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v7, v7, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v7, :cond_b6

    iget-object v7, v5, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v7, v7, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b6

    :cond_b5
    :goto_b5
    return-object v5

    :cond_b6
    iget-object v7, v5, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v7, v7, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    if-eqz v7, :cond_98

    iget-object v7, v5, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v7, v7, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_98

    goto :goto_b5

    :cond_cb
    if-eqz v4, :cond_cf

    move-object v5, v4

    goto :goto_b5

    :cond_cf
    const/4 v5, 0x0

    goto :goto_b5
.end method

.method private findTaskWithZone(I)Lcom/android/server/am/TaskRecord;
    .registers 6

    const/4 v0, -0x1

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    :goto_9
    if-ltz v1, :cond_2d

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    iget-boolean v3, v2, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v3, :cond_1a

    :cond_17
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    :cond_1a
    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v3, v3, Lcom/android/server/am/TaskRecord;->taskId:I

    if-eq v3, v0, :cond_17

    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v0, v3, Lcom/android/server/am/TaskRecord;->taskId:I

    iget v3, v2, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit8 v3, v3, 0xf

    if-ne v3, p1, :cond_17

    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    :goto_2c
    return-object v3

    :cond_2d
    const/4 v3, 0x0

    goto :goto_2c
.end method

.method private final finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;IIZ)Lcom/android/server/am/ActivityRecord;
    .registers 14

    const/4 v6, 0x0

    const/4 v7, 0x2

    if-ne p3, v7, :cond_65

    iget-boolean v7, p1, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-eqz v7, :cond_65

    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_55

    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->canResumedActivitiesLocked()Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    iget-object v6, v4, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v7, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v6, v7, :cond_20

    const/4 v2, 0x0

    :cond_33
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x3

    if-gt v6, v7, :cond_52

    iget v6, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v6}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v6

    const/high16 v7, 0x200

    if-ne v6, v7, :cond_50

    iget v6, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v6}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v6

    and-int/lit8 v6, v6, 0xf

    if-eqz v6, :cond_52

    :cond_50
    if-eqz v2, :cond_61

    :cond_52
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->scheduleIdleLocked()V

    :cond_55
    :goto_55
    sget-object v6, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v6, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eqz p4, :cond_60

    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked()V

    :cond_60
    :goto_60
    return-object p1

    :cond_61
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->checkReadyForSleepLocked()V

    goto :goto_55

    :cond_65
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mGoingToSleepActivities:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v7, p1, :cond_7a

    iput-object v6, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    :cond_7a
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v7, Lcom/android/server/am/ActivityStack$ActivityState;->FINISHING:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v7, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eqz p3, :cond_8a

    sget-object v7, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v3, v7, :cond_8a

    sget-object v7, Lcom/android/server/am/ActivityStack$ActivityState;->INITIALIZING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v3, v7, :cond_9a

    :cond_8a
    const/4 v7, 0x1

    const-string v8, "finish-imm"

    invoke-virtual {p0, p1, v7, p4, v8}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZZLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_96

    invoke-virtual {p0, v6}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    :cond_96
    if-eqz v0, :cond_60

    move-object p1, v6

    goto :goto_60

    :cond_9a
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mFinishingActivities:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v6}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    goto :goto_60
.end method

.method private final finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Lcom/android/server/am/ActivityRecord;
    .registers 6

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->indexOfActivityLocked(Lcom/android/server/am/ActivityRecord;)I

    move-result v0

    if-gez v0, :cond_8

    const/4 v1, 0x0

    :goto_7
    return-object v1

    :cond_8
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/server/am/ActivityStack;->finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;IIZ)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    goto :goto_7
.end method

.method private final finishTaskMoveLocked(I)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    return-void
.end method

.method private getFrontResumedActivities(ZZZ)Ljava/util/ArrayList;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZ)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    monitor-enter p0

    :try_start_6
    iget-object v9, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    add-int/lit8 v3, v0, -0x1

    :goto_11
    if-ltz v3, :cond_80

    iget-object v9, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ActivityRecord;

    iget-object v9, v8, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v9, v9, Lcom/android/server/am/TaskRecord;->taskId:I

    if-eq v1, v9, :cond_3d

    if-eqz p3, :cond_29

    invoke-direct {p0, v8}, Lcom/android/server/am/ActivityStack;->okToShow(Lcom/android/server/am/ActivityRecord;)Z

    move-result v9

    if-eqz v9, :cond_3d

    :cond_29
    if-eqz v5, :cond_39

    iget-object v9, v8, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v9, v9, Lcom/android/server/am/TaskRecord;->taskId:I

    iget-object v10, v5, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v10, v10, Lcom/android/server/am/TaskRecord;->taskId:I

    if-eq v9, v10, :cond_39

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x0

    :cond_39
    iget-boolean v9, v8, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v9, :cond_40

    :cond_3d
    :goto_3d
    add-int/lit8 v3, v3, -0x1

    goto :goto_11

    :cond_40
    iget v9, v8, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v9}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v6

    iget v9, v8, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v9}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v7

    iget v10, v8, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    if-eqz v4, :cond_69

    const/4 v9, 0x1

    :goto_51
    invoke-static {v10, v9, p1}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isArrangeMode(IZZ)Z

    move-result v9

    if-eqz v9, :cond_7e

    iget-boolean v9, v8, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-nez v9, :cond_77

    iget v9, v8, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v9}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v9

    const/high16 v10, 0x4

    and-int/2addr v9, v10

    if-nez v9, :cond_77

    const/4 v4, 0x1

    move-object v5, v8

    goto :goto_3d

    :cond_69
    if-eqz p2, :cond_75

    iget-object v9, v8, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v11, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v9, v11, :cond_73

    const/4 v9, 0x1

    goto :goto_51

    :cond_73
    const/4 v9, 0x0

    goto :goto_51

    :cond_75
    const/4 v9, 0x1

    goto :goto_51

    :cond_77
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v9, v8, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v1, v9, Lcom/android/server/am/TaskRecord;->taskId:I

    :cond_7e
    const/4 v4, 0x0

    goto :goto_3d

    :cond_80
    monitor-exit p0

    return-object v2

    :catchall_82
    move-exception v9

    monitor-exit p0
    :try_end_84
    .catchall {:try_start_6 .. :try_end_84} :catchall_82

    throw v9
.end method

.method private getFrontZoneActivity(Lcom/android/server/am/ActivityRecord;IZ)Lcom/android/server/am/ActivityRecord;
    .registers 11

    const/4 v4, 0x0

    monitor-enter p0

    if-nez p3, :cond_12

    :try_start_4
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    iget v5, v3, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const/high16 v6, 0x40

    and-int/2addr v5, v6

    if-eqz v5, :cond_12

    monitor-exit p0

    move-object v2, v4

    :goto_11
    return-object v2

    :cond_12
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_1a
    if-ltz v1, :cond_3c

    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    iget v5, v2, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v5}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v5

    const/high16 v6, 0x200

    if-ne v5, v6, :cond_39

    iget v5, v2, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit8 v5, v5, 0xf

    if-ne v5, p2, :cond_39

    monitor-exit p0

    goto :goto_11

    :catchall_36
    move-exception v4

    monitor-exit p0
    :try_end_38
    .catchall {:try_start_4 .. :try_end_38} :catchall_36

    throw v4

    :cond_39
    add-int/lit8 v1, v1, -0x1

    goto :goto_1a

    :cond_3c
    :try_start_3c
    monitor-exit p0
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_36

    move-object v2, v4

    goto :goto_11
.end method

.method private getTaskWindowModeLocked(Lcom/android/server/am/TaskRecord;)I
    .registers 6

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_8
    if-ltz v0, :cond_24

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v2, :cond_21

    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v2, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    iget v3, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v2, v3, :cond_21

    iget v2, v1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    :goto_20
    return v2

    :cond_21
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_24
    const/high16 v2, 0x100

    goto :goto_20
.end method

.method private final logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V
    .registers 13

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v2, p2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_76

    invoke-virtual {v0}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object v1

    :goto_11
    iget-object v2, p2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_78

    iget-object v2, p2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "nfc://secure"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_78

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p2, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    iget v3, p3, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    iget-object v3, p2, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v3, v2, v7

    iget-object v3, p2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    const/4 v3, 0x5

    iget-object v4, p2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "nfc://secure:it should not be shown "

    aput-object v4, v2, v3

    const/4 v3, 0x7

    iget-object v4, p2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getFlags()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x8

    iget-object v4, p2, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {p1, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    :goto_75
    return-void

    :cond_76
    const/4 v1, 0x0

    goto :goto_11

    :cond_78
    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p2, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    iget v3, p3, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    iget-object v3, p2, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v3, v2, v7

    iget-object v3, p2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    const/4 v3, 0x5

    iget-object v4, p2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    aput-object v1, v2, v3

    const/4 v3, 0x7

    iget-object v4, p2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getFlags()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x8

    iget-object v4, p2, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {p1, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    goto :goto_75
.end method

.method private makeSecretThumbnail()V
    .registers 8

    const/4 v6, 0x0

    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x1050001

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v5, 0x1050002

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    const v5, 0x1081053

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v2, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/am/ActivityStack;->mSecretThumbnail:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mSecretThumbnail:Landroid/graphics/Bitmap;

    invoke-direct {v0, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v6, v6, v4, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private final moveActivityToFrontLocked(I)Lcom/android/server/am/ActivityRecord;
    .registers 8

    const/4 v5, 0x1

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_CIQ_BroadcastState"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-ne v3, v5, :cond_39

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_39

    iget-object v3, v1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/server/am/AppStateBroadcaster;->SendApplicationFocusLoss(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/server/am/AppStateBroadcaster;->SendApplicationFocusGain(Ljava/lang/String;)V

    :cond_39
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    iput-boolean v5, v0, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    return-object v0
.end method

.method private moveTaskToFrontLocked(I)V
    .registers 10

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_16
    if-ge v1, v0, :cond_4b

    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityRecord;

    iget-object v6, v5, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v6, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v6, p1, :cond_37

    invoke-direct {p0, v5}, Lcom/android/server/am/ActivityStack;->okToShow(Lcom/android/server/am/ActivityRecord;)Z

    move-result v6

    if-eqz v6, :cond_37

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, v5, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_34
    :goto_34
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_37
    iget v6, v5, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const/high16 v7, 0x80

    and-int/2addr v6, v7

    if-eqz v6, :cond_34

    iget v6, v5, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const/high16 v7, 0x10

    and-int/2addr v6, v7

    if-nez v6, :cond_34

    iget-object v6, v5, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_34

    :cond_4b
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v6, v3}, Lcom/android/server/wm/WindowManagerService;->moveAppTokensToTop(Ljava/util/List;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_69

    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v6, v4}, Lcom/android/server/wm/WindowManagerService;->moveAppTokensToTop(Ljava/util/List;)V

    :cond_69
    return-void
.end method

.method private needsPinupActivtiesFoceHidden()Z
    .registers 8

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->isKeyguardLocked()Z

    move-result v5

    if-eqz v5, :cond_46

    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->isKeyguardSecure()Z

    move-result v5

    if-eqz v5, :cond_16

    :cond_15
    :goto_15
    return v4

    :cond_16
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_1e
    if-ltz v1, :cond_46

    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    iget-boolean v5, v3, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v5, :cond_48

    iget v5, v3, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const/high16 v6, 0x100

    and-int/2addr v5, v6

    if-eqz v5, :cond_48

    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v3, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v5, v6}, Lcom/android/server/wm/WindowManagerService;->getMainWindowAttributes(Landroid/view/IApplicationToken;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_15

    iget v5, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v6, 0x40

    and-int/2addr v5, v6

    if-eqz v5, :cond_15

    :cond_46
    const/4 v4, 0x0

    goto :goto_15

    :cond_48
    add-int/lit8 v1, v1, -0x1

    goto :goto_1e
.end method

.method private okToShow(Lcom/android/server/am/ActivityRecord;)Z
    .registers 4

    iget v0, p1, Lcom/android/server/am/ActivityRecord;->userId:I

    iget v1, p0, Lcom/android/server/am/ActivityStack;->mCurrentUser:I

    if-eq v0, v1, :cond_e

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private final performClearTaskAtIndexLocked(II)V
    .registers 10

    const/4 v3, 0x0

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_17

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    if-eq v0, p1, :cond_18

    :cond_17
    return-void

    :cond_18
    iget-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v0, :cond_1f

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_1f
    const/4 v4, 0x0

    const-string v5, "clear"

    move-object v0, p0

    move v2, p2

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;IILandroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    add-int/lit8 p2, p2, 0x1

    goto :goto_1
.end method

.method private final performClearTaskLocked(ILcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;
    .registers 16

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    :cond_6
    if-lez v2, :cond_1a

    add-int/lit8 v2, v2, -0x1

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v0, p1, :cond_6

    add-int/lit8 v2, v2, 0x1

    :cond_1a
    if-lez v2, :cond_94

    add-int/lit8 v2, v2, -0x1

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    iget-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v0, :cond_1a

    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    if-eq v0, p1, :cond_32

    const/4 v11, 0x0

    :cond_31
    :goto_31
    return-object v11

    :cond_32
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    iget-object v3, p2, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    move-object v11, v1

    :cond_3d
    :goto_3d
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v2, v0, :cond_57

    add-int/lit8 v2, v2, 0x1

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    if-eq v0, p1, :cond_78

    :cond_57
    iget v0, v11, Lcom/android/server/am/ActivityRecord;->launchMode:I

    if-nez v0, :cond_31

    const/high16 v0, 0x2000

    and-int/2addr v0, p3

    if-nez v0, :cond_31

    iget-boolean v0, v11, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v0, :cond_31

    iget-object v0, v11, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStack;->indexOfTokenLocked(Landroid/os/IBinder;)I

    move-result v5

    if-ltz v5, :cond_76

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "clear"

    const/4 v9, 0x0

    move-object v3, p0

    move-object v4, v11

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;IILandroid/content/Intent;Ljava/lang/String;Z)Z

    :cond_76
    const/4 v11, 0x0

    goto :goto_31

    :cond_78
    iget-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v0, :cond_3d

    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->takeOptionsLocked()Landroid/app/ActivityOptions;

    move-result-object v10

    if-eqz v10, :cond_85

    invoke-virtual {v11, v10}, Lcom/android/server/am/ActivityRecord;->updateOptionsLocked(Landroid/app/ActivityOptions;)V

    :cond_85
    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "clear"

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;IILandroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3d

    add-int/lit8 v2, v2, -0x1

    goto :goto_3d

    :cond_94
    const/4 v11, 0x0

    goto :goto_31
.end method

.method private final performClearTaskLocked(I)V
    .registers 5

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    :cond_6
    if-lez v0, :cond_1a

    add-int/lit8 v0, v0, -0x1

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v2, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v2, p1, :cond_6

    add-int/lit8 v0, v0, 0x1

    :cond_1a
    if-lez v0, :cond_35

    add-int/lit8 v0, v0, -0x1

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v2, :cond_1a

    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v2, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    if-eq v2, p1, :cond_1a

    add-int/lit8 v2, v0, 0x1

    invoke-direct {p0, p1, v2}, Lcom/android/server/am/ActivityStack;->performClearTaskAtIndexLocked(II)V

    :cond_35
    return-void
.end method

.method private final relaunchActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Z
    .registers 13

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz p3, :cond_8

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    :cond_8
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessesReady:Z

    if-eqz v0, :cond_2a

    new-instance v7, Landroid/content/Intent;

    const-string v0, "android.intent.action.ACTIVITY_STATE"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "activityPackageName"

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "activityState"

    const-string v1, "recreate"

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.activitymanager.permission.GET_ACTIVITY_STATE"

    invoke-virtual {v0, v7, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    :cond_2a
    if-eqz p3, :cond_d7

    const/16 v0, 0x7543

    :goto_2e
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p1, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    const/4 v4, 0x2

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v5, v5, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    const/4 v4, 0x3

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v5, v1, v4

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p1, v0, p2}, Lcom/android/server/am/ActivityRecord;->startFreezingScreenLocked(Lcom/android/server/am/ProcessRecord;I)V

    const/4 v0, 0x0

    :try_start_5e
    iput-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    new-instance v6, Landroid/content/res/Configuration;

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    invoke-direct {v6, v0}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iget-boolean v0, p0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v0, :cond_90

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_90

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mContext:Landroid/content/Context;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-static {v0, v1}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isPortraitLayoutOnlyPackage(Landroid/content/Context;Landroid/content/pm/ActivityInfo;)Z

    move-result v0

    if-eqz v0, :cond_90

    iget v0, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v0}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v0

    const/high16 v1, 0x200

    if-ne v0, v1, :cond_8d

    const/4 v0, 0x1

    iput v0, v6, Landroid/content/res/Configuration;->orientation:I

    :cond_8d
    const/4 v0, 0x0

    iput v0, v6, Landroid/content/res/Configuration;->seq:I

    :cond_90
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_b3

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    sget-object v1, Landroid/content/pm/ActivityInfo;->FORCED_LOCAL_ORIENTATION:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_b3

    iget v0, v6, Landroid/content/res/Configuration;->orientation:I

    if-eq v8, v0, :cond_b3

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, v8}, Lcom/android/server/wm/WindowManagerService;->getConfigurationForRotation(I)Landroid/content/res/Configuration;

    move-result-object v6

    :cond_b3
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    if-nez p3, :cond_db

    const/4 v5, 0x1

    :goto_bc
    move v4, p2

    invoke-interface/range {v0 .. v6}, Landroid/app/IApplicationThread;->scheduleRelaunchActivity(Landroid/os/IBinder;Ljava/util/List;Ljava/util/List;IZLandroid/content/res/Configuration;)V
    :try_end_c0
    .catch Landroid/os/RemoteException; {:try_start_5e .. :try_end_c0} :catch_e9

    :goto_c0
    if-eqz p3, :cond_dd

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    iget-boolean v0, p0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v0, :cond_d1

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityManagerService;->reportResumedActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    :cond_d1
    sget-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v0, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    :goto_d5
    const/4 v0, 0x1

    return v0

    :cond_d7
    const/16 v0, 0x7544

    goto/16 :goto_2e

    :cond_db
    const/4 v5, 0x0

    goto :goto_bc

    :cond_dd
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    sget-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v0, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    goto :goto_d5

    :catch_e9
    move-exception v0

    goto :goto_c0
.end method

.method private removeHistoryRecordsForAppLocked(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .registers 7

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    :cond_4
    :goto_4
    if-lez v0, :cond_19

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v2, p2, :cond_4

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-direct {p0, v1}, Lcom/android/server/am/ActivityStack;->removeTimeoutsForActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    goto :goto_4

    :cond_19
    return-void
.end method

.method private removeTimeoutsForActivityLocked(Lcom/android/server/am/ActivityRecord;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6c

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x69

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->finishLaunchTickingLocked()V

    return-void
.end method

.method private final resetTaskIfNeededLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;
    .registers 33

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_46

    const/16 v20, 0x1

    :goto_c
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v27, v0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v28, -0x1

    const/16 v24, -0x1

    const/16 v23, -0x1

    const/16 v29, 0x0

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v22, v2, -0x1

    :goto_29
    const/4 v2, -0x1

    move/from16 v0, v22

    if-lt v0, v2, :cond_55

    if-ltz v22, :cond_49

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    move-object v13, v2

    :goto_3d
    if-eqz v13, :cond_4b

    iget-boolean v2, v13, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_4b

    :goto_43
    add-int/lit8 v22, v22, -0x1

    goto :goto_29

    :cond_46
    const/16 v20, 0x0

    goto :goto_c

    :cond_49
    const/4 v13, 0x0

    goto :goto_3d

    :cond_4b
    if-eqz v13, :cond_61

    iget v2, v13, Lcom/android/server/am/ActivityRecord;->userId:I

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    if-eq v2, v5, :cond_61

    :cond_55
    if-eqz v29, :cond_60

    if-eqz p1, :cond_370

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityRecord;->updateOptionsLocked(Landroid/app/ActivityOptions;)V

    :cond_60
    :goto_60
    return-object p1

    :cond_61
    if-nez v25, :cond_6a

    move-object/from16 v25, v13

    move/from16 v26, v22

    const/16 v24, -0x1

    goto :goto_43

    :cond_6a
    move-object/from16 v0, v25

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v2, Landroid/content/pm/ActivityInfo;->flags:I

    move/from16 v19, v0

    and-int/lit8 v2, v19, 0x2

    if-eqz v2, :cond_b2

    const/16 v18, 0x1

    :goto_78
    and-int/lit8 v2, v19, 0x40

    if-eqz v2, :cond_b5

    const/4 v12, 0x1

    :goto_7d
    move-object/from16 v0, v25

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, v27

    if-ne v2, v0, :cond_25b

    if-gez v28, :cond_89

    move/from16 v28, v26

    :cond_89
    if-eqz v13, :cond_257

    iget-object v2, v13, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, v27

    if-ne v2, v0, :cond_257

    move-object/from16 v0, v25

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getFlags()I

    move-result v2

    const/high16 v5, 0x8

    and-int/2addr v2, v5

    if-eqz v2, :cond_b7

    const/4 v15, 0x1

    :goto_9f
    if-nez v18, :cond_b9

    if-nez v15, :cond_b9

    move-object/from16 v0, v25

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-eqz v2, :cond_b9

    if-gez v24, :cond_ad

    move/from16 v24, v26

    :cond_ad
    :goto_ad
    move-object/from16 v25, v13

    move/from16 v26, v22

    goto :goto_43

    :cond_b2
    const/16 v18, 0x0

    goto :goto_78

    :cond_b5
    const/4 v12, 0x0

    goto :goto_7d

    :cond_b7
    const/4 v15, 0x0

    goto :goto_9f

    :cond_b9
    if-nez v18, :cond_1d1

    if-nez v15, :cond_1d1

    if-eqz v12, :cond_1d1

    move-object/from16 v0, v25

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    if-eqz v2, :cond_1d1

    move-object/from16 v0, v25

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    move-object/from16 v0, v27

    iget-object v5, v0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, v25

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    if-eqz v2, :cond_134

    move-object/from16 v0, v25

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    iget-object v5, v3, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v5, v5, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_134

    iget-object v2, v3, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v5, v3, Lcom/android/server/am/ActivityRecord;->thumbHolder:Lcom/android/server/am/ThumbnailHolder;

    const/4 v6, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v2, v5, v6}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ThumbnailHolder;Z)V

    :goto_fc
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, v25

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v0, v27

    iget v6, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v2, v5, v6}, Lcom/android/server/wm/WindowManagerService;->setAppGroupId(Landroid/os/IBinder;I)V

    if-gez v24, :cond_111

    move/from16 v24, v26

    :cond_111
    const/16 v17, 0x0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->thumbHolder:Lcom/android/server/am/ThumbnailHolder;

    move-object/from16 v16, v0

    if-nez v14, :cond_16f

    const/16 v21, 0x1

    :goto_11d
    move/from16 v4, v26

    :goto_11f
    move/from16 v0, v24

    if-gt v4, v0, :cond_1bf

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    iget-boolean v2, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_172

    :goto_131
    add-int/lit8 v4, v4, 0x1

    goto :goto_11f

    :cond_134
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v5, v2, Lcom/android/server/am/ActivityManagerService;->mCurTask:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v2, Lcom/android/server/am/ActivityManagerService;->mCurTask:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v2, v2, Lcom/android/server/am/ActivityManagerService;->mCurTask:I

    if-gtz v2, :cond_14d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x1

    iput v5, v2, Lcom/android/server/am/ActivityManagerService;->mCurTask:I

    :cond_14d
    new-instance v2, Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v5, v5, Lcom/android/server/am/ActivityManagerService;->mCurTask:I

    move-object/from16 v0, v25

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    const/4 v8, 0x0

    invoke-direct {v2, v5, v6, v8}, Lcom/android/server/am/TaskRecord;-><init>(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v2, v5, v6}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ThumbnailHolder;Z)V

    move-object/from16 v0, v25

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, v25

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    iput-object v5, v2, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    goto :goto_fc

    :cond_16f
    const/16 v21, 0x0

    goto :goto_11d

    :cond_172
    move-object/from16 v0, v25

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v3, v2, v0, v5}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ThumbnailHolder;Z)V

    iget-object v0, v3, Lcom/android/server/am/ActivityRecord;->thumbHolder:Lcom/android/server/am/ThumbnailHolder;

    move-object/from16 v16, v0

    const/4 v14, 0x0

    if-nez v21, :cond_18d

    if-nez v29, :cond_18d

    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->takeOptionsLocked()Landroid/app/ActivityOptions;

    move-result-object v29

    if-eqz v29, :cond_18d

    const/16 v21, 0x1

    :cond_18d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move/from16 v0, v17

    invoke-virtual {v2, v0, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v3, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move/from16 v0, v17

    invoke-virtual {v2, v0, v5}, Lcom/android/server/wm/WindowManagerService;->moveAppToken(ILandroid/os/IBinder;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v3, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget-object v6, v3, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v6, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v2, v5, v6}, Lcom/android/server/wm/WindowManagerService;->setAppGroupId(Landroid/os/IBinder;I)V

    add-int/lit8 v17, v17, 0x1

    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_131

    :cond_1bf
    move-object/from16 v0, p1

    if-ne v0, v3, :cond_1c5

    move-object/from16 p1, v13

    :cond_1c5
    move/from16 v0, v28

    move/from16 v1, v24

    if-ne v0, v1, :cond_1cd

    const/16 v28, -0x1

    :cond_1cd
    const/16 v24, -0x1

    goto/16 :goto_ad

    :cond_1d1
    if-nez v20, :cond_1d7

    if-nez v18, :cond_1d7

    if-eqz v15, :cond_253

    :cond_1d7
    if-eqz v15, :cond_21a

    add-int/lit8 v24, v26, 0x1

    :goto_1db
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v24

    if-ge v0, v2, :cond_1fc

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, v27

    if-ne v2, v0, :cond_1fc

    add-int/lit8 v24, v24, 0x1

    goto :goto_1db

    :cond_1fc
    add-int/lit8 v24, v24, -0x1

    :cond_1fe
    :goto_1fe
    const/4 v3, 0x0

    if-nez v14, :cond_21f

    const/16 v21, 0x1

    :goto_203
    move/from16 v4, v26

    :goto_205
    move/from16 v0, v24

    if-gt v4, v0, :cond_241

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    iget-boolean v2, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_222

    :cond_217
    :goto_217
    add-int/lit8 v4, v4, 0x1

    goto :goto_205

    :cond_21a
    if-gez v24, :cond_1fe

    move/from16 v24, v26

    goto :goto_1fe

    :cond_21f
    const/16 v21, 0x0

    goto :goto_203

    :cond_222
    const/4 v14, 0x0

    if-nez v21, :cond_22f

    if-nez v29, :cond_22f

    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->takeOptionsLocked()Landroid/app/ActivityOptions;

    move-result-object v29

    if-eqz v29, :cond_22f

    const/16 v21, 0x1

    :cond_22f
    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "reset"

    const/4 v8, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;IILandroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_217

    add-int/lit8 v24, v24, -0x1

    add-int/lit8 v4, v4, -0x1

    goto :goto_217

    :cond_241
    move-object/from16 v0, p1

    if-ne v0, v3, :cond_247

    move-object/from16 p1, v13

    :cond_247
    move/from16 v0, v28

    move/from16 v1, v24

    if-ne v0, v1, :cond_24f

    const/16 v28, -0x1

    :cond_24f
    const/16 v24, -0x1

    goto/16 :goto_ad

    :cond_253
    const/16 v24, -0x1

    goto/16 :goto_ad

    :cond_257
    const/16 v24, -0x1

    goto/16 :goto_ad

    :cond_25b
    move-object/from16 v0, v25

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-eqz v2, :cond_271

    if-eqz v13, :cond_26b

    iget-object v2, v13, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, v25

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v2, v5, :cond_271

    :cond_26b
    if-gez v24, :cond_ad

    move/from16 v24, v26

    goto/16 :goto_ad

    :cond_271
    if-ltz v28, :cond_362

    if-eqz v12, :cond_362

    move-object/from16 v0, v27

    iget-object v2, v0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    if-eqz v2, :cond_362

    move-object/from16 v0, v27

    iget-object v2, v0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    move-object/from16 v0, v25

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_362

    if-nez v20, :cond_28d

    if-eqz v18, :cond_2c3

    :cond_28d
    if-gez v24, :cond_291

    move/from16 v24, v26

    :cond_291
    const/4 v3, 0x0

    move/from16 v4, v26

    :goto_294
    move/from16 v0, v24

    if-gt v4, v0, :cond_2bf

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    iget-boolean v2, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_2a9

    :cond_2a6
    :goto_2a6
    add-int/lit8 v4, v4, 0x1

    goto :goto_294

    :cond_2a9
    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "reset"

    const/4 v8, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;IILandroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2a6

    add-int/lit8 v28, v28, -0x1

    add-int/lit8 v23, v23, -0x1

    add-int/lit8 v24, v24, -0x1

    add-int/lit8 v4, v4, -0x1

    goto :goto_2a6

    :cond_2bf
    const/16 v24, -0x1

    goto/16 :goto_ad

    :cond_2c3
    if-gez v24, :cond_2c7

    move/from16 v24, v26

    :cond_2c7
    move/from16 v4, v24

    :goto_2c9
    move/from16 v0, v26

    if-lt v4, v0, :cond_31b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    iget-boolean v2, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_2de

    :goto_2db
    add-int/lit8 v4, v4, -0x1

    goto :goto_2c9

    :cond_2de
    if-gez v23, :cond_318

    move/from16 v23, v28

    move-object/from16 p1, v3

    :goto_2e4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v3, v0, v2, v5}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ThumbnailHolder;Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move/from16 v0, v23

    invoke-virtual {v2, v0, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v3, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move/from16 v0, v23

    invoke-virtual {v2, v0, v5}, Lcom/android/server/wm/WindowManagerService;->moveAppToken(ILandroid/os/IBinder;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v3, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget-object v6, v3, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v6, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v2, v5, v6}, Lcom/android/server/wm/WindowManagerService;->setAppGroupId(Landroid/os/IBinder;I)V

    goto :goto_2db

    :cond_318
    add-int/lit8 v23, v23, -0x1

    goto :goto_2e4

    :cond_31b
    const/16 v24, -0x1

    move-object/from16 v0, v25

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->launchMode:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_ad

    add-int/lit8 v7, v23, -0x1

    :goto_328
    if-ltz v7, :cond_ad

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    iget-boolean v2, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_33b

    :cond_338
    :goto_338
    add-int/lit8 v7, v7, -0x1

    goto :goto_328

    :cond_33b
    iget-object v2, v3, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    move-object/from16 v0, v25

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_338

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "replace"

    const/4 v11, 0x0

    move-object/from16 v5, p0

    move-object v6, v3

    invoke-virtual/range {v5 .. v11}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;IILandroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_338

    add-int/lit8 v28, v28, -0x1

    add-int/lit8 v23, v23, -0x1

    goto :goto_338

    :cond_362
    if-eqz v13, :cond_ad

    iget-object v2, v13, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, v25

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eq v2, v5, :cond_ad

    const/16 v24, -0x1

    goto/16 :goto_ad

    :cond_370
    invoke-virtual/range {v29 .. v29}, Landroid/app/ActivityOptions;->abort()V

    goto/16 :goto_60
.end method

.method private setWindowModeForAllActivitiesInTaskLocked(Lcom/android/server/am/TaskRecord;ILjava/util/ArrayList;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/TaskRecord;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/IBinder;",
            ">;)V"
        }
    .end annotation

    sget-boolean v3, Lcom/android/server/am/ActivityStack;->DEBUG_MULTIWINDOW:Z

    if-eqz v3, :cond_26

    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setZoneForAllActivitiesInTaskLocked task="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", windowMode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_2d
    if-ge v1, v0, :cond_77

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v3, p1, :cond_4a

    invoke-static {p2}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v3

    const/high16 v4, 0x200

    if-ne v3, v4, :cond_4d

    iget v3, v2, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const/high16 v4, 0x40

    and-int/2addr v3, v4

    if-nez v3, :cond_4d

    :cond_4a
    :goto_4a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2d

    :cond_4d
    and-int/lit16 v3, p2, 0x800

    if-eqz v3, :cond_5d

    invoke-static {}, Lcom/android/server/am/MultiWindowManagerService;->getSelf()Lcom/android/server/am/MultiWindowManagerService;

    move-result-object v3

    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v3, v4}, Lcom/android/server/am/MultiWindowManagerService;->isMustNotSupportScaleApp(Landroid/content/pm/ActivityInfo;)Z

    move-result v3

    if-nez v3, :cond_4a

    :cond_5d
    iget v3, v2, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {p2, v3}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->setWindowMode(II)I

    move-result v3

    iput v3, v2, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v3, v4, p2}, Lcom/android/server/wm/WindowManagerService;->setAppWindowMode(Landroid/view/IApplicationToken;I)V

    if-eqz p3, :cond_4a

    const/4 v3, 0x0

    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {p3, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_4a

    :cond_77
    return-void
.end method

.method private shouldHideActivity(ZZIILcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)Z
    .registers 15

    iget-object v5, p5, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v5, v5, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne p4, v5, :cond_8

    const/4 v5, 0x1

    :goto_7
    return v5

    :cond_8
    iget v5, p5, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v5}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v2

    const/high16 v5, 0x80

    and-int/2addr v5, v2

    if-nez v5, :cond_17

    and-int/lit16 v5, v2, 0x1000

    if-eqz v5, :cond_19

    :cond_17
    const/4 v5, 0x0

    goto :goto_7

    :cond_19
    if-eq p5, p6, :cond_39

    if-eqz p6, :cond_39

    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, p5, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v5, v6}, Lcom/android/server/wm/WindowManagerService;->getWindowIndexByAppToken(Landroid/os/IBinder;)I

    move-result v5

    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, p6, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v6, v7}, Lcom/android/server/wm/WindowManagerService;->getWindowIndexByAppToken(Landroid/os/IBinder;)I

    move-result v6

    if-le v5, v6, :cond_39

    iget-boolean v5, p5, Lcom/android/server/am/ActivityRecord;->otherAppTouched:Z

    if-eqz v5, :cond_39

    const/4 v5, 0x0

    goto :goto_7

    :cond_39
    if-eqz p6, :cond_76

    if-ne p5, p6, :cond_76

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_44
    :goto_44
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    iget-object v5, v3, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v5, v5, Lcom/android/server/am/TaskRecord;->taskId:I

    iget-object v6, p5, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v6, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v5, v6, :cond_62

    :cond_5a
    or-int v5, v4, p3

    const/16 v6, 0xf

    if-ne v5, v6, :cond_76

    const/4 v5, 0x1

    goto :goto_7

    :cond_62
    iget-object v5, v3, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v6, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v5, v6, :cond_44

    iget-boolean v5, v3, Lcom/android/server/am/ActivityRecord;->otherAppTouched:Z

    if-eqz v5, :cond_44

    iget v5, v3, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v5}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v5

    and-int/lit8 v5, v5, 0xf

    or-int/2addr v4, v5

    goto :goto_44

    :cond_76
    if-eqz p1, :cond_7f

    const/high16 v5, 0x80

    and-int/2addr v5, v2

    if-nez v5, :cond_7f

    const/4 v5, 0x1

    goto :goto_7

    :cond_7f
    and-int/lit8 v0, v2, 0xf

    if-eqz v0, :cond_90

    and-int v5, v0, p3

    if-ne v5, v0, :cond_90

    iget-object v5, p5, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v5, v5, Lcom/android/server/am/TaskRecord;->taskId:I

    if-eq p4, v5, :cond_90

    const/4 v5, 0x1

    goto/16 :goto_7

    :cond_90
    const/4 v5, 0x0

    goto/16 :goto_7
.end method

.method private final startActivityLocked(Lcom/android/server/am/ActivityRecord;ZZZLandroid/os/Bundle;)V
    .registers 41

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v24

    const/4 v4, -0x1

    const/4 v12, -0x1

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v3, :cond_2a

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    sget-object v5, Landroid/content/pm/ActivityInfo;->FORCED_LOCAL_ORIENTATION:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v28

    const/4 v3, 0x2

    move/from16 v0, v28

    if-ne v0, v3, :cond_47

    const/16 v12, 0xf

    :cond_2a
    :goto_2a
    if-nez p2, :cond_245

    const/16 v34, 0x1

    add-int/lit8 v27, v24, -0x1

    :goto_30
    if-ltz v27, :cond_cd

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, v30

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v3, :cond_4f

    :cond_44
    :goto_44
    add-int/lit8 v27, v27, -0x1

    goto :goto_30

    :cond_47
    const/4 v3, 0x1

    move/from16 v0, v28

    if-ne v0, v3, :cond_2a

    const/16 v12, 0x10

    goto :goto_2a

    :cond_4f
    move-object/from16 v0, v30

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v3, v5, :cond_b1

    add-int/lit8 v4, v27, 0x1

    if-nez v34, :cond_cd

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v3, v4, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->putInHistory()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v6, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v7, v7, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    move-object/from16 v0, p1

    iget-boolean v8, v0, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v9, v9, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v9, v9, 0x400

    if-eqz v9, :cond_af

    const/4 v9, 0x1

    :goto_8e
    move-object/from16 v0, p1

    iget v10, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual/range {v3 .. v12}, Lcom/android/server/wm/WindowManagerService;->addAppToken(ILandroid/view/IApplicationToken;IIZZILandroid/content/pm/ActivityInfo;I)V

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v3, :cond_a2

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->moveMwAppTokensToTopLocked()V

    :cond_a2
    invoke-static/range {p5 .. p5}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v3, :cond_ae

    invoke-direct/range {p0 .. p2}, Lcom/android/server/am/ActivityStack;->applyWindowModeLocked(Lcom/android/server/am/ActivityRecord;Z)V

    :cond_ae
    :goto_ae
    return-void

    :cond_af
    const/4 v9, 0x0

    goto :goto_8e

    :cond_b1
    move-object/from16 v0, v30

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-eqz v3, :cond_44

    move-object/from16 v0, v30

    iget v3, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const/high16 v5, 0x20

    and-int/2addr v3, v5

    if-nez v3, :cond_44

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const/high16 v5, 0x200

    and-int/2addr v3, v5

    if-nez v3, :cond_44

    const/16 v34, 0x0

    goto/16 :goto_44

    :cond_cd
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v3, :cond_d6

    invoke-direct/range {p0 .. p2}, Lcom/android/server/am/ActivityStack;->applyWindowModeLocked(Lcom/android/server/am/ActivityRecord;Z)V

    :cond_d6
    :goto_d6
    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit16 v3, v3, 0x800

    if-eqz v3, :cond_102

    invoke-static {}, Lcom/android/server/am/MultiWindowManagerService;->getSelf()Lcom/android/server/am/MultiWindowManagerService;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v3, v5}, Lcom/android/server/am/MultiWindowManagerService;->isMustNotSupportScaleApp(Landroid/content/pm/ActivityInfo;)Z

    move-result v3

    if-eqz v3, :cond_102

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const/high16 v5, 0x4c

    and-int/2addr v3, v5

    move-object/from16 v0, p1

    iput v3, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const/high16 v5, 0x100

    or-int/2addr v3, v5

    move-object/from16 v0, p1

    iput v3, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    :cond_102
    if-gez v4, :cond_106

    move/from16 v4, v24

    :cond_106
    move/from16 v0, v24

    if-ge v4, v0, :cond_10f

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mUserLeaving:Z

    :cond_10f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v3, v4, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->putInHistory()V

    move/from16 v0, p2

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-lez v24, :cond_320

    move/from16 v23, p2

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v33, v0

    if-nez v33, :cond_145

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessNames:Lcom/android/server/ProcessMap;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v3, v5, v6}, Lcom/android/server/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lcom/android/server/am/ProcessRecord;

    :cond_145
    if-eqz v33, :cond_14d

    move-object/from16 v0, v33

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v3, :cond_14f

    :cond_14d
    const/16 v23, 0x1

    :cond_14f
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v3

    const/high16 v5, 0x1

    and-int/2addr v3, v5

    if-eqz v3, :cond_2cb

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v5, 0x0

    move/from16 v0, p4

    invoke-virtual {v3, v5, v0}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_171
    move-object/from16 v0, p1

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityRecord;->updateOptionsLocked(Landroid/os/Bundle;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v6, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v7, v7, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    move-object/from16 v0, p1

    iget-boolean v8, v0, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v9, v9, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v9, v9, 0x400

    if-eqz v9, :cond_2e8

    const/4 v9, 0x1

    :goto_19d
    move-object/from16 v0, p1

    iget v10, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual/range {v3 .. v12}, Lcom/android/server/wm/WindowManagerService;->addAppToken(ILandroid/view/IApplicationToken;IIZZILandroid/content/pm/ActivityInfo;I)V

    const/16 v25, 0x1

    if-eqz p2, :cond_1cf

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v3

    const/high16 v5, 0x20

    and-int/2addr v3, v5

    if-eqz v3, :cond_1cf

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/ActivityStack;->resetTaskIfNeededLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityStack;->topRunningNonDelayedActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    move-object/from16 v0, p1

    if-ne v3, v0, :cond_2eb

    const/16 v25, 0x1

    :cond_1cf
    :goto_1cf
    if-eqz v25, :cond_232

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v31, v0

    if-eqz v31, :cond_2f9

    move-object/from16 v0, v31

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eq v3, v5, :cond_2ef

    const/16 v31, 0x0

    :cond_1e5
    :goto_1e5
    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit16 v3, v3, 0x1000

    if-nez v3, :cond_232

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->theme:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v5}, Lcom/android/server/am/ActivityManagerService;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v17

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->nonLocalizedLabel:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->labelRes:I

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->icon:I

    move/from16 v20, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->windowFlags:I

    move/from16 v21, v0

    if-eqz v31, :cond_31c

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v22, v0

    :goto_22f
    invoke-virtual/range {v13 .. v23}, Lcom/android/server/wm/WindowManagerService;->setAppStartingWindow(Landroid/os/IBinder;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIILandroid/os/IBinder;Z)V

    :cond_232
    :goto_232
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v3, :cond_23b

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->moveMwAppTokensToTopLocked()V

    :cond_23b
    if-eqz p3, :cond_ae

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    goto/16 :goto_ae

    :cond_245
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v3, :cond_d6

    invoke-static {}, Lcom/android/server/am/MultiWindowManagerService;->getSelf()Lcom/android/server/am/MultiWindowManagerService;

    move-result-object v29

    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->isKeyguardLocked()Z

    move-result v3

    if-eqz v3, :cond_295

    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-nez v3, :cond_295

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5}, Lcom/android/server/am/ActivityStack;->getFrontResumedActivities(ZZ)Ljava/util/ArrayList;

    move-result-object v26

    :goto_26b
    move-object/from16 v0, v29

    move-object/from16 v1, p1

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/MultiWindowManagerService;->addWindowInfo(Lcom/android/server/am/ActivityRecord;Ljava/util/ArrayList;)V

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v3}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v3

    const/high16 v5, 0x200

    if-ne v3, v5, :cond_2bd

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit8 v3, v3, 0xf

    if-nez v3, :cond_2af

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const/high16 v5, 0x80

    or-int/2addr v3, v5

    move-object/from16 v0, p1

    iput v3, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    goto/16 :goto_d6

    :cond_295
    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit16 v3, v3, 0x800

    if-eqz v3, :cond_2a6

    const/4 v3, 0x1

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5}, Lcom/android/server/am/ActivityStack;->getFrontResumedActivities(ZZ)Ljava/util/ArrayList;

    move-result-object v26

    goto :goto_26b

    :cond_2a6
    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5}, Lcom/android/server/am/ActivityStack;->getFrontResumedActivities(ZZ)Ljava/util/ArrayList;

    move-result-object v26

    goto :goto_26b

    :cond_2af
    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const v5, -0x800001

    and-int/2addr v3, v5

    move-object/from16 v0, p1

    iput v3, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    goto/16 :goto_d6

    :cond_2bd
    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const v5, -0x800001

    and-int/2addr v3, v5

    move-object/from16 v0, p1

    iput v3, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    goto/16 :goto_d6

    :cond_2cb
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    if-eqz p2, :cond_2e5

    const/16 v3, 0x1008

    :goto_2d5
    move/from16 v0, p4

    invoke-virtual {v5, v3, v0}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_171

    :cond_2e5
    const/16 v3, 0x1006

    goto :goto_2d5

    :cond_2e8
    const/4 v9, 0x0

    goto/16 :goto_19d

    :cond_2eb
    const/16 v25, 0x0

    goto/16 :goto_1cf

    :cond_2ef
    move-object/from16 v0, v31

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-eqz v3, :cond_1e5

    const/16 v31, 0x0

    goto/16 :goto_1e5

    :cond_2f9
    const/4 v3, 0x1

    if-lt v4, v3, :cond_1e5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    add-int/lit8 v5, v4, -0x1

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, v32

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v3, v5, :cond_1e5

    move-object/from16 v0, v32

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-nez v3, :cond_1e5

    move-object/from16 v31, v32

    goto/16 :goto_1e5

    :cond_31c
    const/16 v22, 0x0

    goto/16 :goto_22f

    :cond_320
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v6, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v7, v7, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    move-object/from16 v0, p1

    iget-boolean v8, v0, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v9, v9, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v9, v9, 0x400

    if-eqz v9, :cond_355

    const/4 v9, 0x1

    :goto_345
    move-object/from16 v0, p1

    iget v10, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual/range {v3 .. v12}, Lcom/android/server/wm/WindowManagerService;->addAppToken(ILandroid/view/IApplicationToken;IIZZILandroid/content/pm/ActivityInfo;I)V

    invoke-static/range {p5 .. p5}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    goto/16 :goto_232

    :cond_355
    const/4 v9, 0x0

    goto :goto_345
.end method

.method private final startPausingLocked(Lcom/android/server/am/ActivityRecord;ZZ)V
    .registers 13

    const/16 v8, 0x68

    const/4 v7, 0x0

    iget-boolean v3, p0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v3, :cond_5c

    if-nez p1, :cond_19

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    const-string v3, "ActivityManager"

    const-string v4, "Trying to pause <null>"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0, v7}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    :goto_18
    return-void

    :cond_19
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mPausingActivities:Ljava/util/LinkedList;

    invoke-virtual {v3, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4a

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Trying to pause when pause is already pending for this activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", all pending activities: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mPausingActivities:Ljava/util/LinkedList;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4a
    :goto_4a
    if-nez p1, :cond_80

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    const-string v3, "ActivityManager"

    const-string v4, "Trying to pause when nothing is resumed"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0, v7}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    goto :goto_18

    :cond_5c
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v3, :cond_4a

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Trying to pause when pause is already pending for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4a

    :cond_80
    iput-object v7, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    iget-boolean v3, p0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v3, :cond_15a

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mPausingActivities:Ljava/util/LinkedList;

    invoke-virtual {v3, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :goto_8b
    iput-object p1, p0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    sget-object v3, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v3, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->touchActiveTime()V

    iget-boolean v3, p1, Lcom/android/server/am/ActivityRecord;->isHomeActivity:Z

    if-nez v3, :cond_a1

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->screenshotActivities(Lcom/android/server/am/ActivityRecord;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {p1, v3, v7}, Lcom/android/server/am/ActivityRecord;->updateThumbnail(Landroid/graphics/Bitmap;Ljava/lang/CharSequence;)V

    :cond_a1
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->updateCpuStats()V

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_175

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v3, :cond_175

    :try_start_b0
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessesReady:Z

    if-eqz v3, :cond_d2

    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.ACTIVITY_STATE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "activityPackageName"

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "activityState"

    const-string v4, "pause"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mContext:Landroid/content/Context;

    const-string v4, "com.samsung.android.activitymanager.permission.GET_ACTIVITY_STATE"

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    :cond_d2
    const/16 v3, 0x753d

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p1, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget-boolean v5, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    iget v6, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    invoke-interface {v3, v4, v5, p2, v6}, Landroid/app/IApplicationThread;->schedulePauseActivity(Landroid/os/IBinder;ZZI)V

    iget-boolean v3, p0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v3, :cond_10a

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Lcom/android/server/am/ActivityManagerService;->updateUsageStats(Lcom/android/server/am/ActivityRecord;Z)V
    :try_end_10a
    .catch Ljava/lang/Exception; {:try_start_b0 .. :try_end_10a} :catch_15e

    :cond_10a
    :goto_10a
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mSleeping:Z

    if-nez v3, :cond_130

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mShuttingDown:Z

    if-nez v3, :cond_130

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v8}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-nez v3, :cond_130

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x2710

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_130
    iget-boolean v3, p0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v3, :cond_184

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mPausingActivities:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_188

    :cond_13c
    if-nez p3, :cond_141

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->pauseKeyDispatchingLocked()V

    :cond_141
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x65

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    iput-object p1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, p1, Lcom/android/server/am/ActivityRecord;->pauseTime:J

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_18

    :cond_15a
    iput-object p1, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    goto/16 :goto_8b

    :catch_15e
    move-exception v1

    const-string v3, "ActivityManager"

    const-string v4, "Exception thrown during pause"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-boolean v3, p0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v3, :cond_172

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mPausingActivities:Ljava/util/LinkedList;

    invoke-virtual {v3, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    :goto_16f
    iput-object v7, p0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    goto :goto_10a

    :cond_172
    iput-object v7, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    goto :goto_16f

    :cond_175
    iget-boolean v3, p0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v3, :cond_181

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mPausingActivities:Ljava/util/LinkedList;

    invoke-virtual {v3, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    :goto_17e
    iput-object v7, p0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    goto :goto_10a

    :cond_181
    iput-object v7, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    goto :goto_17e

    :cond_184
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-nez v3, :cond_13c

    :cond_188
    invoke-virtual {p0, v7}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    goto/16 :goto_18
.end method

.method private final startPausingLocked(ZZ)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/am/ActivityStack;->startPausingLocked(Lcom/android/server/am/ActivityRecord;ZZ)V

    return-void
.end method

.method private final startSpecificActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V
    .registers 18

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1, v3}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;I)Lcom/android/server/am/ProcessRecord;

    move-result-object v2

    iget-wide v0, p1, Lcom/android/server/am/ActivityRecord;->launchTime:J

    const-wide/16 v3, 0x0

    cmp-long v0, v0, v3

    if-nez v0, :cond_9a

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/am/ActivityRecord;->launchTime:J

    iget-wide v0, p0, Lcom/android/server/am/ActivityStack;->mInitialStartTime:J

    const-wide/16 v3, 0x0

    cmp-long v0, v0, v3

    if-nez v0, :cond_28

    iget-wide v0, p1, Lcom/android/server/am/ActivityRecord;->launchTime:J

    iput-wide v0, p0, Lcom/android/server/am/ActivityStack;->mInitialStartTime:J

    :cond_28
    :goto_28
    if-eqz v2, :cond_e0

    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_e0

    const-string v12, ""

    :try_start_30
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v12

    sget-boolean v0, Lcom/android/server/am/ActivityStack;->DEBUG_MID:Z

    if-eqz v0, :cond_56

    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to launch "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_56
    .catch Ljava/lang/NullPointerException; {:try_start_30 .. :try_end_56} :catch_a9

    :cond_56
    :goto_56
    :try_start_56
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/android/server/am/ProcessRecord;->addPackage(Ljava/lang/String;)Z

    if-eqz v12, :cond_b2

    const-string v0, "com.android.contacts/.activities.PeopleActivity"

    invoke-virtual {v12, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_77

    const-string v0, "com.android.mms/.ui.ConversationComposer"

    invoke-virtual {v12, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_77

    const-string v0, "com.sec.android.gallery3d/.app.Gallery"

    invoke-virtual {v12, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b2

    :cond_77
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pausing JIT for 3 seconds "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move/from16 v3, p2

    move/from16 v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->realStartActivityLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ProcessRecord;ZZZ)Z
    :try_end_99
    .catch Landroid/os/RemoteException; {:try_start_56 .. :try_end_99} :catch_bd

    :cond_99
    :goto_99
    return-void

    :cond_9a
    iget-wide v0, p0, Lcom/android/server/am/ActivityStack;->mInitialStartTime:J

    const-wide/16 v3, 0x0

    cmp-long v0, v0, v3

    if-nez v0, :cond_28

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/ActivityStack;->mInitialStartTime:J

    goto :goto_28

    :catch_a9
    move-exception v13

    const-string v0, "ActivityManager"

    const-string v1, "Exception cannot get application name "

    invoke-static {v0, v1, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_56

    :cond_b2
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move/from16 v3, p2

    move/from16 v4, p3

    :try_start_b9
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->realStartActivityLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ProcessRecord;ZZZ)Z
    :try_end_bc
    .catch Landroid/os/RemoteException; {:try_start_b9 .. :try_end_bc} :catch_bd

    goto :goto_99

    :catch_bd
    move-exception v13

    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception when starting activity "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_e0
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-string v8, "activity"

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v3 .. v11}, Lcom/android/server/am/ActivityManagerService;->startProcessLocked(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;ZILjava/lang/String;Landroid/content/ComponentName;ZZ)Lcom/android/server/am/ProcessRecord;

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_CIQ_BroadcastState"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_99

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/am/AppStateBroadcaster;->SendApplicationStart(Ljava/lang/String;)V

    goto :goto_99
.end method

.method private final stopActivityLocked(Lcom/android/server/am/ActivityRecord;)V
    .registers 11

    const/4 v3, 0x0

    const/4 v8, 0x1

    const/4 v2, 0x0

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x4000

    and-int/2addr v0, v1

    if-nez v0, :cond_16

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_29

    :cond_16
    iget-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v0, :cond_29

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mSleeping:Z

    if-nez v0, :cond_29

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const-string v4, "no-history"

    move-object v0, p0

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    :cond_29
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_88

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_88

    iget-boolean v0, p0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mFocusedActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v0, p1, :cond_46

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0, v3}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->setFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    :cond_46
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->resumeKeyDispatchingLocked()V

    const/4 v0, 0x0

    :try_start_4a
    iput-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->stopped:Z

    sget-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v0, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    iget-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-nez v0, :cond_5e

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    :cond_5e
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget-boolean v3, p1, Lcom/android/server/am/ActivityRecord;->visible:Z

    iget v4, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    invoke-interface {v0, v1, v3, v4}, Landroid/app/IApplicationThread;->scheduleStopActivity(Landroid/os/IBinder;ZI)V

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->isSleeping()Z

    move-result v0

    if-eqz v0, :cond_77

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/server/am/ActivityRecord;->setSleeping(Z)V

    :cond_77
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    iput-object p1, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x2710

    invoke-virtual {v0, v7, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_88} :catch_89

    :cond_88
    :goto_88
    return-void

    :catch_89
    move-exception v6

    const-string v0, "ActivityManager"

    const-string v1, "Exception thrown during pause"

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput-boolean v8, p1, Lcom/android/server/am/ActivityRecord;->stopped:Z

    sget-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v0, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    iget-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->configDestroy:Z

    if-eqz v0, :cond_88

    const-string v0, "stop-except"

    invoke-virtual {p0, p1, v8, v2, v0}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZZLjava/lang/String;)Z

    goto :goto_88
.end method

.method private final updateLRUListLocked(Lcom/android/server/am/ActivityRecord;)Z
    .registers 4

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return v0
.end method

.method private updatePinupHiddenFlag()V
    .registers 7

    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    invoke-direct {p0}, Lcom/android/server/am/ActivityStack;->needsPinupActivtiesFoceHidden()Z

    move-result v2

    move v1, v0

    :goto_d
    if-ltz v1, :cond_34

    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    iget v5, v4, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v5}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v3

    const/high16 v5, 0x80

    and-int/2addr v5, v3

    if-eqz v5, :cond_2a

    if-eqz v2, :cond_2d

    iget v5, v4, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    or-int/lit16 v5, v5, 0x4000

    iput v5, v4, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    :cond_2a
    :goto_2a
    add-int/lit8 v1, v1, -0x1

    goto :goto_d

    :cond_2d
    iget v5, v4, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit16 v5, v5, -0x4001

    iput v5, v4, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    goto :goto_2a

    :cond_34
    return-void
.end method


# virtual methods
.method final activityDestroyed(Landroid/os/IBinder;)V
    .registers 9

    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    :try_start_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_36

    move-result-wide v1

    :try_start_7
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->forToken(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    if-eqz v3, :cond_14

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x69

    invoke-virtual {v4, v6, v3}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    :cond_14
    invoke-virtual {p0, v3}, Lcom/android/server/am/ActivityStack;->indexOfActivityLocked(Lcom/android/server/am/ActivityRecord;)I

    move-result v0

    if-ltz v0, :cond_28

    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v6, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v4, v6, :cond_28

    const/4 v4, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0, v3, v4, v6}, Lcom/android/server/am/ActivityStack;->cleanUpActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V

    invoke-virtual {p0, v3}, Lcom/android/server/am/ActivityStack;->removeActivityFromHistoryLocked(Lcom/android/server/am/ActivityRecord;)V

    :cond_28
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z
    :try_end_2c
    .catchall {:try_start_7 .. :try_end_2c} :catchall_31

    :try_start_2c
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v5

    return-void

    :catchall_31
    move-exception v4

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    :catchall_36
    move-exception v4

    monitor-exit v5
    :try_end_38
    .catchall {:try_start_2c .. :try_end_38} :catchall_36

    throw v4
.end method

.method final activityIdleInternal(Landroid/os/IBinder;ZLandroid/content/res/Configuration;)Lcom/android/server/am/ActivityRecord;
    .registers 35

    const/16 v23, 0x0

    const/16 v27, 0x0

    const/16 v19, 0x0

    const/16 v28, 0x0

    const/16 v25, 0x0

    const/4 v13, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/16 v24, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v30, v0

    monitor-enter v30

    :try_start_1b
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->forToken(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    if-eqz v4, :cond_2d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x66

    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    invoke-virtual {v4}, Lcom/android/server/am/ActivityRecord;->finishLaunchTickingLocked()V

    :cond_2d
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/am/ActivityStack;->indexOfActivityLocked(Lcom/android/server/am/ActivityRecord;)I

    move-result v22

    if-ltz v22, :cond_16b

    move-object/from16 v23, v4

    if-eqz p2, :cond_44

    const-wide/16 v5, -0x1

    const-wide/16 v7, -0x1

    move-object/from16 v2, p0

    move/from16 v3, p2

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/ActivityStack;->reportActivityLaunchedLocked(ZLcom/android/server/am/ActivityRecord;JJ)V

    :cond_44
    if-eqz p3, :cond_4a

    move-object/from16 v0, p3

    iput-object v0, v4, Lcom/android/server/am/ActivityRecord;->configuration:Landroid/content/res/Configuration;

    :cond_4a
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v2, :cond_163

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->topResumedActivitiesLocked()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_74

    :goto_5a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_74

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x68

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_74
    const/4 v2, 0x1

    iput-boolean v2, v4, Lcom/android/server/am/ActivityRecord;->idle:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->scheduleAppGcsLocked()V

    iget-boolean v2, v4, Lcom/android/server/am/ActivityRecord;->thumbnailNeeded:Z

    if-eqz v2, :cond_95

    iget-object v2, v4, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_95

    iget-object v2, v4, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v2, :cond_95

    iget-object v2, v4, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v24, v0

    const/4 v2, 0x0

    iput-boolean v2, v4, Lcom/android/server/am/ActivityRecord;->thumbnailNeeded:Z

    :cond_95
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/am/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v2, :cond_b3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v2, v2, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    if-nez v2, :cond_b3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    const/16 v18, 0x1

    :cond_b3
    :goto_b3
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityStack;->processStoppingActivitiesLocked(Z)Ljava/util/ArrayList;

    move-result-object v27

    if-eqz v27, :cond_17e

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v13

    :goto_c0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mFinishingActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lez v12, :cond_de

    new-instance v20, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mFinishingActivities:Ljava/util/ArrayList;

    move-object/from16 v0, v20

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_d5
    .catchall {:try_start_1b .. :try_end_d5} :catchall_17b

    :try_start_d5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mFinishingActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_dc
    .catchall {:try_start_d5 .. :try_end_dc} :catchall_248

    move-object/from16 v19, v20

    :cond_de
    :try_start_de
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mCancelledThumbnails:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-lez v14, :cond_102

    new-instance v29, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mCancelledThumbnails:Ljava/util/ArrayList;

    move-object/from16 v0, v29

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_f7
    .catchall {:try_start_de .. :try_end_f7} :catchall_17b

    :try_start_f7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mCancelledThumbnails:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_100
    .catchall {:try_start_f7 .. :try_end_100} :catchall_24d

    move-object/from16 v28, v29

    :cond_102
    :try_start_102
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v2, :cond_117

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v2, Lcom/android/server/am/ActivityManagerService;->mBooting:Z

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/server/am/ActivityManagerService;->mBooting:Z

    :cond_117
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mStartingUsers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_135

    new-instance v26, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mStartingUsers:Ljava/util/ArrayList;

    move-object/from16 v0, v26

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_12c
    .catchall {:try_start_102 .. :try_end_12c} :catchall_17b

    :try_start_12c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mStartingUsers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_133
    .catchall {:try_start_12c .. :try_end_133} :catchall_252

    move-object/from16 v25, v26

    :cond_135
    :try_start_135
    monitor-exit v30
    :try_end_136
    .catchall {:try_start_135 .. :try_end_136} :catchall_17b

    if-eqz v24, :cond_13f

    :try_start_138
    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/app/IApplicationThread;->requestThumbnail(Landroid/os/IBinder;)V
    :try_end_13f
    .catch Ljava/lang/Exception; {:try_start_138 .. :try_end_13f} :catch_181

    :cond_13f
    :goto_13f
    const/16 v21, 0x0

    :goto_141
    move/from16 v0, v21

    if-ge v0, v13, :cond_1a2

    move-object/from16 v0, v27

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_154
    iget-boolean v2, v4, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_199

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v2, v5}, Lcom/android/server/am/ActivityStack;->finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Lcom/android/server/am/ActivityRecord;

    :goto_15f
    monitor-exit v3
    :try_end_160
    .catchall {:try_start_154 .. :try_end_160} :catchall_19f

    add-int/lit8 v21, v21, 0x1

    goto :goto_141

    :cond_163
    :try_start_163
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v2, v4, :cond_74

    goto/16 :goto_5a

    :cond_16b
    if-eqz p2, :cond_b3

    const/4 v7, 0x0

    const-wide/16 v8, -0x1

    const-wide/16 v10, -0x1

    move-object/from16 v5, p0

    move/from16 v6, p2

    invoke-virtual/range {v5 .. v11}, Lcom/android/server/am/ActivityStack;->reportActivityLaunchedLocked(ZLcom/android/server/am/ActivityRecord;JJ)V

    goto/16 :goto_b3

    :catchall_17b
    move-exception v2

    :goto_17c
    monitor-exit v30
    :try_end_17d
    .catchall {:try_start_163 .. :try_end_17d} :catchall_17b

    throw v2

    :cond_17e
    const/4 v13, 0x0

    goto/16 :goto_c0

    :catch_181
    move-exception v17

    const-string v2, "ActivityManager"

    const-string v3, "Exception thrown when requesting thumbnail"

    move-object/from16 v0, v17

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object/from16 v7, p1

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/am/ActivityManagerService;->sendPendingThumbnail(Lcom/android/server/am/ActivityRecord;Landroid/os/IBinder;Landroid/graphics/Bitmap;Ljava/lang/CharSequence;Z)V

    goto :goto_13f

    :cond_199
    :try_start_199
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/am/ActivityStack;->stopActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    goto :goto_15f

    :catchall_19f
    move-exception v2

    monitor-exit v3
    :try_end_1a1
    .catchall {:try_start_199 .. :try_end_1a1} :catchall_19f

    throw v2

    :cond_1a2
    const/16 v21, 0x0

    :goto_1a4
    move/from16 v0, v21

    if-ge v0, v12, :cond_1c8

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    const/4 v2, 0x1

    const/4 v5, 0x0

    :try_start_1b9
    const-string v6, "finish-idle"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v2, v5, v6}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZZLjava/lang/String;)Z

    move-result v15

    monitor-exit v3

    add-int/lit8 v21, v21, 0x1

    goto :goto_1a4

    :catchall_1c5
    move-exception v2

    monitor-exit v3
    :try_end_1c7
    .catchall {:try_start_1b9 .. :try_end_1c7} :catchall_1c5

    throw v2

    :cond_1c8
    const/16 v21, 0x0

    :goto_1ca
    move/from16 v0, v21

    if-ge v0, v14, :cond_1e6

    move-object/from16 v0, v28

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/am/ActivityManagerService;->sendPendingThumbnail(Lcom/android/server/am/ActivityRecord;Landroid/os/IBinder;Landroid/graphics/Bitmap;Ljava/lang/CharSequence;Z)V

    add-int/lit8 v21, v21, 0x1

    goto :goto_1ca

    :cond_1e6
    if-eqz v16, :cond_225

    const-string v2, "ActivityManager"

    const-string v3, "!@call fb1"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/am/ActivityStack$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/server/am/ActivityStack$2;-><init>(Lcom/android/server/am/ActivityStack;)V

    const-wide/16 v5, 0x3e8

    invoke-virtual {v2, v3, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1ff
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->trimApplications()V

    if-eqz v18, :cond_216

    const-string v2, "ActivityManager"

    const-string v3, "!@call esab"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->enableScreenAfterBoot()V

    :cond_216
    if-eqz v15, :cond_224

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    const/4 v2, 0x0

    :try_start_21e
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    monitor-exit v3
    :try_end_224
    .catchall {:try_start_21e .. :try_end_224} :catchall_245

    :cond_224
    return-object v23

    :cond_225
    if-eqz v25, :cond_1ff

    const/16 v21, 0x0

    :goto_229
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v21

    if-ge v0, v2, :cond_1ff

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v25

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/UserStartedState;

    invoke-virtual {v3, v2}, Lcom/android/server/am/ActivityManagerService;->finishUserSwitch(Lcom/android/server/am/UserStartedState;)V

    add-int/lit8 v21, v21, 0x1

    goto :goto_229

    :catchall_245
    move-exception v2

    :try_start_246
    monitor-exit v3
    :try_end_247
    .catchall {:try_start_246 .. :try_end_247} :catchall_245

    throw v2

    :catchall_248
    move-exception v2

    move-object/from16 v19, v20

    goto/16 :goto_17c

    :catchall_24d
    move-exception v2

    move-object/from16 v28, v29

    goto/16 :goto_17c

    :catchall_252
    move-exception v2

    move-object/from16 v25, v26

    goto/16 :goto_17c
.end method

.method final activityPaused(Landroid/os/IBinder;Z)V
    .registers 11

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    :try_start_4
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->indexOfTokenLocked(Landroid/os/IBinder;)I

    move-result v1

    if-ltz v1, :cond_47

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    move-object v2, v0

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x65

    invoke-virtual {v3, v5, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mDelayedRotationRequest:Lcom/android/server/am/ActivityStack$DelayedRotationRequest;

    if-eqz v3, :cond_34

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mDelayedRotationRequest:Lcom/android/server/am/ActivityStack$DelayedRotationRequest;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityStack$DelayedRotationRequest;->requested:Z

    if-eqz v3, :cond_49

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mDelayedRotationRequest:Lcom/android/server/am/ActivityStack$DelayedRotationRequest;

    iget v6, v6, Lcom/android/server/am/ActivityStack$DelayedRotationRequest;->delayMillis:I

    invoke-virtual {v3, v5, v6}, Lcom/android/server/wm/WindowManagerService;->forceFreezingScreen(ZI)V

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/am/ActivityStack;->mDelayedRotationRequest:Lcom/android/server/am/ActivityStack$DelayedRotationRequest;

    :cond_34
    :goto_34
    iget-boolean v3, p0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v3, :cond_80

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mPausingActivities:Ljava/util/LinkedList;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5e

    sget-object v3, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v3, v2, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-direct {p0, v2}, Lcom/android/server/am/ActivityStack;->completePauseLocked(Lcom/android/server/am/ActivityRecord;)V

    :cond_47
    :goto_47
    monitor-exit v4

    return-void

    :cond_49
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mDelayedRotationRequest:Lcom/android/server/am/ActivityStack$DelayedRotationRequest;

    iget v6, v6, Lcom/android/server/am/ActivityStack$DelayedRotationRequest;->delayMillis:I

    invoke-virtual {v3, v5, v6}, Lcom/android/server/wm/WindowManagerService;->forceFreezingScreen(ZI)V

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mDelayedRotationRequest:Lcom/android/server/am/ActivityStack$DelayedRotationRequest;

    const/4 v5, 0x1

    iput-boolean v5, v3, Lcom/android/server/am/ActivityStack$DelayedRotationRequest;->requested:Z

    goto :goto_34

    :catchall_5b
    move-exception v3

    monitor-exit v4
    :try_end_5d
    .catchall {:try_start_4 .. :try_end_5d} :catchall_5b

    throw v3

    :cond_5e
    const/16 v3, 0x753c

    const/4 v5, 0x3

    :try_start_61
    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, v2, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mPausingActivities:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    goto :goto_47

    :cond_80
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v3, v2, :cond_8c

    sget-object v3, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v3, v2, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-direct {p0}, Lcom/android/server/am/ActivityStack;->completePauseLocked()V

    goto :goto_47

    :cond_8c
    const/16 v5, 0x753c

    const/4 v3, 0x4

    new-array v6, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v7, v2, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    const/4 v3, 0x1

    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    const/4 v3, 0x2

    iget-object v7, v2, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v7, v6, v3

    const/4 v7, 0x3

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v3, :cond_b9

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    :goto_b3
    aput-object v3, v6, v7

    invoke-static {v5, v6}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    goto :goto_47

    :cond_b9
    const-string v3, "(none)"
    :try_end_bb
    .catchall {:try_start_61 .. :try_end_bb} :catchall_5b

    goto :goto_b3
.end method

.method final activityResumed(Landroid/os/IBinder;)V
    .registers 7

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    :try_start_4
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->indexOfTokenLocked(Landroid/os/IBinder;)I

    move-result v1

    if-ltz v1, :cond_1a

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/server/am/ActivityRecord;->icicle:Landroid/os/Bundle;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/server/am/ActivityRecord;->haveState:Z

    :cond_1a
    monitor-exit v4

    return-void

    :catchall_1c
    move-exception v3

    monitor-exit v4
    :try_end_1e
    .catchall {:try_start_4 .. :try_end_1e} :catchall_1c

    throw v3
.end method

.method activitySleptLocked(Lcom/android/server/am/ActivityRecord;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mGoingToSleepActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->checkReadyForSleepLocked()V

    return-void
.end method

.method final activityStoppedLocked(Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;Landroid/graphics/Bitmap;Ljava/lang/CharSequence;)V
    .registers 19

    iget-object v10, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v11, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v10, v11, :cond_26

    const-string v10, "ActivityManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Activity reported stop, but no longer stopping: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v11, 0x6c

    invoke-virtual {v10, v11, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    :cond_25
    :goto_25
    return-void

    :cond_26
    if-eqz p2, :cond_39

    move-object/from16 v0, p2

    iput-object v0, p1, Lcom/android/server/am/ActivityRecord;->icicle:Landroid/os/Bundle;

    const/4 v10, 0x1

    iput-boolean v10, p1, Lcom/android/server/am/ActivityRecord;->haveState:Z

    const/4 v10, 0x0

    iput v10, p1, Lcom/android/server/am/ActivityRecord;->launchCount:I

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-virtual {p1, v0, v1}, Lcom/android/server/am/ActivityRecord;->updateThumbnail(Landroid/graphics/Bitmap;Ljava/lang/CharSequence;)V

    :cond_39
    iget-boolean v10, p1, Lcom/android/server/am/ActivityRecord;->stopped:Z

    if-nez v10, :cond_25

    iget-object v10, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v11, 0x6c

    invoke-virtual {v10, v11, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    const/4 v10, 0x1

    iput-boolean v10, p1, Lcom/android/server/am/ActivityRecord;->stopped:Z

    sget-object v10, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v10, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-virtual {p0, v10, v11}, Lcom/android/server/am/ActivityStack;->getFrontResumedActivities(ZZ)Ljava/util/ArrayList;

    move-result-object v8

    invoke-static {}, Lcom/android/server/am/MultiWindowManagerService;->getSelf()Lcom/android/server/am/MultiWindowManagerService;

    move-result-object v5

    iget-boolean v10, p0, Lcom/android/server/am/ActivityStack;->mIsIdleNow:Z

    if-nez v10, :cond_5f

    invoke-virtual {v5, v8, p1}, Lcom/android/server/am/MultiWindowManagerService;->checkIdleStateNow(Ljava/util/ArrayList;Lcom/android/server/am/ActivityRecord;)Z

    move-result v10

    if-eqz v10, :cond_6f

    :cond_5f
    iget-object v10, p0, Lcom/android/server/am/ActivityStack;->mPausingActivities:Ljava/util/LinkedList;

    invoke-virtual {v10}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_6f

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {p0, v10, v11}, Lcom/android/server/am/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V

    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/server/am/ActivityStack;->mIsIdleNow:Z

    :cond_6f
    iget-boolean v10, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v10, :cond_77

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->clearOptionsLocked()V

    goto :goto_25

    :cond_77
    iget-boolean v10, p1, Lcom/android/server/am/ActivityRecord;->configDestroy:Z

    if-eqz v10, :cond_87

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-string v12, "stop-config"

    invoke-virtual {p0, p1, v10, v11, v12}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZZLjava/lang/String;)Z

    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    goto :goto_25

    :cond_87
    const/4 v2, 0x0

    const/4 v4, 0x0

    iget-boolean v10, p0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v10, :cond_ed

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->topResumedActivitiesLocked()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_95
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_a8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ActivityRecord;

    iget-object v10, v7, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v11, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v10, v11, :cond_95

    const/4 v4, 0x1

    :cond_a8
    if-nez v4, :cond_c3

    iget-object v10, p0, Lcom/android/server/am/ActivityStack;->mPausingActivities:Ljava/util/LinkedList;

    invoke-virtual {v10}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_b0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_c3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ActivityRecord;

    iget-object v10, v6, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v11, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v10, v11, :cond_b0

    const/4 v4, 0x1

    :cond_c3
    :goto_c3
    iget-object v10, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v10, :cond_25

    iget-boolean v10, p0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v10, :cond_ff

    if-nez v4, :cond_25

    :goto_cd
    iget-wide v10, p1, Lcom/android/server/am/ActivityRecord;->lastVisibleTime:J

    iget-object v12, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-wide v12, v12, Lcom/android/server/am/ActivityManagerService;->mPreviousProcessVisibleTime:J

    cmp-long v10, v10, v12

    if-lez v10, :cond_25

    iget-object v10, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v11, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mHomeProcess:Lcom/android/server/am/ProcessRecord;

    if-eq v10, v11, :cond_25

    iget-object v10, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iput-object v11, v10, Lcom/android/server/am/ActivityManagerService;->mPreviousProcess:Lcom/android/server/am/ProcessRecord;

    iget-object v10, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-wide v11, p1, Lcom/android/server/am/ActivityRecord;->lastVisibleTime:J

    iput-wide v11, v10, Lcom/android/server/am/ActivityManagerService;->mPreviousProcessVisibleTime:J

    goto/16 :goto_25

    :cond_ed
    iget-object v10, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v10, :cond_f6

    iget-object v10, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v10, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    goto :goto_c3

    :cond_f6
    iget-object v10, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v10, :cond_c3

    iget-object v10, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v10, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    goto :goto_c3

    :cond_ff
    if-eqz v2, :cond_25

    iget-object v10, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eq v10, v2, :cond_25

    goto :goto_cd
.end method

.method public arrangedWindowStateLocked(Ljava/util/List;)V
    .registers 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v15, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {}, Lcom/android/server/am/MultiWindowManagerService;->getSelf()Lcom/android/server/am/MultiWindowManagerService;

    move-result-object v11

    const/4 v7, 0x0

    if-eqz p1, :cond_d8

    const/4 v12, 0x0

    const/16 v17, 0x0

    const/16 v20, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x0

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v22

    add-int/lit8 v22, v22, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/ActivityRecord;

    iget v0, v13, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v22, v0

    and-int/lit8 v12, v22, 0xf

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v22

    add-int/lit8 v9, v22, -0x2

    :goto_42
    if-ltz v9, :cond_a6

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/am/ActivityRecord;

    const/16 v22, 0x3

    move/from16 v0, v22

    if-eq v12, v0, :cond_58

    const/16 v22, 0xc

    move/from16 v0, v22

    if-ne v12, v0, :cond_246

    :cond_58
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v22

    const/high16 v23, 0x100

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_2a0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v22, v0

    const/high16 v23, 0x40

    and-int v22, v22, v23

    if-eqz v22, :cond_2a0

    const/4 v5, 0x1

    move-object/from16 v20, v16

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v22, v0

    const v23, 0xffffff

    and-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v22, v0

    const/high16 v23, 0x200

    or-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v11, v0, v8, v1}, Lcom/android/server/am/MultiWindowManagerService;->updateSplitZone(Lcom/android/server/am/ActivityRecord;Ljava/util/ArrayList;Z)V

    :cond_a6
    :goto_a6
    if-eqz v20, :cond_2a4

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v22, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStack;->setWindowModeForAllActivitiesInTaskLocked(Lcom/android/server/am/TaskRecord;ILjava/util/ArrayList;)V

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/am/ActivityStack;->notifyWindowStatusChangedLocked(Lcom/android/server/am/ActivityRecord;IIZ)V

    :cond_d8
    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityStack;->getFrontResumedActivities(ZZ)Ljava/util/ArrayList;

    move-result-object v19

    if-eqz p1, :cond_359

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v22

    if-lez v22, :cond_359

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, v22

    iget-boolean v0, v0, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    move/from16 v22, v0

    if-nez v22, :cond_359

    if-eqz v19, :cond_359

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_359

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v22

    and-int/lit8 v22, v22, 0xf

    if-eqz v22, :cond_144

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, v22

    iget-boolean v0, v0, Lcom/android/server/am/ActivityRecord;->visible:Z

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_15e

    :cond_144
    const/16 v22, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, v22

    iget-boolean v0, v0, Lcom/android/server/am/ActivityRecord;->visible:Z

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_359

    :cond_15e
    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lcom/android/server/am/MultiWindowManagerService;->updateArrangeState(Ljava/util/List;)I

    move-result v7

    :goto_164
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/ActivityStack;->mCurrentArrange:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-eq v0, v7, :cond_173

    move-object/from16 v0, p0

    iput v7, v0, Lcom/android/server/am/ActivityStack;->mCurrentArrange:I

    const/4 v5, 0x1

    :cond_173
    const/16 v22, 0x1

    move/from16 v0, v22

    if-eq v7, v0, :cond_184

    if-eqz v5, :cond_184

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1, v6}, Lcom/android/server/am/ActivityStack;->resizeArrangedWindow(ILandroid/graphics/Point;)V

    :cond_184
    if-eqz v5, :cond_1f6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessesReady:Z

    move/from16 v22, v0

    if-eqz v22, :cond_1f6

    new-instance v18, Landroid/content/Intent;

    const-string v22, "com.sec.android.action.NOTIFY_SPLIT_WINDOWS"

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v22, "com.sec.android.app.FlashBarService"

    const-string v23, "com.sec.android.app.FlashBarService.CenterBarDisplayReceiver"

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v22, "com.sec.android.extra.ARRAGE_MODE"

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mServiceMap:Lcom/android/server/am/ActiveServices$ServiceMap;

    move-object/from16 v22, v0

    new-instance v23, Landroid/content/ComponentName;

    const-string v24, "com.sec.android.app.FlashBarService"

    const-string v25, "com.sec.android.app.FlashBarService.FlashBarService"

    invoke-direct/range {v23 .. v25}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v24, 0x0

    invoke-virtual/range {v22 .. v24}, Lcom/android/server/am/ActiveServices$ServiceMap;->getServiceByName(Landroid/content/ComponentName;I)Lcom/android/server/am/ServiceRecord;

    move-result-object v22

    if-eqz v22, :cond_1e5

    const-string v22, "com.sec.android.extra.MULTIWINDOW_UI_RUNNING"

    const/16 v23, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_1e5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    sget-object v23, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_1f6
    if-eqz p1, :cond_361

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_1fc
    :goto_1fc
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_361

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v23, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Lcom/android/server/wm/WindowManagerService;->getAppWindowMode(Landroid/view/IApplicationToken;)I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_1fc

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v23, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v24, v0

    invoke-virtual/range {v22 .. v24}, Lcom/android/server/wm/WindowManagerService;->setAppWindowMode(Landroid/view/IApplicationToken;I)V

    goto :goto_1fc

    :cond_246
    const/16 v22, 0x1

    move/from16 v0, v22

    if-eq v12, v0, :cond_252

    const/16 v22, 0x2

    move/from16 v0, v22

    if-ne v12, v0, :cond_273

    :cond_252
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v22, v0

    and-int/lit8 v17, v22, 0xf

    const/16 v22, 0x3

    move/from16 v0, v17

    move/from16 v1, v22

    if-ne v0, v1, :cond_2a0

    const/4 v5, 0x1

    move-object/from16 v20, v16

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v11, v0, v8, v1}, Lcom/android/server/am/MultiWindowManagerService;->updateSplitZone(Lcom/android/server/am/ActivityRecord;Ljava/util/ArrayList;Z)V

    goto/16 :goto_a6

    :cond_273
    const/16 v22, 0x4

    move/from16 v0, v22

    if-eq v12, v0, :cond_27f

    const/16 v22, 0x8

    move/from16 v0, v22

    if-ne v12, v0, :cond_2a0

    :cond_27f
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v22, v0

    and-int/lit8 v17, v22, 0xf

    const/16 v22, 0xc

    move/from16 v0, v17

    move/from16 v1, v22

    if-ne v0, v1, :cond_2a0

    const/4 v5, 0x1

    move-object/from16 v20, v16

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v11, v0, v8, v1}, Lcom/android/server/am/MultiWindowManagerService;->updateSplitZone(Lcom/android/server/am/ActivityRecord;Ljava/util/ArrayList;Z)V

    goto/16 :goto_a6

    :cond_2a0
    add-int/lit8 v9, v9, -0x1

    goto/16 :goto_42

    :cond_2a4
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v22

    add-int/lit8 v9, v22, -0x1

    :goto_2aa
    if-ltz v9, :cond_d8

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/ActivityRecord;

    iget v0, v13, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v22

    const/high16 v23, 0x100

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_31d

    move-object/from16 v0, p1

    invoke-virtual {v11, v13, v0}, Lcom/android/server/am/MultiWindowManagerService;->updateSplitZoneAfterDestroy(Lcom/android/server/am/ActivityRecord;Ljava/util/List;)Z

    move-result v22

    if-eqz v22, :cond_31d

    iget-object v0, v13, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v22, v0

    iget v0, v13, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStack;->setWindowModeForAllActivitiesInTaskLocked(Lcom/android/server/am/TaskRecord;ILjava/util/ArrayList;)V

    iget v0, v13, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v13, v1, v2, v3}, Lcom/android/server/am/ActivityStack;->notifyWindowStatusChangedLocked(Lcom/android/server/am/ActivityRecord;IIZ)V

    const/4 v5, 0x1

    iget v0, v13, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v22, v0

    and-int/lit8 v21, v22, 0xf

    if-eqz v21, :cond_31a

    new-instance v14, Landroid/content/Intent;

    const-string v22, "com.sec.android.action.NOTIFY_FOCUS_WINDOWS"

    move-object/from16 v0, v22

    invoke-direct {v14, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v22, "com.sec.android.extra.ARRAGE_TYPE"

    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_31a
    :goto_31a
    add-int/lit8 v9, v9, -0x1

    goto :goto_2aa

    :cond_31d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isSupportMultiWindow(Landroid/content/Context;)Z

    move-result v22

    if-eqz v22, :cond_31a

    iget v0, v13, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v22

    const/high16 v23, 0x100

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_31a

    iget-object v0, v13, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v22, v0

    sget-object v23, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_31a

    iget-boolean v0, v13, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    move/from16 v22, v0

    if-nez v22, :cond_31a

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V

    goto :goto_31a

    :cond_359
    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Lcom/android/server/am/MultiWindowManagerService;->updateArrangeState(Ljava/util/List;)I

    move-result v7

    goto/16 :goto_164

    :cond_361
    return-void
.end method

.method awakeFromSleepingLocked()V
    .registers 6

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    iput-boolean v4, p0, Lcom/android/server/am/ActivityStack;->mSleepTimeout:Z

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_17

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_17
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_1f
    if-ltz v0, :cond_2f

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v1, v4}, Lcom/android/server/am/ActivityRecord;->setSleeping(Z)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1f

    :cond_2f
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mGoingToSleepActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method final canResumedActivitiesLocked()Ljava/util/List;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v13, 0x0

    const/4 v9, 0x0

    invoke-static {}, Lcom/android/server/am/MultiWindowManagerService;->getSelf()Lcom/android/server/am/MultiWindowManagerService;

    move-result-object v7

    add-int/lit8 v5, v1, -0x1

    :goto_18
    if-ltz v5, :cond_e3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/ActivityRecord;

    iget-boolean v15, v11, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v15, :cond_2b

    :cond_28
    :goto_28
    add-int/lit8 v5, v5, -0x1

    goto :goto_18

    :cond_2b
    iget-object v15, v11, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v15, v15, Lcom/android/server/am/TaskRecord;->taskId:I

    if-eq v2, v15, :cond_28

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/server/am/ActivityStack;->okToShow(Lcom/android/server/am/ActivityRecord;)Z

    move-result v15

    if-eqz v15, :cond_28

    iget-object v15, v11, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v2, v15, Lcom/android/server/am/TaskRecord;->taskId:I

    iget v15, v11, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v15}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v6

    iget v15, v11, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v15}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v10

    const/high16 v15, 0x200

    if-ne v6, v15, :cond_a4

    const/high16 v15, 0x30

    and-int/2addr v15, v10

    if-nez v15, :cond_28

    if-eqz v8, :cond_86

    const/high16 v15, 0x80

    and-int/2addr v15, v10

    if-nez v15, :cond_86

    iget-boolean v15, v11, Lcom/android/server/am/ActivityRecord;->otherAppTouched:Z

    if-eqz v15, :cond_28

    if-eqz v4, :cond_28

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v15, v15, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v11, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/android/server/wm/WindowManagerService;->getWindowIndexByAppToken(Landroid/os/IBinder;)I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v16, v0

    iget-object v0, v4, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lcom/android/server/wm/WindowManagerService;->getWindowIndexByAppToken(Landroid/os/IBinder;)I

    move-result v16

    move/from16 v0, v16

    if-gt v15, v0, :cond_28

    goto :goto_28

    :cond_86
    and-int/lit8 v3, v10, 0xf

    if-eqz v3, :cond_8e

    and-int v15, v9, v3

    if-eq v15, v3, :cond_28

    :cond_8e
    const-string v15, "android"

    iget-object v0, v11, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_9e

    iget-boolean v15, v11, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-eqz v15, :cond_9f

    :cond_9e
    or-int/2addr v9, v3

    :cond_9f
    const/4 v15, 0x0

    invoke-virtual {v12, v15, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_28

    :cond_a4
    const/high16 v15, 0x100

    if-ne v6, v15, :cond_28

    if-nez v8, :cond_b4

    move-object v8, v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/server/am/ActivityStack;->isHomeTask(Lcom/android/server/am/ActivityRecord;)Z

    move-result v15

    if-eqz v15, :cond_b4

    move-object v4, v11

    :cond_b4
    and-int/lit16 v15, v10, 0x1000

    if-eqz v15, :cond_bf

    const/4 v15, 0x0

    invoke-virtual {v12, v15, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    if-ne v11, v8, :cond_bf

    const/4 v8, 0x0

    :cond_bf
    iget-object v15, v11, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v15, v15, Lcom/android/server/am/TaskRecord;->taskId:I

    iget-object v0, v11, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v7, v15, v0}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v14

    if-eqz v14, :cond_28

    const-string v15, "android.intent.extra.STAY_RESUME"

    invoke-virtual {v14, v15}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_28

    const/4 v15, 0x0

    invoke-virtual {v12, v15, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_28

    :cond_e3
    if-eqz v8, :cond_fd

    const/16 v15, 0xf

    if-eq v9, v15, :cond_fd

    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_fd

    if-eqz v9, :cond_f9

    iget v15, v8, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const/high16 v16, 0x40

    and-int v15, v15, v16

    if-eqz v15, :cond_fd

    :cond_f9
    const/4 v15, 0x0

    invoke-virtual {v12, v15, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_fd
    return-object v12
.end method

.method checkReadyForSleepLocked()V
    .registers 8

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->isSleeping()Z

    move-result v4

    if-nez v4, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    iget-boolean v4, p0, Lcom/android/server/am/ActivityStack;->mSleepTimeout:Z

    if-eqz v4, :cond_15

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mShuttingDown:Z

    if-eqz v4, :cond_82

    :cond_15
    iget-boolean v4, p0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v4, :cond_45

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->topResumedActivitiesLocked()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    invoke-direct {p0, v2, v5, v6}, Lcom/android/server/am/ActivityStack;->startPausingLocked(Lcom/android/server/am/ActivityRecord;ZZ)V

    goto :goto_a

    :cond_31
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mPausingActivities:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_a

    :cond_39
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_52

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->scheduleIdleLocked()V

    goto :goto_a

    :cond_45
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v4, :cond_4d

    invoke-direct {p0, v5, v6}, Lcom/android/server/am/ActivityStack;->startPausingLocked(ZZ)V

    goto :goto_a

    :cond_4d
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v4, :cond_39

    goto :goto_a

    :cond_52
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/android/server/am/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    :goto_5e
    if-ltz v0, :cond_7a

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v4, v5, :cond_74

    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v4, v5, :cond_77

    :cond_74
    invoke-virtual {v2, v6}, Lcom/android/server/am/ActivityRecord;->setSleeping(Z)V

    :cond_77
    add-int/lit8 v0, v0, -0x1

    goto :goto_5e

    :cond_7a
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mGoingToSleepActivities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gtz v4, :cond_a

    :cond_82
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x64

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v4

    if-eqz v4, :cond_96

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_96
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mShuttingDown:Z

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    goto/16 :goto_a
.end method

.method final cleanUpActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V
    .registers 10

    const/4 v5, 0x0

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v3, p1, :cond_8

    iput-object v4, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    :cond_8
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mFocusedActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v3, p1, :cond_12

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object v4, v3, Lcom/android/server/am/ActivityManagerService;->mFocusedActivity:Lcom/android/server/am/ActivityRecord;

    :cond_12
    iput-boolean v5, p1, Lcom/android/server/am/ActivityRecord;->configDestroy:Z

    iput-boolean v5, p1, Lcom/android/server/am/ActivityRecord;->frozenBeforeDestroy:Z

    if-eqz p3, :cond_1e

    sget-object v3, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v3, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v4, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    :cond_1e
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mFinishingActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-boolean v3, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v3, :cond_52

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    if-eqz v3, :cond_52

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_36
    :goto_36
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_50

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/PendingIntentRecord;

    if-eqz v2, :cond_36

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3, v2, v5}, Lcom/android/server/am/ActivityManagerService;->cancelIntentSenderLocked(Lcom/android/server/am/PendingIntentRecord;Z)V

    goto :goto_36

    :cond_50
    iput-object v4, p1, Lcom/android/server/am/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    :cond_52
    if-eqz p2, :cond_57

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->cleanUpActivityServicesLocked(Lcom/android/server/am/ActivityRecord;)V

    :cond_57
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mPendingThumbnails:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_68

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mCancelledThumbnails:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_68
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStack;->removeTimeoutsForActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    return-void
.end method

.method final cleanUpActivityServicesLocked(Lcom/android/server/am/ActivityRecord;)V
    .registers 6

    const/4 v3, 0x0

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->connections:Ljava/util/HashSet;

    if-eqz v2, :cond_21

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->connections:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ConnectionRecord;

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    invoke-virtual {v2, v0, v3, p1}, Lcom/android/server/am/ActiveServices;->removeConnectionLocked(Lcom/android/server/am/ConnectionRecord;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;)V

    goto :goto_b

    :cond_1f
    iput-object v3, p1, Lcom/android/server/am/ActivityRecord;->connections:Ljava/util/HashSet;

    :cond_21
    return-void
.end method

.method final destroyActivitiesLocked(Lcom/android/server/am/ProcessRecord;ZLjava/lang/String;)V
    .registers 11

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->topResumedActivitiesLocked()Ljava/util/List;

    move-result-object v4

    const/4 v2, 0x0

    const/4 v0, 0x0

    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    :goto_e
    if-ltz v1, :cond_71

    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    iget-boolean v5, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v5, :cond_1f

    :cond_1c
    :goto_1c
    add-int/lit8 v1, v1, -0x1

    goto :goto_e

    :cond_1f
    iget-boolean v5, v3, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-eqz v5, :cond_24

    const/4 v2, 0x1

    :cond_24
    if-eqz p1, :cond_2a

    iget-object v5, v3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v5, p1, :cond_1c

    :cond_2a
    if-eqz v2, :cond_1c

    iget-object v5, v3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_1c

    iget-boolean v5, p0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v5, :cond_67

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1c

    :goto_3a
    iget-boolean v5, p0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v5, :cond_6c

    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mPausingActivities:Ljava/util/LinkedList;

    invoke-virtual {v5, v3}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1c

    :goto_46
    iget-boolean v5, v3, Lcom/android/server/am/ActivityRecord;->haveState:Z

    if-eqz v5, :cond_1c

    iget-boolean v5, v3, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-nez v5, :cond_1c

    iget-boolean v5, v3, Lcom/android/server/am/ActivityRecord;->stopped:Z

    if-eqz v5, :cond_1c

    iget-object v5, v3, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v6, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v5, v6, :cond_1c

    iget-object v5, v3, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v6, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v5, v6, :cond_1c

    const/4 v5, 0x1

    invoke-virtual {p0, v3, v5, p2, p3}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZZLjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1c

    const/4 v0, 0x1

    goto :goto_1c

    :cond_67
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eq v3, v5, :cond_1c

    goto :goto_3a

    :cond_6c
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-eq v3, v5, :cond_1c

    goto :goto_46

    :cond_71
    if-eqz v0, :cond_77

    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    :cond_77
    return-void
.end method

.method final destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZZLjava/lang/String;)Z
    .registers 15

    const/16 v6, 0x7542

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget v9, p1, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    iget-object v9, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v9, v9, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    iget-object v9, p1, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x4

    aput-object p4, v7, v8

    invoke-static {v6, v7}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0, p1, v6, v7}, Lcom/android/server/am/ActivityStack;->cleanUpActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V

    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v6, :cond_d6

    const/4 v1, 0x1

    :goto_3a
    if-eqz v1, :cond_ec

    if-eqz p2, :cond_7e

    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_4f

    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_4f
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v6, v7, :cond_6f

    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-gtz v6, :cond_6f

    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v7, 0x0

    iput-object v7, v6, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x19

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_6f
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_7e

    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked()V

    :cond_7e
    const/4 v5, 0x0

    :try_start_7f
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget-boolean v8, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    iget v9, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    invoke-interface {v6, v7, v8, v9}, Landroid/app/IApplicationThread;->scheduleDestroyActivity(Landroid/os/IBinder;ZI)V
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_8c} :catch_d9

    :cond_8c
    :goto_8c
    const/4 v6, 0x0

    iput-boolean v6, p1, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    iget-boolean v6, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v6, :cond_e4

    if-nez v5, :cond_e4

    sget-object v6, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYING:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v6, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x69

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    iput-object p1, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const-wide/16 v7, 0x2710

    invoke-virtual {v6, v3, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_aa
    const/4 v6, 0x0

    iput v6, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d5

    if-eqz v1, :cond_d5

    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Activity "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " being finished, but not in LRU list"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d5
    return v4

    :cond_d6
    const/4 v1, 0x0

    goto/16 :goto_3a

    :catch_d9
    move-exception v0

    iget-boolean v6, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v6, :cond_8c

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->removeActivityFromHistoryLocked(Lcom/android/server/am/ActivityRecord;)V

    const/4 v4, 0x1

    const/4 v5, 0x1

    goto :goto_8c

    :cond_e4
    sget-object v6, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v6, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    const/4 v6, 0x0

    iput-object v6, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    goto :goto_aa

    :cond_ec
    iget-boolean v6, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v6, :cond_f5

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->removeActivityFromHistoryLocked(Lcom/android/server/am/ActivityRecord;)V

    const/4 v4, 0x1

    goto :goto_aa

    :cond_f5
    sget-object v6, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v6, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    const/4 v6, 0x0

    iput-object v6, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    goto :goto_aa
.end method

.method public dismissKeyguardOnNextActivityLocked()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStack;->mDismissKeyguardOnNextActivity:Z

    return-void
.end method

.method final ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V
    .registers 6

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_12

    const/high16 v1, 0x1000

    and-int/2addr v1, p2

    if-eqz v1, :cond_f

    invoke-virtual {p0, v2}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    :cond_f
    invoke-virtual {p0, v0, p1, v2, p2}, Lcom/android/server/am/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;I)V

    :cond_12
    return-void
.end method

.method final ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;I)V
    .registers 33

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v15

    add-int/lit8 v19, v15, -0x1

    :goto_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v0, p1

    if-eq v2, v0, :cond_1b

    add-int/lit8 v19, v19, -0x1

    goto :goto_a

    :cond_1b
    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    :goto_20
    if-ltz v19, :cond_234

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ActivityRecord;

    iget-boolean v2, v7, Lcom/android/server/am/ActivityRecord;->isHomeActivity:Z

    if-eqz v2, :cond_33

    move-object v8, v7

    :cond_33
    iget-boolean v2, v7, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_3a

    :cond_37
    :goto_37
    add-int/lit8 v19, v19, -0x1

    goto :goto_20

    :cond_3a
    if-eqz p3, :cond_46

    iget-object v2, v7, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ae

    :cond_46
    const/16 v16, 0x1

    :goto_48
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v2, :cond_d7

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/server/am/ActivityStack;->shouldHideActivity(ZZIILcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)Z

    move-result v2

    if-eqz v2, :cond_d7

    iget-boolean v2, v7, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v2, :cond_a3

    iget-boolean v2, v7, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-nez v2, :cond_62

    iget-boolean v2, v7, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-eqz v2, :cond_a3

    :cond_62
    const/4 v2, 0x0

    iput-boolean v2, v7, Lcom/android/server/am/ActivityRecord;->visible:Z

    :try_start_65
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v7, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v2, v0, v1}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    iget-object v2, v7, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v26, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v0, v26

    if-eq v2, v0, :cond_88

    iget-object v2, v7, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v26, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v0, v26

    if-ne v2, v0, :cond_a3

    :cond_88
    iget-object v2, v7, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_a3

    iget-object v2, v7, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v2, :cond_a3

    iget-object v2, v7, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v0, v7, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-interface {v2, v0, v1}, Landroid/app/IApplicationThread;->scheduleWindowVisibility(Landroid/os/IBinder;Z)V
    :try_end_a3
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_a3} :catch_b1

    :cond_a3
    :goto_a3
    iget-object v2, v7, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v2, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    if-eq v6, v2, :cond_37

    iget-object v2, v7, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v6, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    goto :goto_37

    :cond_ae
    const/16 v16, 0x0

    goto :goto_48

    :catch_b1
    move-exception v17

    const-string v2, "ActivityManager"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Exception thrown making hidden: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    iget-object v0, v7, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-static {v2, v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a3

    :cond_d7
    move-object/from16 v0, p2

    if-eq v7, v0, :cond_e3

    if-eqz v16, :cond_e3

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v2}, Lcom/android/server/am/ActivityStack;->ensureActivityConfigurationLocked(Lcom/android/server/am/ActivityRecord;I)Z

    :cond_e3
    iget-object v2, v7, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_ed

    iget-object v2, v7, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v2, :cond_29c

    :cond_ed
    if-eqz p3, :cond_f9

    iget-object v2, v7, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_139

    :cond_f9
    move-object/from16 v0, p2

    if-eq v7, v0, :cond_104

    iget-object v2, v7, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move/from16 v0, p4

    invoke-virtual {v7, v2, v0}, Lcom/android/server/am/ActivityRecord;->startFreezingScreenLocked(Lcom/android/server/am/ProcessRecord;I)V

    :cond_104
    iget-boolean v2, v7, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-nez v2, :cond_11b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v7, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v2, v0, v1}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    :cond_11b
    move-object/from16 v0, p2

    if-eq v7, v0, :cond_139

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v2, :cond_290

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->canResumedActivitiesLocked()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_290

    const/4 v2, 0x1

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v7, v2, v1}, Lcom/android/server/am/ActivityStack;->startSpecificActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V

    :cond_139
    :goto_139
    iget v2, v7, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    or-int p4, p4, v2

    iget v2, v7, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v2}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v2

    const/high16 v26, 0x200

    move/from16 v0, v26

    if-ne v2, v0, :cond_345

    iget v2, v7, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v2}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v2

    const/high16 v26, 0x4

    and-int v2, v2, v26

    if-eqz v2, :cond_345

    const/16 v20, 0x1

    :goto_157
    iget-boolean v2, v7, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-nez v2, :cond_15d

    if-eqz v20, :cond_17b

    :cond_15d
    iget v2, v7, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v2}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v2

    const/high16 v26, 0x100

    move/from16 v0, v26

    if-ne v2, v0, :cond_349

    iget v2, v7, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit16 v2, v2, 0x1000

    if-nez v2, :cond_171

    or-int/lit8 v5, v5, 0xf

    :cond_171
    :goto_171
    iget-object v2, v7, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v2, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    if-eq v6, v2, :cond_17b

    iget-object v2, v7, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v6, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    :cond_17b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v7, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowManagerService;->getBaseWindowLayoutParam(Landroid/view/IApplicationToken;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v21

    const/16 v18, 0x0

    const/16 v23, 0x0

    if-eqz v21, :cond_191

    :cond_191
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->isCameraSpecialized()Z

    move-result v2

    if-eqz v2, :cond_1af

    if-eqz v21, :cond_1af

    move-object/from16 v0, v21

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v26, 0x1000

    and-int v2, v2, v26

    const/high16 v26, 0x1000

    move/from16 v0, v26

    if-ne v2, v0, :cond_1af

    const/16 v18, 0x1

    :cond_1af
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->isCameraSpecialized()Z

    move-result v2

    if-eqz v2, :cond_1bf

    iget-boolean v0, v7, Lcom/android/server/am/ActivityRecord;->requestedFullOpaque:Z

    move/from16 v23, v0

    :cond_1bf
    iget v2, v7, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit16 v2, v2, 0x2000

    if-eqz v2, :cond_1c6

    const/4 v4, 0x1

    :cond_1c6
    iget-boolean v2, v7, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-nez v2, :cond_1ce

    if-nez v18, :cond_1ce

    if-eqz v23, :cond_1da

    :cond_1ce
    iget v2, v7, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v2}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v2

    const/high16 v26, 0x100

    move/from16 v0, v26

    if-eq v2, v0, :cond_1de

    :cond_1da
    const/16 v2, 0xf

    if-ne v5, v2, :cond_37

    :cond_1de
    iget v2, v7, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit16 v2, v2, 0x1000

    if-nez v2, :cond_37

    move/from16 v12, v19

    const/4 v10, 0x0

    const/4 v9, 0x0

    move v13, v12

    :goto_1e9
    add-int/lit8 v12, v13, -0x1

    if-lez v13, :cond_22d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/ActivityRecord;

    iget v14, v11, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const/high16 v2, 0x80

    and-int/2addr v2, v14

    if-nez v2, :cond_22c

    if-eqz v8, :cond_350

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v11, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowManagerService;->getWindowIndexByAppToken(Landroid/os/IBinder;)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v26, v0

    iget-object v0, v8, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lcom/android/server/wm/WindowManagerService;->getWindowIndexByAppToken(Landroid/os/IBinder;)I

    move-result v26

    move/from16 v0, v26

    if-le v2, v0, :cond_350

    iget-boolean v2, v11, Lcom/android/server/am/ActivityRecord;->otherAppTouched:Z

    if-eqz v2, :cond_350

    :cond_22c
    const/4 v10, 0x1

    :cond_22d
    :goto_22d
    const/4 v3, 0x1

    if-nez v10, :cond_37

    if-nez v9, :cond_37

    add-int/lit8 v19, v19, -0x1

    :cond_234
    :goto_234
    if-ltz v19, :cond_38a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ActivityRecord;

    iget-boolean v2, v7, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v2, :cond_28d

    if-eqz v3, :cond_383

    iget-boolean v2, v7, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v2, :cond_28d

    const/4 v2, 0x0

    iput-boolean v2, v7, Lcom/android/server/am/ActivityRecord;->visible:Z

    :try_start_24f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v7, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v2, v0, v1}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    iget-object v2, v7, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v26, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v0, v26

    if-eq v2, v0, :cond_272

    iget-object v2, v7, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v26, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v0, v26

    if-ne v2, v0, :cond_28d

    :cond_272
    iget-object v2, v7, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_28d

    iget-object v2, v7, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v2, :cond_28d

    iget-object v2, v7, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v0, v7, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-interface {v2, v0, v1}, Landroid/app/IApplicationThread;->scheduleWindowVisibility(Landroid/os/IBinder;Z)V
    :try_end_28d
    .catch Ljava/lang/Exception; {:try_start_24f .. :try_end_28d} :catch_35c

    :cond_28d
    :goto_28d
    add-int/lit8 v19, v19, -0x1

    goto :goto_234

    :cond_290
    const/4 v2, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v7, v2, v1}, Lcom/android/server/am/ActivityStack;->startSpecificActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V

    goto/16 :goto_139

    :cond_29c
    iget-boolean v2, v7, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v2, :cond_2a6

    const/4 v2, 0x0

    invoke-virtual {v7, v2}, Lcom/android/server/am/ActivityRecord;->stopFreezingScreenLocked(Z)V

    goto/16 :goto_139

    :cond_2a6
    if-nez p3, :cond_139

    invoke-static {}, Lcom/android/server/am/MultiWindowManagerService;->getSelf()Lcom/android/server/am/MultiWindowManagerService;

    move-result-object v22

    iget-object v2, v7, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v2, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    iget-object v0, v7, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v26, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v2, v1}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v25

    if-eqz v25, :cond_340

    const-string v2, "android.intent.extra.STAY_RESUME"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_340

    const/16 v24, 0x1

    :goto_2d0
    const/4 v2, 0x1

    iput-boolean v2, v7, Lcom/android/server/am/ActivityRecord;->visible:Z

    iget-object v2, v7, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v26, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v0, v26

    if-eq v2, v0, :cond_343

    const/4 v2, 0x1

    :goto_2dc
    or-int v2, v2, v24

    if-eqz v2, :cond_139

    move-object/from16 v0, p2

    if-eq v7, v0, :cond_139

    :try_start_2e4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v7, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v2, v0, v1}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    const/4 v2, 0x0

    iput-boolean v2, v7, Lcom/android/server/am/ActivityRecord;->sleeping:Z

    iget-object v2, v7, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/16 v26, 0x1

    move/from16 v0, v26

    iput-boolean v0, v2, Lcom/android/server/am/ProcessRecord;->pendingUiClean:Z

    iget-object v2, v7, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v0, v7, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-interface {v2, v0, v1}, Landroid/app/IApplicationThread;->scheduleWindowVisibility(Landroid/os/IBinder;Z)V

    const/4 v2, 0x0

    invoke-virtual {v7, v2}, Lcom/android/server/am/ActivityRecord;->stopFreezingScreenLocked(Z)V
    :try_end_317
    .catch Ljava/lang/Exception; {:try_start_2e4 .. :try_end_317} :catch_319

    goto/16 :goto_139

    :catch_319
    move-exception v17

    const-string v2, "ActivityManager"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Exception thrown making visibile: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    iget-object v0, v7, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-static {v2, v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_139

    :cond_340
    const/16 v24, 0x0

    goto :goto_2d0

    :cond_343
    const/4 v2, 0x0

    goto :goto_2dc

    :cond_345
    const/16 v20, 0x0

    goto/16 :goto_157

    :cond_349
    iget v2, v7, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit8 v2, v2, 0xf

    or-int/2addr v5, v2

    goto/16 :goto_171

    :cond_350
    iget v2, v11, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit16 v2, v2, 0x1000

    if-eqz v2, :cond_359

    const/4 v9, 0x1

    goto/16 :goto_22d

    :cond_359
    move v13, v12

    goto/16 :goto_1e9

    :catch_35c
    move-exception v17

    const-string v2, "ActivityManager"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Exception thrown making hidden: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    iget-object v0, v7, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-static {v2, v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_28d

    :cond_383
    iget-boolean v2, v7, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-eqz v2, :cond_28d

    const/4 v3, 0x1

    goto/16 :goto_28d

    :cond_38a
    return-void
.end method

.method final ensureActivityConfigurationLocked(Lcom/android/server/am/ActivityRecord;I)Z
    .registers 11

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-boolean v6, p0, Lcom/android/server/am/ActivityStack;->mConfigWillChange:Z

    if-eqz v6, :cond_7

    :cond_6
    :goto_6
    return v4

    :cond_7
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v6, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->configuration:Landroid/content/res/Configuration;

    if-ne v6, v1, :cond_13

    iget-boolean v6, p1, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    if-eqz v6, :cond_6

    :cond_13
    iget-boolean v6, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v6, :cond_1b

    invoke-virtual {p1, v5}, Lcom/android/server/am/ActivityRecord;->stopFreezingScreenLocked(Z)V

    goto :goto_6

    :cond_1b
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->configuration:Landroid/content/res/Configuration;

    iput-object v1, p1, Lcom/android/server/am/ActivityRecord;->configuration:Landroid/content/res/Configuration;

    invoke-virtual {v2, v1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v0

    const/4 v3, 0x0

    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v6, :cond_36

    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v6, v6, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    if-eqz v6, :cond_36

    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v6, v6, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    :cond_36
    iget-boolean v6, p0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v6, :cond_5b

    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mContext:Landroid/content/Context;

    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-static {v6, v7}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isPortraitLayoutOnlyPackage(Landroid/content/Context;Landroid/content/pm/ActivityInfo;)Z

    move-result v6

    if-nez v6, :cond_4c

    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mContext:Landroid/content/Context;

    invoke-static {v6, v3}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isPortraitLayoutOnlyPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5b

    :cond_4c
    iget v6, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v6}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v6

    const/high16 v7, 0x200

    if-ne v6, v7, :cond_5b

    const/16 v6, 0x80

    if-ne v0, v6, :cond_5b

    const/4 v0, 0x0

    :cond_5b
    if-nez v0, :cond_61

    iget-boolean v6, p1, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    if-eqz v6, :cond_6

    :cond_61
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v6, :cond_6b

    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v6, :cond_71

    :cond_6b
    invoke-virtual {p1, v5}, Lcom/android/server/am/ActivityRecord;->stopFreezingScreenLocked(Z)V

    iput-boolean v5, p1, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    goto :goto_6

    :cond_71
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v6}, Landroid/content/pm/ActivityInfo;->getRealConfigChanged()I

    move-result v6

    xor-int/lit8 v6, v6, -0x1

    and-int/2addr v6, v0

    if-nez v6, :cond_80

    iget-boolean v6, p1, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    if-eqz v6, :cond_be

    :cond_80
    iget v6, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    or-int/2addr v6, v0

    iput v6, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p1, v6, p2}, Lcom/android/server/am/ActivityRecord;->startFreezingScreenLocked(Lcom/android/server/am/ProcessRecord;I)V

    iput-boolean v5, p1, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v6, :cond_96

    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v6, :cond_9e

    :cond_96
    const-string v6, "config"

    invoke-virtual {p0, p1, v4, v5, v6}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZZLjava/lang/String;)Z

    :goto_9b
    move v4, v5

    goto/16 :goto_6

    :cond_9e
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v7, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v6, v7, :cond_a8

    iput-boolean v4, p1, Lcom/android/server/am/ActivityRecord;->configDestroy:Z

    goto/16 :goto_6

    :cond_a8
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v7, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v6, v7, :cond_b6

    iget v6, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    invoke-direct {p0, p1, v6, v4}, Lcom/android/server/am/ActivityStack;->relaunchActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Z

    iput v5, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    goto :goto_9b

    :cond_b6
    iget v4, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    invoke-direct {p0, p1, v4, v5}, Lcom/android/server/am/ActivityStack;->relaunchActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Z

    iput v5, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    goto :goto_9b

    :cond_be
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v6, :cond_d1

    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v6, :cond_d1

    :try_start_c8
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-interface {v6, v7}, Landroid/app/IApplicationThread;->scheduleActivityConfigurationChanged(Landroid/os/IBinder;)V
    :try_end_d1
    .catch Landroid/os/RemoteException; {:try_start_c8 .. :try_end_d1} :catch_d6

    :cond_d1
    :goto_d1
    invoke-virtual {p1, v5}, Lcom/android/server/am/ActivityRecord;->stopFreezingScreenLocked(Z)V

    goto/16 :goto_6

    :catch_d6
    move-exception v6

    goto :goto_d1
.end method

.method final finishActivityAffinityLocked(Landroid/os/IBinder;)Z
    .registers 10

    const/4 v6, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->indexOfTokenLocked(Landroid/os/IBinder;)I

    move-result v2

    if-gez v2, :cond_9

    :goto_8
    return v3

    :cond_9
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ActivityRecord;

    :goto_11
    if-ltz v2, :cond_21

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v7, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eq v0, v4, :cond_23

    :cond_21
    move v3, v6

    goto :goto_8

    :cond_23
    iget v0, v7, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const/high16 v4, 0x200

    and-int/2addr v0, v4

    if-nez v0, :cond_40

    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    if-nez v0, :cond_32

    iget-object v0, v7, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    if-nez v0, :cond_21

    :cond_32
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    if-eqz v0, :cond_40

    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    iget-object v4, v7, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    :cond_40
    const/4 v4, 0x0

    const-string v5, "request-affinity"

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;IILandroid/content/Intent;Ljava/lang/String;Z)Z

    add-int/lit8 v2, v2, -0x1

    goto :goto_11
.end method

.method final finishActivityLocked(Lcom/android/server/am/ActivityRecord;IILandroid/content/Intent;Ljava/lang/String;Z)Z
    .registers 15

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;IILandroid/content/Intent;Ljava/lang/String;ZZ)Z

    move-result v0

    return v0
.end method

.method final finishActivityLocked(Lcom/android/server/am/ActivityRecord;IILandroid/content/Intent;Ljava/lang/String;ZZ)Z
    .registers 14

    iget-boolean v2, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_1e

    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Duplicate finish request for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->secW(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :goto_1d
    return v2

    :cond_1e
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->makeFinishing()V

    const/16 v2, 0x7531

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p1, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v5, v5, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x4

    aput-object p5, v3, v4

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge p2, v2, :cond_83

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    add-int/lit8 v3, p2, 0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v2, v3, :cond_83

    iget-boolean v2, p1, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-eqz v2, :cond_71

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    :cond_71
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getFlags()I

    move-result v2

    const/high16 v3, 0x8

    and-int/2addr v2, v3

    if-eqz v2, :cond_83

    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    const/high16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_83
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->pauseKeyDispatchingLocked()V

    iget-boolean v2, p0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v2, :cond_9a

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mFocusedActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v2, p1, :cond_9a

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityManagerService;->setFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    :cond_9a
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/am/ActivityStack;->finishActivityResultsLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;)V

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mPendingThumbnails:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_ae

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mCancelledThumbnails:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_ae
    if-eqz p6, :cond_bd

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, v2, p7}, Lcom/android/server/am/ActivityStack;->finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;IIZ)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    if-nez v2, :cond_ba

    const/4 v2, 0x1

    goto/16 :goto_1d

    :cond_ba
    const/4 v2, 0x0

    goto/16 :goto_1d

    :cond_bd
    iget-boolean v2, p0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v2, :cond_104

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v3, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v2, v3, :cond_108

    :cond_c7
    if-lez p2, :cond_d9

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    add-int/lit8 v3, p2, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eq v2, v3, :cond_118

    :cond_d9
    const/4 v0, 0x1

    :goto_da
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    if-eqz v0, :cond_11a

    const/16 v2, 0x2009

    :goto_e2
    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    iget-boolean v2, p0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v2, :cond_11d

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mPausingActivities:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_101

    :goto_fc
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, p1, v2, v3}, Lcom/android/server/am/ActivityStack;->startPausingLocked(Lcom/android/server/am/ActivityRecord;ZZ)V

    :cond_101
    const/4 v2, 0x0

    goto/16 :goto_1d

    :cond_104
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eq v2, p1, :cond_c7

    :cond_108
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v3, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v2, v3, :cond_101

    const/4 v2, 0x1

    invoke-direct {p0, p1, p2, v2, p7}, Lcom/android/server/am/ActivityStack;->finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;IIZ)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    if-nez v2, :cond_122

    const/4 v2, 0x1

    goto/16 :goto_1d

    :cond_118
    const/4 v0, 0x0

    goto :goto_da

    :cond_11a
    const/16 v2, 0x2007

    goto :goto_e2

    :cond_11d
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-nez v2, :cond_101

    goto :goto_fc

    :cond_122
    const/4 v2, 0x0

    goto/16 :goto_1d
.end method

.method final finishActivityResultsLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;)V
    .registers 11

    const/4 v6, 0x0

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_2a

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-lez v1, :cond_1e

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getUriPermissionsLocked()Lcom/android/server/am/UriPermissionOwner;

    move-result-object v4

    invoke-virtual {v1, v2, v3, p3, v4}, Lcom/android/server/am/ActivityManagerService;->grantUriPermissionFromIntentLocked(ILjava/lang/String;Landroid/content/Intent;Lcom/android/server/am/UriPermissionOwner;)V

    :cond_1e
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    iget v3, p1, Lcom/android/server/am/ActivityRecord;->requestCode:I

    move-object v1, p1

    move v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityRecord;->addResultLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    iput-object v6, p1, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    :cond_2a
    iput-object v6, p1, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    iput-object v6, p1, Lcom/android/server/am/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    iput-object v6, p1, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    iput-object v6, p1, Lcom/android/server/am/ActivityRecord;->icicle:Landroid/os/Bundle;

    return-void
.end method

.method final finishSubActivityLocked(Landroid/os/IBinder;Ljava/lang/String;I)V
    .registers 12

    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v7

    if-nez v7, :cond_8

    :goto_7
    return-void

    :cond_8
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    :goto_10
    if-ltz v2, :cond_3f

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-ne v0, v7, :cond_3c

    iget v0, v1, Lcom/android/server/am/ActivityRecord;->requestCode:I

    if-ne v0, p3, :cond_3c

    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    if-nez v0, :cond_28

    if-eqz p2, :cond_34

    :cond_28
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    if-eqz v0, :cond_3c

    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    :cond_34
    const/4 v4, 0x0

    const-string v5, "request-sub"

    move-object v0, p0

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;IILandroid/content/Intent;Ljava/lang/String;Z)Z

    :cond_3c
    add-int/lit8 v2, v2, -0x1

    goto :goto_10

    :cond_3f
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked()V

    goto :goto_7
.end method

.method public getFrontActivityPosition()Landroid/graphics/Rect;
    .registers 12

    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v7

    const/4 v6, 0x0

    :try_start_4
    invoke-virtual {p0, v6}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    if-eqz v4, :cond_38

    iget v6, v4, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v6}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v6

    const/high16 v8, 0x200

    if-ne v6, v8, :cond_38

    invoke-static {}, Lcom/android/server/am/MultiWindowManagerService;->getSelf()Lcom/android/server/am/MultiWindowManagerService;

    move-result-object v3

    iget-object v6, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v6, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    iget-object v8, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v8, v8, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v3, v6, v8}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "android.intent.extra.WINDOW_LAST_SIZE"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    if-nez v2, :cond_36

    const-string v6, "android.intent.extra.WINDOW_DEFAULT_SIZE"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    :cond_36
    monitor-exit v7

    :goto_37
    return-object v2

    :cond_38
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v6

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    new-instance v2, Landroid/graphics/Rect;

    const/4 v6, 0x0

    const/4 v8, 0x0

    iget v9, v1, Landroid/graphics/Point;->x:I

    iget v10, v1, Landroid/graphics/Point;->y:I

    invoke-direct {v2, v6, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    monitor-exit v7

    goto :goto_37

    :catchall_56
    move-exception v6

    monitor-exit v7
    :try_end_58
    .catchall {:try_start_4 .. :try_end_58} :catchall_56

    throw v6
.end method

.method public getFrontResumedActivities(ZZ)Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/am/ActivityStack;->getFrontResumedActivities(ZZZ)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getTaskAccessInfoLocked(IZ)Lcom/android/server/am/TaskAccessInfo;
    .registers 12

    new-instance v7, Lcom/android/server/am/TaskAccessInfo;

    invoke-direct {v7}, Lcom/android/server/am/TaskAccessInfo;-><init>()V

    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x0

    const/4 v2, 0x0

    :goto_d
    if-ge v3, v0, :cond_2f

    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    iget-boolean v8, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v8, :cond_32

    iget-object v8, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v8, v8, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v8, p1, :cond_32

    iput-object v1, v7, Lcom/android/server/am/TaskAccessInfo;->root:Lcom/android/server/am/ActivityRecord;

    iput v3, v7, Lcom/android/server/am/TaskAccessInfo;->rootIndex:I

    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->thumbHolder:Lcom/android/server/am/ThumbnailHolder;

    if-eqz v2, :cond_2d

    iget-object v8, v2, Lcom/android/server/am/ThumbnailHolder;->lastThumbnail:Landroid/graphics/Bitmap;

    iput-object v8, v7, Lcom/android/server/am/TaskAccessInfo;->mainThumbnail:Landroid/graphics/Bitmap;

    :cond_2d
    add-int/lit8 v3, v3, 0x1

    :cond_2f
    if-lt v3, v0, :cond_35

    :cond_31
    :goto_31
    return-object v7

    :cond_32
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_35
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v7, Lcom/android/server/am/TaskAccessInfo;->subtasks:Ljava/util/ArrayList;

    const/4 v4, 0x0

    :cond_3d
    :goto_3d
    if-ge v3, v0, :cond_53

    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    add-int/lit8 v3, v3, 0x1

    iget-boolean v8, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v8, :cond_3d

    iget-object v8, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v8, v8, Lcom/android/server/am/TaskRecord;->taskId:I

    if-eq v8, p1, :cond_5f

    :cond_53
    iget v8, v7, Lcom/android/server/am/TaskAccessInfo;->numSubThumbbails:I

    if-lez v8, :cond_31

    new-instance v8, Lcom/android/server/am/ActivityStack$3;

    invoke-direct {v8, p0, v7}, Lcom/android/server/am/ActivityStack$3;-><init>(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/TaskAccessInfo;)V

    iput-object v8, v7, Lcom/android/server/am/TaskAccessInfo;->retriever:Landroid/app/IThumbnailRetriever;

    goto :goto_31

    :cond_5f
    move-object v4, v1

    iget-object v8, v1, Lcom/android/server/am/ActivityRecord;->thumbHolder:Lcom/android/server/am/ThumbnailHolder;

    if-eq v8, v2, :cond_3d

    if-eqz v2, :cond_3d

    iget v8, v7, Lcom/android/server/am/TaskAccessInfo;->numSubThumbbails:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v7, Lcom/android/server/am/TaskAccessInfo;->numSubThumbbails:I

    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->thumbHolder:Lcom/android/server/am/ThumbnailHolder;

    new-instance v5, Lcom/android/server/am/TaskAccessInfo$SubTask;

    invoke-direct {v5}, Lcom/android/server/am/TaskAccessInfo$SubTask;-><init>()V

    iput-object v2, v5, Lcom/android/server/am/TaskAccessInfo$SubTask;->holder:Lcom/android/server/am/ThumbnailHolder;

    iput-object v1, v5, Lcom/android/server/am/TaskAccessInfo$SubTask;->activity:Lcom/android/server/am/ActivityRecord;

    add-int/lit8 v8, v3, -0x1

    iput v8, v5, Lcom/android/server/am/TaskAccessInfo$SubTask;->index:I

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3d
.end method

.method public getTaskThumbnailsLocked(Lcom/android/server/am/TaskRecord;)Landroid/app/ActivityManager$TaskThumbnails;
    .registers 8

    iget v4, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    const/4 v5, 0x1

    invoke-virtual {p0, v4, v5}, Lcom/android/server/am/ActivityStack;->getTaskAccessInfoLocked(IZ)Lcom/android/server/am/TaskAccessInfo;

    move-result-object v1

    iget-boolean v4, p0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v4, :cond_2e

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->topResumedActivitiesLocked()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    if-eqz v2, :cond_13

    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->thumbHolder:Lcom/android/server/am/ThumbnailHolder;

    if-ne v4, p1, :cond_13

    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v4, v2}, Lcom/android/server/am/ActivityStack;->screenshotActivities(Lcom/android/server/am/ActivityRecord;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, v1, Lcom/android/server/am/TaskAccessInfo;->mainThumbnail:Landroid/graphics/Bitmap;

    :cond_2d
    :goto_2d
    return-object v1

    :cond_2e
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    iget-boolean v4, p0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-nez v4, :cond_42

    if-eqz v2, :cond_42

    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->thumbHolder:Lcom/android/server/am/ThumbnailHolder;

    if-ne v4, p1, :cond_42

    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v4, v2}, Lcom/android/server/am/ActivityStack;->screenshotActivities(Lcom/android/server/am/ActivityRecord;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, v1, Lcom/android/server/am/TaskAccessInfo;->mainThumbnail:Landroid/graphics/Bitmap;

    :cond_42
    iget-object v4, v1, Lcom/android/server/am/TaskAccessInfo;->mainThumbnail:Landroid/graphics/Bitmap;

    if-nez v4, :cond_2d

    iget-object v4, p1, Lcom/android/server/am/TaskRecord;->lastThumbnail:Landroid/graphics/Bitmap;

    iput-object v4, v1, Lcom/android/server/am/TaskAccessInfo;->mainThumbnail:Landroid/graphics/Bitmap;

    goto :goto_2d
.end method

.method public getTaskTopThumbnailLocked(Lcom/android/server/am/TaskRecord;)Landroid/graphics/Bitmap;
    .registers 8

    iget-boolean v4, p0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v4, :cond_25

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->topResumedActivitiesLocked()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    if-eqz v2, :cond_c

    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->thumbHolder:Lcom/android/server/am/ThumbnailHolder;

    if-ne v4, p1, :cond_c

    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v4, v2}, Lcom/android/server/am/ActivityStack;->screenshotActivities(Lcom/android/server/am/ActivityRecord;)Landroid/graphics/Bitmap;

    move-result-object v4

    :goto_24
    return-object v4

    :cond_25
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    iget-boolean v4, p0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-nez v4, :cond_38

    if-eqz v2, :cond_38

    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v4, p1, :cond_38

    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v4, v2}, Lcom/android/server/am/ActivityStack;->screenshotActivities(Lcom/android/server/am/ActivityRecord;)Landroid/graphics/Bitmap;

    move-result-object v4

    goto :goto_24

    :cond_38
    iget v4, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    const/4 v5, 0x1

    invoke-virtual {p0, v4, v5}, Lcom/android/server/am/ActivityStack;->getTaskAccessInfoLocked(IZ)Lcom/android/server/am/TaskAccessInfo;

    move-result-object v1

    iget v4, v1, Lcom/android/server/am/TaskAccessInfo;->numSubThumbbails:I

    if-gtz v4, :cond_4d

    iget-object v4, v1, Lcom/android/server/am/TaskAccessInfo;->mainThumbnail:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_4a

    iget-object v4, v1, Lcom/android/server/am/TaskAccessInfo;->mainThumbnail:Landroid/graphics/Bitmap;

    goto :goto_24

    :cond_4a
    iget-object v4, p1, Lcom/android/server/am/TaskRecord;->lastThumbnail:Landroid/graphics/Bitmap;

    goto :goto_24

    :cond_4d
    iget-object v4, v1, Lcom/android/server/am/TaskAccessInfo;->subtasks:Ljava/util/ArrayList;

    iget v5, v1, Lcom/android/server/am/TaskAccessInfo;->numSubThumbbails:I

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskAccessInfo$SubTask;

    iget-object v4, v4, Lcom/android/server/am/TaskAccessInfo$SubTask;->holder:Lcom/android/server/am/ThumbnailHolder;

    iget-object v4, v4, Lcom/android/server/am/ThumbnailHolder;->lastThumbnail:Landroid/graphics/Bitmap;

    goto :goto_24
.end method

.method public getWindowInfo(Landroid/os/IBinder;)Landroid/os/Bundle;
    .registers 9

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->indexOfTokenLocked(Landroid/os/IBinder;)I

    move-result v0

    if-gez v0, :cond_10

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    monitor-exit v3

    :goto_f
    return-object v2

    :cond_10
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    new-instance v2, Landroid/os/Bundle;

    invoke-static {}, Lcom/android/server/am/MultiWindowManagerService;->getSelf()Lcom/android/server/am/MultiWindowManagerService;

    move-result-object v4

    iget-object v5, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v5, v5, Lcom/android/server/am/TaskRecord;->taskId:I

    iget-object v6, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v6, v6, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v4, v5, v6}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    monitor-exit v3

    goto :goto_f

    :catchall_2f
    move-exception v2

    monitor-exit v3
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw v2
.end method

.method public getWindowMode(Landroid/os/IBinder;)I
    .registers 6

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->indexOfTokenLocked(Landroid/os/IBinder;)I

    move-result v0

    if-gez v0, :cond_d

    const/high16 v2, 0x100

    monitor-exit v3

    :goto_c
    return v2

    :cond_d
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    iget v2, v1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    monitor-exit v3

    goto :goto_c

    :catchall_19
    move-exception v2

    monitor-exit v3
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v2
.end method

.method final indexOfActivityLocked(Lcom/android/server/am/ActivityRecord;)I
    .registers 3

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method final indexOfTokenLocked(Landroid/os/IBinder;)I
    .registers 4

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->forToken(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method isHomeTask(Lcom/android/server/am/ActivityRecord;)Z
    .registers 7

    const/4 v2, 0x0

    if-nez p1, :cond_4

    :cond_3
    :goto_3
    return v2

    :cond_4
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    iget-object v3, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v3, v3, Lcom/android/server/am/TaskRecord;->taskId:I

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v4, v4, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v3, v4, :cond_a

    iget-boolean v3, v1, Lcom/android/server/am/ActivityRecord;->isHomeActivity:Z

    if-eqz v3, :cond_3

    const/4 v2, 0x1

    goto :goto_3
.end method

.method final isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;
    .registers 4

    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->forToken(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method final isTaskExist(I)Z
    .registers 7

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    :goto_9
    if-ltz v2, :cond_1a

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v4, v4, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v4, p1, :cond_1b

    const/4 v1, 0x1

    :cond_1a
    return v1

    :cond_1b
    add-int/lit8 v2, v2, -0x1

    goto :goto_9
.end method

.method final isTaskResumed(I)Z
    .registers 8

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_9
    if-ltz v1, :cond_20

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v4, v4, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v4, p1, :cond_21

    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v4, v5, :cond_21

    const/4 v3, 0x1

    :cond_20
    return v3

    :cond_21
    add-int/lit8 v1, v1, -0x1

    goto :goto_9
.end method

.method final moveHomeToFrontFromLaunchLocked(I)V
    .registers 3

    const/high16 v0, 0x100

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/ActivityStack;->moveHomeToFrontFromLaunchLocked(II)V

    return-void
.end method

.method final moveHomeToFrontFromLaunchLocked(II)V
    .registers 11

    const v7, 0x10004000

    and-int v6, p1, v7

    if-ne v6, v7, :cond_44

    const/4 v0, 0x0

    const/4 v4, 0x0

    invoke-static {p2}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v6

    const/high16 v7, 0x200

    if-ne v6, v7, :cond_38

    and-int/lit8 v5, p2, 0xf

    const/4 v3, 0x0

    const/4 v6, 0x3

    if-ne v5, v6, :cond_45

    const/16 v3, 0xc

    :cond_19
    :goto_19
    if-eqz v3, :cond_1f

    invoke-direct {p0, v3}, Lcom/android/server/am/ActivityStack;->findTaskWithZone(I)Lcom/android/server/am/TaskRecord;

    move-result-object v4

    :cond_1f
    if-eqz v4, :cond_38

    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    :goto_29
    if-ltz v2, :cond_38

    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    iget-object v6, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v6, v4, :cond_4b

    const/4 v0, 0x1

    :cond_38
    :goto_38
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->moveHomeToFrontLocked()V

    if-eqz v0, :cond_44

    if-eqz v4, :cond_44

    iget v6, v4, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-direct {p0, v6}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(I)V

    :cond_44
    return-void

    :cond_45
    const/16 v6, 0xc

    if-ne v5, v6, :cond_19

    const/4 v3, 0x3

    goto :goto_19

    :cond_4b
    iget-boolean v6, v1, Lcom/android/server/am/ActivityRecord;->isHomeActivity:Z

    if-eqz v6, :cond_51

    const/4 v0, 0x0

    goto :goto_38

    :cond_51
    add-int/lit8 v2, v2, -0x1

    goto :goto_29
.end method

.method final moveHomeToFrontLocked()V
    .registers 6

    const/4 v4, 0x0

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    :goto_a
    if-ltz v2, :cond_1a

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    iget-boolean v3, v1, Lcom/android/server/am/ActivityRecord;->isHomeActivity:Z

    if-eqz v3, :cond_20

    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    :cond_1a
    if-eqz v0, :cond_1f

    invoke-virtual {p0, v0, v4, v4}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)V

    :cond_1f
    return-void

    :cond_20
    add-int/lit8 v2, v2, -0x1

    goto :goto_a
.end method

.method public moveMwAppTokensToTopLocked()V
    .registers 9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v4, v6, -0x1

    move v2, v4

    if-gez v4, :cond_11

    :cond_10
    :goto_10
    return-void

    :cond_11
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityRecord;

    :goto_19
    if-ltz v2, :cond_42

    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    iget v6, v3, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v6}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v1

    invoke-direct {p0, v3}, Lcom/android/server/am/ActivityStack;->okToShow(Lcom/android/server/am/ActivityRecord;)Z

    move-result v6

    if-eqz v6, :cond_3f

    const/high16 v6, 0x80

    and-int/2addr v6, v1

    if-eqz v6, :cond_3f

    const/high16 v6, 0x10

    and-int/2addr v6, v1

    if-nez v6, :cond_3f

    const/4 v6, 0x0

    iget-object v7, v3, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v0, v6, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_3f
    add-int/lit8 v2, v2, -0x1

    goto :goto_19

    :cond_42
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_10

    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v6, v0}, Lcom/android/server/wm/WindowManagerService;->moveAppTokensToTop(Ljava/util/List;)V

    goto :goto_10
.end method

.method final moveTaskToBackLocked(ILcom/android/server/am/ActivityRecord;)Z
    .registers 20

    const-string v14, "ActivityManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "moveTaskToBack: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v14, :cond_57

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v14, v14, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    if-eqz v14, :cond_57

    const/4 v14, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v14, v1}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Landroid/os/IBinder;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v10

    if-nez v10, :cond_3b

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Landroid/os/IBinder;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v10

    :cond_3b
    if-eqz v10, :cond_57

    const/4 v8, 0x1

    :try_start_3e
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v14, v14, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    iget-object v15, v10, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-interface {v14, v15}, Landroid/app/IActivityController;->activityResuming(Ljava/lang/String;)Z
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_3e .. :try_end_49} :catch_4e

    move-result v8

    :goto_4a
    if-nez v8, :cond_57

    const/4 v14, 0x0

    :goto_4d
    return v14

    :catch_4e
    move-exception v6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v15, 0x0

    iput-object v15, v14, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    goto :goto_4a

    :cond_57
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v3, 0x1

    const/4 v5, 0x0

    add-int/lit8 v7, v2, -0x1

    :goto_6b
    if-ltz v7, :cond_81

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/ActivityRecord;

    iget-object v14, v12, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v14, v14, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v0, p1

    if-ne v14, v0, :cond_d1

    iget-object v5, v12, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    :cond_81
    :goto_81
    if-ge v11, v2, :cond_f3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/ActivityRecord;

    iget-boolean v14, v12, Lcom/android/server/am/ActivityRecord;->isHomeActivity:Z

    if-eqz v14, :cond_92

    const/4 v3, 0x0

    :cond_92
    iget-object v14, v12, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v14, v14, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v0, p1

    if-ne v14, v0, :cond_d6

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v14

    const-string v15, "CscFeature_CIQ_BroadcastState"

    invoke-virtual {v14, v15}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_ac

    add-int/lit8 v14, v2, -0x1

    if-ne v11, v14, :cond_d4

    const/4 v13, 0x1

    :cond_ac
    :goto_ac
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v14, v4, v12}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v14, v12, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v14, v12, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const/high16 v15, 0x10

    or-int/2addr v14, v15

    iput v14, v12, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    iget v14, v12, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit16 v14, v14, -0x1001

    iput v14, v12, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    add-int/lit8 v4, v4, 0x1

    :cond_ce
    :goto_ce
    add-int/lit8 v11, v11, 0x1

    goto :goto_81

    :cond_d1
    add-int/lit8 v7, v7, -0x1

    goto :goto_6b

    :cond_d4
    const/4 v13, 0x0

    goto :goto_ac

    :cond_d6
    if-eqz v3, :cond_ce

    iget-boolean v14, v12, Lcom/android/server/am/ActivityRecord;->bMultiInstance:Z

    if-eqz v14, :cond_ce

    if-eqz v5, :cond_ce

    iget-object v14, v12, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v14, v14, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    if-eqz v14, :cond_ce

    iget-object v14, v12, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v14, v14, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    iget-object v15, v5, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_ce

    add-int/lit8 v4, v11, 0x1

    goto :goto_ce

    :cond_f3
    if-eqz p2, :cond_12d

    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v14}, Landroid/content/Intent;->getFlags()I

    move-result v14

    const/high16 v15, 0x1

    and-int/2addr v14, v15

    if-eqz v14, :cond_12d

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v14, v14, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v12

    if-eqz v12, :cond_11e

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_11e
    :goto_11e
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v14, v14, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v14, v9}, Lcom/android/server/wm/WindowManagerService;->moveAppTokensToBottom(Ljava/util/List;)V

    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/ActivityStack;->finishTaskMoveLocked(I)V

    const/4 v14, 0x1

    goto/16 :goto_4d

    :cond_12d
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v14, v14, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/16 v15, 0x200b

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    goto :goto_11e
.end method

.method final moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)V
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;I)V

    return-void
.end method

.method final moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;I)V
    .registers 33

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v24

    add-int/lit8 v19, v24, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    if-ltz v19, :cond_39

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v24, v0

    move/from16 v0, v24

    move/from16 v1, v18

    if-ne v0, v1, :cond_7b

    :cond_39
    if-eqz p2, :cond_6f

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Intent;->getFlags()I

    move-result v24

    const/high16 v25, 0x1

    and-int v24, v24, v25

    if-eqz v24, :cond_6f

    invoke-static/range {p3 .. p3}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    :goto_4e
    if-ltz v19, :cond_7b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v24

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStack;->needsMoveTaskToFrontLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;I)Z

    move-result v24

    if-nez v24, :cond_7b

    :goto_6e
    return-void

    :cond_6f
    const/16 v24, 0x100a

    move-object/from16 v0, p0

    move/from16 v1, v24

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityStack;->updateTransitLocked(ILandroid/os/Bundle;)V

    goto :goto_4e

    :cond_7b
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v24

    add-int/lit8 v19, v24, -0x1

    move/from16 v14, v19

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    const/high16 v16, 0x100

    if-eqz p2, :cond_9e

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v16, v0

    :cond_9e
    const/4 v8, 0x0

    :goto_9f
    move/from16 v0, v19

    if-ge v8, v0, :cond_c0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/am/ActivityRecord;

    iget-boolean v0, v15, Lcom/android/server/am/ActivityRecord;->isHomeActivity:Z

    move/from16 v24, v0

    if-eqz v24, :cond_29a

    move-object v6, v15

    iget-object v0, v15, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v7, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    :cond_c0
    :goto_c0
    if-ltz v14, :cond_3d8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/am/ActivityRecord;

    iget-object v0, v15, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v24, v0

    move/from16 v0, v24

    move/from16 v1, v18

    if-ne v0, v1, :cond_38d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v1, v15}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/16 v24, 0x0

    iget-object v0, v15, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v25, v0

    move/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v11, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v19, v19, -0x1

    iget v13, v15, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    iget v0, v15, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v10

    const/16 v21, 0x0

    invoke-static {}, Lcom/android/server/am/MultiWindowManagerService;->getSelf()Lcom/android/server/am/MultiWindowManagerService;

    move-result-object v12

    const/16 v24, 0x0

    move/from16 v0, v24

    iput-boolean v0, v15, Lcom/android/server/am/ActivityRecord;->otherAppTouched:Z

    iget-object v0, v15, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-ne v0, v7, :cond_12c

    const/4 v5, 0x1

    :cond_12c
    iget v0, v15, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v24, v0

    const/high16 v25, 0x10

    and-int v24, v24, v25

    if-eqz v24, :cond_143

    iget v0, v15, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v24, v0

    const v25, -0x100001

    and-int v24, v24, v25

    move/from16 v0, v24

    iput v0, v15, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    :cond_143
    const/16 v24, 0x2

    move/from16 v0, p4

    move/from16 v1, v24

    if-eq v0, v1, :cond_162

    iget v0, v15, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v24, v0

    const/high16 v25, 0x20

    and-int v24, v24, v25

    if-eqz v24, :cond_162

    iget v0, v15, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v24, v0

    const v25, -0x200001

    and-int v24, v24, v25

    move/from16 v0, v24

    iput v0, v15, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    :cond_162
    iget v0, v15, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v24, v0

    const/high16 v25, 0x40

    and-int v24, v24, v25

    if-nez v24, :cond_178

    iget-object v0, v15, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Lcom/android/server/am/MultiWindowManagerService;->isSupportScaleApp(Landroid/content/pm/ActivityInfo;)Z

    move-result v24

    if-eqz v24, :cond_315

    :cond_178
    const/high16 v24, 0x200

    and-int v24, v24, v16

    if-eqz v24, :cond_315

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0x800

    move/from16 v24, v0

    if-eqz v24, :cond_192

    iget v0, v15, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v24, v0

    const/high16 v25, 0x40

    or-int v24, v24, v25

    move/from16 v0, v24

    iput v0, v15, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    :cond_192
    const/high16 v24, 0x40

    and-int v24, v24, v16

    if-eqz v24, :cond_1f3

    iget v0, v15, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v24, v0

    const/high16 v25, 0x40

    and-int v24, v24, v25

    if-eqz v24, :cond_1f3

    and-int/lit8 v24, v16, 0xf

    if-nez v24, :cond_1aa

    const/high16 v24, 0x80

    or-int v16, v16, v24

    :cond_1aa
    const/high16 v24, 0x100

    move/from16 v0, v24

    if-ne v10, v0, :cond_29e

    move/from16 v0, v16

    iput v0, v15, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    :goto_1b4
    iget v0, v15, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v24, v0

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0x800

    move/from16 v24, v0

    if-eqz v24, :cond_2ce

    invoke-static {}, Lcom/android/server/am/MultiWindowManagerService;->getSelf()Lcom/android/server/am/MultiWindowManagerService;

    move-result-object v24

    iget-object v0, v15, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lcom/android/server/am/MultiWindowManagerService;->isMustNotSupportScaleApp(Landroid/content/pm/ActivityInfo;)Z

    move-result v24

    if-eqz v24, :cond_2ce

    iget v0, v15, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v24, v0

    const/high16 v25, 0x4c

    and-int v24, v24, v25

    move/from16 v0, v24

    iput v0, v15, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    iget v0, v15, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v24, v0

    const/high16 v25, 0x100

    or-int v24, v24, v25

    move/from16 v0, v24

    iput v0, v15, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    :cond_1e6
    :goto_1e6
    iget v0, v15, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v24, v0

    and-int/lit8 v24, v24, 0xf

    if-eqz v24, :cond_1f3

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/server/am/ActivityStack;->updateWindowInfoLocked(Lcom/android/server/am/ActivityRecord;)V

    :cond_1f3
    :goto_1f3
    iget v0, v15, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-ne v13, v0, :cond_1fd

    if-eqz v21, :cond_225

    :cond_1fd
    iget-object v0, v15, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v24, v0

    iget v0, v15, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStack;->setWindowModeForAllActivitiesInTaskLocked(Lcom/android/server/am/TaskRecord;ILjava/util/ArrayList;)V

    iget v0, v15, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v24, v0

    const/16 v25, 0x0

    const/16 v26, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v0, v15, v1, v2, v3}, Lcom/android/server/am/ActivityStack;->notifyWindowStatusChangedLocked(Lcom/android/server/am/ActivityRecord;IIZ)V

    :cond_225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isSupportMultiWindow(Landroid/content/Context;)Z

    move-result v24

    if-eqz v24, :cond_28b

    if-nez p2, :cond_28b

    iget v0, v15, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v24, v0

    const/high16 v25, 0x200

    and-int v24, v24, v25

    if-eqz v24, :cond_28b

    iget v0, v15, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v24, v0

    and-int/lit8 v22, v24, 0xf

    if-eqz v22, :cond_28b

    xor-int/lit8 v24, v22, -0x1

    and-int/lit8 v17, v24, 0xf

    if-eqz v17, :cond_28b

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v24

    invoke-direct {v0, v15, v1, v2}, Lcom/android/server/am/ActivityStack;->getFrontZoneActivity(Lcom/android/server/am/ActivityRecord;IZ)Lcom/android/server/am/ActivityRecord;

    move-result-object v23

    if-eqz v23, :cond_28b

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v24, v0

    sget-object v25, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-eq v0, v1, :cond_28b

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(I)V

    iget-object v0, v15, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(I)V

    :cond_28b
    iget v0, v15, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v24, v0

    const/high16 v25, 0x80

    and-int v24, v24, v25

    if-nez v24, :cond_296

    const/4 v4, 0x1

    :cond_296
    :goto_296
    add-int/lit8 v14, v14, -0x1

    goto/16 :goto_c0

    :cond_29a
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_9f

    :cond_29e
    and-int/lit8 v24, v16, 0xf

    if-eqz v24, :cond_2c8

    iget v0, v15, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v24, v0

    const/high16 v25, 0x4c

    and-int v24, v24, v25

    move/from16 v0, v24

    iput v0, v15, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    iget v0, v15, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v24, v0

    const/high16 v25, 0x200

    or-int v24, v24, v25

    move/from16 v0, v24

    iput v0, v15, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    iget v0, v15, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v24, v0

    and-int/lit8 v25, v16, 0xf

    or-int v24, v24, v25

    move/from16 v0, v24

    iput v0, v15, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    goto/16 :goto_1b4

    :cond_2c8
    move/from16 v0, v16

    iput v0, v15, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    goto/16 :goto_1b4

    :cond_2ce
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v24, v0

    if-eqz v24, :cond_1e6

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Intent;->getWindowPosition()Landroid/graphics/Rect;

    move-result-object v21

    if-eqz v21, :cond_1e6

    iget v0, v15, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v24, v0

    and-int/lit8 v24, v24, 0xf

    if-nez v24, :cond_1e6

    iget-object v0, v15, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v24, v0

    iget-object v0, v15, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v25, v0

    move/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v12, v0, v1}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v20

    if-eqz v20, :cond_1e6

    const-string v24, "android.intent.extra.WINDOW_LAST_SIZE"

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto/16 :goto_1e6

    :cond_315
    const/high16 v24, 0x200

    move/from16 v0, v24

    if-ne v10, v0, :cond_37f

    if-eqz p2, :cond_34c

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Intent;->getFlags()I

    move-result v24

    const/high16 v25, 0x40

    and-int v24, v24, v25

    if-eqz v24, :cond_34c

    const/high16 v24, 0x100

    and-int v24, v24, v16

    if-eqz v24, :cond_34c

    iget v0, v15, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v24, v0

    const/high16 v25, 0x4c

    and-int v24, v24, v25

    move/from16 v0, v24

    iput v0, v15, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    iget v0, v15, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v24, v0

    const/high16 v25, 0x100

    or-int v24, v24, v25

    move/from16 v0, v24

    iput v0, v15, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const/4 v4, 0x1

    :cond_34c
    iget v0, v15, Lcom/android/server/am/ActivityRecord;->lastRelaunchedWindowMode:I

    move/from16 v24, v0

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0x800

    move/from16 v24, v0

    if-eqz v24, :cond_1f3

    iget v0, v15, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v24, v0

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0x800

    move/from16 v24, v0

    if-nez v24, :cond_1f3

    iget-object v0, v15, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Lcom/android/server/am/MultiWindowManagerService;->isSupportMultiWindow(Landroid/content/pm/ActivityInfo;)Z

    move-result v24

    if-nez v24, :cond_1f3

    iget v0, v15, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v24, v0

    const v25, -0x400001

    and-int v24, v24, v25

    move/from16 v0, v24

    iput v0, v15, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    goto/16 :goto_1f3

    :cond_37f
    move/from16 v0, v16

    and-int/lit16 v0, v0, 0x1000

    move/from16 v24, v0

    if-eqz v24, :cond_1f3

    move/from16 v0, v16

    iput v0, v15, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    goto/16 :goto_1f3

    :cond_38d
    iget v0, v15, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v24, v0

    const/high16 v25, 0x80

    and-int v24, v24, v25

    if-eqz v24, :cond_3b0

    iget v0, v15, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v24, v0

    const/high16 v25, 0x10

    and-int v24, v24, v25

    if-nez v24, :cond_3b0

    const/16 v24, 0x0

    iget-object v0, v15, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v25, v0

    move/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v9, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_296

    :cond_3b0
    iget v0, v15, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v24

    const/high16 v25, 0x200

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_296

    move/from16 v0, v18

    if-ne v0, v7, :cond_296

    and-int/lit8 v24, p4, 0x2

    if-eqz v24, :cond_296

    if-eqz v5, :cond_3d0

    iget-boolean v0, v15, Lcom/android/server/am/ActivityRecord;->otherAppTouched:Z

    move/from16 v24, v0

    if-eqz v24, :cond_296

    :cond_3d0
    const/16 v24, 0x1

    move/from16 v0, v24

    iput-boolean v0, v15, Lcom/android/server/am/ActivityRecord;->otherAppTouched:Z

    goto/16 :goto_296

    :cond_3d8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    move/from16 v24, v0

    if-eqz v24, :cond_3ed

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->addRecentTaskLocked(Lcom/android/server/am/TaskRecord;)V

    :cond_3ed
    if-eqz p2, :cond_482

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Intent;->getFlags()I

    move-result v24

    const/high16 v25, 0x1

    and-int v24, v24, v25

    if-eqz v24, :cond_482

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const/16 v26, 0x0

    invoke-virtual/range {v24 .. v26}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v15

    if-eqz v15, :cond_429

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_429
    invoke-static/range {p3 .. p3}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    :goto_42c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Lcom/android/server/wm/WindowManagerService;->moveAppTokensToTop(Ljava/util/List;)V

    if-eqz v4, :cond_456

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v24

    if-lez v24, :cond_456

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Lcom/android/server/wm/WindowManagerService;->moveAppTokensToTop(Ljava/util/List;)V

    :cond_456
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/am/ActivityStack;->finishTaskMoveLocked(I)V

    const/16 v24, 0x7532

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/am/TaskRecord;->userId:I

    move/from16 v27, v0

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    const/16 v26, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v24 .. v25}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    goto/16 :goto_6e

    :cond_482
    const/16 v24, 0x100a

    move-object/from16 v0, p0

    move/from16 v1, v24

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityStack;->updateTransitLocked(ILandroid/os/Bundle;)V

    goto :goto_42c
.end method

.method needPendingNotify()Z
    .registers 6

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->canResumedActivitiesLocked()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_21

    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v4, :cond_b

    :cond_21
    const/4 v3, 0x1

    :cond_22
    return v3
.end method

.method final needsMoveTaskToFrontLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;I)Z
    .registers 9

    const v4, -0x4c0001

    const/4 v2, 0x1

    if-eqz p1, :cond_1b

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getWindowPosition()Landroid/graphics/Rect;

    move-result-object v3

    if-eqz v3, :cond_f

    :cond_e
    :goto_e
    return v2

    :cond_f
    iget v3, p2, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int v0, v3, v4

    iget v3, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int v1, v3, v4

    if-ne v0, v1, :cond_e

    :cond_19
    const/4 v2, 0x0

    goto :goto_e

    :cond_1b
    iget v3, p2, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const/high16 v4, 0x20

    and-int/2addr v3, v4

    if-eqz v3, :cond_19

    const/4 v3, 0x2

    if-eq p3, v3, :cond_19

    goto :goto_e
.end method

.method final notifyMultiWindowStatusChangedLocked(Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;)V"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v1, 0x0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    iget v5, v3, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v5}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v5

    const/high16 v6, 0x200

    if-ne v5, v6, :cond_6

    const/4 v4, 0x1

    iget v5, v3, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const/high16 v6, 0x80

    and-int/2addr v5, v6

    if-eqz v5, :cond_2b

    iget v5, v3, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit16 v5, v5, 0x800

    if-nez v5, :cond_2b

    const/4 v1, 0x1

    :cond_2b
    iget-boolean v5, p0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowMode:Z

    if-ne v4, v5, :cond_33

    iget-boolean v5, p0, Lcom/android/server/am/ActivityStack;->mIsFreeStyle:Z

    if-eq v1, v5, :cond_56

    :cond_33
    const-string v6, "sys.multiwindow.running"

    if-eqz v4, :cond_57

    const-string v5, "1"

    :goto_39
    invoke-static {v6, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.sec.android.action.NOTIFY_MULTIWINDOW_STATUS"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "com.sec.android.extra.MULTIWINDOW_RUNNING"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v5, "com.sec.android.extra.MULTIWINDOW_FREESTYLE"

    invoke-virtual {v2, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v2}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    iput-boolean v4, p0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowMode:Z

    iput-boolean v1, p0, Lcom/android/server/am/ActivityStack;->mIsFreeStyle:Z

    :cond_56
    return-void

    :cond_57
    const-string v5, "0"

    goto :goto_39
.end method

.method notifyWindowStatusChangedLocked(Lcom/android/server/am/ActivityRecord;IIZ)V
    .registers 22

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->needPendingNotify()Z

    move-result v14

    if-eqz v14, :cond_c

    const/4 v14, 0x1

    move-object/from16 v0, p1

    iput-boolean v14, v0, Lcom/android/server/am/ActivityRecord;->pendingNotifyWindowState:Z

    :cond_b
    :goto_b
    return-void

    :cond_c
    const/4 v14, 0x0

    move-object/from16 v0, p1

    iput-boolean v14, v0, Lcom/android/server/am/ActivityRecord;->pendingNotifyWindowState:Z

    if-eqz p4, :cond_4f

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v5, v3, -0x1

    :goto_1d
    if-ltz v5, :cond_74

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    iget-object v14, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v14, v15, :cond_4c

    iget-object v14, v4, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v14, :cond_4c

    iget-object v14, v4, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v14, v14, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v14, :cond_4c

    :try_start_3b
    iget-object v14, v4, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v14, v14, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v15, v4, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget v0, v4, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v16, v0

    move/from16 v0, v16

    move/from16 v1, p3

    invoke-interface {v14, v15, v0, v1}, Landroid/app/IApplicationThread;->scheduleWindowStatusChanged(Landroid/os/IBinder;II)V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_4c} :catch_1e5

    :cond_4c
    :goto_4c
    add-int/lit8 v5, v5, -0x1

    goto :goto_1d

    :cond_4f
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v14, :cond_74

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v14, v14, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v14, :cond_74

    :try_start_5d
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v14, v14, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v16, v0

    move/from16 v0, v16

    move/from16 v1, p3

    invoke-interface {v14, v15, v0, v1}, Landroid/app/IApplicationThread;->scheduleWindowStatusChanged(Landroid/os/IBinder;II)V
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_74} :catch_1e2

    :cond_74
    :goto_74
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActivityStack;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-static {v14, v15}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isPortraitLayoutOnlyPackage(Landroid/content/Context;Landroid/content/pm/ActivityInfo;)Z

    move-result v7

    const/4 v9, 0x0

    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/server/am/ActivityRecord;->lastRelaunchedWindowMode:I

    and-int/lit16 v14, v14, 0x1000

    if-nez v14, :cond_91

    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit16 v14, v14, 0x1000

    if-eqz v14, :cond_9f

    :cond_91
    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move-object/from16 v0, p1

    iget v15, v0, Lcom/android/server/am/ActivityRecord;->lastRelaunchedWindowMode:I

    and-int/2addr v14, v15

    and-int/lit16 v14, v14, 0x1000

    if-nez v14, :cond_18b

    const/4 v9, 0x1

    :cond_9f
    :goto_9f
    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/server/am/ActivityRecord;->lastRelaunchedWindowMode:I

    and-int/lit16 v14, v14, 0x800

    if-nez v14, :cond_af

    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit16 v14, v14, 0x800

    if-eqz v14, :cond_bd

    :cond_af
    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move-object/from16 v0, p1

    iget v15, v0, Lcom/android/server/am/ActivityRecord;->lastRelaunchedWindowMode:I

    and-int/2addr v14, v15

    and-int/lit16 v14, v14, 0x800

    if-nez v14, :cond_18e

    const/4 v9, 0x1

    :cond_bd
    :goto_bd
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    if-eqz v14, :cond_b

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v15, "com.google.android.talk.videochat.VideoChatActivity"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_d7

    if-nez v7, :cond_d7

    if-eqz v9, :cond_b

    :cond_d7
    if-eqz v9, :cond_db

    or-int/lit8 p3, p3, 0x1

    :cond_db
    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/server/am/ActivityRecord;->lastRelaunchedWindowMode:I

    and-int/lit8 v14, v14, 0xf

    move-object/from16 v0, p1

    iget v15, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit8 v15, v15, 0xf

    if-eq v14, v15, :cond_191

    const/4 v13, 0x1

    :goto_ea
    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/server/am/ActivityRecord;->lastRelaunchedWindowMode:I

    invoke-static {v14}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v14

    move-object/from16 v0, p1

    iget v15, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v15}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v15

    if-eq v14, v15, :cond_194

    const/4 v8, 0x1

    :goto_fd
    and-int/lit8 v14, p3, 0x1

    if-eqz v14, :cond_197

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v15, "com.google.android.gm"

    invoke-virtual {v14, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_121

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v15, "com.google.android.talk.videochat.VideoChatActivity"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_121

    if-nez v7, :cond_121

    if-eqz v9, :cond_197

    :cond_121
    const/4 v12, 0x1

    :goto_122
    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/server/am/ActivityRecord;->lastRelaunchedWindowMode:I

    if-eqz v14, :cond_130

    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/server/am/ActivityRecord;->lastRelaunchedWindowMode:I

    const/high16 v15, 0x200

    if-ne v14, v15, :cond_199

    :cond_130
    const/4 v6, 0x1

    :goto_131
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v14, :cond_1d8

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v14, v14, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v14, :cond_1d8

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v15, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v14, v15, :cond_19b

    if-nez v6, :cond_19b

    if-nez v13, :cond_153

    if-nez v8, :cond_153

    if-eqz v12, :cond_1d5

    :cond_153
    const/4 v14, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-direct {v0, v1, v2, v14}, Lcom/android/server/am/ActivityStack;->relaunchActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Z

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v5, v3, -0x1

    :goto_167
    if-ltz v5, :cond_1d5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    iget-object v14, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v14, v15, :cond_188

    move-object/from16 v0, p1

    if-eq v0, v4, :cond_188

    move-object/from16 v0, p1

    iget-boolean v14, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v14, :cond_188

    const/4 v14, 0x1

    iput-boolean v14, v4, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    :cond_188
    add-int/lit8 v5, v5, -0x1

    goto :goto_167

    :cond_18b
    const/4 v9, 0x0

    goto/16 :goto_9f

    :cond_18e
    const/4 v9, 0x0

    goto/16 :goto_bd

    :cond_191
    const/4 v13, 0x0

    goto/16 :goto_ea

    :cond_194
    const/4 v8, 0x0

    goto/16 :goto_fd

    :cond_197
    const/4 v12, 0x0

    goto :goto_122

    :cond_199
    const/4 v6, 0x0

    goto :goto_131

    :cond_19b
    if-eqz v9, :cond_1d5

    const/4 v14, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-direct {v0, v1, v2, v14}, Lcom/android/server/am/ActivityStack;->relaunchActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Z

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v5, v3, -0x1

    :goto_1b1
    if-ltz v5, :cond_1d5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    iget-object v14, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v14, v15, :cond_1d2

    move-object/from16 v0, p1

    if-eq v0, v4, :cond_1d2

    move-object/from16 v0, p1

    iget-boolean v14, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v14, :cond_1d2

    const/4 v14, 0x1

    iput-boolean v14, v4, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    :cond_1d2
    add-int/lit8 v5, v5, -0x1

    goto :goto_1b1

    :cond_1d5
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_1d8
    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move-object/from16 v0, p1

    iput v14, v0, Lcom/android/server/am/ActivityRecord;->lastRelaunchedWindowMode:I

    goto/16 :goto_b

    :catch_1e2
    move-exception v14

    goto/16 :goto_74

    :catch_1e5
    move-exception v14

    goto/16 :goto_4c
.end method

.method final processStoppingActivitiesLocked(Z)Ljava/util/ArrayList;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_c

    const/4 v4, 0x0

    :cond_b
    return-object v4

    :cond_c
    const/4 v4, 0x0

    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v7, :cond_76

    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    iget-boolean v7, v7, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-eqz v7, :cond_76

    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    iget-boolean v7, v7, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    if-nez v7, :cond_76

    move v2, v5

    :goto_1e
    iget-boolean v7, p0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v7, :cond_2d

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->topResumedActivitiesLocked()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_78

    move v2, v5

    :cond_2d
    :goto_2d
    const/4 v1, 0x0

    :goto_2e
    if-ge v1, v0, :cond_b

    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    iget-boolean v5, v3, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    if-eqz v5, :cond_52

    if-eqz v2, :cond_52

    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iput-boolean v6, v3, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    iget-boolean v5, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v5, :cond_52

    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v3, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v5, v7, v6}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    :cond_52
    iget-boolean v5, v3, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    if-eqz v5, :cond_5e

    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->isSleeping()Z

    move-result v5

    if-eqz v5, :cond_73

    :cond_5e
    if-eqz p1, :cond_73

    if-nez v4, :cond_67

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :cond_67
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v1, -0x1

    :cond_73
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    :cond_76
    move v2, v6

    goto :goto_1e

    :cond_78
    move v2, v6

    goto :goto_2d
.end method

.method final realStartActivityLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ProcessRecord;ZZZ)Z
    .registers 35
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v2, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityRecord;->startFreezingScreenLocked(Lcom/android/server/am/ProcessRecord;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->startLaunchTickingLocked()V

    if-eqz p4, :cond_42

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v2, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual/range {p1 .. p2}, Lcom/android/server/am/ActivityRecord;->mayFreezeScreenLocked(Lcom/android/server/am/ProcessRecord;)Z

    move-result v2

    if-eqz v2, :cond_e3

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    :goto_31
    invoke-virtual {v3, v4, v2}, Lcom/android/server/wm/WindowManagerService;->updateOrientationFromAppTokens(Landroid/content/res/Configuration;Landroid/os/IBinder;)Landroid/content/res/Configuration;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/android/server/am/ActivityManagerService;->updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/am/ActivityRecord;ZZ)Z

    :cond_42
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v2, 0x0

    move-object/from16 v0, p2

    iput-object v2, v0, Lcom/android/server/am/ProcessRecord;->waitingToKill:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/server/am/ActivityRecord;->launchCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p1

    iput v2, v0, Lcom/android/server/am/ActivityRecord;->launchCount:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p1

    iput-wide v2, v0, Lcom/android/server/am/ActivityRecord;->lastLaunchTime:J

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v27

    if-gez v27, :cond_74

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_74
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v2, v0, v3}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;Z)V

    :try_start_7e
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v2, :cond_e6

    new-instance v2, Landroid/os/RemoteException;

    invoke-direct {v2}, Landroid/os/RemoteException;-><init>()V

    throw v2
    :try_end_8a
    .catch Landroid/os/RemoteException; {:try_start_7e .. :try_end_8a} :catch_8a

    :catch_8a
    move-exception v25

    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->launchFailed:Z

    if-eqz v2, :cond_377

    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Second failure launching "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", giving up"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p2

    iget v3, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/server/am/ActivityManagerService;->appDiedLocked(Lcom/android/server/am/ProcessRecord;ILandroid/app/IApplicationThread;)V

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-string v21, "2nd-crash"

    const/16 v22, 0x0

    move-object/from16 v17, p0

    invoke-virtual/range {v17 .. v22}, Lcom/android/server/am/ActivityStack;->requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    const/4 v2, 0x0

    :goto_e2
    return v2

    :cond_e3
    const/4 v2, 0x0

    goto/16 :goto_31

    :cond_e6
    const/4 v10, 0x0

    const/4 v11, 0x0

    if-eqz p3, :cond_f2

    :try_start_ea
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    :cond_f2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessesReady:Z

    if-eqz v2, :cond_122

    new-instance v23, Landroid/content/Intent;

    const-string v2, "android.intent.action.ACTIVITY_STATE"

    move-object/from16 v0, v23

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "activityPackageName"

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "activityState"

    const-string v3, "create"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mContext:Landroid/content/Context;

    const-string v3, "com.samsung.android.activitymanager.permission.GET_ACTIVITY_STATE"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    :cond_122
    if-eqz p3, :cond_156

    const/16 v2, 0x7536

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static/range {p1 .. p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v5, v5, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    :cond_156
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->isHomeActivity:Z

    if-eqz v2, :cond_164

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p2

    iput-object v0, v2, Lcom/android/server/am/ActivityManagerService;->mHomeProcess:Lcom/android/server/am/ProcessRecord;

    :cond_164
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityManagerService;->ensurePackageDexOpt(Ljava/lang/String;)V

    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->sleeping:Z

    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ActivityStack;->showAskCompatModeDialogLocked(Lcom/android/server/am/ActivityRecord;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityManagerService;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v2

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/android/server/am/ActivityRecord;->compat:Landroid/content/res/CompatibilityInfo;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProfileApp:Ljava/lang/String;

    if-eqz v2, :cond_1e0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProfileApp:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProfileProc:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_1c4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProfileProc:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v0, p2

    if-ne v2, v0, :cond_1e0

    :cond_1c4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p2

    iput-object v0, v2, Lcom/android/server/am/ActivityManagerService;->mProfileProc:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v14, v2, Lcom/android/server/am/ActivityManagerService;->mProfileFile:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v15, v2, Lcom/android/server/am/ActivityManagerService;->mProfileFd:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v2, Lcom/android/server/am/ActivityManagerService;->mAutoStopProfiler:Z

    move/from16 v16, v0

    :cond_1e0
    const/4 v2, 0x1

    move-object/from16 v0, p2

    iput-boolean v2, v0, Lcom/android/server/am/ProcessRecord;->hasShownUi:Z

    const/4 v2, 0x1

    move-object/from16 v0, p2

    iput-boolean v2, v0, Lcom/android/server/am/ProcessRecord;->pendingUiClean:Z
    :try_end_1ea
    .catch Landroid/os/RemoteException; {:try_start_ea .. :try_end_1ea} :catch_8a

    if-eqz v15, :cond_1f0

    :try_start_1ec
    invoke-virtual {v15}, Landroid/os/ParcelFileDescriptor;->dup()Landroid/os/ParcelFileDescriptor;
    :try_end_1ef
    .catch Ljava/io/IOException; {:try_start_1ec .. :try_end_1ef} :catch_370
    .catch Landroid/os/RemoteException; {:try_start_1ec .. :try_end_1ef} :catch_8a

    move-result-object v15

    :cond_1f0
    :goto_1f0
    if-eqz p5, :cond_1fb

    :try_start_1f2
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    const-wide/16 v3, 0x3

    invoke-interface {v2, v3, v4}, Landroid/app/IApplicationThread;->requestDelayJITCompilation(J)V

    :cond_1fb
    new-instance v7, Landroid/content/res/Configuration;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    invoke-direct {v7, v2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v2, :cond_22c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-static {v2, v3}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isPortraitLayoutOnlyPackage(Landroid/content/Context;Landroid/content/pm/ActivityInfo;)Z

    move-result v2

    if-eqz v2, :cond_22c

    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v2}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v2

    const/high16 v3, 0x200

    if-ne v2, v3, :cond_229

    const/4 v2, 0x1

    iput v2, v7, Landroid/content/res/Configuration;->orientation:I

    :cond_229
    const/4 v2, 0x0

    iput v2, v7, Landroid/content/res/Configuration;->seq:I

    :cond_22c
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_259

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    sget-object v3, Landroid/content/pm/ActivityInfo;->FORCED_LOCAL_ORIENTATION:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v26

    if-eqz v26, :cond_259

    iget v2, v7, Landroid/content/res/Configuration;->orientation:I

    move/from16 v0, v26

    if-eq v0, v2, :cond_259

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move/from16 v0, v26

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowManagerService;->getConfigurationForRotation(I)Landroid/content/res/Configuration;

    move-result-object v7

    :cond_259
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    new-instance v3, Landroid/content/Intent;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-static/range {p1 .. p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->compat:Landroid/content/res/CompatibilityInfo;

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->icicle:Landroid/os/Bundle;

    if-nez p3, :cond_374

    const/4 v12, 0x1

    :goto_27d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v13}, Lcom/android/server/am/ActivityManagerService;->isNextTransitionForward()Z

    move-result v13

    invoke-interface/range {v2 .. v16}, Landroid/app/IApplicationThread;->scheduleLaunchActivity(Landroid/content/Intent;Landroid/os/IBinder;ILandroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Landroid/os/Bundle;Ljava/util/List;Ljava/util/List;ZZLjava/lang/String;Landroid/os/ParcelFileDescriptor;Z)V

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x1000

    and-int/2addr v2, v3

    if-eqz v2, :cond_304

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_304

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_2df

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v0, p2

    if-eq v2, v0, :cond_2df

    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting new heavy weight process "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " when already running "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2df
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p2

    iput-object v0, v2, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x18

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v28

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_304
    .catch Landroid/os/RemoteException; {:try_start_1f2 .. :try_end_304} :catch_8a

    :cond_304
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->launchFailed:Z

    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/ActivityStack;->updateLRUListLocked(Lcom/android/server/am/ActivityRecord;)Z

    move-result v2

    if-eqz v2, :cond_32f

    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " being launched, but already in LRU list"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_32f
    if-eqz p3, :cond_38b

    sget-object v2, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->stopped:Z

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->touchActiveTime()V

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v2, :cond_35a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityManagerService;->addRecentTaskLocked(Lcom/android/server/am/TaskRecord;)V

    :cond_35a
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/ActivityStack;->completeResumeLocked(Lcom/android/server/am/ActivityRecord;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->checkReadyForSleepLocked()V

    :goto_360
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v2, :cond_36d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->startSetupActivityLocked()V

    :cond_36d
    const/4 v2, 0x1

    goto/16 :goto_e2

    :catch_370
    move-exception v25

    const/4 v15, 0x0

    goto/16 :goto_1f0

    :cond_374
    const/4 v12, 0x0

    goto/16 :goto_27d

    :cond_377
    const/4 v2, 0x1

    move-object/from16 v0, p1

    iput-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->launchFailed:Z

    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    throw v25

    :cond_38b
    sget-object v2, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    const/4 v2, 0x1

    move-object/from16 v0, p1

    iput-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->stopped:Z

    goto :goto_360
.end method

.method public relaunchAllExternalActivityLocked()V
    .registers 7

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    :try_start_3
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_b
    if-ltz v1, :cond_3c

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    iget-boolean v3, v2, Lcom/android/server/am/ActivityRecord;->isHomeActivity:Z

    if-eqz v3, :cond_1c

    :cond_19
    :goto_19
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    :cond_1c
    iget v3, v2, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit16 v3, v3, 0x1000

    if-eqz v3, :cond_19

    iget v3, v2, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit16 v3, v3, -0x1001

    iput v3, v2, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    iget v3, v2, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const/high16 v5, 0x40

    or-int/2addr v3, v5

    iput v3, v2, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    iget v3, v2, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    iput v3, v2, Lcom/android/server/am/ActivityRecord;->lastRelaunchedWindowMode:I

    const/4 v3, 0x1

    const/4 v5, 0x1

    invoke-direct {p0, v2, v3, v5}, Lcom/android/server/am/ActivityStack;->relaunchActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Z

    goto :goto_19

    :catchall_39
    move-exception v3

    monitor-exit v4
    :try_end_3b
    .catchall {:try_start_3 .. :try_end_3b} :catchall_39

    throw v3

    :cond_3c
    const/4 v3, 0x0

    :try_start_3d
    invoke-virtual {p0, v3}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    monitor-exit v4
    :try_end_41
    .catchall {:try_start_3d .. :try_end_41} :catchall_39

    return-void
.end method

.method public relaunchExternalActivityLocked(Z)V
    .registers 16

    const/high16 v13, 0x100

    const/high16 v12, 0x4c

    const v11, -0x400001

    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v8

    const/4 v4, 0x0

    const/4 v6, 0x0

    :try_start_c
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v2, v1, -0x1

    :goto_14
    if-ltz v2, :cond_3b

    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    move-object v4, v0

    iget-boolean v7, v4, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v7, :cond_45

    invoke-direct {p0, v4}, Lcom/android/server/am/ActivityStack;->okToShow(Lcom/android/server/am/ActivityRecord;)Z

    move-result v7

    if-eqz v7, :cond_45

    iget v7, v4, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit8 v7, v7, 0xf

    if-eqz v7, :cond_45

    iget v7, v4, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const/high16 v9, 0x10

    and-int/2addr v7, v9

    if-nez v7, :cond_45

    iget v7, v4, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit8 v6, v7, 0xf

    :cond_3b
    if-eqz v4, :cond_43

    iget v7, v4, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit8 v7, v7, 0xf

    if-nez v7, :cond_48

    :cond_43
    monitor-exit v8

    :goto_44
    return-void

    :cond_45
    add-int/lit8 v2, v2, -0x1

    goto :goto_14

    :cond_48
    iget v7, v4, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/2addr v7, v12

    iput v7, v4, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    iget v7, v4, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    or-int/2addr v7, v13

    iput v7, v4, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    if-eqz p1, :cond_5f

    iget v7, v4, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    or-int/lit16 v7, v7, 0x1000

    iput v7, v4, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    iget v7, v4, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/2addr v7, v11

    iput v7, v4, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    :cond_5f
    iget-object v7, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v9, v4, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const/4 v10, 0x0

    invoke-direct {p0, v7, v9, v10}, Lcom/android/server/am/ActivityStack;->setWindowModeForAllActivitiesInTaskLocked(Lcom/android/server/am/TaskRecord;ILjava/util/ArrayList;)V

    iget v7, v4, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual {p0, v4, v7, v9, v10}, Lcom/android/server/am/ActivityStack;->notifyWindowStatusChangedLocked(Lcom/android/server/am/ActivityRecord;IIZ)V

    if-eqz v6, :cond_aa

    xor-int/lit8 v7, v6, -0x1

    and-int/lit8 v5, v7, 0xf

    const/4 v7, 0x1

    invoke-direct {p0, v4, v5, v7}, Lcom/android/server/am/ActivityStack;->getFrontZoneActivity(Lcom/android/server/am/ActivityRecord;IZ)Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    if-eqz v4, :cond_aa

    iget v7, v4, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/2addr v7, v12

    iput v7, v4, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    iget v7, v4, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    or-int/2addr v7, v13

    iput v7, v4, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    if-nez p1, :cond_92

    iget v7, v4, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    or-int/lit16 v7, v7, 0x1000

    iput v7, v4, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    iget v7, v4, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/2addr v7, v11

    iput v7, v4, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    :cond_92
    iget-object v7, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v9, v4, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const/4 v10, 0x0

    invoke-direct {p0, v7, v9, v10}, Lcom/android/server/am/ActivityStack;->setWindowModeForAllActivitiesInTaskLocked(Lcom/android/server/am/TaskRecord;ILjava/util/ArrayList;)V

    iget v7, v4, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual {p0, v4, v7, v9, v10}, Lcom/android/server/am/ActivityStack;->notifyWindowStatusChangedLocked(Lcom/android/server/am/ActivityRecord;IIZ)V

    invoke-static {}, Lcom/android/server/am/MultiWindowManagerService;->getSelf()Lcom/android/server/am/MultiWindowManagerService;

    move-result-object v3

    const/4 v7, 0x1

    const/4 v9, 0x0

    invoke-virtual {v3, v7, v9}, Lcom/android/server/am/MultiWindowManagerService;->notifyMultiDisplayState(ZZ)Z

    :cond_aa
    monitor-exit v8

    goto :goto_44

    :catchall_ac
    move-exception v7

    monitor-exit v8
    :try_end_ae
    .catchall {:try_start_c .. :try_end_ae} :catchall_ac

    throw v7
.end method

.method final removeActivityFromHistoryLocked(Lcom/android/server/am/ActivityRecord;)V
    .registers 4

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/am/ActivityStack;->finishActivityResultsLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;)V

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->makeFinishing()V

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->takeFromHistory()V

    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStack;->removeTimeoutsForActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    sget-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v0, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v1, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->removeAppToken(Landroid/os/IBinder;)V

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->cleanUpActivityServicesLocked(Lcom/android/server/am/ActivityRecord;)V

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->removeUriPermissionsLocked()V

    return-void
.end method

.method removeHistoryRecordsForAppLocked(Lcom/android/server/am/ProcessRecord;)Z
    .registers 13

    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    const-string v6, "mLRUActivities"

    invoke-direct {p0, v5, p1, v6}, Lcom/android/server/am/ActivityStack;->removeHistoryRecordsForAppLocked(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mStoppingActivities:Ljava/util/ArrayList;

    const-string v6, "mStoppingActivities"

    invoke-direct {p0, v5, p1, v6}, Lcom/android/server/am/ActivityStack;->removeHistoryRecordsForAppLocked(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mGoingToSleepActivities:Ljava/util/ArrayList;

    const-string v6, "mGoingToSleepActivities"

    invoke-direct {p0, v5, p1, v6}, Lcom/android/server/am/ActivityStack;->removeHistoryRecordsForAppLocked(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    const-string v6, "mWaitingVisibleActivities"

    invoke-direct {p0, v5, p1, v6}, Lcom/android/server/am/ActivityStack;->removeHistoryRecordsForAppLocked(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mFinishingActivities:Ljava/util/ArrayList;

    const-string v6, "mFinishingActivities"

    invoke-direct {p0, v5, p1, v6}, Lcom/android/server/am/ActivityStack;->removeHistoryRecordsForAppLocked(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    const/4 v1, 0x0

    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    :cond_2a
    :goto_2a
    if-lez v2, :cond_fa

    add-int/lit8 v2, v2, -0x1

    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    iget-object v5, v3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v5, p1, :cond_2a

    iget-boolean v5, v3, Lcom/android/server/am/ActivityRecord;->haveState:Z

    if-nez v5, :cond_42

    iget-boolean v5, v3, Lcom/android/server/am/ActivityRecord;->stateNotNeeded:Z

    if-eqz v5, :cond_46

    :cond_42
    iget-boolean v5, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v5, :cond_ce

    :cond_46
    const/4 v4, 0x1

    :goto_47
    if-eqz v4, :cond_e7

    iget-boolean v5, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v5, :cond_be

    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v5, v5, Lcom/android/server/am/ActivityManagerService;->mProcessesReady:Z

    if-eqz v5, :cond_6f

    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.ACTIVITY_STATE"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "activityPackageName"

    iget-object v6, v3, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "activityState"

    const-string v6, "pause"

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mContext:Landroid/content/Context;

    const-string v6, "com.samsung.android.activitymanager.permission.GET_ACTIVITY_STATE"

    invoke-virtual {v5, v0, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    :cond_6f
    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Force removing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": app died, no saved state"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v5, 0x7531

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget v8, v3, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {v3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    iget-object v8, v3, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v8, v8, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    iget-object v8, v3, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x4

    const-string v8, "proc died without state saved"

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    :cond_be
    iget-boolean v5, v3, Lcom/android/server/am/ActivityRecord;->launchFailed:Z

    if-nez v5, :cond_c5

    invoke-virtual {p0, v3}, Lcom/android/server/am/ActivityStack;->removeActivityFromHistoryLocked(Lcom/android/server/am/ActivityRecord;)V

    :cond_c5
    :goto_c5
    iget-object v5, v3, Lcom/android/server/am/ActivityRecord;->stack:Lcom/android/server/am/ActivityStack;

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-virtual {v5, v3, v6, v7}, Lcom/android/server/am/ActivityStack;->cleanUpActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V

    goto/16 :goto_2a

    :cond_ce
    iget v5, v3, Lcom/android/server/am/ActivityRecord;->launchCount:I

    const/4 v6, 0x2

    if-le v5, v6, :cond_e4

    iget-wide v5, v3, Lcom/android/server/am/ActivityRecord;->lastLaunchTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    const-wide/32 v9, 0xea60

    sub-long/2addr v7, v9

    cmp-long v5, v5, v7

    if-lez v5, :cond_e4

    const/4 v4, 0x1

    goto/16 :goto_47

    :cond_e4
    const/4 v4, 0x0

    goto/16 :goto_47

    :cond_e7
    iget-boolean v5, v3, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v5, :cond_ec

    const/4 v1, 0x1

    :cond_ec
    const/4 v5, 0x0

    iput-object v5, v3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v5, 0x0

    iput-boolean v5, v3, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    iget-boolean v5, v3, Lcom/android/server/am/ActivityRecord;->haveState:Z

    if-nez v5, :cond_c5

    const/4 v5, 0x0

    iput-object v5, v3, Lcom/android/server/am/ActivityRecord;->icicle:Landroid/os/Bundle;

    goto :goto_c5

    :cond_fa
    return v1
.end method

.method public removeTaskActivitiesLocked(IIZ)Lcom/android/server/am/ActivityRecord;
    .registers 11

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, p1, v4}, Lcom/android/server/am/ActivityStack;->getTaskAccessInfoLocked(IZ)Lcom/android/server/am/TaskAccessInfo;

    move-result-object v0

    iget-object v4, v0, Lcom/android/server/am/TaskAccessInfo;->root:Lcom/android/server/am/ActivityRecord;

    if-nez v4, :cond_25

    if-eqz p3, :cond_24

    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "removeTaskLocked: unknown taskId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    :goto_24
    return-object v3

    :cond_25
    if-gez p2, :cond_3a

    iget-boolean v3, p0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v3, :cond_32

    invoke-static {}, Lcom/android/server/am/MultiWindowManagerService;->getSelf()Lcom/android/server/am/MultiWindowManagerService;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/am/MultiWindowManagerService;->removeWindowInfo(I)V

    :cond_32
    iget v3, v0, Lcom/android/server/am/TaskAccessInfo;->rootIndex:I

    invoke-direct {p0, p1, v3}, Lcom/android/server/am/ActivityStack;->performClearTaskAtIndexLocked(II)V

    iget-object v3, v0, Lcom/android/server/am/TaskAccessInfo;->root:Lcom/android/server/am/ActivityRecord;

    goto :goto_24

    :cond_3a
    iget-object v4, v0, Lcom/android/server/am/TaskAccessInfo;->subtasks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt p2, v4, :cond_5d

    if-eqz p3, :cond_24

    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "removeTaskLocked: unknown subTaskIndex "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24

    :cond_5d
    iget-object v3, v0, Lcom/android/server/am/TaskAccessInfo;->subtasks:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskAccessInfo$SubTask;

    iget v3, v2, Lcom/android/server/am/TaskAccessInfo$SubTask;->index:I

    invoke-direct {p0, p1, v3}, Lcom/android/server/am/ActivityStack;->performClearTaskAtIndexLocked(II)V

    iget-object v3, v2, Lcom/android/server/am/TaskAccessInfo$SubTask;->activity:Lcom/android/server/am/ActivityRecord;

    goto :goto_24
.end method

.method reportActivityLaunchedLocked(ZLcom/android/server/am/ActivityRecord;JJ)V
    .registers 12

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_8
    if-ltz v0, :cond_2c

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/IActivityManager$WaitResult;

    iput-boolean p1, v1, Landroid/app/IActivityManager$WaitResult;->timeout:Z

    if-eqz p2, :cond_25

    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, p2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, v1, Landroid/app/IActivityManager$WaitResult;->who:Landroid/content/ComponentName;

    :cond_25
    iput-wide p3, v1, Landroid/app/IActivityManager$WaitResult;->thisTime:J

    iput-wide p5, v1, Landroid/app/IActivityManager$WaitResult;->totalTime:J

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_2c
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    return-void
.end method

.method reportActivityVisibleLocked(Lcom/android/server/am/ActivityRecord;)V
    .registers 9

    const/4 v6, 0x0

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mWaitingActivityVisible:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_9
    if-ltz v0, :cond_36

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mWaitingActivityVisible:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/IActivityManager$WaitResult;

    iput-boolean v6, v1, Landroid/app/IActivityManager$WaitResult;->timeout:Z

    if-eqz p1, :cond_26

    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, v1, Landroid/app/IActivityManager$WaitResult;->who:Landroid/content/ComponentName;

    :cond_26
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, v1, Landroid/app/IActivityManager$WaitResult;->thisTime:J

    sub-long/2addr v2, v4

    iput-wide v2, v1, Landroid/app/IActivityManager$WaitResult;->totalTime:J

    iget-wide v2, v1, Landroid/app/IActivityManager$WaitResult;->totalTime:J

    iput-wide v2, v1, Landroid/app/IActivityManager$WaitResult;->thisTime:J

    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    :cond_36
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    iget-boolean v2, p0, Lcom/android/server/am/ActivityStack;->mDismissKeyguardOnNextActivity:Z

    if-eqz v2, :cond_48

    iput-boolean v6, p0, Lcom/android/server/am/ActivityStack;->mDismissKeyguardOnNextActivity:Z

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->dismissKeyguard()V

    :cond_48
    return-void
.end method

.method public requestDelayedRotation(Landroid/os/IBinder;I)V
    .registers 10

    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    :try_start_3
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->forToken(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStack;->indexOfActivityLocked(Lcom/android/server/am/ActivityRecord;)I

    move-result v2

    if-lez v2, :cond_34

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_34

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    add-int/lit8 v6, v2, -0x1

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_34

    if-eqz v3, :cond_34

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v4, v4, Lcom/android/server/am/TaskRecord;->taskId:I

    iget-object v6, v3, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v6, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v4, v6, :cond_34

    new-instance v4, Lcom/android/server/am/ActivityStack$DelayedRotationRequest;

    invoke-direct {v4, p0, v0, v3, p2}, Lcom/android/server/am/ActivityStack$DelayedRotationRequest;-><init>(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;I)V

    iput-object v4, p0, Lcom/android/server/am/ActivityStack;->mDelayedRotationRequest:Lcom/android/server/am/ActivityStack$DelayedRotationRequest;
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_3f
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_34} :catch_36

    :cond_34
    :goto_34
    :try_start_34
    monitor-exit v5

    return-void

    :catch_36
    move-exception v1

    const-string v4, "ActivityManager"

    const-string v6, "requestDelayedRotation() catched exception."

    invoke-static {v4, v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_34

    :catchall_3f
    move-exception v4

    monitor-exit v5
    :try_end_41
    .catchall {:try_start_34 .. :try_end_41} :catchall_3f

    throw v4
.end method

.method public requestFakeOpaqueFull(Landroid/os/IBinder;Z)V
    .registers 8

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->indexOfTokenLocked(Landroid/os/IBinder;)I

    move-result v0

    if-gez v0, :cond_b

    monitor-exit v3

    :goto_a
    return-void

    :cond_b
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    iput-boolean p2, v1, Lcom/android/server/am/ActivityRecord;->requestedFullOpaque:Z

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4}, Lcom/android/server/am/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V

    monitor-exit v3

    goto :goto_a

    :catchall_1c
    move-exception v2

    monitor-exit v3
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v2
.end method

.method final requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Z)Z
    .registers 13

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->indexOfTokenLocked(Landroid/os/IBinder;)I

    move-result v2

    if-gez v2, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    move-object v0, p0

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;IILandroid/content/Intent;Ljava/lang/String;Z)Z

    const/4 v0, 0x1

    goto :goto_7
.end method

.method public resizeArrangedWindow(ILandroid/graphics/Point;)V
    .registers 13

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    const/16 v7, 0xf

    if-ne p1, v7, :cond_33

    const/4 v7, 0x0

    :try_start_9
    invoke-virtual {p0, v7}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    iget v7, v5, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const v8, 0xfffff0

    and-int/2addr v7, v8

    iput v7, v5, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    iget v7, v5, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const/high16 v8, 0x100

    or-int/2addr v7, v8

    iput v7, v5, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    iget-object v7, v5, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v8, v5, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const/4 v9, 0x0

    invoke-direct {p0, v7, v8, v9}, Lcom/android/server/am/ActivityStack;->setWindowModeForAllActivitiesInTaskLocked(Lcom/android/server/am/TaskRecord;ILjava/util/ArrayList;)V

    iget v7, v5, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {p0, v5, v7, v8, v9}, Lcom/android/server/am/ActivityStack;->notifyWindowStatusChangedLocked(Lcom/android/server/am/ActivityRecord;IIZ)V

    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z
    :try_end_2f
    .catchall {:try_start_9 .. :try_end_2f} :catchall_6b

    :cond_2f
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_33
    and-int/lit8 v7, p1, 0xf

    if-eqz v7, :cond_c7

    :try_start_37
    invoke-static {}, Lcom/android/server/am/MultiWindowManagerService;->getSelf()Lcom/android/server/am/MultiWindowManagerService;

    move-result-object v2

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual {p0, v7, v8}, Lcom/android/server/am/ActivityStack;->getFrontResumedActivities(ZZ)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2f

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4b
    :goto_4b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_85

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityRecord;

    iget v7, v5, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit8 v7, v7, 0xf

    const/4 v8, 0x3

    if-ne v7, v8, :cond_70

    iget v7, v5, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit8 v7, v7, -0x10

    iput v7, v5, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    iget v7, v5, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    or-int/lit8 v7, v7, 0xc

    iput v7, v5, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I
    :try_end_6a
    .catchall {:try_start_37 .. :try_end_6a} :catchall_6b

    goto :goto_4b

    :catchall_6b
    move-exception v7

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7

    :cond_70
    :try_start_70
    iget v7, v5, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit8 v7, v7, 0xf

    const/16 v8, 0xc

    if-ne v7, v8, :cond_4b

    iget v7, v5, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit8 v7, v7, -0x10

    iput v7, v5, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    iget v7, v5, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    or-int/lit8 v7, v7, 0x3

    iput v7, v5, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    goto :goto_4b

    :cond_85
    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iget v8, v8, Landroid/content/res/Configuration;->arrange:I

    invoke-virtual {v2, v7, v8, v6}, Lcom/android/server/am/MultiWindowManagerService;->arrangeWindowInfos(IILjava/util/ArrayList;)V

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_93
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_af

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityRecord;

    iget-object v7, v5, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v8, v5, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const/4 v9, 0x0

    invoke-direct {p0, v7, v8, v9}, Lcom/android/server/am/ActivityStack;->setWindowModeForAllActivitiesInTaskLocked(Lcom/android/server/am/TaskRecord;ILjava/util/ArrayList;)V

    iget v7, v5, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {p0, v5, v7, v8, v9}, Lcom/android/server/am/ActivityStack;->notifyWindowStatusChangedLocked(Lcom/android/server/am/ActivityRecord;IIZ)V

    goto :goto_93

    :cond_af
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v0, v7, -0x1

    :goto_b5
    if-ltz v0, :cond_2f

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ActivityRecord;

    iget-object v7, v7, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v7, v7, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-direct {p0, v7}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_b5

    :cond_c7
    invoke-static {}, Lcom/android/server/am/MultiWindowManagerService;->getSelf()Lcom/android/server/am/MultiWindowManagerService;

    move-result-object v2

    if-eqz p2, :cond_d0

    invoke-virtual {v2, p2}, Lcom/android/server/am/MultiWindowManagerService;->setCenterBarPoint(Landroid/graphics/Point;)V

    :cond_d0
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {p0, v7, v8, v9}, Lcom/android/server/am/ActivityStack;->getFrontResumedActivities(ZZZ)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2f

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iget v8, v8, Landroid/content/res/Configuration;->arrange:I

    invoke-virtual {v2, v7, v8, v6}, Lcom/android/server/am/MultiWindowManagerService;->arrangeWindowInfos(IILjava/util/ArrayList;)V

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_eb
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityRecord;

    iget v7, v5, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-virtual {p0, v5, v7, v8, v9}, Lcom/android/server/am/ActivityStack;->notifyWindowStatusChangedLocked(Lcom/android/server/am/ActivityRecord;IIZ)V
    :try_end_fe
    .catchall {:try_start_70 .. :try_end_fe} :catchall_6b

    goto :goto_eb
.end method

.method resolveActivity(Landroid/content/Intent;Ljava/lang/String;ILjava/lang/String;Landroid/os/ParcelFileDescriptor;I)Landroid/content/pm/ActivityInfo;
    .registers 16

    const/4 v5, 0x1

    const/4 v3, 0x0

    :try_start_2
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const v1, 0x10480

    invoke-interface {v0, p1, p2, v1, p6}, Landroid/content/pm/IPackageManager;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v8

    if-eqz v8, :cond_69

    iget-object v6, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_11} :catch_6b

    :goto_11
    if-eqz v6, :cond_68

    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v2, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_36

    iget-object v0, v6, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    const-string v1, "system"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_36

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v6, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1, v5, v3}, Lcom/android/server/am/ActivityManagerService;->setDebugApp(Ljava/lang/String;ZZ)V

    :cond_36
    and-int/lit8 v0, p3, 0x4

    if-eqz v0, :cond_4d

    iget-object v0, v6, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    const-string v1, "system"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4d

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v6, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->setOpenGlTraceApp(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    :cond_4d
    if-eqz p4, :cond_68

    iget-object v0, v6, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    const-string v1, "system"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_68

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v6, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    and-int/lit8 v4, p3, 0x8

    if-eqz v4, :cond_6e

    :goto_63
    move-object v3, p4

    move-object v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityManagerService;->setProfileApp(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Z)V

    :cond_68
    return-object v6

    :cond_69
    const/4 v6, 0x0

    goto :goto_11

    :catch_6b
    move-exception v7

    const/4 v6, 0x0

    goto :goto_11

    :cond_6e
    move v5, v3

    goto :goto_63
.end method

.method final resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method final resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z
    .registers 14

    const/4 v10, 0x0

    const/4 v9, 0x0

    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mPendingResumeTopActivity:Ljava/lang/Runnable;

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-boolean v7, p0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v7, :cond_91

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->canResumedActivitiesLocked()Ljava/util/List;

    move-result-object v4

    const/4 v3, 0x0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_8c

    invoke-virtual {p0, v4}, Lcom/android/server/am/ActivityStack;->arrangedWindowStateLocked(Ljava/util/List;)V

    invoke-virtual {p0, v4}, Lcom/android/server/am/ActivityStack;->notifyMultiWindowStatusChangedLocked(Ljava/util/List;)V

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_26
    :goto_26
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    invoke-virtual {p0, p1, p2, v2, v4}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;Lcom/android/server/am/ActivityRecord;Ljava/util/List;)Z

    move-result v7

    if-eqz v7, :cond_26

    iget v7, v2, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v7}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v7

    const/high16 v8, 0x200

    if-ne v7, v8, :cond_48

    iget v7, v2, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const/4 v8, 0x1

    invoke-virtual {p0, v2, v7, v10, v8}, Lcom/android/server/am/ActivityStack;->notifyWindowStatusChangedLocked(Lcom/android/server/am/ActivityRecord;IIZ)V

    :cond_48
    const/4 v3, 0x1

    goto :goto_26

    :cond_4a
    if-nez v3, :cond_7b

    invoke-direct {p0}, Lcom/android/server/am/ActivityStack;->updatePinupHiddenFlag()V

    invoke-virtual {p0, v9}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    if-eqz v5, :cond_7c

    invoke-static {}, Lcom/android/server/am/MultiWindowManagerService;->getSelf()Lcom/android/server/am/MultiWindowManagerService;

    move-result-object v1

    iget-object v7, v5, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v7, v7, Lcom/android/server/am/TaskRecord;->taskId:I

    iget-object v8, v5, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v8, v8, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v1, v7, v8}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v6

    iget-boolean v7, v5, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-nez v7, :cond_76

    if-eqz v6, :cond_76

    const-string v7, "android.intent.extra.STAY_RESUME"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_76

    invoke-virtual {p0, v9, v10}, Lcom/android/server/am/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V

    :cond_76
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v7, v5}, Lcom/android/server/am/ActivityManagerService;->setFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    :cond_7b
    :goto_7b
    return v3

    :cond_7c
    iget-boolean v7, p0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v7, :cond_7b

    invoke-static {p2}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v8, p0, Lcom/android/server/am/ActivityStack;->mCurrentUser:I

    invoke-virtual {v7, v8}, Lcom/android/server/am/ActivityManagerService;->startHomeActivityLocked(I)Z

    move-result v3

    goto :goto_7b

    :cond_8c
    invoke-virtual {p0, p1, p2, v9, v4}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;Lcom/android/server/am/ActivityRecord;Ljava/util/List;)Z

    move-result v3

    goto :goto_7b

    :cond_91
    invoke-virtual {p0, p1, p2, v9, v9}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;Lcom/android/server/am/ActivityRecord;Ljava/util/List;)Z

    move-result v3

    goto :goto_7b
.end method

.method final resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;Lcom/android/server/am/ActivityRecord;Ljava/util/List;)Z
    .registers 42
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/ActivityRecord;",
            "Landroid/os/Bundle;",
            "Lcom/android/server/am/ActivityRecord;",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;)Z"
        }
    .end annotation

    if-nez p3, :cond_9

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object p3

    :cond_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/am/ActivityStack;->mUserLeaving:Z

    move/from16 v36, v0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mUserLeaving:Z

    if-nez p3, :cond_2c

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v3, :cond_2c

    invoke-static/range {p2 .. p2}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/am/ActivityStack;->mCurrentUser:I

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityManagerService;->startHomeActivityLocked(I)Z

    move-result v3

    :goto_2b
    return v3

    :cond_2c
    const/4 v3, 0x0

    move-object/from16 v0, p3

    iput-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->delayedResume:Z

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v3, :cond_70

    move-object/from16 v0, p4

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_78

    :cond_41
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v3, v4, :cond_78

    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v31, 0x0

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v3, :cond_d5

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_59
    :goto_59
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d5

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, v29

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v3, v4, :cond_be

    const/16 v17, 0x0

    goto :goto_59

    :cond_70
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p3

    if-eq v3, v0, :cond_41

    :cond_78
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mSleeping:Z

    if-nez v3, :cond_88

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mShuttingDown:Z

    if-eqz v3, :cond_155

    :cond_88
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p3

    if-ne v3, v0, :cond_155

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v3, v4, :cond_a8

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v3, v4, :cond_a8

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v3, v4, :cond_155

    :cond_a8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    invoke-static/range {p2 .. p2}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    const/4 v3, 0x0

    goto/16 :goto_2b

    :cond_be
    move-object/from16 v0, v29

    iget v3, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit8 v3, v3, 0xf

    or-int v31, v31, v3

    move-object/from16 v0, v29

    iget v3, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v3}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v3

    const/high16 v4, 0x100

    if-ne v3, v4, :cond_59

    const/16 v18, 0x1

    goto :goto_59

    :cond_d5
    if-eqz v17, :cond_d9

    if-nez v31, :cond_db

    :cond_d9
    if-eqz v18, :cond_ee

    :cond_db
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    invoke-static/range {p2 .. p2}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    :cond_ee
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v3, :cond_131

    const/16 v33, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->topResumedActivitiesLocked()Ljava/util/List;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_fe
    :goto_fe
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_121

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p4

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_fe

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move/from16 v2, v36

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStack;->startPausingLocked(Lcom/android/server/am/ActivityRecord;ZZ)V

    const/16 v33, 0x1

    goto :goto_fe

    :cond_121
    if-nez v33, :cond_131

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_131

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->scheduleIdleLocked()V

    :cond_131
    if-eqz p1, :cond_152

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_152

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v3, :cond_152

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v3, :cond_152

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityManagerService;->addRecentTaskLocked(Lcom/android/server/am/TaskRecord;)V

    :cond_152
    const/4 v3, 0x0

    goto/16 :goto_2b

    :cond_155
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mStartedUsers:Landroid/util/SparseArray;

    move-object/from16 v0, p3

    iget v4, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_196

    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Skipping resume of top activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    iget v5, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is stopped"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    goto/16 :goto_2b

    :cond_196
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStoppingActivities:Ljava/util/ArrayList;

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mGoingToSleepActivities:Ljava/util/ArrayList;

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    move-object/from16 v0, p3

    iput-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->sleeping:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    move-object/from16 v0, p3

    iput-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityRecord;->updateOptionsLocked(Landroid/os/Bundle;)V

    const-string v3, "qcom"

    sget-object v4, Lcom/android/server/am/ActivityStack;->hardwareInfo:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d5

    sget-object v3, Lcom/android/server/am/ActivityStack;->mActivityTrigger:Lcom/android/internal/app/ActivityTrigger;

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Lcom/android/internal/app/ActivityTrigger;->activityResumeTrigger(Landroid/content/Intent;)V

    :cond_1d5
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v3, :cond_1e8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mPausingActivities:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1f1

    const/4 v3, 0x0

    goto/16 :goto_2b

    :cond_1e8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v3, :cond_1f1

    const/4 v3, 0x0

    goto/16 :goto_2b

    :cond_1f1
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v3, :cond_229

    const/16 v33, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->topResumedActivitiesLocked()Ljava/util/List;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_201
    :goto_201
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_224

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p4

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_201

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move/from16 v2, v36

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStack;->startPausingLocked(Lcom/android/server/am/ActivityRecord;ZZ)V

    const/16 v33, 0x1

    goto :goto_201

    :cond_224
    if-eqz v33, :cond_254

    const/4 v3, 0x1

    goto/16 :goto_2b

    :cond_229
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v3, :cond_254

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_249

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v3, :cond_249

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;Z)V

    :cond_249
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-direct {v0, v1, v3}, Lcom/android/server/am/ActivityStack;->startPausingLocked(ZZ)V

    const/4 v3, 0x1

    goto/16 :goto_2b

    :cond_254
    :try_start_254
    move-object/from16 v0, p3

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->isHomeActivity:Z

    if-nez v3, :cond_45f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, p3

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/server/am/ActivityManagerService;->setActivitySwitchBooster(ZZZLjava/lang/String;)V
    :try_end_268
    .catch Ljava/lang/Exception; {:try_start_254 .. :try_end_268} :catch_46f

    :goto_268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mSleeping:Z

    if-eqz v3, :cond_2a3

    if-eqz v22, :cond_2a3

    move-object/from16 v0, v22

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v3, :cond_2a3

    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v3

    const/high16 v4, 0x4000

    and-int/2addr v3, v4

    if-nez v3, :cond_295

    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v3, v3, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_2a3

    :cond_295
    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "no-history"

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/am/ActivityStack;->requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    :cond_2a3
    if-eqz p1, :cond_2c7

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    if-eq v0, v1, :cond_2c7

    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    if-nez v3, :cond_472

    if-eqz p3, :cond_472

    move-object/from16 v0, p3

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-nez v3, :cond_472

    const/4 v3, 0x1

    move-object/from16 v0, p1

    iput-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2c7
    :goto_2c7
    :try_start_2c7
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p3

    iget v6, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-interface {v3, v4, v5, v6}, Landroid/content/pm/IPackageManager;->setPackageStoppedState(Ljava/lang/String;ZI)V
    :try_end_2d7
    .catch Landroid/os/RemoteException; {:try_start_2c7 .. :try_end_2d7} :catch_766
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2c7 .. :try_end_2d7} :catch_488

    :goto_2d7
    const/16 v27, 0x0

    if-eqz p1, :cond_504

    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v3, :cond_4ce

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4b3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    :goto_2f8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerService;->setAppWillBeHidden(Landroid/os/IBinder;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    :cond_313
    :goto_313
    if-nez v27, :cond_538

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/am/ActivityRecord;->applyOptionsLocked()V

    :goto_318
    sget-boolean v3, Lcom/android/server/am/ActivityStack;->IS_TYPE_MRVL:Z

    if-eqz v3, :cond_34e

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v28

    sget-object v3, Lcom/android/server/am/ActivityStack;->lastPackageName:Ljava/lang/String;

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_34e

    new-instance v25, Landroid/content/Intent;

    invoke-direct/range {v25 .. v25}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.marvell.cpugadget.TASK_MONITOR"

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "taskName"

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mContext:Landroid/content/Context;

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    sput-object v28, Lcom/android/server/am/ActivityStack;->lastPackageName:Ljava/lang/String;

    :cond_34e
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_6ee

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v3, :cond_6ee

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/am/ActivityRecord;->startLaunchTickingLocked()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v23, v0

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->updateCpuStats()V

    sget-object v3, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v0, p3

    iput-object v3, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->touchActiveTime()V

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v3, :cond_3a4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityManagerService;->addRecentTaskLocked(Lcom/android/server/am/TaskRecord;)V

    :cond_3a4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;Z)V

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/am/ActivityStack;->updateLRUListLocked(Lcom/android/server/am/ActivityRecord;)Z

    const/16 v35, 0x0

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v3, :cond_3fa

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    :try_start_3c4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v3, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityRecord;->mayFreezeScreenLocked(Lcom/android/server/am/ProcessRecord;)Z

    move-result v3

    if-eqz v3, :cond_53d

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    :goto_3e0
    invoke-virtual {v5, v6, v3}, Lcom/android/server/wm/WindowManagerService;->updateOrientationFromAppTokens(Landroid/content/res/Configuration;Landroid/os/IBinder;)Landroid/content/res/Configuration;

    move-result-object v19

    if-eqz v19, :cond_3eb

    const/4 v3, 0x1

    move-object/from16 v0, p3

    iput-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->frozenBeforeDestroy:Z

    :cond_3eb
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v3, v0, v1, v5, v6}, Lcom/android/server/am/ActivityManagerService;->updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/am/ActivityRecord;ZZ)Z

    move-result v35

    monitor-exit v4
    :try_end_3fa
    .catchall {:try_start_3c4 .. :try_end_3fa} :catchall_540

    :cond_3fa
    if-nez v35, :cond_557

    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v3, :cond_543

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->topRunningNextActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v26

    :goto_40c
    move-object/from16 v0, v26

    move-object/from16 v1, p3

    if-eq v0, v1, :cond_41b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x6a

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_41b
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v3, :cond_445

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v34

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v3, :cond_54c

    if-eqz v34, :cond_54c

    move-object/from16 v0, v34

    iget v3, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v3}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v3

    const/high16 v4, 0x200

    if-ne v3, v4, :cond_54c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v34

    invoke-virtual {v3, v0}, Lcom/android/server/am/ActivityManagerService;->setFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    :cond_445
    :goto_445
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/server/am/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    const/4 v3, 0x1

    goto/16 :goto_2b

    :cond_45f
    :try_start_45f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object/from16 v0, p3

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/server/am/ActivityManagerService;->setActivitySwitchBooster(ZZZLjava/lang/String;)V
    :try_end_46d
    .catch Ljava/lang/Exception; {:try_start_45f .. :try_end_46d} :catch_46f

    goto/16 :goto_268

    :catch_46f
    move-exception v3

    goto/16 :goto_268

    :cond_472
    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v3, :cond_2c7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    goto/16 :goto_2c7

    :catch_488
    move-exception v20

    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed trying to unstop package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2d7

    :cond_4b3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v3, v5, :cond_4cb

    const/16 v3, 0x2007

    :goto_4c5
    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    goto/16 :goto_2f8

    :cond_4cb
    const/16 v3, 0x2009

    goto :goto_4c5

    :cond_4ce
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4e9

    const/16 v27, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    goto/16 :goto_313

    :cond_4e9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v3, v5, :cond_501

    const/16 v3, 0x1006

    :goto_4fb
    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    goto/16 :goto_313

    :cond_501
    const/16 v3, 0x1008

    goto :goto_4fb

    :cond_504
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_313

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_52a

    const/16 v27, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    goto/16 :goto_313

    :cond_52a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/16 v4, 0x1006

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    goto/16 :goto_313

    :cond_538
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/am/ActivityRecord;->clearOptionsLocked()V

    goto/16 :goto_318

    :cond_53d
    const/4 v3, 0x0

    goto/16 :goto_3e0

    :catchall_540
    move-exception v3

    :try_start_541
    monitor-exit v4
    :try_end_542
    .catchall {:try_start_541 .. :try_end_542} :catchall_540

    throw v3

    :cond_543
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v26

    goto/16 :goto_40c

    :cond_54c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Lcom/android/server/am/ActivityManagerService;->setFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    goto/16 :goto_445

    :cond_557
    :try_start_557
    move-object/from16 v0, p3

    iget-object v15, v0, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    if-eqz v15, :cond_576

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v14

    move-object/from16 v0, p3

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v3, :cond_576

    if-lez v14, :cond_576

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-interface {v3, v4, v15}, Landroid/app/IApplicationThread;->scheduleSendResult(Landroid/os/IBinder;Ljava/util/List;)V

    :cond_576
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    if-eqz v3, :cond_58d

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-interface {v3, v4, v5}, Landroid/app/IApplicationThread;->scheduleNewIntent(Ljava/util/List;Landroid/os/IBinder;)V

    :cond_58d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessesReady:Z

    if-eqz v3, :cond_5bd

    new-instance v16, Landroid/content/Intent;

    const-string v3, "android.intent.action.ACTIVITY_STATE"

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "activityPackageName"

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "activityState"

    const-string v4, "resume"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mContext:Landroid/content/Context;

    const-string v4, "com.samsung.android.activitymanager.permission.GET_ACTIVITY_STATE"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    :cond_5bd
    const/16 v3, 0x7537

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p3

    iget v6, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static/range {p3 .. p3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v6, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    const/4 v3, 0x0

    move-object/from16 v0, p3

    iput-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->sleeping:Z

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->showAskCompatModeDialogLocked(Lcom/android/server/am/ActivityRecord;)V

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/server/am/ProcessRecord;->pendingUiClean:Z

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->isNextTransitionForward()Z

    move-result v5

    invoke-interface {v3, v4, v5}, Landroid/app/IApplicationThread;->scheduleResumeActivity(Landroid/os/IBinder;Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->checkReadyForSleepLocked()V
    :try_end_61a
    .catch Ljava/lang/Exception; {:try_start_557 .. :try_end_61a} :catch_646

    const/4 v3, 0x1

    :try_start_61b
    move-object/from16 v0, p3

    iput-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->visible:Z

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/am/ActivityStack;->completeResumeLocked(Lcom/android/server/am/ActivityRecord;)V
    :try_end_626
    .catch Ljava/lang/Exception; {:try_start_61b .. :try_end_626} :catch_6c0

    const/4 v3, 0x0

    move-object/from16 v0, p3

    iput-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->stopped:Z

    :goto_62b
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_CIQ_BroadcastState"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_643

    if-nez p1, :cond_73a

    if-eqz p3, :cond_73a

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/server/am/AppStateBroadcaster;->SendApplicationFocusGain(Ljava/lang/String;)V

    :cond_643
    :goto_643
    const/4 v3, 0x1

    goto/16 :goto_2b

    :catch_646
    move-exception v20

    move-object/from16 v0, v24

    move-object/from16 v1, p3

    iput-object v0, v1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Restarting because process died: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p3

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->hasBeenLaunched:Z

    if-nez v3, :cond_684

    const/4 v3, 0x1

    move-object/from16 v0, p3

    iput-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->hasBeenLaunched:Z

    :cond_678
    :goto_678
    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v3, v4}, Lcom/android/server/am/ActivityStack;->startSpecificActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V

    const/4 v3, 0x1

    goto/16 :goto_2b

    :cond_684
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v3, :cond_678

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v0, p3

    iget v6, v0, Lcom/android/server/am/ActivityRecord;->theme:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p3

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v7, v8}, Lcom/android/server/am/ActivityManagerService;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v7

    move-object/from16 v0, p3

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->nonLocalizedLabel:Ljava/lang/CharSequence;

    move-object/from16 v0, p3

    iget v9, v0, Lcom/android/server/am/ActivityRecord;->labelRes:I

    move-object/from16 v0, p3

    iget v10, v0, Lcom/android/server/am/ActivityRecord;->icon:I

    move-object/from16 v0, p3

    iget v11, v0, Lcom/android/server/am/ActivityRecord;->windowFlags:I

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-virtual/range {v3 .. v13}, Lcom/android/server/wm/WindowManagerService;->setAppStartingWindow(Landroid/os/IBinder;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIILandroid/os/IBinder;Z)V

    goto :goto_678

    :catch_6c0
    move-exception v20

    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception thrown during resume of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "resume-exception"

    const/4 v8, 0x1

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/am/ActivityStack;->requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    const/4 v3, 0x1

    goto/16 :goto_2b

    :cond_6ee
    move-object/from16 v0, p3

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->hasBeenLaunched:Z

    if-nez v3, :cond_704

    const/4 v3, 0x1

    move-object/from16 v0, p3

    iput-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->hasBeenLaunched:Z

    :goto_6f9
    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v3, v4}, Lcom/android/server/am/ActivityStack;->startSpecificActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V

    goto/16 :goto_62b

    :cond_704
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v0, p3

    iget v6, v0, Lcom/android/server/am/ActivityRecord;->theme:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p3

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v7, v8}, Lcom/android/server/am/ActivityManagerService;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v7

    move-object/from16 v0, p3

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->nonLocalizedLabel:Ljava/lang/CharSequence;

    move-object/from16 v0, p3

    iget v9, v0, Lcom/android/server/am/ActivityRecord;->labelRes:I

    move-object/from16 v0, p3

    iget v10, v0, Lcom/android/server/am/ActivityRecord;->icon:I

    move-object/from16 v0, p3

    iget v11, v0, Lcom/android/server/am/ActivityRecord;->windowFlags:I

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-virtual/range {v3 .. v13}, Lcom/android/server/wm/WindowManagerService;->setAppStartingWindow(Landroid/os/IBinder;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIILandroid/os/IBinder;Z)V

    goto :goto_6f9

    :cond_73a
    if-eqz p1, :cond_643

    if-eqz p3, :cond_643

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    if-eq v3, v4, :cond_643

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_75d

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-boolean v3, v3, Lcom/android/server/am/ProcessRecord;->crashing:Z

    if-nez v3, :cond_75d

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/server/am/AppStateBroadcaster;->SendApplicationFocusLoss(Ljava/lang/String;)V

    :cond_75d
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/server/am/AppStateBroadcaster;->SendApplicationFocusGain(Ljava/lang/String;)V

    goto/16 :goto_643

    :catch_766
    move-exception v3

    goto/16 :goto_2d7
.end method

.method final scheduleDestroyActivities(Lcom/android/server/am/ProcessRecord;ZLjava/lang/String;)V
    .registers 7

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x6d

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    new-instance v1, Lcom/android/server/am/ActivityStack$ScheduleDestroyArgs;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/server/am/ActivityStack$ScheduleDestroyArgs;-><init>(Lcom/android/server/am/ProcessRecord;ZLjava/lang/String;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method final scheduleIdleLocked()V
    .registers 3

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x67

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final screenshotActivities(Lcom/android/server/am/ActivityRecord;)Landroid/graphics/Bitmap;
    .registers 9

    const/4 v3, 0x0

    iget-boolean v4, p1, Lcom/android/server/am/ActivityRecord;->noDisplay:Z

    if-eqz v4, :cond_6

    :cond_5
    :goto_5
    return-object v3

    :cond_6
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/android/server/am/ActivityStack;->mThumbnailWidth:I

    iget v0, p0, Lcom/android/server/am/ActivityStack;->mThumbnailHeight:I

    if-gez v2, :cond_26

    const v4, 0x1050002

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/am/ActivityStack;->mThumbnailWidth:I

    const v4, 0x1050001

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/ActivityStack;->mThumbnailHeight:I

    :cond_26
    if-lez v2, :cond_5

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mLastScreenshotActivity:Lcom/android/server/am/ActivityRecord;

    if-ne p1, v4, :cond_40

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mLastScreenshotBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_40

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mLastScreenshotBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-ne v4, v2, :cond_40

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mLastScreenshotBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-eq v4, v0, :cond_4f

    :cond_40
    iput-object p1, p0, Lcom/android/server/am/ActivityStack;->mLastScreenshotActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v2, v0}, Lcom/android/server/wm/WindowManagerService;->screenshotApplications(Landroid/os/IBinder;III)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/am/ActivityStack;->mLastScreenshotBitmap:Landroid/graphics/Bitmap;

    :cond_4f
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mLastScreenshotBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_5

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mLastScreenshotBitmap:Landroid/graphics/Bitmap;

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_5
.end method

.method sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V
    .registers 15

    if-lez p1, :cond_d

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->getUriPermissionsLocked()Lcom/android/server/am/UriPermissionOwner;

    move-result-object v2

    invoke-virtual {v0, p1, v1, p6, v2}, Lcom/android/server/am/ActivityManagerService;->grantUriPermissionFromIntentLocked(ILjava/lang/String;Landroid/content/Intent;Lcom/android/server/am/UriPermissionOwner;)V

    :cond_d
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v0, :cond_32

    :cond_11
    iget-object v0, p2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_36

    iget-object v0, p2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_36

    :try_start_1b
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Landroid/app/ResultInfo;

    invoke-direct {v0, p3, p4, p5, p6}, Landroid/app/ResultInfo;-><init>(Ljava/lang/String;IILandroid/content/Intent;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v1, p2, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-interface {v0, v1, v7}, Landroid/app/IApplicationThread;->scheduleSendResult(Landroid/os/IBinder;Ljava/util/List;)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_31} :catch_40

    :goto_31
    return-void

    :cond_32
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eq v0, p2, :cond_11

    :cond_36
    :goto_36
    const/4 v1, 0x0

    move-object v0, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityRecord;->addResultLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    goto :goto_31

    :catch_40
    move-exception v6

    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception thrown sending result to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_36
.end method

.method public setWindowInfo(Landroid/os/IBinder;Landroid/os/Bundle;)V
    .registers 22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v16, v0

    monitor-enter v16

    :try_start_7
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ActivityStack;->indexOfTokenLocked(Landroid/os/IBinder;)I

    move-result v4

    if-gez v4, :cond_f

    monitor-exit v16

    :goto_e
    return-void

    :cond_f
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/ActivityRecord;

    invoke-static {}, Lcom/android/server/am/MultiWindowManagerService;->getSelf()Lcom/android/server/am/MultiWindowManagerService;

    move-result-object v5

    iget-object v15, v12, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v15, v15, Lcom/android/server/am/TaskRecord;->taskId:I

    iget-object v0, v12, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v5, v15, v0}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v9

    const-string v15, "android.intent.extra.STAY_RESUME"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v15

    const-string v17, "android.intent.extra.STAY_RESUME"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v17

    move/from16 v0, v17

    if-eq v15, v0, :cond_b7

    const/4 v6, 0x1

    :goto_46
    iget-object v15, v12, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v15, v15, Lcom/android/server/am/TaskRecord;->taskId:I

    iget-object v0, v12, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v5, v15, v0, v1}, Lcom/android/server/am/MultiWindowManagerService;->updateWindowInfo(ILandroid/content/ComponentName;Landroid/os/Bundle;)V

    const-string v15, "android.intent.extra.WINDOW_LAST_SIZE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/graphics/Rect;

    const-string v15, "android.intent.extra.WINDOW_LAST_SIZE"

    invoke-virtual {v9, v15}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/graphics/Rect;

    const/4 v14, 0x0

    if-eqz v8, :cond_91

    if-eqz v7, :cond_91

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v15

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v17

    move/from16 v0, v17

    if-eq v15, v0, :cond_b9

    const/4 v13, 0x1

    :goto_7f
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v15

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v17

    move/from16 v0, v17

    if-eq v15, v0, :cond_bb

    const/4 v3, 0x1

    :goto_8c
    if-nez v13, :cond_90

    if-eqz v3, :cond_bd

    :cond_90
    const/4 v14, 0x1

    :cond_91
    :goto_91
    if-eqz v14, :cond_bf

    iget v15, v12, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const/16 v17, 0x1

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v12, v15, v1, v2}, Lcom/android/server/am/ActivityStack;->notifyWindowStatusChangedLocked(Lcom/android/server/am/ActivityRecord;IIZ)V

    :goto_a2
    if-eqz v6, :cond_b1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_a7
    .catchall {:try_start_7 .. :try_end_a7} :catchall_b4

    move-result-wide v10

    const/4 v15, 0x0

    :try_start_a9
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z
    :try_end_ae
    .catchall {:try_start_a9 .. :try_end_ae} :catchall_cf

    :try_start_ae
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_b1
    monitor-exit v16

    goto/16 :goto_e

    :catchall_b4
    move-exception v15

    monitor-exit v16
    :try_end_b6
    .catchall {:try_start_ae .. :try_end_b6} :catchall_b4

    throw v15

    :cond_b7
    const/4 v6, 0x0

    goto :goto_46

    :cond_b9
    const/4 v13, 0x0

    goto :goto_7f

    :cond_bb
    const/4 v3, 0x0

    goto :goto_8c

    :cond_bd
    const/4 v14, 0x0

    goto :goto_91

    :cond_bf
    :try_start_bf
    iget v15, v12, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const/16 v17, 0x0

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v12, v15, v1, v2}, Lcom/android/server/am/ActivityStack;->notifyWindowStatusChangedLocked(Lcom/android/server/am/ActivityRecord;IIZ)V

    goto :goto_a2

    :catchall_cf
    move-exception v15

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v15
    :try_end_d4
    .catchall {:try_start_bf .. :try_end_d4} :catchall_b4
.end method

.method public setWindowMode(Landroid/os/IBinder;IZZ)V
    .registers 30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v22, v0

    monitor-enter v22

    :try_start_7
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ActivityStack;->indexOfTokenLocked(Landroid/os/IBinder;)I

    move-result v9

    invoke-static {}, Lcom/android/server/am/MultiWindowManagerService;->getSelf()Lcom/android/server/am/MultiWindowManagerService;

    move-result-object v11

    if-gez v9, :cond_13

    monitor-exit v22

    :goto_12
    return-void

    :cond_13
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v15

    invoke-static/range {p2 .. p2}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v12

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->zone(I)I

    move-result v16

    invoke-static/range {p2 .. p2}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->zone(I)I

    move-result v13

    const/4 v7, 0x1

    const/high16 v21, 0x200

    move/from16 v0, v21

    if-ne v15, v0, :cond_6d

    const/high16 v21, 0x200

    move/from16 v0, v21

    if-ne v12, v0, :cond_6d

    if-nez v16, :cond_11b

    if-eqz v13, :cond_11b

    new-instance v14, Landroid/content/Intent;

    const-string v21, "com.sec.android.action.NOTIFY_FOCUS_WINDOWS"

    move-object/from16 v0, v21

    invoke-direct {v14, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v21, "com.sec.android.extra.ARRAGE_TYPE"

    move-object/from16 v0, v21

    invoke-virtual {v14, v0, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_6d
    :goto_6d
    const/high16 v21, 0x100

    move/from16 v0, v21

    if-ne v12, v0, :cond_8d

    const/high16 v21, 0x4c

    and-int p2, p2, v21

    const/high16 v21, 0x100

    or-int p2, p2, v21

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->lastRelaunchedWindowMode:I

    move/from16 v21, v0

    move/from16 v0, v21

    and-int/lit16 v0, v0, -0x801

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/server/am/ActivityRecord;->lastRelaunchedWindowMode:I

    :cond_8d
    if-eqz p3, :cond_122

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v21, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, p2

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStack;->setWindowModeForAllActivitiesInTaskLocked(Lcom/android/server/am/TaskRecord;ILjava/util/ArrayList;)V

    :goto_a2
    if-eqz v7, :cond_ab

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->updateWindowInfoLocked(Lcom/android/server/am/ActivityRecord;)V

    :cond_ab
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, p2

    move/from16 v3, v21

    move/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/am/ActivityStack;->notifyWindowStatusChangedLocked(Lcom/android/server/am/ActivityRecord;IIZ)V

    if-eqz p4, :cond_cf

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    if-eq v15, v12, :cond_cf

    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/am/ActivityStack;->mIsIdleNow:Z

    :cond_cf
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v8, 0x0

    :goto_df
    if-ge v8, v5, :cond_14e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ActivityRecord;

    iget v0, v6, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v21, v0

    const/high16 v23, 0x80

    and-int v21, v21, v23

    if-eqz v21, :cond_118

    iget v0, v6, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v21, v0

    const/high16 v23, 0x10

    and-int v21, v21, v23

    if-nez v21, :cond_118

    iget v0, v6, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v21, v0

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0x4000

    move/from16 v21, v0

    if-nez v21, :cond_118

    iget-object v0, v6, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_118
    add-int/lit8 v8, v8, 0x1

    goto :goto_df

    :cond_11b
    if-nez v13, :cond_6d

    if-eqz v16, :cond_6d

    const/4 v7, 0x0

    goto/16 :goto_6d

    :cond_122
    move/from16 v0, p2

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v23, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v24, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->setAppWindowMode(Landroid/view/IApplicationToken;I)V

    goto/16 :goto_a2

    :catchall_14b
    move-exception v21

    monitor-exit v22
    :try_end_14d
    .catchall {:try_start_7 .. :try_end_14d} :catchall_14b

    throw v21

    :cond_14e
    :try_start_14e
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v21

    if-lez v21, :cond_165

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Lcom/android/server/wm/WindowManagerService;->moveAppTokensToTop(Ljava/util/List;)V

    :cond_165
    const/high16 v21, 0x100

    move/from16 v0, v21

    if-ne v12, v0, :cond_186

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Lcom/android/server/am/MultiWindowManagerService;->isSupportMultiWindow(Landroid/content/pm/ActivityInfo;)Z

    move-result v21

    if-nez v21, :cond_186

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/server/am/ActivityStack;->clearWindowModeLocked(Lcom/android/server/am/TaskRecord;)V

    :cond_186
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    move-object/from16 v21, v0

    if-eqz v21, :cond_1bf

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v20

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move/from16 v21, v0

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0x800

    move/from16 v21, v0

    or-int v20, v20, v21

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setWindowMode(I)V

    :cond_1bf
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v22
    :try_end_1c3
    .catchall {:try_start_14e .. :try_end_1c3} :catchall_14b

    goto/16 :goto_12
.end method

.method final showAskCompatModeDialogLocked(Lcom/android/server/am/ActivityRecord;)V
    .registers 4

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x1e

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-boolean v1, v1, Lcom/android/server/am/TaskRecord;->askedCompatMode:Z

    if-eqz v1, :cond_f

    const/4 p1, 0x0

    :cond_f
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method final startActivities(Landroid/app/IApplicationThread;ILjava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;I)I
    .registers 33

    if-nez p4, :cond_a

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v3, "intents is null"

    invoke-direct {v1, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a
    if-nez p5, :cond_14

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v3, "resolvedTypes is null"

    invoke-direct {v1, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_14
    move-object/from16 v0, p4

    array-length v1, v0

    move-object/from16 v0, p5

    array-length v3, v0

    if-eq v1, v3, :cond_24

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "intents are length different than resolvedTypes"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_24
    const/4 v1, 0x1

    new-array v0, v1, [Lcom/android/server/am/ActivityRecord;

    move-object/from16 v17, v0

    if-ltz p2, :cond_49

    const/4 v11, -0x1

    :goto_2c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v20

    :try_start_30
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v23, v0

    monitor-enter v23
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_6c

    const/16 v18, 0x0

    :goto_39
    :try_start_39
    move-object/from16 v0, p4

    array-length v1, v0

    move/from16 v0, v18

    if-ge v0, v1, :cond_ee

    aget-object v19, p4, v18
    :try_end_42
    .catchall {:try_start_39 .. :try_end_42} :catchall_69

    if-nez v19, :cond_59

    move-object/from16 v2, v19

    :goto_46
    add-int/lit8 v18, v18, 0x1

    goto :goto_39

    :cond_49
    if-nez p1, :cond_54

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v11

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    goto :goto_2c

    :cond_54
    const/16 p2, -0x1

    move/from16 v11, p2

    goto :goto_2c

    :cond_59
    if-eqz v19, :cond_71

    :try_start_5b
    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->hasFileDescriptors()Z

    move-result v1

    if-eqz v1, :cond_71

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "File descriptors passed in Intent"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_69
    move-exception v1

    monitor-exit v23
    :try_end_6b
    .catchall {:try_start_5b .. :try_end_6b} :catchall_69

    :try_start_6b
    throw v1
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_6c

    :catchall_6c
    move-exception v1

    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    :cond_71
    :try_start_71
    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_b0

    const/16 v16, 0x1

    :goto_79
    new-instance v2, Landroid/content/Intent;

    move-object/from16 v0, v19

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    aget-object v3, p5, v18

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move/from16 v7, p8

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/ActivityStack;->resolveActivity(Landroid/content/Intent;Ljava/lang/String;ILjava/lang/String;Landroid/os/ParcelFileDescriptor;I)Landroid/content/pm/ActivityInfo;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move/from16 v0, p8

    invoke-virtual {v1, v7, v0}, Lcom/android/server/am/ActivityManagerService;->getActivityInfoForUser(Landroid/content/pm/ActivityInfo;I)Landroid/content/pm/ActivityInfo;

    move-result-object v7

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v1, :cond_b3

    if-eqz v7, :cond_b3

    iget-object v1, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x1000

    and-int/2addr v1, v3

    if-eqz v1, :cond_b3

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "FLAG_CANT_SAVE_STATE not supported here"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b0
    const/16 v16, 0x0

    goto :goto_79

    :cond_b3
    if-eqz p7, :cond_db

    move-object/from16 v0, p4

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    move/from16 v0, v18

    if-ne v0, v1, :cond_db

    move-object/from16 v15, p7

    :goto_c0
    aget-object v6, p5, v18

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v14, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object v5, v2

    move-object/from16 v8, p6

    move/from16 v12, p2

    move-object/from16 v13, p3

    invoke-virtual/range {v3 .. v17}, Lcom/android/server/am/ActivityStack;->startActivityLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/os/IBinder;Ljava/lang/String;IIILjava/lang/String;ILandroid/os/Bundle;Z[Lcom/android/server/am/ActivityRecord;)I

    move-result v22

    if-gez v22, :cond_dd

    monitor-exit v23
    :try_end_d7
    .catchall {:try_start_71 .. :try_end_d7} :catchall_69

    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_da
    return v22

    :cond_db
    const/4 v15, 0x0

    goto :goto_c0

    :cond_dd
    const/4 v1, 0x0

    :try_start_de
    aget-object v1, v17, v1

    if-eqz v1, :cond_eb

    const/4 v1, 0x0

    aget-object v1, v17, v1

    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 p6, v0

    :goto_e9
    goto/16 :goto_46

    :cond_eb
    const/16 p6, 0x0

    goto :goto_e9

    :cond_ee
    monitor-exit v23
    :try_end_ef
    .catchall {:try_start_de .. :try_end_ef} :catchall_69

    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/16 v22, 0x0

    goto :goto_da
.end method

.method final startActivityLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/os/IBinder;Ljava/lang/String;IIILjava/lang/String;ILandroid/os/Bundle;Z[Lcom/android/server/am/ActivityRecord;)I
    .registers 87

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getFlags()I

    move-result v3

    const v4, 0x10104000

    and-int/2addr v3, v4

    if-eqz v3, :cond_21

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getWindowMode()I

    move-result v3

    invoke-static {v3}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v3

    const/high16 v4, 0x200

    if-ne v3, v4, :cond_21

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getFlags()I

    move-result v3

    and-int/lit16 v3, v3, -0x4001

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :cond_21
    const/16 v34, 0x0

    const-string v33, ""

    :try_start_25
    new-instance v50, Landroid/content/Intent;

    move-object/from16 v0, v50

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual/range {v50 .. v50}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v34

    const-string v3, ":android:show_fragment"

    move-object/from16 v0, v50

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    if-nez v33, :cond_42

    if-eqz v34, :cond_42

    invoke-virtual/range {v34 .. v34}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_41} :catch_199

    move-result-object v33

    :cond_42
    :goto_42
    const/16 v39, 0x0

    const/16 v18, 0x0

    if-eqz p1, :cond_62

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLocked(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v18

    if-eqz v18, :cond_19e

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 p8, v0

    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 p9, v0

    :cond_62
    :goto_62
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v53

    new-instance v3, Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-object/from16 v0, v53

    invoke-direct {v3, v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>(Landroid/os/StrictMode$ThreadPolicy;)V

    invoke-virtual {v3}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitDiskReads()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v3

    invoke-static {v3}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    if-eqz v34, :cond_218

    invoke-virtual/range {v34 .. v34}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_218

    invoke-virtual/range {v34 .. v34}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.android.settings"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_218

    :try_start_8c
    const-string v3, "restriction_policy"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/enterprise/IRestrictionPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IRestrictionPolicy;

    move-result-object v63

    if-eqz v63, :cond_d7

    const/4 v3, 0x0

    move-object/from16 v0, v63

    invoke-interface {v0, v3}, Landroid/app/enterprise/IRestrictionPolicy;->isSettingsChangesAllowed(Z)Z

    move-result v3

    if-nez v3, :cond_d7

    const/16 v43, 0x0

    const-string v3, ":android:show_fragment"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    if-nez v31, :cond_b1

    invoke-virtual/range {v34 .. v34}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v31

    :cond_b1
    sget-object v32, Landroid/app/enterprise/RestrictionPolicy;->settingsExceptions:[Ljava/lang/String;

    move-object/from16 v0, v32

    array-length v0, v0

    move/from16 v48, v0

    const/16 v41, 0x0

    :goto_ba
    move/from16 v0, v41

    move/from16 v1, v48

    if-ge v0, v1, :cond_ce

    aget-object v40, v32, v41

    move-object/from16 v0, v31

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d6

    const/16 v43, 0x1

    :cond_ce
    if-eqz v43, :cond_1da

    const/high16 v3, 0x80

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
    :try_end_d7
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_d7} :catch_212

    :cond_d7
    :goto_d7
    if-eqz v34, :cond_338

    invoke-virtual/range {v34 .. v34}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_338

    invoke-virtual/range {v34 .. v34}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_338

    :try_start_e5
    const-string v3, "password_policy"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/enterprise/IPasswordPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IPasswordPolicy;

    move-result-object v60

    const-string v3, "security_policy"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/enterprise/ISecurityPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/ISecurityPolicy;

    move-result-object v64

    if-eqz v60, :cond_104

    const/4 v3, 0x0

    move-object/from16 v0, v60

    invoke-interface {v0, v3}, Landroid/app/enterprise/IPasswordPolicy;->isChangeRequestedEx(I)I

    move-result v3

    if-gtz v3, :cond_10c

    :cond_104
    if-eqz v64, :cond_2ff

    invoke-interface/range {v64 .. v64}, Landroid/app/enterprise/ISecurityPolicy;->isDodBannerVisible()Z

    move-result v3

    if-eqz v3, :cond_2ff

    :cond_10c
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface {v3, v4, v6, v7}, Landroid/app/IActivityManager;->getTasks(IILandroid/app/IThumbnailReceiver;)Ljava/util/List;

    move-result-object v49

    if-eqz v49, :cond_2ff

    invoke-interface/range {v49 .. v49}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2ff

    const/4 v3, 0x0

    move-object/from16 v0, v49

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v67

    const/16 v43, 0x0

    const/16 v44, 0x0

    invoke-virtual/range {v34 .. v34}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v31

    sget-object v32, Landroid/app/enterprise/PasswordPolicy;->enforcePwdExceptions:[Ljava/lang/String;

    move-object/from16 v0, v32

    array-length v0, v0

    move/from16 v48, v0

    const/16 v41, 0x0

    :goto_13f
    move/from16 v0, v41

    move/from16 v1, v48

    if-ge v0, v1, :cond_163

    aget-object v40, v32, v41

    if-eqz v67, :cond_155

    move-object/from16 v0, v67

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_155

    const/16 v44, 0x1

    :cond_155
    if-eqz v31, :cond_2f7

    move-object/from16 v0, v31

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f7

    const/16 v43, 0x1

    :cond_163
    if-eqz v44, :cond_2ff

    if-nez v43, :cond_2ff

    invoke-static/range {v53 .. v53}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    const/4 v3, 0x5

    const/4 v4, 0x5

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Start activity "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v33

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " failed. Blocked due to password change enforcement."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static/range {v3 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V
    :try_end_197
    .catch Ljava/lang/Exception; {:try_start_e5 .. :try_end_197} :catch_2fb

    const/4 v3, 0x0

    :goto_198
    return v3

    :catch_199
    move-exception v38

    const-string v33, "unknown"

    goto/16 :goto_42

    :cond_19e
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to find app for caller "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " (pid="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p8

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ") when starting: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v39, -0x4

    goto/16 :goto_62

    :cond_1d6
    add-int/lit8 v41, v41, 0x1

    goto/16 :goto_ba

    :cond_1da
    const/4 v3, 0x1

    :try_start_1db
    move-object/from16 v0, v63

    invoke-interface {v0, v3}, Landroid/app/enterprise/IRestrictionPolicy;->isSettingsChangesAllowed(Z)Z

    invoke-static/range {v53 .. v53}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    const/4 v3, 0x5

    const/4 v4, 0x5

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Start activity "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v33

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " failed. Blocked due to settings changes not allowed."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static/range {v3 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V
    :try_end_210
    .catch Ljava/lang/Exception; {:try_start_1db .. :try_end_210} :catch_212

    const/4 v3, 0x0

    goto :goto_198

    :catch_212
    move-exception v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_d7

    :cond_218
    if-eqz v34, :cond_27e

    invoke-virtual/range {v34 .. v34}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_27e

    sget-object v3, Landroid/app/enterprise/kioskmode/KioskMode;->TASK_MANAGER_PKGNAME:Ljava/lang/String;

    invoke-virtual/range {v34 .. v34}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27e

    :try_start_22c
    const-string v3, "kioskmode"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/enterprise/kioskmode/IKioskMode$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/kioskmode/IKioskMode;

    move-result-object v45

    if-eqz v45, :cond_d7

    const/4 v3, 0x1

    move-object/from16 v0, v45

    invoke-interface {v0, v3}, Landroid/app/enterprise/kioskmode/IKioskMode;->isTaskManagerAllowed(Z)Z

    move-result v3

    if-nez v3, :cond_d7

    invoke-static/range {v53 .. v53}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    const/4 v3, 0x5

    const/4 v4, 0x5

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Start activity "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v33

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " failed. Task manager is not allowed."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static/range {v3 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V
    :try_end_271
    .catch Ljava/lang/Exception; {:try_start_22c .. :try_end_271} :catch_274

    const/4 v3, 0x0

    goto/16 :goto_198

    :catch_274
    move-exception v38

    const-string v3, "ActivityManager"

    const-string v4, "Is edm running?"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d7

    :cond_27e
    if-eqz v34, :cond_d7

    invoke-virtual/range {v34 .. v34}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_d7

    invoke-virtual/range {v34 .. v34}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.vlingo.midas"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d7

    :try_start_292
    const-string v3, "restriction_policy"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/enterprise/IRestrictionPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IRestrictionPolicy;

    move-result-object v63

    if-eqz v63, :cond_d7

    const/4 v3, 0x1

    move-object/from16 v0, v63

    invoke-interface {v0, v3}, Landroid/app/enterprise/IRestrictionPolicy;->isSVoiceAllowed(Z)Z

    move-result v3

    if-eqz v3, :cond_2b0

    const/4 v3, 0x1

    move-object/from16 v0, v63

    invoke-interface {v0, v3}, Landroid/app/enterprise/IRestrictionPolicy;->isMicrophoneEnabled(Z)Z

    move-result v3

    if-nez v3, :cond_d7

    :cond_2b0
    const-string v3, ":android:show_fragment"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    if-nez v31, :cond_2be

    invoke-virtual/range {v34 .. v34}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v31

    :cond_2be
    invoke-static/range {v53 .. v53}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    const/4 v3, 0x5

    const/4 v4, 0x5

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Start activity "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v31

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " failed. Blocked due to S Voice not allowed."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static/range {v3 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V
    :try_end_2ee
    .catch Ljava/lang/Exception; {:try_start_292 .. :try_end_2ee} :catch_2f1

    const/4 v3, 0x0

    goto/16 :goto_198

    :catch_2f1
    move-exception v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_d7

    :cond_2f7
    add-int/lit8 v41, v41, 0x1

    goto/16 :goto_13f

    :catch_2fb
    move-exception v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2ff
    :try_start_2ff
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getApplicationPolicy()Landroid/sec/enterprise/ApplicationPolicy;

    move-result-object v3

    invoke-virtual/range {v34 .. v34}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v6}, Landroid/sec/enterprise/ApplicationPolicy;->getApplicationStateEnabled(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_338

    const-string v3, "ActivityStack"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to open "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v34 .. v34}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {v53 .. v53}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V
    :try_end_331
    .catch Ljava/lang/Exception; {:try_start_2ff .. :try_end_331} :catch_334

    const/4 v3, 0x0

    goto/16 :goto_198

    :catch_334
    move-exception v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Exception;->printStackTrace()V

    :cond_338
    invoke-static/range {v53 .. v53}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    if-nez v39, :cond_398

    if-eqz p4, :cond_41e

    move-object/from16 v0, p4

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v68

    :goto_349
    const-string v4, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "START u"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v68

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " {"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "} from pid "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v18, :cond_422

    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    :goto_37c
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "qcom"

    sget-object v4, Lcom/android/server/am/ActivityStack;->hardwareInfo:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_398

    sget-object v3, Lcom/android/server/am/ActivityStack;->mActivityTrigger:Lcom/android/internal/app/ActivityTrigger;

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/android/internal/app/ActivityTrigger;->activityStartTrigger(Landroid/content/Intent;)V

    :cond_398
    const/16 v59, 0x0

    if-eqz v34, :cond_3a0

    :try_start_39c
    invoke-virtual/range {v34 .. v34}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v59

    :cond_3a0
    const-string v3, "android.intent.action.MAIN"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_426

    const-string v3, "android.intent.category.HOME"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_426

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_426

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    if-nez v3, :cond_426

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_426

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getFlags()I

    move-result v3

    const/high16 v4, 0x1000

    and-int/2addr v3, v4

    if-eqz v3, :cond_426

    const/4 v3, 0x1

    :goto_3d7
    if-nez v3, :cond_428

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v0, v59

    invoke-virtual {v3, v4, v6, v7, v0}, Lcom/android/server/am/ActivityManagerService;->setActivitySwitchBooster(ZZZLjava/lang/String;)V
    :try_end_3e5
    .catch Ljava/lang/Exception; {:try_start_39c .. :try_end_3e5} :catch_435

    :goto_3e5
    const/16 v65, 0x0

    const/4 v5, 0x0

    if-eqz p5, :cond_40a

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->indexOfTokenLocked(Landroid/os/IBinder;)I

    move-result v42

    if-ltz v42, :cond_40a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move/from16 v0, v42

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v65

    check-cast v65, Lcom/android/server/am/ActivityRecord;

    if-ltz p7, :cond_40a

    move-object/from16 v0, v65

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v3, :cond_40a

    move-object/from16 v5, v65

    :cond_40a
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getFlags()I

    move-result v47

    const/high16 v3, 0x200

    and-int v3, v3, v47

    if-eqz v3, :cond_457

    if-eqz v65, :cond_457

    if-ltz p7, :cond_437

    invoke-static/range {p12 .. p12}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    const/4 v3, -0x3

    goto/16 :goto_198

    :cond_41e
    const/16 v68, 0x0

    goto/16 :goto_349

    :cond_422
    move/from16 v3, p8

    goto/16 :goto_37c

    :cond_426
    const/4 v3, 0x0

    goto :goto_3d7

    :cond_428
    :try_start_428
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object/from16 v0, v59

    invoke-virtual {v3, v4, v6, v7, v0}, Lcom/android/server/am/ActivityManagerService;->setActivitySwitchBooster(ZZZLjava/lang/String;)V
    :try_end_434
    .catch Ljava/lang/Exception; {:try_start_428 .. :try_end_434} :catch_435

    goto :goto_3e5

    :catch_435
    move-exception v3

    goto :goto_3e5

    :cond_437
    move-object/from16 v0, v65

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, v65

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    move-object/from16 p6, v0

    move-object/from16 v0, v65

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->requestCode:I

    move/from16 p7, v0

    const/4 v3, 0x0

    move-object/from16 v0, v65

    iput-object v3, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-eqz v5, :cond_457

    move-object/from16 v0, v65

    move-object/from16 v1, p6

    move/from16 v2, p7

    invoke-virtual {v5, v0, v1, v2}, Lcom/android/server/am/ActivityRecord;->removeResultsLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;I)V

    :cond_457
    if-nez v39, :cond_461

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    if-nez v3, :cond_461

    const/16 v39, -0x1

    :cond_461
    if-nez v39, :cond_467

    if-nez p4, :cond_467

    const/16 v39, -0x2

    :cond_467
    if-eqz v39, :cond_4b0

    if-eqz v5, :cond_477

    const/4 v4, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p0

    move-object/from16 v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    :cond_477
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mDismissKeyguardOnNextActivity:Z

    invoke-static/range {p12 .. p12}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    const/4 v6, 0x5

    const/4 v7, 0x5

    const/4 v8, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Start activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static/range {v6 .. v11}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    move/from16 v3, v39

    goto/16 :goto_198

    :cond_4b0
    const/4 v14, 0x0

    const-string v3, "android.intent.action.MAIN"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5a5

    const-string v3, "android.intent.category.HOME"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5a5

    const/4 v3, 0x1

    :goto_4c8
    if-eqz v3, :cond_4cb

    const/4 v14, 0x1

    :cond_4cb
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v4, "android.permission.START_ANY_ACTIVITY"

    move/from16 v0, p8

    move/from16 v1, p9

    invoke-virtual {v3, v4, v0, v1}, Lcom/android/server/am/ActivityManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v66

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p4

    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    move-object/from16 v0, p4

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v11, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v0, p4

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p4

    iget-boolean v13, v0, Landroid/content/pm/ActivityInfo;->exported:Z

    move-object/from16 v7, p2

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-virtual/range {v6 .. v14}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Landroid/content/Intent;Ljava/lang/String;IIILjava/lang/String;ZZ)I

    move-result v35

    if-eqz v66, :cond_5f9

    if-eqz v35, :cond_5f9

    if-eqz v5, :cond_50d

    const/4 v4, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p0

    move-object/from16 v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    :cond_50d
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mDismissKeyguardOnNextActivity:Z

    move-object/from16 v0, p4

    iget-boolean v3, v0, Landroid/content/pm/ActivityInfo;->exported:Z

    if-nez v3, :cond_5a8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission Denial: starting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p8

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p9

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not exported from uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    :goto_569
    const-string v3, "ActivityManager"

    move-object/from16 v0, v51

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x5

    const/4 v7, 0x5

    const/4 v8, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Start activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static/range {v6 .. v11}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/SecurityException;

    move-object/from16 v0, v51

    invoke-direct {v3, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_5a5
    const/4 v3, 0x0

    goto/16 :goto_4c8

    :cond_5a8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission Denial: starting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p8

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p9

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " requires "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    goto/16 :goto_569

    :cond_5f9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v3, Lcom/android/server/am/ActivityManagerService;->mIntentFirewall:Lcom/android/server/firewall/IntentFirewall;

    if-nez v18, :cond_685

    const/4 v8, 0x0

    :goto_602
    move-object/from16 v7, p2

    move/from16 v9, p9

    move/from16 v10, p8

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    invoke-virtual/range {v6 .. v12}, Lcom/android/server/firewall/IntentFirewall;->checkStartActivity(Landroid/content/Intent;Landroid/content/pm/ApplicationInfo;IILjava/lang/String;Landroid/content/pm/ActivityInfo;)Z

    move-result v3

    if-nez v3, :cond_68b

    const/16 v30, 0x1

    :goto_614
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v3, :cond_63d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    if-eqz v3, :cond_63d

    :try_start_622
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->cloneFilter()Landroid/content/Intent;

    move-result-object v69

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    move-object/from16 v0, p4

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v69

    invoke-interface {v3, v0, v4}, Landroid/app/IActivityController;->activityStarting(Landroid/content/Intent;Ljava/lang/String;)Z
    :try_end_637
    .catch Landroid/os/RemoteException; {:try_start_622 .. :try_end_637} :catch_690

    move-result v3

    if-nez v3, :cond_68e

    const/4 v3, 0x1

    :goto_63b
    or-int v30, v30, v3

    :cond_63d
    :goto_63d
    if-eqz v30, :cond_699

    if-eqz v5, :cond_64d

    const/4 v4, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p0

    move-object/from16 v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    :cond_64d
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mDismissKeyguardOnNextActivity:Z

    invoke-static/range {p12 .. p12}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    const/4 v6, 0x5

    const/4 v7, 0x5

    const/4 v8, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Start activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " succeeded"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static/range {v6 .. v11}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    goto/16 :goto_198

    :cond_685
    move-object/from16 v0, v18

    iget-object v8, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    goto/16 :goto_602

    :cond_68b
    const/16 v30, 0x0

    goto :goto_614

    :cond_68e
    const/4 v3, 0x0

    goto :goto_63b

    :catch_690
    move-exception v38

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    goto :goto_63d

    :cond_699
    const/16 v56, 0x0

    const/16 v36, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v36

    if-eqz v36, :cond_84f

    move-object/from16 v0, v36

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->isHomeActivity:Z

    if-eqz v3, :cond_84f

    sget-boolean v3, Lcom/android/server/am/ActivityStack;->DEBUG_MULTIWINDOW:Z

    if-eqz v3, :cond_6b7

    const-string v3, "ActivityManager"

    const-string v4, "Setting parentActivityRecord from HomeActivity"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6b7
    move-object/from16 v56, v36

    :cond_6b9
    :goto_6b9
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getWindowMode()I

    move-result v29

    if-nez v29, :cond_705

    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStack;->findTaskLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Z)Lcom/android/server/am/ActivityRecord;

    move-result-object v15

    if-eqz v56, :cond_88d

    move-object/from16 v0, v56

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v3, :cond_88d

    move-object/from16 v0, v56

    iget v3, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const/high16 v4, 0x40

    and-int/2addr v3, v4

    if-eqz v3, :cond_705

    move-object/from16 v0, v56

    iget v3, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v3}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v29

    move-object/from16 v0, v56

    iget v3, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit16 v3, v3, 0x800

    or-int v29, v29, v3

    if-eqz v15, :cond_705

    iget-boolean v3, v15, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v3, :cond_705

    iget v3, v15, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v3}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->zone(I)I

    move-result v3

    move-object/from16 v0, v56

    iget v4, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v4}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->zone(I)I

    move-result v4

    if-eq v3, v4, :cond_705

    const/high16 v3, 0x2

    or-int v29, v29, v3

    :cond_705
    :goto_705
    invoke-static/range {v29 .. v29}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v3

    if-nez v3, :cond_70d

    const/high16 v29, 0x100

    :cond_70d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mCompatModePackages:Lcom/android/server/am/CompatModePackages;

    move-object/from16 v0, p4

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/server/am/CompatModePackages;->getPackageScreenCompatModeLocked(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_720

    const/high16 v29, 0x100

    :cond_720
    const/high16 v3, 0x200

    and-int v3, v3, v29

    if-eqz v3, :cond_765

    if-eqz v56, :cond_765

    move-object/from16 v0, v56

    iget v3, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit16 v3, v3, 0x800

    if-eqz v3, :cond_765

    move/from16 v0, v29

    or-int/lit16 v0, v0, 0x800

    move/from16 v29, v0

    invoke-static {}, Lcom/android/server/am/MultiWindowManagerService;->getSelf()Lcom/android/server/am/MultiWindowManagerService;

    move-result-object v3

    move-object/from16 v0, v56

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v4, v4, Lcom/android/server/am/TaskRecord;->taskId:I

    move-object/from16 v0, v56

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v6, v6, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v3, v4, v6}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v57

    if-eqz v57, :cond_765

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getWindowPosition()Landroid/graphics/Rect;

    move-result-object v3

    if-nez v3, :cond_765

    const-string v3, "android.intent.extra.WINDOW_LAST_SIZE"

    move-object/from16 v0, v57

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v58

    check-cast v58, Landroid/graphics/Rect;

    if-eqz v58, :cond_765

    move-object/from16 v0, p2

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setWindowPosition(Landroid/graphics/Rect;)V

    :cond_765
    new-instance v15, Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v3, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v24, v0

    move-object/from16 v17, p0

    move/from16 v19, p9

    move-object/from16 v20, p10

    move-object/from16 v21, p2

    move-object/from16 v22, p3

    move-object/from16 v23, p4

    move-object/from16 v25, v5

    move-object/from16 v26, p6

    move/from16 v27, p7

    move/from16 v28, p13

    invoke-direct/range {v15 .. v29}, Lcom/android/server/am/ActivityRecord;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ProcessRecord;ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;IZI)V

    if-eqz p14, :cond_791

    const/4 v3, 0x0

    aput-object v15, p14, v3

    :cond_791
    if-nez v56, :cond_795

    move-object/from16 v56, v36

    :cond_795
    if-eqz v56, :cond_807

    const-string v3, "android"

    iget-object v4, v15, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7b5

    iget v3, v15, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const v4, -0x400001

    and-int/2addr v3, v4

    iput v3, v15, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    iget v3, v15, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move-object/from16 v0, v56

    iget v4, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const/high16 v6, 0x40

    and-int/2addr v4, v6

    or-int/2addr v3, v4

    iput v3, v15, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    :cond_7b5
    const-string v3, "android"

    move-object/from16 v0, v56

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7c9

    iget v3, v15, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const v4, -0x20001

    and-int/2addr v3, v4

    iput v3, v15, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    :cond_7c9
    iget v3, v15, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v3}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v3

    const/high16 v4, 0x200

    if-ne v3, v4, :cond_807

    invoke-static {}, Lcom/android/server/am/MultiWindowManagerService;->getSelf()Lcom/android/server/am/MultiWindowManagerService;

    move-result-object v52

    iget v3, v15, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v3}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->zonePolicy(I)I

    move-result v71

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isSupportFreeStyleLaunch(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_7f1

    if-nez v71, :cond_7f1

    iget v3, v15, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit8 v3, v3, 0xf

    if-nez v3, :cond_7f1

    const/16 v71, 0x1

    :cond_7f1
    const/4 v3, 0x1

    move/from16 v0, v71

    if-ne v0, v3, :cond_8f8

    iget v3, v15, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit8 v3, v3, 0xf

    if-nez v3, :cond_8b9

    iget v3, v15, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move-object/from16 v0, v56

    iget v4, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit8 v4, v4, 0xf

    or-int/2addr v3, v4

    iput v3, v15, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    :cond_807
    :goto_807
    if-eqz v65, :cond_81c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isSupportMultiWindowLaunch(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_81c

    invoke-static {}, Lcom/android/server/am/MultiWindowManagerService;->getSelf()Lcom/android/server/am/MultiWindowManagerService;

    move-result-object v3

    move-object/from16 v0, v65

    invoke-virtual {v3, v0, v15}, Lcom/android/server/am/MultiWindowManagerService;->applyMultiWindowLaunchStyle(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)V

    :cond_81c
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v3, :cond_99f

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->topResumedActivitiesLocked()Ljava/util/List;

    move-result-object v61

    invoke-interface/range {v61 .. v61}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_919

    const/16 v37, 0x1

    :goto_82e
    if-nez v37, :cond_91d

    invoke-interface/range {v61 .. v61}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v41

    :cond_834
    :goto_834
    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_91d

    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v62

    check-cast v62, Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, v62

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v0, p9

    if-eq v3, v0, :cond_834

    const/16 v37, 0x1

    goto :goto_834

    :cond_84f
    if-eqz v65, :cond_860

    sget-boolean v3, Lcom/android/server/am/ActivityStack;->DEBUG_MULTIWINDOW:Z

    if-eqz v3, :cond_85c

    const-string v3, "ActivityManager"

    const-string v4, "Setting parentActivityRecord from sourceRecord"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_85c
    move-object/from16 v56, v65

    goto/16 :goto_6b9

    :cond_860
    if-eqz v18, :cond_6b9

    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_6b9

    sget-boolean v3, Lcom/android/server/am/ActivityStack;->DEBUG_MULTIWINDOW:Z

    if-eqz v3, :cond_877

    const-string v3, "ActivityManager"

    const-string v4, "Setting parentActivityRecord from callerApp"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_877
    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v56

    check-cast v56, Lcom/android/server/am/ActivityRecord;

    goto/16 :goto_6b9

    :cond_88d
    if-eqz v15, :cond_705

    iget-boolean v3, v15, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v3, :cond_705

    iget v3, v15, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const/high16 v4, 0x20

    and-int/2addr v3, v4

    if-nez v3, :cond_705

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getFlags()I

    move-result v3

    and-int/lit16 v3, v3, -0x4001

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget v3, v15, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v3}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v29

    iget v3, v15, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit16 v3, v3, 0x800

    or-int v29, v29, v3

    iget v3, v15, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit8 v3, v3, 0xf

    or-int v29, v29, v3

    goto/16 :goto_705

    :cond_8b9
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getWindowPosition()Landroid/graphics/Rect;

    move-result-object v54

    if-eqz v54, :cond_8c5

    invoke-virtual/range {v54 .. v54}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_807

    :cond_8c5
    move-object/from16 v0, v56

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v3, v3, Lcom/android/server/am/TaskRecord;->taskId:I

    move-object/from16 v0, v56

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v0, v52

    invoke-virtual {v0, v3, v4}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v70

    const-string v3, "android.intent.extra.WINDOW_LAST_SIZE"

    move-object/from16 v0, v70

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v46

    check-cast v46, Landroid/graphics/Rect;

    if-nez v46, :cond_8ed

    const-string v3, "android.intent.extra.WINDOW_DEFAULT_SIZE"

    move-object/from16 v0, v70

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v46

    check-cast v46, Landroid/graphics/Rect;

    :cond_8ed
    const-string v3, "android.intent.extra.WINDOW_POSITION"

    move-object/from16 v0, p2

    move-object/from16 v1, v46

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_807

    :cond_8f8
    const/4 v3, 0x2

    move/from16 v0, v71

    if-ne v0, v3, :cond_807

    iget v3, v15, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit8 v3, v3, 0xf

    if-nez v3, :cond_807

    iget v3, v15, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6}, Lcom/android/server/am/ActivityStack;->getFrontResumedActivities(ZZ)Ljava/util/ArrayList;

    move-result-object v4

    const/4 v6, 0x0

    move-object/from16 v0, v52

    invoke-virtual {v0, v4, v6}, Lcom/android/server/am/MultiWindowManagerService;->getNextSplitZone(Ljava/util/ArrayList;Lcom/android/server/am/ActivityRecord;)I

    move-result v4

    or-int/2addr v3, v4

    iput v3, v15, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    goto/16 :goto_807

    :cond_919
    const/16 v37, 0x0

    goto/16 :goto_82e

    :cond_91d
    if-eqz v37, :cond_987

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v4, "Activity start"

    move/from16 v0, p8

    move/from16 v1, p9

    invoke-virtual {v3, v0, v1, v4}, Lcom/android/server/am/ActivityManagerService;->checkAppSwitchAllowedLocked(IILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_987

    new-instance v55, Lcom/android/server/am/ActivityManagerService$PendingActivityLaunch;

    invoke-direct/range {v55 .. v55}, Lcom/android/server/am/ActivityManagerService$PendingActivityLaunch;-><init>()V

    move-object/from16 v0, v55

    iput-object v15, v0, Lcom/android/server/am/ActivityManagerService$PendingActivityLaunch;->r:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, v65

    move-object/from16 v1, v55

    iput-object v0, v1, Lcom/android/server/am/ActivityManagerService$PendingActivityLaunch;->sourceRecord:Lcom/android/server/am/ActivityRecord;

    move/from16 v0, p11

    move-object/from16 v1, v55

    iput v0, v1, Lcom/android/server/am/ActivityManagerService$PendingActivityLaunch;->startFlags:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mPendingActivityLaunches:Ljava/util/ArrayList;

    move-object/from16 v0, v55

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mDismissKeyguardOnNextActivity:Z

    invoke-static/range {p12 .. p12}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    const/4 v6, 0x5

    const/4 v7, 0x5

    const/4 v8, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Start activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static/range {v6 .. v11}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x4

    goto/16 :goto_198

    :cond_987
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mDidAppSwitch:Z

    if-eqz v3, :cond_a22

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const-wide/16 v6, 0x0

    iput-wide v6, v3, Lcom/android/server/am/ActivityManagerService;->mAppSwitchesAllowedTime:J

    :goto_997
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityManagerService;->doPendingActivityLaunchesLocked(Z)V

    :cond_99f
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mDismissKeyguardOnNextActivity:Z

    if-eqz v3, :cond_9ae

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->dismissKeyguardOnNextActivity()V

    :cond_9ae
    const/4 v10, 0x1

    move-object/from16 v6, p0

    move-object v7, v15

    move-object/from16 v8, v65

    move/from16 v9, p11

    move-object/from16 v11, p12

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/am/ActivityStack;->startActivityUncheckedLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;IZLandroid/os/Bundle;)I

    move-result v39

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mDismissKeyguardOnNextActivity:Z

    if-eqz v3, :cond_9ef

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v3, :cond_a2b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mPausingActivities:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_9ef

    :goto_9d2
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v67

    if-eqz v67, :cond_9ef

    move-object/from16 v0, v67

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-eqz v3, :cond_9ef

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mDismissKeyguardOnNextActivity:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->dismissKeyguard()V

    :cond_9ef
    if-ltz v39, :cond_a32

    const/4 v6, 0x5

    const/4 v7, 0x5

    const/4 v8, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Start activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " succeeded"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static/range {v6 .. v11}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    :goto_a1e
    move/from16 v3, v39

    goto/16 :goto_198

    :cond_a22
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/server/am/ActivityManagerService;->mDidAppSwitch:Z

    goto/16 :goto_997

    :cond_a2b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-nez v3, :cond_9ef

    goto :goto_9d2

    :cond_a32
    const/4 v6, 0x5

    const/4 v7, 0x5

    const/4 v8, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Start activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static/range {v6 .. v11}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    goto :goto_a1e
.end method

.method final startActivityMayWait(Landroid/app/IApplicationThread;ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILjava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/app/IActivityManager$WaitResult;Landroid/content/res/Configuration;Landroid/os/Bundle;I)I
    .registers 52

    if-eqz p4, :cond_10

    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->hasFileDescriptors()Z

    move-result v2

    if-eqz v2, :cond_10

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v4, "File descriptors passed in Intent"

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_10
    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_1f1

    const/16 v21, 0x1

    :goto_18
    new-instance v3, Landroid/content/Intent;

    move-object/from16 v0, p4

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object/from16 v2, p0

    move-object/from16 v4, p5

    move/from16 v5, p9

    move-object/from16 v6, p10

    move-object/from16 v7, p11

    move/from16 v8, p15

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/ActivityStack;->resolveActivity(Landroid/content/Intent;Ljava/lang/String;ILjava/lang/String;Landroid/os/ParcelFileDescriptor;I)Landroid/content/pm/ActivityInfo;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v35, v0

    monitor-enter v35

    if-ltz p2, :cond_1f5

    const/16 v16, -0x1

    :goto_3a
    if-eqz p13, :cond_207

    :try_start_3c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v0, p13

    invoke-virtual {v2, v0}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v2

    if-eqz v2, :cond_207

    const/4 v2, 0x1

    :goto_4b
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/am/ActivityStack;->mConfigWillChange:Z

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v28

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v2, :cond_2c6

    if-eqz v23, :cond_2c6

    move-object/from16 v0, v23

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v4, 0x1000

    and-int/2addr v2, v4

    if-eqz v2, :cond_2c6

    move-object/from16 v0, v23

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    move-object/from16 v0, v23

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_2c6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v0, v23

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v2, v4, :cond_a2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v0, v23

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c6

    :cond_a2
    move/from16 v32, v16

    move/from16 v7, p2

    if-eqz p1, :cond_c0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLocked(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v24

    if-eqz v24, :cond_20a

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v32, v0

    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v7, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    :cond_c0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x2

    const-string v6, "android"

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v2, 0x1

    new-array v12, v2, [Landroid/content/Intent;

    const/4 v2, 0x0

    aput-object v3, v12, v2

    const/4 v2, 0x1

    new-array v13, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p5, v13, v2

    const/high16 v14, 0x5000

    const/4 v15, 0x0

    move/from16 v8, p15

    invoke-virtual/range {v4 .. v15}, Lcom/android/server/am/ActivityManagerService;->getIntentSenderLocked(ILjava/lang/String;IILandroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;)Landroid/content/IIntentSender;

    move-result-object v34

    new-instance v27, Landroid/content/Intent;

    invoke-direct/range {v27 .. v27}, Landroid/content/Intent;-><init>()V

    if-ltz p8, :cond_ee

    const-string v2, "has_result"

    const/4 v4, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_ee
    const-string v2, "intent"

    new-instance v4, Landroid/content/IntentSender;

    move-object/from16 v0, v34

    invoke-direct {v4, v0}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    move-object/from16 v0, v27

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_131

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/server/am/ActivityRecord;

    const-string v2, "cur_app"

    move-object/from16 v0, v26

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v0, v27

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "cur_task"

    move-object/from16 v0, v26

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v4, v4, Lcom/android/server/am/TaskRecord;->taskId:I

    move-object/from16 v0, v27

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_131
    const-string v2, "new_app"

    move-object/from16 v0, v23

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v27

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v2

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v2, "android"

    const-class v4, Lcom/android/internal/app/HeavyWeightSwitcherActivity;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_152
    .catchall {:try_start_3c .. :try_end_152} :catchall_2b5

    move-object/from16 p4, v27

    const/16 p5, 0x0

    const/16 p1, 0x0

    :try_start_158
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I
    :try_end_15f
    .catchall {:try_start_158 .. :try_end_15f} :catchall_2bb

    move-result v16

    const/16 v21, 0x1

    :try_start_162
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    const/4 v4, 0x0

    const v5, 0x10400

    move-object/from16 v0, p4

    move/from16 v1, p15

    invoke-interface {v2, v0, v4, v5, v1}, Landroid/content/pm/IPackageManager;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v31

    if-eqz v31, :cond_249

    move-object/from16 v0, v31

    iget-object v12, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
    :try_end_178
    .catchall {:try_start_162 .. :try_end_178} :catchall_2bb
    .catch Landroid/os/RemoteException; {:try_start_162 .. :try_end_178} :catch_24c

    :goto_178
    :try_start_178
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move/from16 v0, p15

    invoke-virtual {v2, v12, v0}, Lcom/android/server/am/ActivityManagerService;->getActivityInfoForUser(Landroid/content/pm/ActivityInfo;I)Landroid/content/pm/ActivityInfo;
    :try_end_181
    .catchall {:try_start_178 .. :try_end_181} :catchall_28c
    .catch Landroid/os/RemoteException; {:try_start_178 .. :try_end_181} :catch_2c4

    move-result-object v12

    :goto_182
    const/16 v22, 0x0

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v13, p6

    move-object/from16 v14, p7

    move/from16 v15, p8

    move/from16 v17, p2

    move-object/from16 v18, p3

    move/from16 v19, p9

    move-object/from16 v20, p14

    :try_start_19a
    invoke-virtual/range {v8 .. v22}, Lcom/android/server/am/ActivityStack;->startActivityLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/os/IBinder;Ljava/lang/String;IIILjava/lang/String;ILandroid/os/Bundle;Z[Lcom/android/server/am/ActivityRecord;)I

    move-result v33

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/am/ActivityStack;->mConfigWillChange:Z

    if-eqz v2, :cond_1c6

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v2, :cond_1c6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v4, "android.permission.CHANGE_CONFIGURATION"

    const-string v5, "updateConfiguration()"

    invoke-virtual {v2, v4, v5}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/am/ActivityStack;->mConfigWillChange:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p13

    invoke-virtual {v2, v0, v4, v5, v6}, Lcom/android/server/am/ActivityManagerService;->updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/am/ActivityRecord;ZZ)Z

    :cond_1c6
    invoke-static/range {v28 .. v29}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz p12, :cond_1ef

    move/from16 v0, v33

    move-object/from16 v1, p12

    iput v0, v1, Landroid/app/IActivityManager$WaitResult;->result:I

    if-nez v33, :cond_252

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    move-object/from16 v0, p12

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1dc
    .catchall {:try_start_19a .. :try_end_1dc} :catchall_28c

    :cond_1dc
    :try_start_1dc
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1e3
    .catchall {:try_start_1dc .. :try_end_1e3} :catchall_28c
    .catch Ljava/lang/InterruptedException; {:try_start_1dc .. :try_end_1e3} :catch_2c1

    :goto_1e3
    :try_start_1e3
    move-object/from16 v0, p12

    iget-boolean v2, v0, Landroid/app/IActivityManager$WaitResult;->timeout:Z

    if-nez v2, :cond_1ef

    move-object/from16 v0, p12

    iget-object v2, v0, Landroid/app/IActivityManager$WaitResult;->who:Landroid/content/ComponentName;

    if-eqz v2, :cond_1dc

    :cond_1ef
    :goto_1ef
    monitor-exit v35
    :try_end_1f0
    .catchall {:try_start_1e3 .. :try_end_1f0} :catchall_28c

    :goto_1f0
    return v33

    :cond_1f1
    const/16 v21, 0x0

    goto/16 :goto_18

    :cond_1f5
    if-nez p1, :cond_201

    :try_start_1f7
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v16

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    goto/16 :goto_3a

    :cond_201
    const/16 p2, -0x1

    move/from16 v16, p2

    goto/16 :goto_3a

    :cond_207
    const/4 v2, 0x0

    goto/16 :goto_4b

    :cond_20a
    const-string v2, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to find app for caller "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") when starting: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p14 .. p14}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    const/16 v33, -0x4

    monitor-exit v35
    :try_end_244
    .catchall {:try_start_1f7 .. :try_end_244} :catchall_2b5

    move-object/from16 v12, v23

    move-object/from16 p4, v3

    goto :goto_1f0

    :cond_249
    const/4 v12, 0x0

    goto/16 :goto_178

    :catch_24c
    move-exception v25

    move-object/from16 v12, v23

    :goto_24f
    const/4 v12, 0x0

    goto/16 :goto_182

    :cond_252
    const/4 v2, 0x2

    move/from16 v0, v33

    if-ne v0, v2, :cond_1ef

    const/4 v2, 0x0

    :try_start_258
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v30

    move-object/from16 v0, v30

    iget-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-eqz v2, :cond_28f

    const/4 v2, 0x0

    move-object/from16 v0, p12

    iput-boolean v2, v0, Landroid/app/IActivityManager$WaitResult;->timeout:Z

    new-instance v2, Landroid/content/ComponentName;

    move-object/from16 v0, v30

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v30

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p12

    iput-object v2, v0, Landroid/app/IActivityManager$WaitResult;->who:Landroid/content/ComponentName;

    const-wide/16 v4, 0x0

    move-object/from16 v0, p12

    iput-wide v4, v0, Landroid/app/IActivityManager$WaitResult;->totalTime:J

    const-wide/16 v4, 0x0

    move-object/from16 v0, p12

    iput-wide v4, v0, Landroid/app/IActivityManager$WaitResult;->thisTime:J

    goto/16 :goto_1ef

    :catchall_28c
    move-exception v2

    :goto_28d
    monitor-exit v35
    :try_end_28e
    .catchall {:try_start_258 .. :try_end_28e} :catchall_28c

    throw v2

    :cond_28f
    :try_start_28f
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p12

    iput-wide v4, v0, Landroid/app/IActivityManager$WaitResult;->thisTime:J

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mWaitingActivityVisible:Ljava/util/ArrayList;

    move-object/from16 v0, p12

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2a0
    .catchall {:try_start_28f .. :try_end_2a0} :catchall_28c

    :cond_2a0
    :try_start_2a0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_2a7
    .catchall {:try_start_2a0 .. :try_end_2a7} :catchall_28c
    .catch Ljava/lang/InterruptedException; {:try_start_2a0 .. :try_end_2a7} :catch_2bf

    :goto_2a7
    :try_start_2a7
    move-object/from16 v0, p12

    iget-boolean v2, v0, Landroid/app/IActivityManager$WaitResult;->timeout:Z

    if-nez v2, :cond_1ef

    move-object/from16 v0, p12

    iget-object v2, v0, Landroid/app/IActivityManager$WaitResult;->who:Landroid/content/ComponentName;
    :try_end_2b1
    .catchall {:try_start_2a7 .. :try_end_2b1} :catchall_28c

    if-eqz v2, :cond_2a0

    goto/16 :goto_1ef

    :catchall_2b5
    move-exception v2

    move-object/from16 v12, v23

    move-object/from16 p4, v3

    goto :goto_28d

    :catchall_2bb
    move-exception v2

    move-object/from16 v12, v23

    goto :goto_28d

    :catch_2bf
    move-exception v2

    goto :goto_2a7

    :catch_2c1
    move-exception v2

    goto/16 :goto_1e3

    :catch_2c4
    move-exception v25

    goto :goto_24f

    :cond_2c6
    move-object/from16 v12, v23

    move-object/from16 p4, v3

    goto/16 :goto_182
.end method

.method final startActivityUncheckedLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;IZLandroid/os/Bundle;)I
    .registers 36

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v3, :cond_f

    invoke-static {}, Lcom/android/server/am/MultiWindowManagerService;->getSelf()Lcom/android/server/am/MultiWindowManagerService;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/android/server/am/MultiWindowManagerService;->applyMultiInstanceStyle(Lcom/android/server/am/ActivityRecord;)V

    :cond_f
    if-eqz p2, :cond_19

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v0, p1

    iput-object v3, v0, Lcom/android/server/am/ActivityRecord;->sourceActivity:Landroid/content/ComponentName;

    :cond_19
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    iget v15, v0, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    invoke-virtual/range {v20 .. v20}, Landroid/content/Intent;->getFlags()I

    move-result v21

    const/high16 v3, 0x4

    and-int v3, v3, v21

    if-nez v3, :cond_183

    const/4 v3, 0x1

    :goto_2e
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mUserLeaving:Z

    if-nez p4, :cond_39

    const/4 v3, 0x1

    move-object/from16 v0, p1

    iput-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->delayedResume:Z

    :cond_39
    const/high16 v3, 0x100

    and-int v3, v3, v21

    if-eqz v3, :cond_186

    move-object/from16 v23, p1

    :goto_41
    and-int/lit8 v3, p3, 0x1

    if-eqz v3, :cond_61

    move-object/from16 v16, p2

    if-nez v16, :cond_51

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->topRunningNonDelayedActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v16

    :cond_51
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_61

    and-int/lit8 p3, p3, -0x2

    :cond_61
    if-nez p2, :cond_18a

    const/high16 v3, 0x1000

    and-int v3, v3, v21

    if-nez v3, :cond_87

    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startActivity called from non-Activity context; forcing Intent.FLAG_ACTIVITY_NEW_TASK for: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->secW(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v3, 0x1000

    or-int v21, v21, v3

    :cond_87
    :goto_87
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-eqz v3, :cond_b3

    const/high16 v3, 0x1000

    and-int v3, v3, v21

    if-eqz v3, :cond_b3

    const-string v3, "ActivityManager"

    const-string v4, "Activity is launching as a new task, so cancelling activity result."

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, -0x1

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v7, v0, Lcom/android/server/am/ActivityRecord;->requestCode:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    const/4 v3, 0x0

    move-object/from16 v0, p1

    iput-object v3, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    :cond_b3
    const/4 v11, 0x0

    const/16 v22, 0x0

    const/16 v25, 0x0

    const/high16 v3, 0x1000

    and-int v3, v3, v21

    if-eqz v3, :cond_c4

    const/high16 v3, 0x800

    and-int v3, v3, v21

    if-eqz v3, :cond_d8

    :cond_c4
    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_d1

    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->bMultiInstance:Z

    if-eqz v3, :cond_d8

    :cond_d1
    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_34c

    :cond_d8
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-nez v3, :cond_34c

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1ab

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v3}, Lcom/android/server/am/ActivityStack;->findTaskLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Lcom/android/server/am/ActivityRecord;

    move-result-object v27

    :goto_f1
    if-eqz v27, :cond_34c

    move-object/from16 v0, v27

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v3, v3, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-nez v3, :cond_108

    move-object/from16 v0, v27

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, v20

    invoke-virtual {v3, v0, v4}, Lcom/android/server/am/TaskRecord;->setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    :cond_108
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->topRunningNonDelayedActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v17

    if-eqz v17, :cond_11c

    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, v27

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v3, v4, :cond_129

    :cond_11c
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStack;->needsMoveTaskToFrontLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;I)Z

    move-result v3

    if-eqz v3, :cond_163

    :cond_129
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    const/high16 v4, 0x40

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    if-eqz p2, :cond_13e

    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v3, v4, :cond_1b9

    :cond_13e
    const/4 v14, 0x1

    :goto_13f
    if-eqz v14, :cond_163

    const/16 v22, 0x1

    move-object/from16 v0, v27

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/am/ActivityStack;->getTaskWindowModeLocked(Lcom/android/server/am/TaskRecord;)I

    move-result v3

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1, v3}, Lcom/android/server/am/ActivityStack;->moveHomeToFrontFromLaunchLocked(II)V

    move-object/from16 v0, v27

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)V

    const/16 p5, 0x0

    :cond_163
    const/high16 v3, 0x20

    and-int v3, v3, v21

    if-eqz v3, :cond_173

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/ActivityStack;->resetTaskIfNeededLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v27

    :cond_173
    and-int/lit8 v3, p3, 0x1

    if-eqz v3, :cond_1bf

    if-eqz p4, :cond_1bb

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v3, v1}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z

    :goto_181
    const/4 v3, 0x1

    :goto_182
    return v3

    :cond_183
    const/4 v3, 0x0

    goto/16 :goto_2e

    :cond_186
    const/16 v23, 0x0

    goto/16 :goto_41

    :cond_18a
    move-object/from16 v0, p2

    iget v3, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_197

    const/high16 v3, 0x1000

    or-int v21, v21, v3

    goto/16 :goto_87

    :cond_197
    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1a5

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_87

    :cond_1a5
    const/high16 v3, 0x1000

    or-int v21, v21, v3

    goto/16 :goto_87

    :cond_1ab
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v3}, Lcom/android/server/am/ActivityStack;->findActivityLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Lcom/android/server/am/ActivityRecord;

    move-result-object v27

    goto/16 :goto_f1

    :cond_1b9
    const/4 v14, 0x0

    goto :goto_13f

    :cond_1bb
    invoke-static/range {p5 .. p5}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    goto :goto_181

    :cond_1bf
    const v3, 0x10008000

    and-int v3, v3, v21

    const v4, 0x10008000

    if-ne v3, v4, :cond_217

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v25, v0

    move-object/from16 v0, v27

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v3, v3, Lcom/android/server/am/TaskRecord;->taskId:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/am/ActivityStack;->performClearTaskLocked(I)V

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, v25

    invoke-virtual {v0, v3, v4}, Lcom/android/server/am/TaskRecord;->setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    :cond_1e7
    :goto_1e7
    if-nez v11, :cond_34c

    if-nez v25, :cond_34c

    if-eqz p4, :cond_348

    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->isHomeActivity:Z

    if-eqz v3, :cond_33d

    const/16 v26, -0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v18, v10, -0x1

    :goto_1ff
    if-ltz v18, :cond_33d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/ActivityRecord;

    const/4 v3, 0x0

    iput-boolean v3, v12, Lcom/android/server/am/ActivityRecord;->otherAppTouched:Z

    iget-boolean v3, v12, Lcom/android/server/am/ActivityRecord;->isHomeActivity:Z

    if-eqz v3, :cond_31c

    :cond_214
    :goto_214
    add-int/lit8 v18, v18, -0x1

    goto :goto_1ff

    :cond_217
    const/high16 v3, 0x400

    and-int v3, v3, v21

    if-nez v3, :cond_22b

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_22b

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_26f

    :cond_22b
    move-object/from16 v0, v27

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v3, v3, Lcom/android/server/am/TaskRecord;->taskId:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v21

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/am/ActivityStack;->performClearTaskLocked(ILcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v28

    if-eqz v28, :cond_26a

    move-object/from16 v0, v28

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-eqz v3, :cond_252

    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v3, v4, v6}, Lcom/android/server/am/TaskRecord;->setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    :cond_252
    const/16 v3, 0x7533

    move-object/from16 v0, v28

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v3, v1, v4}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, v28

    invoke-virtual {v0, v15, v3}, Lcom/android/server/am/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;)V

    goto/16 :goto_1e7

    :cond_26a
    const/4 v11, 0x1

    move-object/from16 p2, v27

    goto/16 :goto_1e7

    :cond_26f
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v0, v27

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f8

    const/4 v13, 0x0

    if-eqz p2, :cond_299

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v3, :cond_299

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.android.providers.applications"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_299

    const/4 v13, 0x1

    :cond_299
    const/high16 v3, 0x2000

    and-int v3, v3, v21

    if-nez v3, :cond_2a8

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2a8

    if-eqz v13, :cond_2e3

    :cond_2a8
    move-object/from16 v0, v27

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e3

    const/16 v3, 0x7533

    move-object/from16 v0, v27

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v3, v1, v4}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    move-object/from16 v0, v27

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-eqz v3, :cond_2d8

    move-object/from16 v0, v27

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v3, v4, v6}, Lcom/android/server/am/TaskRecord;->setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    :cond_2d8
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, v27

    invoke-virtual {v0, v15, v3}, Lcom/android/server/am/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;)V

    goto/16 :goto_1e7

    :cond_2e3
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, v27

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v3

    if-nez v3, :cond_1e7

    const/4 v11, 0x1

    move-object/from16 p2, v27

    goto/16 :goto_1e7

    :cond_2f8
    const/high16 v3, 0x20

    and-int v3, v3, v21

    if-nez v3, :cond_303

    const/4 v11, 0x1

    move-object/from16 p2, v27

    goto/16 :goto_1e7

    :cond_303
    move-object/from16 v0, v27

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-boolean v3, v3, Lcom/android/server/am/TaskRecord;->rootWasReset:Z

    if-nez v3, :cond_1e7

    move-object/from16 v0, v27

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v3, v4, v6}, Lcom/android/server/am/TaskRecord;->setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    goto/16 :goto_1e7

    :cond_31c
    iget-object v3, v12, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v3, v3, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v0, v26

    if-eq v0, v3, :cond_214

    iget-object v3, v12, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v0, v3, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v26, v0

    iget v3, v12, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v3}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isCascadeWindow(I)Z

    move-result v3

    if-eqz v3, :cond_214

    iget v3, v12, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const/4 v4, 0x2

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v3, v4, v6}, Lcom/android/server/am/ActivityStack;->notifyWindowStatusChangedLocked(Lcom/android/server/am/ActivityRecord;IIZ)V

    goto/16 :goto_214

    :cond_33d
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v3, v1}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z

    :goto_345
    const/4 v3, 0x2

    goto/16 :goto_182

    :cond_348
    invoke-static/range {p5 .. p5}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    goto :goto_345

    :cond_34c
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    if-eqz v3, :cond_3d3

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->topRunningNonDelayedActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v28

    if-eqz v28, :cond_3f3

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-nez v3, :cond_3f3

    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3f3

    move-object/from16 v0, v28

    iget v3, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    if-ne v3, v4, :cond_3f3

    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_3f3

    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v3, :cond_3f3

    const/high16 v3, 0x2000

    and-int v3, v3, v21

    if-nez v3, :cond_3a2

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3a2

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3f3

    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->bMultiInstance:Z

    if-nez v3, :cond_3f3

    :cond_3a2
    const/high16 v3, 0x800

    and-int v3, v3, v21

    if-nez v3, :cond_3f3

    const/16 v3, 0x7533

    move-object/from16 v0, v28

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v3, v1, v4}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    if-eqz p4, :cond_3bd

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    :cond_3bd
    invoke-static/range {p5 .. p5}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    and-int/lit8 v3, p3, 0x1

    if-eqz v3, :cond_3c7

    const/4 v3, 0x1

    goto/16 :goto_182

    :cond_3c7
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, v28

    invoke-virtual {v0, v15, v3}, Lcom/android/server/am/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;)V

    const/4 v3, 0x3

    goto/16 :goto_182

    :cond_3d3
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-eqz v3, :cond_3ed

    const/4 v4, -0x1

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v7, v0, Lcom/android/server/am/ActivityRecord;->requestCode:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    :cond_3ed
    invoke-static/range {p5 .. p5}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    const/4 v3, -0x2

    goto/16 :goto_182

    :cond_3f3
    const-string v3, "46001"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v6, "CscFeature_Framework_CheckValidApp4SpecificMccMnc"

    invoke-virtual {v4, v6}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_441

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/ActivityStack;->checkCUVas(Lcom/android/server/am/ActivityRecord;Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_47b

    const-string v3, "CU_Flag"

    const/4 v4, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_47b

    new-instance v19, Landroid/content/Intent;

    const-string v3, "android.intent.action.CHECK_CU_VAS"

    move-object/from16 v0, v19

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x5000

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v3, "CU_Vas"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mContext:Landroid/content/Context;

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 v3, 0x4

    goto/16 :goto_182

    :cond_441
    const-string v3, "46000"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v6, "CscFeature_Framework_CheckValidApp4SpecificMccMnc"

    invoke-virtual {v4, v6}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_47b

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/ActivityStack;->checkCUVas(Lcom/android/server/am/ActivityRecord;Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_47b

    new-instance v19, Landroid/content/Intent;

    const-string v3, "android.intent.action.CHECK_CMCC_VAS"

    move-object/from16 v0, v19

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x5000

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mContext:Landroid/content/Context;

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 v3, 0x4

    goto/16 :goto_182

    :cond_47b
    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-nez v3, :cond_545

    if-nez v11, :cond_545

    const/high16 v3, 0x1000

    and-int v3, v3, v21

    if-eqz v3, :cond_545

    if-nez v25, :cond_539

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v4, v3, Lcom/android/server/am/ActivityManagerService;->mCurTask:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/android/server/am/ActivityManagerService;->mCurTask:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v3, v3, Lcom/android/server/am/ActivityManagerService;->mCurTask:I

    if-gtz v3, :cond_4a6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x1

    iput v4, v3, Lcom/android/server/am/ActivityManagerService;->mCurTask:I

    :cond_4a6
    new-instance v3, Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v4, v4, Lcom/android/server/am/ActivityManagerService;->mCurTask:I

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, v20

    invoke-direct {v3, v4, v6, v0}, Lcom/android/server/am/TaskRecord;-><init>(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;)V

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v6}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ThumbnailHolder;Z)V

    :goto_4be
    const/4 v5, 0x1

    if-nez v22, :cond_4cc

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1, v3}, Lcom/android/server/am/ActivityStack;->moveHomeToFrontFromLaunchLocked(II)V

    :cond_4cc
    :goto_4cc
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getUriPermissionsLocked()Lcom/android/server/am/UriPermissionOwner;

    move-result-object v6

    move-object/from16 v0, v20

    invoke-virtual {v3, v15, v4, v0, v6}, Lcom/android/server/am/ActivityManagerService;->grantUriPermissionFromIntentLocked(ILjava/lang/String;Landroid/content/Intent;Lcom/android/server/am/UriPermissionOwner;)V

    if-eqz v5, :cond_4ff

    const/16 v3, 0x7534

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p1

    iget v8, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v6

    const/4 v6, 0x1

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v8, v8, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v6

    invoke-static {v3, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    :cond_4ff
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mIsMultiWindowEnabled:Z

    if-eqz v3, :cond_51e

    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->bMultiInstance:Z

    if-eqz v3, :cond_51e

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v3, v3, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v3, :cond_51e

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v3, v3, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    const/high16 v4, 0x800

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_51e
    const/16 v3, 0x7535

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v3, v1, v4}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v6, p4

    move-object/from16 v8, p5

    invoke-direct/range {v3 .. v8}, Lcom/android/server/am/ActivityStack;->startActivityLocked(Lcom/android/server/am/ActivityRecord;ZZZLandroid/os/Bundle;)V

    const/4 v3, 0x0

    goto/16 :goto_182

    :cond_539
    const/4 v3, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ThumbnailHolder;Z)V

    goto/16 :goto_4be

    :cond_545
    if-eqz p2, :cond_5de

    if-nez v11, :cond_586

    const/high16 v3, 0x400

    and-int v3, v3, v21

    if-eqz v3, :cond_586

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v3, v3, Lcom/android/server/am/TaskRecord;->taskId:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v21

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/am/ActivityStack;->performClearTaskLocked(ILcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v28

    const/4 v7, 0x1

    if-eqz v28, :cond_5ce

    const/16 v3, 0x7533

    move-object/from16 v0, v28

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v3, v1, v4}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, v28

    invoke-virtual {v0, v15, v3}, Lcom/android/server/am/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;)V

    if-eqz p4, :cond_580

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    :cond_580
    invoke-static/range {p5 .. p5}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    const/4 v3, 0x3

    goto/16 :goto_182

    :cond_586
    if-nez v11, :cond_5ce

    const/high16 v3, 0x2

    and-int v3, v3, v21

    if-eqz v3, :cond_5ce

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v3, v3, Lcom/android/server/am/TaskRecord;->taskId:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Lcom/android/server/am/ActivityStack;->findActivityInHistoryLocked(Lcom/android/server/am/ActivityRecord;I)I

    move-result v29

    if-ltz v29, :cond_5ce

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/server/am/ActivityStack;->moveActivityToFrontLocked(I)Lcom/android/server/am/ActivityRecord;

    move-result-object v28

    const/16 v3, 0x7533

    move-object/from16 v0, v28

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v3, v1, v4}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    move-object/from16 v0, v28

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityRecord;->updateOptionsLocked(Landroid/os/Bundle;)V

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, v28

    invoke-virtual {v0, v15, v3}, Lcom/android/server/am/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;)V

    if-eqz p4, :cond_5cb

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    :cond_5cb
    const/4 v3, 0x3

    goto/16 :goto_182

    :cond_5ce
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->thumbHolder:Lcom/android/server/am/ThumbnailHolder;

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v6}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ThumbnailHolder;Z)V

    goto/16 :goto_4cc

    :cond_5de
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_605

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    add-int/lit8 v4, v10, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    move-object/from16 v24, v3

    :goto_5f6
    if-eqz v24, :cond_608

    move-object/from16 v0, v24

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    :goto_5fc
    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v6}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ThumbnailHolder;Z)V

    goto/16 :goto_4cc

    :cond_605
    const/16 v24, 0x0

    goto :goto_5f6

    :cond_608
    new-instance v3, Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v4, v4, Lcom/android/server/am/ActivityManagerService;->mCurTask:I

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, v20

    invoke-direct {v3, v4, v6, v0}, Lcom/android/server/am/TaskRecord;-><init>(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;)V

    goto :goto_5fc
.end method

.method stopIfSleepingLocked()V
    .registers 5

    const/16 v3, 0x64

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->isSleeping()Z

    move-result v1

    if-eqz v1, :cond_42

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_2d

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_2d

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x68

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2d
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->checkReadyForSleepLocked()V

    :cond_42
    return-void
.end method

.method final switchUserLocked(ILcom/android/server/am/UserStartedState;)Z
    .registers 12

    const/4 v6, 0x1

    iput p1, p0, Lcom/android/server/am/ActivityStack;->mCurrentUser:I

    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mStartingUsers:Ljava/util/ArrayList;

    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x2

    if-ge v7, v8, :cond_13

    const/4 v1, 0x0

    :goto_12
    return v1

    :cond_13
    const/4 v1, 0x0

    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityRecord;

    iget v7, v5, Lcom/android/server/am/ActivityRecord;->userId:I

    if-ne v7, p1, :cond_2a

    move v1, v6

    goto :goto_12

    :cond_2a
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_CIQ_BroadcastState"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-ne v7, v6, :cond_3b

    iget-object v7, v5, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-static {v7}, Lcom/android/server/am/AppStateBroadcaster;->SendApplicationFocusLoss(Ljava/lang/String;)V

    :cond_3b
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_42
    if-ge v2, v0, :cond_77

    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    iget v7, v4, Lcom/android/server/am/ActivityRecord;->userId:I

    if-ne v7, p1, :cond_74

    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_CIQ_BroadcastState"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-ne v7, v6, :cond_70

    if-nez v1, :cond_70

    iget-object v7, v3, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-static {v7}, Lcom/android/server/am/AppStateBroadcaster;->SendApplicationFocusGain(Ljava/lang/String;)V

    :cond_70
    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x1

    goto :goto_42

    :cond_74
    add-int/lit8 v2, v2, 0x1

    goto :goto_42

    :cond_77
    invoke-virtual {p0, v5}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    goto :goto_12
.end method

.method final topResumedActivitiesLocked()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    :goto_d
    if-ltz v0, :cond_23

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    iget-object v3, v1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v3, v4, :cond_20

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_20
    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    :cond_23
    return-object v2
.end method

.method final topRunningActivityLocked(I)Lcom/android/server/am/ActivityRecord;
    .registers 5

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_8
    if-ltz v0, :cond_20

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v2, :cond_1d

    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v2, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne p1, v2, :cond_1d

    :goto_1c
    return-object v1

    :cond_1d
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_20
    const/4 v1, 0x0

    goto :goto_1c
.end method

.method final topRunningActivityLocked(Landroid/os/IBinder;I)Lcom/android/server/am/ActivityRecord;
    .registers 7

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_8
    if-ltz v0, :cond_41

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    iget v2, v1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit16 v2, v2, 0x4000

    if-eqz v2, :cond_1f

    iget v2, v1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const/high16 v3, 0x80

    and-int/2addr v2, v3

    if-nez v2, :cond_26

    :cond_1f
    iget v2, v1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const/high16 v3, 0x20

    and-int/2addr v2, v3

    if-eqz v2, :cond_29

    :cond_26
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_29
    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v2, :cond_3e

    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    if-eq p1, v2, :cond_3e

    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v2, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    if-eq p2, v2, :cond_3e

    invoke-direct {p0, v1}, Lcom/android/server/am/ActivityStack;->okToShow(Lcom/android/server/am/ActivityRecord;)Z

    move-result v2

    if-eqz v2, :cond_3e

    :goto_3d
    return-object v1

    :cond_3e
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_41
    const/4 v1, 0x0

    goto :goto_3d
.end method

.method final topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;
    .registers 6

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    :goto_8
    if-ltz v0, :cond_39

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    iget v3, v2, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v3}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v1

    and-int/lit16 v3, v1, 0x4000

    if-eqz v3, :cond_21

    const/high16 v3, 0x80

    and-int/2addr v3, v1

    if-nez v3, :cond_26

    :cond_21
    const/high16 v3, 0x20

    and-int/2addr v3, v1

    if-eqz v3, :cond_29

    :cond_26
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_29
    iget-boolean v3, v2, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v3, :cond_36

    if-eq v2, p1, :cond_36

    invoke-direct {p0, v2}, Lcom/android/server/am/ActivityStack;->okToShow(Lcom/android/server/am/ActivityRecord;)Z

    move-result v3

    if-eqz v3, :cond_36

    :goto_35
    return-object v2

    :cond_36
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_39
    const/4 v2, 0x0

    goto :goto_35
.end method

.method final topRunningNextActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;
    .registers 6

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    :goto_6
    if-ltz v0, :cond_2f

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    iget v2, v1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit16 v2, v2, 0x4000

    if-eqz v2, :cond_1d

    iget v2, v1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const/high16 v3, 0x80

    and-int/2addr v2, v3

    if-nez v2, :cond_24

    :cond_1d
    iget v2, v1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const/high16 v3, 0x20

    and-int/2addr v2, v3

    if-eqz v2, :cond_27

    :cond_24
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_27
    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v2, :cond_2c

    :goto_2b
    return-object v1

    :cond_2c
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_2f
    const/4 v1, 0x0

    goto :goto_2b
.end method

.method final topRunningNonDelayedActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;
    .registers 6

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_8
    if-ltz v0, :cond_3d

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    iget v2, v1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit16 v2, v2, 0x4000

    if-eqz v2, :cond_1f

    iget v2, v1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const/high16 v3, 0x80

    and-int/2addr v2, v3

    if-nez v2, :cond_26

    :cond_1f
    iget v2, v1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    const/high16 v3, 0x20

    and-int/2addr v2, v3

    if-eqz v2, :cond_29

    :cond_26
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_29
    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v2, :cond_3a

    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->delayedResume:Z

    if-nez v2, :cond_3a

    if-eq v1, p1, :cond_3a

    invoke-direct {p0, v1}, Lcom/android/server/am/ActivityStack;->okToShow(Lcom/android/server/am/ActivityRecord;)Z

    move-result v2

    if-eqz v2, :cond_3a

    :goto_39
    return-object v1

    :cond_3a
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_3d
    const/4 v1, 0x0

    goto :goto_39
.end method

.method public updateTaskOrderLocked(Lcom/android/server/am/ActivityRecord;)V
    .registers 5

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isSupportMultiWindow(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-direct {p0, v0}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(I)V

    :cond_10
    iget-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->isHomeActivity:Z

    if-nez v0, :cond_1b

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget v1, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/android/server/am/ActivityStack;->setWindowMode(Landroid/os/IBinder;IZZ)V

    :cond_1b
    return-void
.end method

.method public updateTasksOrderLocked(Ljava/util/List;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v10, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    :goto_7
    if-ltz v2, :cond_2c

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget v6, v3, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    invoke-direct {p0, v6}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(I)V

    iget v6, v3, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    invoke-virtual {p0, v6}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(I)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_29

    iget-boolean v6, v1, Lcom/android/server/am/ActivityRecord;->isHomeActivity:Z

    if-nez v6, :cond_29

    iget-object v6, v1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget v7, v3, Landroid/app/ActivityManager$RunningTaskInfo;->windowMode:I

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {p0, v6, v7, v8, v9}, Lcom/android/server/am/ActivityStack;->setWindowMode(Landroid/os/IBinder;IZZ)V

    :cond_29
    add-int/lit8 v2, v2, -0x1

    goto :goto_7

    :cond_2c
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->moveMwAppTokensToTopLocked()V

    invoke-virtual {p0, v10}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    invoke-virtual {p0, v10}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    if-eqz v4, :cond_4a

    iget v6, v4, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    and-int/lit8 v5, v6, 0xf

    if-eqz v5, :cond_4a

    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/server/am/ActivityStack$1;

    invoke-direct {v7, p0, v5}, Lcom/android/server/am/ActivityStack$1;-><init>(Lcom/android/server/am/ActivityStack;I)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4a
    return-void
.end method

.method public updateThumbNail(Landroid/os/IBinder;)V
    .registers 10

    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6

    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->indexOfTokenLocked(Landroid/os/IBinder;)I

    move-result v0

    invoke-static {}, Lcom/android/server/am/MultiWindowManagerService;->getSelf()Lcom/android/server/am/MultiWindowManagerService;

    move-result-object v1

    if-gez v0, :cond_f

    monitor-exit v6

    :goto_e
    return-void

    :cond_f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    invoke-virtual {p0, v4}, Lcom/android/server/am/ActivityStack;->screenshotActivities(Lcom/android/server/am/ActivityRecord;)Landroid/graphics/Bitmap;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v7}, Lcom/android/server/am/ActivityRecord;->updateThumbnail(Landroid/graphics/Bitmap;Ljava/lang/CharSequence;)V

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v6

    goto :goto_e

    :catchall_28
    move-exception v5

    monitor-exit v6
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw v5
.end method

.method final updateTransitLocked(ILandroid/os/Bundle;)V
    .registers 6

    if-eqz p2, :cond_12

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_1b

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v2, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v1, v2, :cond_1b

    invoke-virtual {v0, p2}, Lcom/android/server/am/ActivityRecord;->updateOptionsLocked(Landroid/os/Bundle;)V

    :cond_12
    :goto_12
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    return-void

    :cond_1b
    invoke-static {p2}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    goto :goto_12
.end method

.method public updateWindowInfoLocked(Lcom/android/server/am/ActivityRecord;)V
    .registers 6

    invoke-static {}, Lcom/android/server/am/MultiWindowManagerService;->getSelf()Lcom/android/server/am/MultiWindowManagerService;

    move-result-object v0

    iget v1, p1, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v2, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v3, v3, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, v2, v3}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/MultiWindowManagerService;->arrangeWindowInfo(ILandroid/os/Bundle;)V

    return-void
.end method

.method public updateWindowInfosLocked(Landroid/content/res/Configuration;I)V
    .registers 19

    invoke-static {}, Lcom/android/server/am/MultiWindowManagerService;->getSelf()Lcom/android/server/am/MultiWindowManagerService;

    move-result-object v5

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v15}, Lcom/android/server/am/ActivityStack;->getFrontResumedActivities(ZZZ)Ljava/util/ArrayList;

    move-result-object v11

    move-object/from16 v0, p1

    iget v13, v0, Landroid/content/res/Configuration;->arrange:I

    move/from16 v0, p2

    invoke-virtual {v5, v0, v13, v11}, Lcom/android/server/am/MultiWindowManagerService;->arrangeWindowInfos(IILjava/util/ArrayList;)V

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/android/server/am/ActivityStack;->getFrontResumedActivities(ZZ)Ljava/util/ArrayList;

    move-result-object v11

    const/high16 v13, 0x1000

    and-int v13, v13, p2

    if-eqz v13, :cond_4b

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v2, v1, -0x1

    :goto_2a
    if-ltz v2, :cond_3a

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/server/am/ActivityStack;->updateTaskOrderLocked(Lcom/android/server/am/ActivityRecord;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_2a

    :cond_3a
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->moveMwAppTokensToTopLocked()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v13, v13, Lcom/android/server/am/ActivityManagerService;->mProcessesReady:Z

    if-eqz v13, :cond_4b

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    :cond_4b
    move/from16 v0, p2

    and-int/lit16 v13, v0, 0x80

    if-eqz v13, :cond_6a

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iget v13, v13, Landroid/content/res/Configuration;->arrange:I

    and-int/lit16 v13, v13, 0x478

    if-eqz v13, :cond_6b

    const/4 v4, 0x1

    :goto_5e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityStack;->mContext:Landroid/content/Context;

    invoke-static {v13}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isSupportMultiWindow(Landroid/content/Context;)Z

    move-result v13

    if-nez v13, :cond_6a

    if-eqz v4, :cond_6d

    :cond_6a
    return-void

    :cond_6b
    const/4 v4, 0x0

    goto :goto_5e

    :cond_6d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_75
    :goto_75
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/ActivityRecord;

    iget v13, v10, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v13}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isNormalWindow(I)Z

    move-result v13

    if-eqz v13, :cond_75

    iget v13, v10, Lcom/android/server/am/ActivityRecord;->currentWindowMode:I

    invoke-static {v13}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isResizable(I)Z

    move-result v13

    if-eqz v13, :cond_75

    iget-object v13, v10, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v13, v13, Lcom/android/server/am/TaskRecord;->taskId:I

    iget-object v14, v10, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v14, v14, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v5, v13, v14}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v12

    const-string v13, "android.intent.extra.WINDOW_LAST_SIZE"

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Landroid/graphics/Rect;

    const-string v13, "android.intent.extra.WINDOW_DEFAULT_SIZE"

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/graphics/Rect;

    if-eqz v9, :cond_75

    if-eqz v8, :cond_75

    invoke-virtual {v9, v8}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_75

    iget-object v13, v10, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v14, v10, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    const/4 v15, 0x0

    invoke-virtual {v5, v13, v14, v15}, Lcom/android/server/am/MultiWindowManagerService;->getDefaultWindowInfoLocked(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v7

    const-string v13, "android.intent.extra.WINDOW_DEFAULT_SIZE"

    invoke-virtual {v7, v13}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/graphics/Rect;

    if-eqz v6, :cond_75

    invoke-virtual {v8, v6}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_75

    const-string v13, "android.intent.extra.WINDOW_LAST_SIZE"

    invoke-virtual {v12, v13, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v13, "android.intent.extra.WINDOW_DEFAULT_SIZE"

    invoke-virtual {v12, v13, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_75
.end method

.method final validateAppTokensLocked()V
    .registers 4

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mValidateAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mValidateAppTokens:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->ensureCapacity(I)V

    const/4 v0, 0x0

    :goto_11
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2b

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mValidateAppTokens:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_2b
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mValidateAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->validateAppTokens(Ljava/util/List;)V

    return-void
.end method
